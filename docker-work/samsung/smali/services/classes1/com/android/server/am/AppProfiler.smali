.class public Lcom/android/server/am/AppProfiler;
.super Ljava/lang/Object;
.source "AppProfiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppProfiler$CpuBinder;,
        Lcom/android/server/am/AppProfiler$ProcessCpuThread;,
        Lcom/android/server/am/AppProfiler$TrimHistogram;,
        Lcom/android/server/am/AppProfiler$RecordPssRunnable;,
        Lcom/android/server/am/AppProfiler$OnTrimReclaimer;,
        Lcom/android/server/am/AppProfiler$BgHandler;,
        Lcom/android/server/am/AppProfiler$ProfileData;
    }
.end annotation


# static fields
.field public static final ACTION_HEAP_DUMP_FINISHED:Ljava/lang/String; = "com.android.internal.intent.action.HEAP_DUMP_FINISHED"

.field public static final ACTIVITY_START_PSS_DEFER_CONFIG:Ljava/lang/String; = "activity_start_pss_defer"

.field public static final BATTERY_STATS_TIME:J = 0x1b7740L

.field public static final EXTRA_HEAP_DUMP_IS_USER_INITIATED:Ljava/lang/String; = "com.android.internal.extra.heap_dump.IS_USER_INITIATED"

.field public static final EXTRA_HEAP_DUMP_PROCESS_NAME:Ljava/lang/String; = "com.android.internal.extra.heap_dump.PROCESS_NAME"

.field public static final EXTRA_HEAP_DUMP_REPORT_PACKAGE:Ljava/lang/String; = "com.android.internal.extra.heap_dump.REPORT_PACKAGE"

.field public static final EXTRA_HEAP_DUMP_SIZE_BYTES:Ljava/lang/String; = "com.android.internal.extra.heap_dump.SIZE_BYTES"

.field public static final MONITOR_CPU_MAX_TIME:J = 0xfffffffL

.field public static final MONITOR_CPU_MIN_TIME:J = 0x1388L

.field public static final MONITOR_CPU_USAGE:Z = true

.field public static final MONITOR_THREAD_CPU_USAGE:Z = false

.field public static final TAG:Ljava/lang/String; = "ActivityManager"

.field public static final TAG_OOM_ADJ:Ljava/lang/String; = "ActivityManager"

.field public static final TAG_PSS:Ljava/lang/String; = "ActivityManager"

.field public static final TRIM_HEAVY_APP_PSS:J = 0x6400000L

.field public static final TRIM_HEAVY_APP_TIME_LIMIT:J = 0xea60L

.field public static final TRIM_LIGHT_APP_TIME_LIMIT:J = 0x493e0L

.field public static final TRIM_NORMAL_APP_PSS:J = 0x1e00000L

.field public static final TRIM_NORMAL_APP_TIME_LIMIT:J = 0x2bf20L


# instance fields
.field public final mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mAllowLowerMemLevel:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mAppAgentMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mBgHandler:Landroid/os/Handler;

.field public mFullPssPending:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mHasHomeProcess:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mHasPreviousProcess:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public final mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

.field public mLastFullPssTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mLastMemUsageReportTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mLastMemoryLevel:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mLastNumProcesses:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public volatile mLastWriteTime:J

.field public final mLowMemDetector:Lcom/android/server/am/LowMemDetector;

.field public mLowRamStartTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation
.end field

.field public mLowRamTimeSinceLastIdle:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation
.end field

.field public mMemFactorOverride:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mMemWatchDumpPid:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mMemWatchDumpProcName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mMemWatchDumpUid:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mMemWatchDumpUri:Landroid/net/Uri;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mMemWatchIsUserInitiated:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public final mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mOnTrimReclaimer:Lcom/android/server/am/AppProfiler$OnTrimReclaimer;

.field public final mPendingPssProfiles:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessProfileRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mProcessCpuThread:Ljava/lang/Thread;

.field public final mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field public final mProcessesToGc:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mProfileType:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public final mProfilerLock:Ljava/lang/Object;

.field public volatile mPssDeferralTime:J

.field public final mPssDelayConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public volatile mTestPssMode:Z

.field public mTrimCallCount:[I

.field public mTrimHistogramList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/AppProfiler$TrimHistogram;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-KoZoWW1AVtk-e_1f_VSGvLE7ac(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;JLcom/android/server/am/ProcessRecord;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/AppProfiler;->lambda$doLowMemReportIfNeededLocked$5(Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;JLcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8A3VEf1Ljk2peGJ0VdBb6czFUUg(Lcom/android/server/am/AppProfiler;ZZJLcom/android/server/am/ProcessRecord;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/AppProfiler;->lambda$requestPssAllProcsLPr$2(ZZJLcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q89oZ-bfXOdTdpRzSs3iityL4mw(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/AppProfiler;->lambda$reportMemUsage$6(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$V1RhkcWpzTaE-TLhpopxhenzMOM(Lcom/android/server/am/ProcessRecord;JJJIJLcom/android/server/am/ProcessProfileRecord;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 12

    invoke-static/range {p0 .. p11}, Lcom/android/server/am/AppProfiler;->lambda$recordPssSampleLPf$1(Lcom/android/server/am/ProcessRecord;JJJIJLcom/android/server/am/ProcessProfileRecord;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZMxvBCdmKztKY09XkWvwH3CpFsk(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/AppProfiler;->lambda$collectPssInBackground$0(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bYVlbQYS7LMv9Nraxx9n7TNsbdQ(Lcom/android/server/am/AppProfiler;ZILcom/android/server/am/ProcessRecord;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppProfiler;->lambda$updateLowMemStateLSP$4(ZILcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$blG9AtI-8LpR97RBkdMkYwbM7y8(Lcom/android/server/am/AppProfiler;ZIZ[I[IIIJLcom/android/server/am/ProcessRecord;)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Lcom/android/server/am/AppProfiler;->lambda$updateLowMemStateLSP$3(ZIZ[I[IIIJLcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yGYF27QwdpoQJWSdBkqjKGIRCOA(Ljava/util/function/Predicate;Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/AppProfiler;->lambda$getCpuStats$7(Ljava/util/function/Predicate;Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastCpuTime(Lcom/android/server/am/AppProfiler;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastWriteTime(Lcom/android/server/am/AppProfiler;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessCpuInitLatch(Lcom/android/server/am/AppProfiler;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessCpuMutexFree(Lcom/android/server/am/AppProfiler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessCpuTracker(Lcom/android/server/am/AppProfiler;)Lcom/android/internal/os/ProcessCpuTracker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPssDeferralTime(Lcom/android/server/am/AppProfiler;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmPssDeferralTime(Lcom/android/server/am/AppProfiler;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mabortHeapDump(Lcom/android/server/am/AppProfiler;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppProfiler;->abortHeapDump(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcollectPssInBackground(Lcom/android/server/am/AppProfiler;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->collectPssInBackground()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdeferPssForActivityStart(Lcom/android/server/am/AppProfiler;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->deferPssForActivityStart()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleMemoryPressureChangedLocked(Lcom/android/server/am/AppProfiler;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppProfiler;->handleMemoryPressureChangedLocked(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopDeferPss(Lcom/android/server/am/AppProfiler;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->stopDeferPss()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;Lcom/android/server/am/LowMemDetector;)V
    .registers 10

    .line 2238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 203
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    .line 208
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    .line 214
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 220
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/AppProfiler;->mLastFullPssTime:J

    .line 226
    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mFullPssPending:Z

    .line 234
    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mTestPssMode:Z

    .line 244
    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    .line 251
    iput v3, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    const/4 v2, -0x1

    .line 254
    iput v2, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    .line 267
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamTimeSinceLastIdle:J

    .line 273
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    .line 279
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    .line 285
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 293
    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 296
    iput v3, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 299
    new-instance v4, Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-direct {v4, p0, v2}, Lcom/android/server/am/AppProfiler$ProfileData;-><init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/AppProfiler$ProfileData-IA;)V

    iput-object v4, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 302
    new-instance v2, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v2}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 333
    new-instance v2, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 335
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 336
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 337
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 339
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    .line 361
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 368
    new-instance v0, Lcom/android/server/am/AppProfiler$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppProfiler$1;-><init>(Lcom/android/server/am/AppProfiler;)V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mPssDelayConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 1315
    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mTrimCallCount:[I

    .line 1316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mTrimHistogramList:Ljava/util/List;

    .line 2239
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2240
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 2241
    new-instance p1, Lcom/android/server/am/AppProfiler$BgHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/AppProfiler$BgHandler;-><init>(Lcom/android/server/am/AppProfiler;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    .line 2242
    iput-object p3, p0, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    .line 2243
    new-instance p1, Lcom/android/server/am/AppProfiler$ProcessCpuThread;

    const-string p2, "CpuTracker"

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/AppProfiler$ProcessCpuThread;-><init>(Lcom/android/server/am/AppProfiler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Ljava/lang/Thread;

    .line 2246
    new-instance p1, Lcom/android/server/am/AppProfiler$OnTrimReclaimer;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppProfiler$OnTrimReclaimer;-><init>(Lcom/android/server/am/AppProfiler;)V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mOnTrimReclaimer:Lcom/android/server/am/AppProfiler$OnTrimReclaimer;

    .line 2247
    invoke-static {p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->registerReclaimer(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V

    return-void
.end method

.method public static synthetic lambda$collectPssInBackground$0(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 5

    .line 482
    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    iget p0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private synthetic lambda$doLowMemReportIfNeededLocked$5(Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;JLcom/android/server/am/ProcessRecord;)V
    .registers 14

    if-eq p5, p1, :cond_69

    .line 1518
    invoke-virtual {p5}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_69

    .line 1521
    :cond_9
    iget-object p1, p5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    if-eqz p2, :cond_2c

    .line 1523
    new-instance v7, Lcom/android/server/am/ProcessMemInfo;

    iget-object v1, p5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    .line 1524
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v4

    .line 1525
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->makeAdjReason()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ProcessMemInfo;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    .line 1523
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1527
    :cond_2c
    iget-object p2, p5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1528
    invoke-virtual {p2}, Lcom/android/server/am/ProcessProfileRecord;->getLastLowMemory()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    add-long/2addr v0, v2

    cmp-long v0, v0, p3

    if-gtz v0, :cond_69

    .line 1532
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1533
    :try_start_40
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result p1

    const/16 v1, 0x190

    if-gt p1, v1, :cond_4e

    const-wide/16 v1, 0x0

    .line 1534
    invoke-virtual {p2, v1, v2}, Lcom/android/server/am/ProcessProfileRecord;->setLastRequestedGc(J)V

    goto :goto_55

    .line 1536
    :cond_4e
    invoke-virtual {p2}, Lcom/android/server/am/ProcessProfileRecord;->getLastLowMemory()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/android/server/am/ProcessProfileRecord;->setLastRequestedGc(J)V

    :goto_55
    const/4 p1, 0x1

    .line 1538
    invoke-virtual {p2, p1}, Lcom/android/server/am/ProcessProfileRecord;->setReportLowMemory(Z)V

    .line 1539
    invoke-virtual {p2, p3, p4}, Lcom/android/server/am/ProcessProfileRecord;->setLastLowMemory(J)V

    .line 1540
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1541
    invoke-virtual {p0, p5}, Lcom/android/server/am/AppProfiler;->addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 1542
    monitor-exit v0

    goto :goto_69

    :catchall_66
    move-exception p0

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_40 .. :try_end_68} :catchall_66

    throw p0

    :cond_69
    :goto_69
    return-void
.end method

.method public static synthetic lambda$getCpuStats$7(Ljava/util/function/Predicate;Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 2

    .line 2153
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$recordPssSampleLPf$1(Lcom/android/server/am/ProcessRecord;JJJIJLcom/android/server/am/ProcessProfileRecord;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 30

    move-object/from16 v0, p11

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move/from16 v11, p7

    move-wide/from16 v12, p8

    move-object/from16 v1, p0

    .line 614
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 616
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 617
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v4

    iget-wide v14, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 621
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/am/ProcessProfileRecord;->getCurrentHostingComponentTypes()I

    move-result v16

    .line 622
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/am/ProcessProfileRecord;->getHistoricalHostingComponentTypes()I

    move-result v17

    const/16 v1, 0x12

    .line 614
    invoke-static/range {v1 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJJIJJII)V

    return-void
.end method

.method public static synthetic lambda$reportMemUsage$6(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 5

    .line 1565
    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private synthetic lambda$requestPssAllProcsLPr$2(ZZJLcom/android/server/am/ProcessRecord;)V
    .registers 12

    .line 944
    iget-object p5, p5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 945
    invoke-virtual {p5}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 946
    invoke-virtual {p5}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_11

    goto :goto_47

    .line 949
    :cond_11
    invoke-virtual {p5}, Lcom/android/server/am/ProcessProfileRecord;->getLastStateTime()J

    move-result-wide v0

    if-nez p1, :cond_28

    if-eqz p2, :cond_20

    const-wide/16 v2, 0x3e8

    add-long/2addr v2, v0

    cmp-long p1, p3, v2

    if-gtz p1, :cond_28

    :cond_20
    const-wide/32 v2, 0x124f80

    add-long/2addr v0, v2

    cmp-long p1, p3, v0

    if-lez p1, :cond_47

    .line 953
    :cond_28
    invoke-virtual {p5}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result p1

    invoke-virtual {p5, p1}, Lcom/android/server/am/ProcessProfileRecord;->setPssProcState(I)V

    if-eqz p2, :cond_33

    const/4 p1, 0x2

    goto :goto_34

    :cond_33
    const/4 p1, 0x1

    .line 954
    :goto_34
    invoke-virtual {p5, p1}, Lcom/android/server/am/ProcessProfileRecord;->setPssStatType(I)V

    .line 956
    invoke-virtual {p5}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p5

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppProfiler;->updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V

    .line 957
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {p0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_47
    :goto_47
    return-void
.end method

.method private synthetic lambda$updateLowMemStateLSP$3(ZIZ[I[IIIJLcom/android/server/am/ProcessRecord;)V
    .registers 29

    move-object/from16 v0, p0

    move/from16 v1, p7

    move-wide/from16 v2, p8

    move-object/from16 v4, p10

    .line 1112
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1113
    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v6

    .line 1114
    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1115
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v8

    const/4 v9, 0x0

    if-nez p1, :cond_1d

    .line 1117
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->hasProcStateChanged()Z

    move-result v10

    if-eqz v10, :cond_27

    .line 1118
    :cond_1d
    iget-object v10, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v11, p2

    invoke-virtual {v10, v4, v11}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLOSP(Lcom/android/server/am/ProcessRecord;I)V

    .line 1119
    invoke-virtual {v7, v9}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    .line 1121
    :cond_27
    invoke-virtual {v0, v4}, Lcom/android/server/am/AppProfiler;->trimMemoryUiHiddenIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V

    const-string v7, "B|scheduleTrimMemory: Trimming memory of "

    const-string v10, "B|scheduleTrimMemory: Trimming memory of fg "

    const-string v12, "Trimming memory of "

    const/4 v13, 0x1

    const-string v14, "E|scheduleTrimMemory"

    const-string v15, "ActivityManager"

    const-string v11, " to "

    if-nez p3, :cond_180

    const/16 v2, 0xe

    const/16 v3, 0x28

    if-lt v8, v2, :cond_c4

    .line 1124
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/am/ProcessRecord;->isSkipTrimMemory()Z

    move-result v2

    if-nez v2, :cond_c4

    .line 1125
    aget v1, p4, v9

    if-ge v6, v1, :cond_a0

    invoke-virtual/range {p10 .. p10}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_a0

    .line 1127
    :try_start_4f
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_TRIM_MEMORY_LOG:Z

    if-nez v2, :cond_5b

    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v2, :cond_5b

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v2, :cond_77

    .line 1129
    :cond_5b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, p4, v9

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p4, v9

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 1134
    aget v2, p4, v9

    invoke-interface {v1, v2}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V

    .line 1135
    invoke-static {v14, v9}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 1137
    aget v1, p4, v9

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler;->noteTrimMemory(I)V
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_a0} :catch_a0

    .line 1142
    :catch_a0
    :cond_a0
    aget v0, p4, v9

    invoke-virtual {v5, v0}, Lcom/android/server/am/ProcessProfileRecord;->setTrimMemoryLevel(I)V

    .line 1143
    aget v0, p5, v9

    add-int/2addr v0, v13

    aput v0, p5, v9

    move/from16 v1, p6

    if-lt v0, v1, :cond_2a0

    .line 1145
    aput v9, p5, v9

    .line 1146
    aget v0, p4, v9

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_c0

    const/16 v2, 0x50

    if-eq v0, v2, :cond_bc

    goto/16 :goto_2a0

    .line 1148
    :cond_bc
    aput v1, p4, v9

    goto/16 :goto_2a0

    .line 1151
    :cond_c0
    aput v3, p4, v9

    goto/16 :goto_2a0

    :cond_c4
    const/16 v2, 0xd

    if-ne v8, v2, :cond_128

    .line 1156
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/am/ProcessRecord;->isSkipTrimMemory()Z

    move-result v2

    if-nez v2, :cond_128

    if-ge v6, v3, :cond_123

    .line 1158
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_123

    .line 1160
    :try_start_d6
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_TRIM_MEMORY_LOG:Z

    if-nez v2, :cond_e2

    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v2, :cond_e2

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v2, :cond_fe

    .line 1162
    :cond_e2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trimming memory of heavy-weight "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_fe
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "B|scheduleTrimMemory: Trimming memory of heavy-weight "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 1168
    invoke-interface {v1, v3}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V

    .line 1170
    invoke-static {v14, v9}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 1172
    invoke-virtual {v0, v3}, Lcom/android/server/am/AppProfiler;->noteTrimMemory(I)V
    :try_end_123
    .catch Landroid/os/RemoteException; {:try_start_d6 .. :try_end_123} :catch_123

    .line 1177
    :catch_123
    :cond_123
    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessProfileRecord;->setTrimMemoryLevel(I)V

    goto/16 :goto_2a0

    :cond_128
    if-ge v6, v1, :cond_17b

    .line 1179
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-eqz v2, :cond_17b

    .line 1181
    :try_start_130
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_TRIM_MEMORY_LOG:Z

    if-nez v3, :cond_13c

    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v3, :cond_13c

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v3, :cond_158

    .line 1183
    :cond_13c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trimming memory of fg "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 1188
    invoke-interface {v2, v1}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V

    .line 1189
    invoke-static {v14, v9}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 1191
    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler;->noteTrimMemory(I)V
    :try_end_17b
    .catch Landroid/os/RemoteException; {:try_start_130 .. :try_end_17b} :catch_17b

    .line 1196
    :catch_17b
    :cond_17b
    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessProfileRecord;->setTrimMemoryLevel(I)V

    goto/16 :goto_2a0

    .line 1200
    :cond_180
    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->hasPendingUiClean()Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0x50

    if-ne v6, v1, :cond_190

    move v6, v9

    goto :goto_190

    :cond_18e
    const/16 v1, 0x50

    :cond_190
    :goto_190
    const/16 v13, 0xd

    if-lt v8, v13, :cond_1fb

    .line 1204
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/am/ProcessRecord;->isSkipTrimMemory()Z

    move-result v8

    if-nez v8, :cond_1fb

    if-ge v6, v1, :cond_2a0

    .line 1205
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_2a0

    .line 1207
    :try_start_1a2
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_TRIM_MEMORY_LOG:Z

    if-nez v6, :cond_1ae

    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v6, :cond_1ae

    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v6, :cond_1ca

    .line 1209
    :cond_1ae
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x50

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :cond_1ca
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x50

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 1214
    invoke-interface {v1, v4}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V

    .line 1215
    invoke-static {v14, v9}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 1216
    aget v1, p4, v9

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler;->noteTrimMemory(I)V

    .line 1217
    invoke-virtual {v5, v2, v3}, Lcom/android/server/am/ProcessProfileRecord;->setTrimMemoryTime(J)V
    :try_end_1f4
    .catch Landroid/os/RemoteException; {:try_start_1a2 .. :try_end_1f4} :catch_1f4

    :catch_1f4
    const/16 v0, 0x50

    .line 1221
    invoke-virtual {v5, v0}, Lcom/android/server/am/ProcessProfileRecord;->setTrimMemoryLevel(I)V

    goto/16 :goto_2a0

    .line 1226
    :cond_1fb
    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v6

    const-wide/32 v16, 0x6400000

    cmp-long v1, v6, v16

    if-lez v1, :cond_219

    .line 1227
    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryTime()J

    move-result-wide v6

    const-wide/32 v16, 0xea60

    add-long v6, v6, v16

    cmp-long v1, v6, v2

    if-gez v1, :cond_246

    :goto_217
    const/4 v13, 0x1

    goto :goto_247

    .line 1231
    :cond_219
    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v6

    const-wide/32 v16, 0x1e00000

    cmp-long v1, v6, v16

    if-lez v1, :cond_236

    .line 1232
    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryTime()J

    move-result-wide v6

    const-wide/32 v16, 0x2bf20

    add-long v6, v6, v16

    cmp-long v1, v6, v2

    if-gez v1, :cond_246

    goto :goto_217

    .line 1237
    :cond_236
    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryTime()J

    move-result-wide v6

    const-wide/32 v16, 0x493e0

    add-long v6, v6, v16

    cmp-long v1, v6, v2

    if-gez v1, :cond_246

    goto :goto_217

    :cond_246
    move v13, v9

    :goto_247
    if-eqz v13, :cond_2a0

    .line 1242
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_2a0

    const/16 v6, 0xf

    .line 1244
    :try_start_251
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_TRIM_MEMORY_LOG:Z

    if-nez v7, :cond_25d

    sget-boolean v7, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v7, :cond_25d

    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v7, :cond_277

    .line 1246
    :cond_25d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_277
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 1251
    invoke-interface {v1, v6}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V

    .line 1252
    invoke-static {v14, v9}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 1253
    invoke-virtual {v0, v6}, Lcom/android/server/am/AppProfiler;->noteTrimMemory(I)V

    .line 1254
    invoke-virtual {v5, v2, v3}, Lcom/android/server/am/ProcessProfileRecord;->setTrimMemoryTime(J)V
    :try_end_29d
    .catch Landroid/os/RemoteException; {:try_start_251 .. :try_end_29d} :catch_29d

    .line 1257
    :catch_29d
    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessProfileRecord;->setTrimMemoryLevel(I)V

    :cond_2a0
    :goto_2a0
    return-void
.end method

.method private synthetic lambda$updateLowMemStateLSP$4(ZILcom/android/server/am/ProcessRecord;)V
    .registers 7

    .line 1268
    iget-object v0, p3, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1270
    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v2, 0x0

    if-nez p1, :cond_d

    .line 1271
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->hasProcStateChanged()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1272
    :cond_d
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1, p3, p2}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLOSP(Lcom/android/server/am/ProcessRecord;I)V

    .line 1273
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    .line 1275
    :cond_15
    invoke-virtual {p0, p3}, Lcom/android/server/am/AppProfiler;->trimMemoryUiHiddenIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1276
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    const/16 p1, 0xf

    if-lt p0, p1, :cond_26

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->hasPendingUiClean()Z

    move-result p0

    if-eqz p0, :cond_29

    .line 1277
    :cond_26
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessProfileRecord;->setTrimMemoryLevel(I)V

    :cond_29
    return-void
.end method

.method public static makeHeapDumpUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.shell.heapdump/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_javaheap.bin"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final abortHeapDump(Ljava/lang/String;)V
    .registers 4

    .line 830
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 831
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 832
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 1485
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_2d

    .line 1486
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v3

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1487
    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_2a

    .line 1489
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    add-int/2addr v0, v1

    invoke-virtual {v3, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2e

    :cond_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2d
    move v1, v2

    :goto_2e
    if-nez v1, :cond_35

    .line 1494
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_35
    return-void
.end method

.method public clearProfilerLPf()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 1906
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 1907
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1d

    .line 1909
    :try_start_12
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_1d

    .line 1913
    :catch_1d
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileApp(Ljava/lang/String;)V

    .line 1914
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 1915
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfilerInfo(Landroid/app/ProfilerInfo;)V

    return-void
.end method

.method public clearProfilerLPf(Lcom/android/server/am/ProcessRecord;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 1920
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 1921
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 1922
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eq v0, p1, :cond_19

    goto :goto_1c

    .line 1925
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public final collectPssInBackground()V
    .registers 44

    move-object/from16 v0, p0

    .line 468
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 470
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 471
    :try_start_9
    iget-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mFullPssPending:Z

    const/4 v15, 0x0

    const/4 v13, 0x0

    if-eqz v2, :cond_17

    .line 472
    iput-boolean v13, v0, Lcom/android/server/am/AppProfiler;->mFullPssPending:Z

    .line 473
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    goto :goto_18

    :cond_17
    move-object v2, v15

    .line 475
    :goto_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_27f

    const-wide/16 v19, 0x0

    if-eqz v2, :cond_c6

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    .line 480
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v1

    .line 481
    :try_start_23
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v4, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v3

    .line 484
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_c3

    .line 485
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    move v4, v13

    move-wide/from16 v30, v19

    :goto_36
    if-ge v4, v1, :cond_66

    .line 487
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v5

    .line 488
    :try_start_3d
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v7, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService$PidMap;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_51

    .line 490
    monitor-exit v5

    goto :goto_60

    .line 492
    :cond_51
    monitor-exit v5
    :try_end_52
    .catchall {:try_start_3d .. :try_end_52} :catchall_63

    .line 493
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v5, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v5, v15, v15}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v5

    add-long v30, v30, v5

    :goto_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :catchall_63
    move-exception v0

    .line 492
    :try_start_64
    monitor-exit v5
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v0

    .line 495
    :cond_66
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 496
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 497
    :try_start_70
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v1, :cond_96

    const-string v1, "ActivityManager"

    .line 498
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Collected native and kernel memory in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v17

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 498
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_96
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v22

    .line 502
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v24

    .line 503
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v26

    .line 504
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v28

    const-wide/16 v1, 0x400

    mul-long v32, v22, v1

    mul-long v34, v24, v1

    mul-long v36, v26, v1

    mul-long v38, v28, v1

    mul-long v40, v30, v1

    .line 505
    invoke-static/range {v32 .. v41}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 507
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v31}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V

    .line 509
    monitor-exit v3

    goto :goto_c6

    :catchall_c0
    move-exception v0

    monitor-exit v3
    :try_end_c2
    .catchall {:try_start_70 .. :try_end_c2} :catchall_c0

    throw v0

    :catchall_c3
    move-exception v0

    .line 484
    :try_start_c4
    monitor-exit v1
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    throw v0

    :cond_c6
    :goto_c6
    const/4 v1, 0x3

    new-array v14, v1, [J

    move v1, v13

    :goto_ca
    const/4 v2, -0x1

    .line 520
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 521
    :try_start_ce
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_10f

    .line 522
    iget-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mTestPssMode:Z

    if-nez v2, :cond_de

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v2, :cond_108

    :cond_de
    const-string v2, "ActivityManager"

    .line 523
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Collected pss of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " processes in "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v17

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_108
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 528
    monitor-exit v3

    return-void

    .line 530
    :cond_10f
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessProfileRecord;

    .line 531
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getPssProcState()I

    move-result v5

    .line 532
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getPssStatType()I

    move-result v12

    .line 533
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v6

    .line 534
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 535
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v10

    const-wide/16 v21, 0x3e8

    if-eqz v10, :cond_145

    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v10

    if-ne v5, v10, :cond_145

    add-long v10, v6, v21

    cmp-long v10, v10, v8

    if-gez v10, :cond_145

    .line 537
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v2

    move-object/from16 v42, v4

    move v4, v2

    move-object/from16 v2, v42

    goto :goto_176

    .line 539
    :cond_145
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 540
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v4, :cond_174

    const-string v4, "ActivityManager"

    .line 541
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipped pss collection of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": still need "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v21, v6, v21

    sub-long v8, v21, v8

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms until safe"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_174
    move v4, v13

    move-object v2, v15

    .line 549
    :goto_176
    monitor-exit v3
    :try_end_177
    .catchall {:try_start_ce .. :try_end_177} :catchall_27c

    if-eqz v2, :cond_26e

    .line 551
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    .line 554
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v2, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v10}, Lcom/android/server/am/ActivityManagerService;->isCameraActiveForUid(I)Z

    move-result v3

    if-eqz v3, :cond_18c

    move-wide/from16 v10, v19

    goto :goto_190

    .line 555
    :cond_18c
    invoke-static {v4, v14, v15}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v10

    .line 556
    :goto_190
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v21

    .line 557
    iget-object v13, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v13

    cmp-long v23, v10, v19

    if-eqz v23, :cond_1f0

    .line 558
    :try_start_19b
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v23

    if-eqz v23, :cond_1f0

    .line 559
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v15

    if-ne v15, v5, :cond_1e4

    .line 560
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v15

    if-ne v15, v4, :cond_1e4

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v24

    cmp-long v15, v24, v6

    if-nez v15, :cond_1e4

    add-int/lit8 v24, v1, 0x1

    .line 562
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->commitNextPssTime()V

    const/4 v15, 0x0

    aget-wide v6, v14, v15

    const/4 v1, 0x1

    aget-wide v25, v14, v1

    const/4 v1, 0x2

    aget-wide v27, v14, v1

    sub-long v21, v21, v8

    .line 564
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v29
    :try_end_1c9
    .catchall {:try_start_19b .. :try_end_1c9} :catchall_1eb

    move-object/from16 v1, p0

    move v3, v5

    move-wide v4, v10

    move-wide/from16 v8, v25

    move-wide/from16 v10, v27

    move-object/from16 v26, v13

    move-object/from16 v25, v14

    move/from16 v27, v15

    move-wide/from16 v13, v21

    const/16 v21, 0x0

    move-wide/from16 v15, v29

    .line 563
    :try_start_1dd
    invoke-virtual/range {v1 .. v16}, Lcom/android/server/am/AppProfiler;->recordPssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJJJJIJJ)V

    move/from16 v1, v24

    goto/16 :goto_269

    :cond_1e4
    move-object/from16 v26, v13

    move-object/from16 v25, v14

    const/16 v21, 0x0

    goto :goto_1f6

    :catchall_1eb
    move-exception v0

    move-object/from16 v26, v13

    goto/16 :goto_26c

    :cond_1f0
    move-object/from16 v26, v13

    move-object/from16 v25, v14

    move-object/from16 v21, v15

    :goto_1f6
    const/16 v27, 0x0

    .line 566
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 567
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v8, :cond_269

    const-string v8, "ActivityManager"

    .line 568
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipped pss collection of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v10

    if-nez v10, :cond_21c

    const-string v10, "NO_THREAD "

    goto :goto_21e

    :cond_21c
    const-string v10, ""

    :goto_21e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_226

    const-string v3, "CAMERA "

    goto :goto_228

    :cond_226
    const-string v3, ""

    .line 570
    :goto_228
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v3

    if-eq v3, v4, :cond_234

    const-string v3, "PID_CHANGED "

    goto :goto_236

    :cond_234
    const-string v3, ""

    :goto_236
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " initState="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " curState="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_25d

    const-string v2, "TIME_CHANGED"

    goto :goto_25f

    :cond_25d
    const-string v2, ""

    .line 575
    :goto_25f
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 568
    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_269
    :goto_269
    monitor-exit v26

    goto :goto_274

    :catchall_26b
    move-exception v0

    :goto_26c
    monitor-exit v26
    :try_end_26d
    .catchall {:try_start_1dd .. :try_end_26d} :catchall_26b

    throw v0

    :cond_26e
    move/from16 v27, v13

    move-object/from16 v25, v14

    move-object/from16 v21, v15

    :goto_274
    move-object/from16 v15, v21

    move-object/from16 v14, v25

    move/from16 v13, v27

    goto/16 :goto_ca

    :catchall_27c
    move-exception v0

    .line 549
    :try_start_27d
    monitor-exit v3
    :try_end_27e
    .catchall {:try_start_27d .. :try_end_27e} :catchall_27c

    throw v0

    :catchall_27f
    move-exception v0

    .line 475
    :try_start_280
    monitor-exit v1
    :try_end_281
    .catchall {:try_start_280 .. :try_end_281} :catchall_27f

    throw v0
.end method

.method public final deferPssForActivityStart()V
    .registers 5

    .line 890
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2b

    .line 891
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_13

    const-string v0, "ActivityManager"

    const-string v1, "Deferring PSS collection for activity start"

    .line 892
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 895
    :try_start_16
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->deferPssIfNeededLPf()V

    .line 896
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_28

    .line 897
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 898
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2b

    :catchall_28
    move-exception p0

    .line 896
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0

    :cond_2b
    :goto_2b
    return-void
.end method

.method public final deferPssIfNeededLPf()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 883
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 884
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 885
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_15
    return-void
.end method

.method public final doLowMemReportIfNeededLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1503
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->haveBackgroundProcessLOSP()Z

    move-result v0

    if-nez v0, :cond_59

    .line 1504
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 1505
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    if-eqz v0, :cond_21

    .line 1507
    iget-wide v1, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    const-wide/32 v3, 0x493e0

    add-long/2addr v1, v3

    cmp-long v1, v5, v1

    if-gez v1, :cond_1f

    move v0, v7

    goto :goto_21

    .line 1510
    :cond_1f
    iput-wide v5, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    .line 1513
    :cond_21
    :goto_21
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    if-eqz v0, :cond_31

    .line 1515
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_32

    :cond_31
    const/4 v2, 0x0

    :goto_32
    move-object v8, v2

    .line 1516
    invoke-static {v1}, Lcom/android/server/am/EventLogTags;->writeAmLowMemory(I)V

    .line 1517
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v10, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda7;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;J)V

    invoke-virtual {v9, v7, v10}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    if-eqz v0, :cond_59

    .line 1546
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v0, 0x21

    invoke-virtual {p1, v0, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1547
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1550
    :cond_59
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1551
    :try_start_5c
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 1552
    monitor-exit p1

    return-void

    :catchall_61
    move-exception p0

    monitor-exit p1
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_61

    throw p0
.end method

.method public dumpHeapFinished(Ljava/lang/String;I)V
    .registers 6

    .line 745
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 746
    :try_start_3
    iget v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    if-eq p2, v1, :cond_2d

    const-string p1, "ActivityManager"

    .line 747
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpHeapFinished: Calling pid "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " does not match last pid "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    monitor-exit v0

    return-void

    .line 751
    :cond_2d
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    if-eqz p2, :cond_68

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3c

    goto :goto_68

    .line 756
    :cond_3c
    sget-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz p2, :cond_56

    const-string p2, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump heap finished for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_56
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 p1, 0x32

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 761
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->gc()V

    .line 762
    monitor-exit v0

    return-void

    :cond_68
    :goto_68
    const-string p2, "ActivityManager"

    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpHeapFinished: Calling path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match last path "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    monitor-exit v0

    return-void

    :catchall_8a
    move-exception p0

    .line 762
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_3 .. :try_end_8c} :catchall_8a

    throw p0
.end method

.method public dumpLastMemoryLevelLocked(Ljava/io/PrintWriter;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2460
    iget p0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    if-eqz p0, :cond_2a

    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_16

    .line 2474
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, ")"

    .line 2475
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_30

    :cond_16
    const-string p0, "critical)"

    .line 2471
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_30

    :cond_1c
    const-string/jumbo p0, "low)"

    .line 2468
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_30

    :cond_23
    const-string/jumbo p0, "moderate)"

    .line 2465
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_30

    :cond_2a
    const-string/jumbo p0, "normal)"

    .line 2462
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_30
    return-void
.end method

.method public dumpMemWatchProcessesLPf(Ljava/io/PrintWriter;Z)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 2397
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_b7

    const-string v0, "  Mem watch processes:"

    .line 2398
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2399
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 2400
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 2401
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1d
    if-ltz v1, :cond_85

    .line 2402
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2403
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 2404
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_31
    if-ltz v4, :cond_82

    if-eqz p2, :cond_39

    .line 2406
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const/4 p2, 0x0

    .line 2409
    :cond_39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    .line 2410
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2411
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v5, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 2412
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    const-string v7, ": "

    .line 2413
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8, v5}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 2414
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v7, :cond_78

    const-string v7, ", report to "

    .line 2415
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2417
    :cond_78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_31

    :cond_82
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    :cond_85
    const-string v0, "  mMemWatchDumpProcName="

    .line 2420
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mMemWatchDumpUri="

    .line 2421
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mMemWatchDumpPid="

    .line 2422
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mMemWatchDumpUid="

    .line 2423
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mMemWatchIsUserInitiated="

    .line 2424
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_b7
    return p2
.end method

.method public dumpMemoryLevelsLocked(Ljava/io/PrintWriter;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowLowerMemLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLastMemoryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLastNumProcesses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTrimCallCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mTrimCallCount:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2487
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2489
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mTrimHistogramList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a0

    const-string v2, "  mTrimCallHistogram={"

    .line 2490
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2491
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mTrimHistogramList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_5d
    if-ltz v2, :cond_9a

    .line 2492
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mTrimHistogramList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppProfiler$TrimHistogram;

    .line 2493
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v5, 0xea60

    div-long v5, v0, v5

    iget-wide v7, v3, Lcom/android/server/am/AppProfiler$TrimHistogram;->mTime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "m,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/android/server/am/AppProfiler$TrimHistogram;->mCallCount:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_5d

    :cond_9a
    const-string/jumbo p0, "}"

    .line 2495
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a0
    return-void
.end method

.method public dumpProcessesToGc(Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 2629
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_74

    .line 2631
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2632
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v3, v2, :cond_74

    .line 2633
    iget-object v5, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    if-eqz p3, :cond_2b

    .line 2634
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    goto :goto_71

    :cond_2b
    const/4 v6, 0x1

    if-nez v4, :cond_3a

    if-eqz p2, :cond_33

    .line 2638
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_33
    const-string p2, "  Processes that are waiting to GC:"

    .line 2640
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p2, v6

    move v4, p2

    :cond_3a
    const-string v6, "    Process "

    .line 2643
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2644
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const-string v6, "      lowMem="

    .line 2645
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getReportLowMemory()Z

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, ", last gced="

    .line 2646
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2647
    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v6

    sub-long v6, v0, v6

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    const-string v6, " ms ago, last lowMem="

    .line 2648
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2649
    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getLastLowMemory()J

    move-result-wide v5

    sub-long v5, v0, v5

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string v5, " ms ago"

    .line 2650
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_74
    return p2
.end method

.method public dumpProfileDataLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2431
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2432
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_ee

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2433
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2434
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_ee

    :cond_2c
    if-eqz p2, :cond_3a

    .line 2435
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ee

    :cond_3a
    if-eqz p3, :cond_40

    .line 2437
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const/4 p3, 0x0

    .line 2440
    :cond_40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mProfileApp="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mProfileProc="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2441
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2440
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2442
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p2

    if-eqz p2, :cond_ee

    .line 2443
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mProfileFile="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mProfileFd="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2444
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2443
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2445
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSamplingInterval="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2446
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ProfilerInfo;->samplingInterval:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mAutoStopProfiler="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2448
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mStreamingOutput="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2450
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2445
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2451
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mProfileType="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_ee
    return p3
.end method

.method public forAllCpuStats(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)V"
        }
    .end annotation

    .line 2158
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2159
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_18

    .line 2161
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2163
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public getAppProfileStatsForDebugging(JI)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2588
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2589
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    .line 2590
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v1

    .line 2591
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object p0

    .line 2592
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_35

    const/4 p1, 0x0

    move p2, p1

    move v0, p2

    :goto_16
    if-gt p2, p3, :cond_2b

    const/16 v2, 0xa

    .line 2596
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_26

    .line 2598
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_2b

    :cond_26
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_16

    .line 2603
    :cond_2b
    :goto_2b
    new-instance p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :catchall_35
    move-exception p0

    .line 2592
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public getCpuStats(Ljava/util/function/Predicate;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation

    .line 2152
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2153
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v1, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Predicate;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    .line 2154
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public getCpuTimeForPid(I)J
    .registers 3

    .line 2146
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2147
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_b
    move-exception p0

    .line 2148
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getLastMemoryLevelLocked()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 983
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 986
    :cond_6
    iget p0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    return p0
.end method

.method public getLowMemDetectorIsAvailable()Z
    .registers 1

    .line 2658
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/am/LowMemDetector;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public getLowRamTimeSinceIdleLPr(J)J
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 1383
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamTimeSinceLastIdle:J

    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_c

    sub-long v4, p1, v2

    :cond_c
    add-long/2addr v0, v4

    return-wide v0
.end method

.method public getTestPssMode()Z
    .registers 1

    .line 978
    iget-boolean p0, p0, Lcom/android/server/am/AppProfiler;->mTestPssMode:Z

    return p0
.end method

.method public handleAbortDumpHeap(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_1c

    .line 837
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 838
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x0

    .line 839
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 840
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    const/4 p1, -0x1

    .line 841
    iput p1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 842
    iput p1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 844
    :cond_17
    monitor-exit v0

    goto :goto_1c

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw p0

    :cond_1c
    :goto_1c
    return-void
.end method

.method public final handleMemoryPressureChangedLocked(II)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1879
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 1880
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-string/jumbo v3, "mem-pressure-event"

    move v1, p1

    move v2, p2

    .line 1879
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->rescheduleServiceRestartOnMemoryPressureIfNeededLocked(IILjava/lang/String;J)V

    return-void
.end method

.method public handlePostDumpHeapNotification()V
    .registers 10

    .line 771
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 772
    :try_start_3
    iget v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 773
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 774
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3, v2, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    if-nez v3, :cond_1a

    .line 776
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    :cond_1a
    const/4 v4, 0x0

    if-eqz v3, :cond_2a

    .line 779
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 780
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    goto :goto_2d

    :cond_2a
    const-wide/16 v5, 0x0

    move-object v3, v4

    .line 785
    :goto_2d
    iget-boolean v7, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    .line 787
    iput-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 788
    iput-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    const/4 v4, -0x1

    .line 789
    iput v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 790
    iput v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 791
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_8f

    if-nez v2, :cond_3c

    return-void

    .line 796
    :cond_3c
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_5e

    const-string v0, "ActivityManager"

    .line 797
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Showing dump heap notification from "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_5e
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.internal.intent.action.HEAP_DUMP_FINISHED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.android.shell"

    .line 802
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.UID"

    .line 803
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "com.android.internal.extra.heap_dump.IS_USER_INITIATED"

    .line 804
    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "com.android.internal.extra.heap_dump.SIZE_BYTES"

    .line 805
    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "com.android.internal.extra.heap_dump.REPORT_PACKAGE"

    .line 806
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.android.internal.extra.heap_dump.PROCESS_NAME"

    .line 807
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 810
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 809
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :catchall_8f
    move-exception p0

    .line 791
    :try_start_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw p0
.end method

.method public isLastMemoryLevelNormal()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 991
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-gtz v0, :cond_a

    goto :goto_b

    :cond_a
    move v1, v2

    :goto_b
    return v1

    .line 994
    :cond_c
    iget p0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    if-gtz p0, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    return v1
.end method

.method public noteTrimMemory(I)V
    .registers 9

    .line 1332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    .line 1333
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mTrimHistogramList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mTrimHistogramList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppProfiler$TrimHistogram;

    iget-wide v5, v2, Lcom/android/server/am/AppProfiler$TrimHistogram;->mTime:J

    cmp-long v2, v5, v0

    if-eqz v2, :cond_26

    goto :goto_34

    .line 1342
    :cond_26
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mTrimHistogramList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppProfiler$TrimHistogram;

    goto :goto_4e

    .line 1334
    :cond_34
    :goto_34
    new-instance v2, Lcom/android/server/am/AppProfiler$TrimHistogram;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/am/AppProfiler$TrimHistogram;-><init>(Lcom/android/server/am/AppProfiler;J)V

    .line 1335
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mTrimHistogramList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1337
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mTrimHistogramList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x78

    if-le v0, v1, :cond_4d

    .line 1338
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mTrimHistogramList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4d
    move-object v0, v2

    :goto_4e
    const/4 v1, 0x5

    if-eq p1, v1, :cond_c8

    const/16 v2, 0xa

    if-eq p1, v2, :cond_b9

    const/16 v2, 0xf

    if-eq p1, v2, :cond_a9

    const/16 v2, 0x14

    if-eq p1, v2, :cond_99

    const/16 v2, 0x28

    if-eq p1, v2, :cond_89

    const/16 v2, 0x3c

    if-eq p1, v2, :cond_7a

    const/16 v1, 0x50

    if-eq p1, v1, :cond_6a

    goto :goto_d6

    .line 1347
    :cond_6a
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mTrimCallCount:[I

    const/4 p1, 0x6

    aget v1, p0, p1

    add-int/2addr v1, v4

    aput v1, p0, p1

    .line 1348
    iget-object p0, v0, Lcom/android/server/am/AppProfiler$TrimHistogram;->mCallCount:[I

    aget v0, p0, p1

    add-int/2addr v0, v4

    aput v0, p0, p1

    goto :goto_d6

    .line 1351
    :cond_7a
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mTrimCallCount:[I

    aget p1, p0, v1

    add-int/2addr p1, v4

    aput p1, p0, v1

    .line 1352
    iget-object p0, v0, Lcom/android/server/am/AppProfiler$TrimHistogram;->mCallCount:[I

    aget p1, p0, v1

    add-int/2addr p1, v4

    aput p1, p0, v1

    goto :goto_d6

    .line 1355
    :cond_89
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mTrimCallCount:[I

    const/4 p1, 0x4

    aget v1, p0, p1

    add-int/2addr v1, v4

    aput v1, p0, p1

    .line 1356
    iget-object p0, v0, Lcom/android/server/am/AppProfiler$TrimHistogram;->mCallCount:[I

    aget v0, p0, p1

    add-int/2addr v0, v4

    aput v0, p0, p1

    goto :goto_d6

    .line 1359
    :cond_99
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mTrimCallCount:[I

    const/4 p1, 0x3

    aget v1, p0, p1

    add-int/2addr v1, v4

    aput v1, p0, p1

    .line 1360
    iget-object p0, v0, Lcom/android/server/am/AppProfiler$TrimHistogram;->mCallCount:[I

    aget v0, p0, p1

    add-int/2addr v0, v4

    aput v0, p0, p1

    goto :goto_d6

    .line 1363
    :cond_a9
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mTrimCallCount:[I

    const/4 p1, 0x2

    aget v1, p0, p1

    add-int/2addr v1, v4

    aput v1, p0, p1

    .line 1364
    iget-object p0, v0, Lcom/android/server/am/AppProfiler$TrimHistogram;->mCallCount:[I

    aget v0, p0, p1

    add-int/2addr v0, v4

    aput v0, p0, p1

    goto :goto_d6

    .line 1367
    :cond_b9
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mTrimCallCount:[I

    aget p1, p0, v4

    add-int/2addr p1, v4

    aput p1, p0, v4

    .line 1368
    iget-object p0, v0, Lcom/android/server/am/AppProfiler$TrimHistogram;->mCallCount:[I

    aget p1, p0, v4

    add-int/2addr p1, v4

    aput p1, p0, v4

    goto :goto_d6

    .line 1371
    :cond_c8
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mTrimCallCount:[I

    aget p1, p0, v3

    add-int/2addr p1, v4

    aput p1, p0, v3

    .line 1372
    iget-object p0, v0, Lcom/android/server/am/AppProfiler$TrimHistogram;->mCallCount:[I

    aget p1, p0, v3

    add-int/2addr p1, v4

    aput p1, p0, v3

    :goto_d6
    return-void
.end method

.method public onActivityLaunched()V
    .registers 5

    .line 2279
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    .line 2280
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2281
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_14
    return-void
.end method

.method public onActivityManagerInternalAdded()V
    .registers 3

    .line 2261
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2266
    :try_start_5
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    const-string v0, "ActivityManager"

    const-string v1, "Interrupted wait during start"

    .line 2268
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2269
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 2270
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onAppDiedLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2388
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2389
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-ne v1, p1, :cond_e

    .line 2390
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    .line 2392
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public onCleanupApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2378
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2379
    :try_start_3
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 2380
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2381
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2382
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 2383
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final performAppGcLPf(Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 1392
    :try_start_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1393
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessProfileRecord;->setLastRequestedGc(J)V

    .line 1394
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 1396
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getReportLowMemory()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    .line 1397
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessProfileRecord;->setReportLowMemory(Z)V

    .line 1398
    invoke-interface {p1}, Landroid/app/IApplicationThread;->scheduleLowMemory()V

    goto :goto_20

    .line 1400
    :cond_1d
    invoke-interface {p1}, Landroid/app/IApplicationThread;->processInBackground()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_20

    :catch_20
    :cond_20
    :goto_20
    return-void
.end method

.method public final performAppGcsIfAppropriateLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1446
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1447
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->canGcNowLocked()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1448
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->performAppGcsLPf()V

    .line 1449
    monitor-exit v0

    return-void

    .line 1452
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 1453
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final performAppGcsLPf()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 1414
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_9

    return-void

    .line 1417
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_47

    .line 1418
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1419
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1420
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getCurRawAdj()I

    move-result v2

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_2a

    .line 1421
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getReportLowMemory()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1422
    :cond_2a
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    add-long/2addr v1, v3

    .line 1423
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_44

    .line 1426
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppProfiler;->performAppGcLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 1427
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    return-void

    .line 1432
    :cond_44
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppProfiler;->addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 1438
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    return-void
.end method

.method public printCurrentCpuState(Ljava/lang/StringBuilder;J)V
    .registers 5

    .line 2580
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2581
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2582
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public profileControlLPf(Lcom/android/server/am/ProcessRecord;ZLandroid/app/ProfilerInfo;I)Z
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    if-eqz p2, :cond_51

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1933
    :try_start_4
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/AppProfiler;->stopProfilerLPf(Lcom/android/server/am/ProcessRecord;I)V

    .line 1934
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1935
    iget-boolean v4, p1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v4, :cond_16

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    goto :goto_17

    :cond_16
    move-object v4, v1

    .line 1934
    :goto_17
    invoke-virtual {v0, v2, v3, p3, v4}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 1936
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 1937
    iput p4, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 1938
    iget-object v0, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_23} :catch_6a
    .catchall {:try_start_4 .. :try_end_23} :catchall_68

    .line 1940
    :try_start_23
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_27} :catch_6a
    .catchall {:try_start_23 .. :try_end_27} :catchall_68

    goto :goto_29

    :catch_28
    move-object v0, v1

    .line 1944
    :goto_29
    :try_start_29
    iput-object v0, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 1945
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Landroid/app/IApplicationThread;->profilerControl(ZLandroid/app/ProfilerInfo;I)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_34} :catch_6a
    .catchall {:try_start_29 .. :try_end_34} :catchall_68

    .line 1948
    :try_start_34
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3f} :catch_3f
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3f} :catch_6a
    .catchall {:try_start_34 .. :try_end_3f} :catchall_68

    .line 1951
    :catch_3f
    :try_start_3f
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p0

    iput-object v1, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 1953
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p0

    sget p1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne p0, p1, :cond_5d

    move-object p3, v1

    goto :goto_5d

    .line 1961
    :cond_51
    invoke-virtual {p0, p1, p4}, Lcom/android/server/am/AppProfiler;->stopProfilerLPf(Lcom/android/server/am/ProcessRecord;I)V

    if-eqz p3, :cond_5d

    .line 1962
    iget-object p0, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_58} :catch_6a
    .catchall {:try_start_3f .. :try_end_58} :catchall_68

    if-eqz p0, :cond_5d

    .line 1964
    :try_start_5a
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5d
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5d} :catch_6a
    .catchall {:try_start_5a .. :try_end_5d} :catchall_68

    :catch_5d
    :cond_5d
    :goto_5d
    const/4 p0, 0x1

    if-eqz p3, :cond_67

    .line 1974
    iget-object p1, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_67

    .line 1976
    :try_start_64
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_67

    :catch_67
    :cond_67
    return p0

    :catchall_68
    move-exception p0

    goto :goto_72

    .line 1972
    :catch_6a
    :try_start_6a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Process disappeared"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_68

    :goto_72
    if-eqz p3, :cond_7b

    .line 1974
    iget-object p1, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_7b

    .line 1976
    :try_start_78
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7b

    .line 1980
    :catch_7b
    :cond_7b
    throw p0
.end method

.method public final recordPssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJJJJIJJ)V
    .registers 49
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move-wide/from16 v14, p3

    move-wide/from16 v10, p7

    move-wide/from16 v8, p9

    .line 607
    iget-object v12, v13, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 609
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v16

    iget v1, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-wide/16 v3, 0x400

    mul-long v31, v14, v3

    mul-long v21, p5, v3

    mul-long v23, v10, v3

    mul-long v25, v8, v3

    move/from16 v17, v1

    move-object/from16 v18, v2

    move-wide/from16 v19, v31

    move/from16 v27, p11

    move/from16 v28, p2

    move-wide/from16 v29, p12

    .line 608
    invoke-static/range {v16 .. v30}, Lcom/android/server/am/EventLogTags;->writeAmPss(IILjava/lang/String;JJJJIIJ)V

    move-wide/from16 v1, p14

    .line 611
    invoke-virtual {v13, v1, v2}, Lcom/android/server/am/ProcessProfileRecord;->setLastPssTime(J)V

    const/16 v16, 0x1

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p9

    move/from16 v8, v16

    move/from16 v9, p11

    move-wide/from16 v10, p12

    .line 612
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/ProcessProfileRecord;->addPss(JJJZIJ)V

    .line 613
    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v10

    new-instance v11, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;

    move-object v1, v11

    move-object v2, v12

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    move-object v0, v10

    move-object v13, v11

    move-wide/from16 v10, p12

    move-object/from16 p5, v12

    move-object/from16 v12, p1

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ProcessRecord;JJJIJLcom/android/server/am/ProcessProfileRecord;)V

    invoke-virtual {v0, v13}, Lcom/android/server/am/PackageList;->forEachPackageProcessStats(Ljava/util/function/Consumer;)V

    .line 624
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    const-string v1, "ActivityManager"

    if-eqz v0, :cond_a0

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pss of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " lastPss="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a0
    const-wide/32 v2, 0x80000

    cmp-long v0, v14, v2

    if-lez v0, :cond_dd

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v2

    .line 637
    new-instance v3, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v3}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 639
    invoke-static {v2, v3}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z

    const-string v4, "GL mtrack="

    .line 640
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xf

    .line 641
    invoke-virtual {v3, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", process="

    .line 642
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p5

    .line 643
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x12

    long-to-int v5, v14

    .line 645
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v2, v5, v0}, Landroid/util/PerfLog;->e(IIILjava/lang/String;)V

    goto :goto_df

    :cond_dd
    move-object/from16 v3, p5

    .line 650
    :goto_df
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessProfileRecord;->getInitialIdlePss()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_ef

    move-object/from16 v0, p1

    .line 651
    invoke-virtual {v0, v14, v15}, Lcom/android/server/am/ProcessProfileRecord;->setInitialIdlePss(J)V

    goto :goto_f1

    :cond_ef
    move-object/from16 v0, p1

    .line 653
    :goto_f1
    invoke-virtual {v0, v14, v15}, Lcom/android/server/am/ProcessProfileRecord;->setLastPss(J)V

    move-wide/from16 v4, p7

    .line 654
    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ProcessProfileRecord;->setLastSwapPss(J)V

    const/16 v2, 0xe

    move/from16 v6, p2

    if-lt v6, v2, :cond_105

    .line 656
    invoke-virtual {v0, v14, v15}, Lcom/android/server/am/ProcessProfileRecord;->setLastCachedPss(J)V

    .line 657
    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ProcessProfileRecord;->setLastCachedSwapPss(J)V

    :cond_105
    move-wide/from16 v4, p9

    .line 659
    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ProcessProfileRecord;->setLastRss(J)V

    move-object/from16 v2, p0

    .line 661
    iget-object v4, v2, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 662
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_136

    .line 665
    iget v7, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    if-nez v7, :cond_12f

    .line 667
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/util/Pair;

    :cond_12f
    if-eqz v7, :cond_136

    .line 670
    iget-object v4, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Ljava/lang/Long;

    :cond_136
    if-eqz v5, :cond_197

    .line 674
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v4, v31, v7

    if-ltz v4, :cond_197

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    if-eqz v4, :cond_197

    iget-object v4, v2, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    if-nez v4, :cond_197

    .line 676
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v7, " exceeded pss limit "

    const-string v8, "Process "

    if-nez v4, :cond_177

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    move-result v4

    if-eqz v4, :cond_159

    goto :goto_177

    .line 680
    :cond_159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", but debugging not enabled"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_197

    .line 677
    :cond_177
    :goto_177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; reporting"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-virtual {v2, v0, v6}, Lcom/android/server/am/AppProfiler;->startHeapDumpLPf(Lcom/android/server/am/ProcessProfileRecord;Z)V

    :cond_197
    :goto_197
    return-void
.end method

.method public reportMemUsage(Ljava/util/ArrayList;)V
    .registers 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessMemInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1556
    new-instance v2, Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 1557
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v3, :cond_22

    .line 1558
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessMemInfo;

    .line 1559
    iget v7, v6, Lcom/android/server/am/ProcessMemInfo;->pid:I

    invoke-virtual {v2, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 1561
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    const/4 v3, 0x4

    new-array v3, v3, [J

    const/4 v5, 0x2

    new-array v6, v5, [J

    .line 1565
    new-instance v7, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;

    invoke-direct {v7}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v7}, Lcom/android/server/am/AppProfiler;->getCpuStats(Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v7

    .line 1566
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const-wide/16 v9, 0x0

    move-wide v12, v9

    move-wide v14, v12

    const/4 v11, 0x0

    :goto_3d
    if-ge v11, v8, :cond_94

    .line 1570
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 1571
    iget v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move-object/from16 v18, v7

    move/from16 v19, v8

    invoke-static {v5, v6, v3}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v7

    cmp-long v5, v7, v9

    if-lez v5, :cond_8b

    .line 1573
    iget v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_8b

    .line 1574
    new-instance v5, Lcom/android/server/am/ProcessMemInfo;

    iget-object v9, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v4, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/16 v23, -0x3e8

    const/16 v24, -0x1

    const-string/jumbo v25, "native"

    const/16 v26, 0x0

    move-object/from16 v20, v5

    move-object/from16 v21, v9

    move/from16 v22, v4

    invoke-direct/range {v20 .. v26}, Lcom/android/server/am/ProcessMemInfo;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    .line 1576
    iput-wide v7, v5, Lcom/android/server/am/ProcessMemInfo;->pss:J

    const/4 v4, 0x1

    aget-wide v7, v6, v4

    .line 1577
    iput-wide v7, v5, Lcom/android/server/am/ProcessMemInfo;->swapPss:J

    const/4 v7, 0x0

    aget-wide v8, v3, v7

    .line 1578
    iput-wide v8, v5, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    aget-wide v7, v3, v4

    add-long/2addr v12, v7

    const/4 v4, 0x2

    aget-wide v7, v3, v4

    add-long/2addr v14, v7

    .line 1581
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8b
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, v18

    move/from16 v8, v19

    const-wide/16 v9, 0x0

    goto :goto_3d

    .line 1589
    :cond_94
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v18, 0x0

    :goto_9f
    if-ge v4, v2, :cond_df

    .line 1590
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessMemInfo;

    move v11, v2

    .line 1591
    iget-wide v1, v5, Lcom/android/server/am/ProcessMemInfo;->pss:J

    const-wide/16 v20, 0x0

    cmp-long v1, v1, v20

    if-nez v1, :cond_cc

    .line 1592
    iget v1, v5, Lcom/android/server/am/ProcessMemInfo;->pid:I

    invoke-static {v1, v6, v3}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v1

    iput-wide v1, v5, Lcom/android/server/am/ProcessMemInfo;->pss:J

    move-wide/from16 v20, v9

    const/4 v1, 0x1

    aget-wide v9, v6, v1

    .line 1593
    iput-wide v9, v5, Lcom/android/server/am/ProcessMemInfo;->swapPss:J

    const/4 v2, 0x0

    aget-wide v9, v3, v2

    .line 1594
    iput-wide v9, v5, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    aget-wide v9, v3, v1

    add-long/2addr v12, v9

    const/4 v1, 0x2

    aget-wide v9, v3, v1

    add-long/2addr v14, v9

    goto :goto_ce

    :cond_cc
    move-wide/from16 v20, v9

    .line 1598
    :goto_ce
    iget-wide v1, v5, Lcom/android/server/am/ProcessMemInfo;->pss:J

    add-long/2addr v7, v1

    .line 1599
    iget-wide v1, v5, Lcom/android/server/am/ProcessMemInfo;->swapPss:J

    add-long v18, v18, v1

    .line 1600
    iget-wide v1, v5, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    add-long v9, v20, v1

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    move v2, v11

    goto :goto_9f

    :cond_df
    move-wide/from16 v20, v9

    .line 1602
    new-instance v1, Lcom/android/server/am/AppProfiler$2;

    invoke-direct {v1, v0}, Lcom/android/server/am/AppProfiler$2;-><init>(Lcom/android/server/am/AppProfiler;)V

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1614
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1615
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Low on memory -- "

    .line 1616
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "total"

    const/4 v5, 0x0

    .line 1617
    invoke-static {v1, v7, v8, v3, v5}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    const-string/jumbo v3, "total"

    const/4 v5, 0x1

    .line 1618
    invoke-static {v4, v7, v8, v3, v5}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 1620
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1621
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1622
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/high16 v10, -0x80000000

    .line 1629
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v5, 0x0

    const/16 v22, 0x1

    const-wide/16 v24, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v35, 0x0

    :goto_12a
    if-ge v5, v11, :cond_210

    .line 1630
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    check-cast v0, Lcom/android/server/am/ProcessMemInfo;

    move-wide/from16 v37, v14

    .line 1632
    iget v14, v0, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v15, 0x384

    move-wide/from16 v39, v12

    if-lt v14, v15, :cond_142

    .line 1633
    iget-wide v12, v0, Lcom/android/server/am/ProcessMemInfo;->pss:J

    add-long v24, v24, v12

    :cond_142
    const/16 v12, -0x3e8

    if-eq v14, v12, :cond_1cf

    const/16 v13, 0x1f4

    if-lt v14, v13, :cond_152

    const/16 v13, 0x258

    if-eq v14, v13, :cond_152

    const/16 v13, 0x2bc

    if-ne v14, v13, :cond_1cf

    :cond_152
    if-eq v10, v14, :cond_175

    if-gtz v14, :cond_15b

    const-string v10, " / "

    .line 1643
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1645
    :cond_15b
    iget v10, v0, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ltz v10, :cond_16e

    if-eqz v22, :cond_168

    const-string v10, ":"

    .line 1647
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    :cond_168
    const-string v10, "\n\t at "

    .line 1650
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_173

    :cond_16e
    const-string v10, "$"

    .line 1652
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_173
    move v10, v14

    goto :goto_17f

    :cond_175
    const-string v13, " "

    .line 1655
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "$"

    .line 1656
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    :goto_17f
    iget v13, v0, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-gtz v13, :cond_18b

    .line 1659
    iget-wide v13, v0, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-object v15, v0, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v1, v13, v14, v15, v12}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 1661
    :cond_18b
    iget-wide v12, v0, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-object v14, v0, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-static {v4, v12, v13, v14, v15}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 1662
    iget v12, v0, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ltz v12, :cond_1cf

    add-int/lit8 v12, v5, 0x1

    if-ge v12, v11, :cond_1a5

    .line 1663
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessMemInfo;

    iget v12, v12, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-eq v12, v10, :cond_1cf

    :cond_1a5
    const-string v12, "("

    .line 1664
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    .line 1665
    :goto_1ab
    sget-object v13, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    array-length v14, v13

    if-ge v12, v14, :cond_1ca

    .line 1666
    aget v14, v13, v12

    iget v15, v0, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ne v14, v15, :cond_1c7

    .line 1667
    sget-object v14, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    aget-object v14, v14, v12

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    .line 1668
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1669
    aget v13, v13, v12

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1c7
    add-int/lit8 v12, v12, 0x1

    goto :goto_1ab

    :cond_1ca
    const-string v12, ")"

    .line 1672
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    :cond_1cf
    invoke-static {v3, v0}, Lcom/android/server/am/ActivityManagerService;->appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V

    .line 1677
    iget v12, v0, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v13, -0x3e8

    if-ne v12, v13, :cond_1eb

    .line 1679
    iget-wide v12, v0, Lcom/android/server/am/ProcessMemInfo;->pss:J

    const-wide/16 v14, 0x200

    cmp-long v14, v12, v14

    if-ltz v14, :cond_1e4

    .line 1680
    invoke-static {v6, v0}, Lcom/android/server/am/ActivityManagerService;->appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V

    goto :goto_208

    :cond_1e4
    add-long v30, v30, v12

    .line 1683
    iget-wide v12, v0, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    add-long v35, v35, v12

    goto :goto_208

    :cond_1eb
    const-wide/16 v12, 0x0

    cmp-long v14, v30, v12

    if-lez v14, :cond_205

    const/16 v28, -0x3e8

    const/16 v29, -0x1

    const-string v34, "(Other native)"

    move-object/from16 v27, v6

    move-wide/from16 v32, v35

    .line 1689
    invoke-static/range {v27 .. v34}, Lcom/android/server/am/ActivityManagerService;->appendBasicMemEntry(Ljava/lang/StringBuilder;IIJJLjava/lang/String;)V

    const/16 v12, 0xa

    .line 1691
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-wide/16 v30, 0x0

    .line 1694
    :cond_205
    invoke-static {v9, v0}, Lcom/android/server/am/ActivityManagerService;->appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V

    :goto_208
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v14, v37

    move-wide/from16 v12, v39

    goto/16 :goto_12a

    :cond_210
    move-wide/from16 v39, v12

    move-wide/from16 v37, v14

    const-string v0, "           "

    .line 1698
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1699
    invoke-static {v9, v7, v8}, Lcom/android/server/am/ProcessList;->appendRamKb(Ljava/lang/StringBuilder;J)V

    const-string v0, ": TOTAL"

    .line 1700
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v10, 0x0

    cmp-long v0, v20, v10

    if-lez v0, :cond_238

    const-string v0, " ("

    .line 1702
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1703
    invoke-static/range {v20 .. v21}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " memtrack)"

    .line 1704
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_238
    const-string v0, "\n"

    .line 1706
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1708
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 1709
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 1710
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object v2

    .line 1712
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v10, 0x400

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1713
    invoke-static {v2}, Landroid/os/Debug;->getMemInfo([J)V

    const-string v10, "  MemInfo: "

    .line 1714
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0xb

    .line 1715
    aget-wide v10, v2, v10

    invoke-static {v10, v11}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " slab, "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0xa

    .line 1716
    aget-wide v11, v2, v10

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " shmem, "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x13

    .line 1717
    aget-wide v10, v2, v10

    invoke-static {v10, v11}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " vm alloc, "

    .line 1718
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x14

    .line 1719
    aget-wide v10, v2, v10

    invoke-static {v10, v11}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " page tables "

    .line 1720
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x15

    .line 1721
    aget-wide v10, v2, v10

    invoke-static {v10, v11}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " kernel stack\n"

    .line 1722
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "           "

    .line 1723
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x2

    .line 1724
    aget-wide v11, v2, v10

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " buffers, "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x3

    .line 1725
    aget-wide v11, v2, v10

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " cached, "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x12

    .line 1726
    aget-wide v11, v2, v11

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " mapped, "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    .line 1727
    aget-wide v12, v2, v11

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " free\n"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x11

    .line 1728
    aget-wide v12, v2, v11

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_327

    const-string v12, "  ZRAM: "

    .line 1729
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1730
    aget-wide v11, v2, v11

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " RAM, "

    .line 1731
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0xf

    .line 1732
    aget-wide v11, v2, v11

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " swap total, "

    .line 1733
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x10

    .line 1734
    aget-wide v11, v2, v11

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " swap free\n"

    .line 1735
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1737
    :cond_327
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->getKsmInfo()[J

    move-result-object v2

    const/4 v11, 0x1

    .line 1738
    aget-wide v12, v2, v11

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_348

    const/4 v11, 0x0

    aget-wide v12, v2, v11

    cmp-long v11, v12, v14

    if-nez v11, :cond_348

    const/4 v11, 0x2

    aget-wide v12, v2, v11

    cmp-long v11, v12, v14

    if-nez v11, :cond_348

    aget-wide v11, v2, v10

    cmp-long v11, v11, v14

    if-eqz v11, :cond_388

    :cond_348
    const-string v11, "  KSM: "

    .line 1740
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    .line 1741
    aget-wide v11, v2, v11

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " saved from shared "

    .line 1742
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    .line 1743
    aget-wide v12, v2, v11

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n       "

    .line 1744
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x2

    .line 1745
    aget-wide v11, v2, v11

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " unshared; "

    .line 1746
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    aget-wide v10, v2, v10

    invoke-static {v10, v11}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " volatile\n"

    .line 1748
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_388
    const-string v2, "  Free RAM: "

    .line 1750
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v10

    add-long v10, v24, v10

    .line 1752
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 1751
    invoke-static {v10, v11}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 1753
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1754
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v10

    .line 1755
    invoke-static {}, Landroid/os/Debug;->getIonHeapsSizeKb()J

    move-result-wide v12

    .line 1756
    invoke-static {}, Landroid/os/Debug;->getIonPoolsSizeKb()J

    move-result-wide v14

    .line 1757
    invoke-static {}, Landroid/os/Debug;->getDmabufMappedSizeKb()J

    move-result-wide v16

    const-wide/16 v20, 0x0

    cmp-long v2, v12, v20

    if-ltz v2, :cond_3d9

    cmp-long v2, v14, v20

    if-ltz v2, :cond_3d9

    sub-long v20, v12, v16

    const-string v2, "       ION: "

    .line 1760
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long/2addr v12, v14

    .line 1761
    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 1762
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v10, v10, v20

    sub-long v7, v7, v39

    add-long v7, v7, v16

    goto :goto_42f

    .line 1770
    :cond_3d9
    invoke-static {}, Landroid/os/Debug;->getDmabufTotalExportedKb()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-ltz v2, :cond_3fb

    sub-long v14, v12, v16

    const-string v2, "DMA-BUF: "

    .line 1773
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1774
    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 1775
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long/2addr v10, v14

    sub-long v7, v7, v39

    add-long v7, v7, v16

    .line 1784
    :cond_3fb
    invoke-static {}, Landroid/os/Debug;->getDmabufHeapTotalExportedKb()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-ltz v2, :cond_416

    const-string v2, "DMA-BUF Heap: "

    .line 1786
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1787
    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 1788
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1791
    :cond_416
    invoke-static {}, Landroid/os/Debug;->getDmabufHeapPoolsSizeKb()J

    move-result-wide v12

    cmp-long v2, v12, v14

    if-ltz v2, :cond_42f

    const-string v2, "DMA-BUF Heaps pool: "

    .line 1793
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1794
    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 1795
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1799
    :cond_42f
    :goto_42f
    invoke-static {}, Landroid/os/Debug;->getGpuTotalUsageKb()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-ltz v2, :cond_482

    .line 1801
    invoke-static {}, Landroid/os/Debug;->getGpuPrivateMemoryKb()J

    move-result-wide v16

    cmp-long v2, v16, v14

    if-ltz v2, :cond_471

    sub-long v14, v12, v16

    const-string v2, "      GPU: "

    .line 1804
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1805
    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    .line 1806
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1807
    invoke-static {v14, v15}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dmabuf + "

    .line 1808
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1809
    invoke-static/range {v16 .. v17}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " private)\n"

    .line 1810
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v7, v7, v37

    add-long v10, v10, v16

    goto :goto_482

    :cond_471
    const-string v2, "       GPU: "

    .line 1816
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1817
    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 1818
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_482
    :goto_482
    const-string v2, "  Used RAM: "

    .line 1822
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v12, v7, v24

    add-long/2addr v12, v10

    .line 1823
    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 1825
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Lost RAM: "

    .line 1829
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v12

    sub-long v7, v7, v18

    sub-long/2addr v12, v7

    .line 1831
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v7

    sub-long/2addr v12, v7

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v7

    sub-long/2addr v12, v7

    sub-long/2addr v12, v10

    .line 1832
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v7

    sub-long/2addr v12, v7

    .line 1830
    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    .line 1833
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ActivityManager"

    const-string v2, "Low on memory:"

    .line 1834
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ActivityManager"

    .line 1835
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ActivityManager"

    .line 1836
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ActivityManager"

    .line 1837
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x400

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Low on memory:"

    .line 1840
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    .line 1842
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1843
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1844
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1845
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1846
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1847
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1848
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    move-object/from16 v3, p0

    .line 1849
    iget-object v4, v3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_50d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1850
    new-instance v14, Lcom/android/internal/util/FastPrintWriter;

    const/16 v5, 0x100

    const/4 v6, 0x0

    invoke-direct {v14, v2, v6, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    new-array v13, v6, [Ljava/lang/String;

    .line 1852
    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 1853
    iget-object v15, v3, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v15
    :try_end_520
    .catchall {:try_start_50d .. :try_end_520} :catchall_5b1

    :try_start_520
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1854
    iget-object v5, v3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    move-object v7, v14

    move-object v8, v13

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/am/ProcessList;->dumpProcessesLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;I)V

    .line 1855
    monitor-exit v15
    :try_end_532
    .catchall {:try_start_520 .. :try_end_532} :catchall_5ab

    :try_start_532
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1856
    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 1857
    iget-object v5, v3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v14

    move-object v8, v13

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActiveServices;->newServiceDumperLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)Lcom/android/server/am/ActiveServices$ServiceDumper;

    move-result-object v5

    .line 1858
    invoke-virtual {v5}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpLocked()V

    .line 1859
    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 1860
    iget-object v5, v3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v6, "activities"

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object v8, v14

    move-object v9, v13

    move-object v13, v15

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/wm/ActivityTaskManagerInternal;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V

    .line 1862
    invoke-virtual {v14}, Ljava/io/PrintWriter;->flush()V

    .line 1863
    monitor-exit v4
    :try_end_561
    .catchall {:try_start_532 .. :try_end_561} :catchall_5b1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1864
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x51

    .line 1865
    invoke-static {v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(I)V

    .line 1866
    iget-object v4, v3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "lowmem"

    const/4 v6, 0x0

    const-string/jumbo v7, "system_server"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1867
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1866
    invoke-virtual/range {v4 .. v17}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/Float;Landroid/os/incremental/IncrementalMetrics;Ljava/util/UUID;)V

    .line 1868
    iget-object v1, v3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_591
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1869
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1870
    iget-wide v6, v3, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    cmp-long v0, v6, v4

    if-gez v0, :cond_5a0

    .line 1871
    iput-wide v4, v3, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    .line 1873
    :cond_5a0
    monitor-exit v1
    :try_end_5a1
    .catchall {:try_start_591 .. :try_end_5a1} :catchall_5a5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_5a5
    move-exception v0

    :try_start_5a6
    monitor-exit v1
    :try_end_5a7
    .catchall {:try_start_5a6 .. :try_end_5a7} :catchall_5a5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_5ab
    move-exception v0

    .line 1855
    :try_start_5ac
    monitor-exit v15
    :try_end_5ad
    .catchall {:try_start_5ac .. :try_end_5ad} :catchall_5ab

    :try_start_5ad
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_5b1
    move-exception v0

    .line 1863
    monitor-exit v4
    :try_end_5b3
    .catchall {:try_start_5ad .. :try_end_5b3} :catchall_5b1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public requestPssAllProcsLPr(JZZ)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 925
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p3, :cond_1d

    .line 927
    :try_start_5
    iget-wide v1, p0, Lcom/android/server/am/AppProfiler;->mLastFullPssTime:J

    if-eqz p4, :cond_10

    .line 928
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    goto :goto_16

    .line 929
    :cond_10
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    :goto_16
    add-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-gez v1, :cond_1d

    .line 930
    monitor-exit v0

    return-void

    .line 933
    :cond_1d
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v1, :cond_37

    const-string v1, "ActivityManager"

    .line 934
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting pss of all procs!  memLowered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_37
    iput-wide p1, p0, Lcom/android/server/am/AppProfiler;->mLastFullPssTime:J

    const/4 v1, 0x1

    .line 937
    iput-boolean v1, p0, Lcom/android/server/am/AppProfiler;->mFullPssPending:Z

    .line 938
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_43
    if-ltz v2, :cond_53

    .line 939
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_43

    .line 941
    :cond_53
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 942
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 943
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x0

    new-instance v10, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda5;

    move-object v4, v10

    move-object v5, p0

    move v6, p4

    move v7, p3

    move-wide v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/AppProfiler;ZZJ)V

    invoke-virtual {v2, v3, v10}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 960
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_84

    .line 961
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 963
    :cond_84
    monitor-exit v0

    return-void

    :catchall_86
    move-exception p0

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_5 .. :try_end_88} :catchall_86

    throw p0
.end method

.method public final requestPssLPf(Lcom/android/server/am/ProcessProfileRecord;I)Z
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 858
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 861
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v2, "ActivityManager"

    const/4 v3, 0x1

    if-nez v0, :cond_50

    .line 862
    iget-wide v4, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_28

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_28

    .line 863
    iget-wide v4, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    goto :goto_29

    :cond_28
    move-wide v4, v6

    .line 864
    :goto_29
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_4b

    cmp-long v0, v4, v6

    if-lez v0, :cond_4b

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestPssLPf() deferring PSS request by "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_4b
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 870
    :cond_50
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_6a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting pss of: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_6a
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessProfileRecord;->setPssProcState(I)V

    .line 872
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessProfileRecord;->setPssStatType(I)V

    .line 873
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssProfiles:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v3
.end method

.method public retrieveSettings()V
    .registers 6

    const-string v0, "activity_manager"

    const-string v1, "activity_start_pss_defer"

    const-wide/16 v2, 0x0

    .line 2252
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    .line 2255
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mPssDelayConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 2254
    invoke-static {v0, v3, v4}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 2257
    iput-wide v1, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    return-void
.end method

.method public final scheduleAppGcsLPf()V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 1461
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1463
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_45

    .line 1465
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1466
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1468
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    add-long/2addr v2, v4

    .line 1469
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1470
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    add-long v8, v4, v6

    cmp-long v0, v2, v8

    if-gez v0, :cond_40

    add-long v2, v4, v6

    .line 1473
    :cond_40
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_45
    return-void
.end method

.method public setAgentAppLPf(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    if-nez p2, :cond_15

    .line 2007
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    if-eqz p2, :cond_4e

    .line 2008
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2009
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4e

    const/4 p1, 0x0

    .line 2010
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    goto :goto_4e

    .line 2014
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    if-nez v0, :cond_20

    .line 2015
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 2017
    :cond_20
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_49

    .line 2019
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "App agent map has too many entries, cannot add "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2023
    :cond_49
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    :goto_4e
    return-void
.end method

.method public setAllowLowerMemLevelLocked(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1007
    iput-boolean p1, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    return-void
.end method

.method public setCpuInfoService()V
    .registers 4

    .line 2233
    new-instance v0, Lcom/android/server/am/AppProfiler$CpuBinder;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppProfiler$CpuBinder;-><init>(Lcom/android/server/am/AppProfiler;)V

    const-string p0, "cpuinfo"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    return-void
.end method

.method public setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V
    .registers 9

    .line 815
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-lez v1, :cond_1a

    .line 817
    :try_start_9
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {v1, p3, p5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    :catchall_18
    move-exception p0

    goto :goto_2d

    :cond_1a
    if-eqz p2, :cond_22

    .line 820
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_2b

    .line 822
    :cond_22
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    :goto_2b
    monitor-exit v0

    return-void

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_18

    throw p0
.end method

.method public setMemFactorOverrideLocked(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1012
    iput p1, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    return-void
.end method

.method public setProfileAppLPf(Ljava/lang/String;Landroid/app/ProfilerInfo;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 1985
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileApp(Ljava/lang/String;)V

    .line 1987
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 1988
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_22

    .line 1990
    :try_start_17
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_22} :catch_22

    .line 1995
    :catch_22
    :cond_22
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    new-instance v0, Landroid/app/ProfilerInfo;

    invoke-direct {v0, p2}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    invoke-virtual {p1, v0}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfilerInfo(Landroid/app/ProfilerInfo;)V

    const/4 p1, 0x0

    .line 1996
    iput p1, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    return-void
.end method

.method public setProfileProcLPf(Lcom/android/server/am/ProcessRecord;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 2001
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public setTestPssMode(Z)V
    .registers 5

    .line 967
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 968
    iput-boolean p1, p0, Lcom/android/server/am/AppProfiler;->mTestPssMode:Z

    if-eqz p1, :cond_12

    .line 972
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 p1, 0x1

    invoke-virtual {p0, v1, v2, p1, p1}, Lcom/android/server/am/AppProfiler;->requestPssAllProcsLPr(JZZ)V

    .line 974
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_17
    move-exception p0

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public setupProfilerInfoLocked(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActiveInstrumentation;)Landroid/app/ProfilerInfo;
    .registers 24
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 2290
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2291
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2292
    :try_start_d
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v6}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_6b

    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2293
    invoke-virtual {v6}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 2294
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v6, v2}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 2295
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v6}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v6

    if-eqz v6, :cond_87

    .line 2298
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v6}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-nez v6, :cond_48

    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2299
    invoke-virtual {v6}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v6

    iget-boolean v6, v6, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    if-eqz v6, :cond_46

    goto :goto_48

    :cond_46
    move v6, v7

    goto :goto_49

    :cond_48
    :goto_48
    move v6, v9

    :goto_49
    if-eqz v6, :cond_57

    .line 2301
    new-instance v6, Landroid/app/ProfilerInfo;

    iget-object v10, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v10}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    goto :goto_58

    :cond_57
    move-object v6, v8

    .line 2302
    :goto_58
    iget-object v10, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v10}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    if-eqz v10, :cond_81

    .line 2303
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v8}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    goto :goto_81

    :cond_6b
    if-eqz v3, :cond_87

    .line 2306
    iget-object v6, v3, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    if-eqz v6, :cond_87

    .line 2307
    new-instance v6, Landroid/app/ProfilerInfo;

    iget-object v11, v3, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v6

    invoke-direct/range {v10 .. v17}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;Z)V

    :cond_81
    :goto_81
    move-object/from16 v19, v8

    move-object v8, v6

    move-object/from16 v6, v19

    goto :goto_88

    :cond_87
    move-object v6, v8

    .line 2310
    :goto_88
    iget-object v10, v0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    if-eqz v10, :cond_cb

    invoke-interface {v10, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_cb

    .line 2313
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    move-result v10

    if-eqz v10, :cond_cb

    .line 2314
    iget-object v10, v0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v8, :cond_bb

    .line 2317
    new-instance v8, Landroid/app/ProfilerInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v10, v0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 2318
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v17, v10

    check-cast v17, Ljava/lang/String;

    const/16 v18, 0x1

    move-object v11, v8

    invoke-direct/range {v11 .. v18}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;Z)V

    goto :goto_cb

    .line 2319
    :cond_bb
    iget-object v10, v8, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    if-nez v10, :cond_cb

    .line 2320
    iget-object v10, v0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10, v9}, Landroid/app/ProfilerInfo;->setAgent(Ljava/lang/String;Z)Landroid/app/ProfilerInfo;

    move-result-object v8

    :cond_cb
    :goto_cb
    if-eqz v8, :cond_ee

    .line 2325
    iget-object v10, v8, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v10, :cond_ee

    .line 2326
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    iput-object v10, v8, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 2327
    iget-object v10, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v10}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_ee

    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2328
    invoke-virtual {v4}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v4

    if-eqz v4, :cond_ee

    .line 2329
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    .line 2332
    :cond_ee
    monitor-exit v5
    :try_end_ef
    .catchall {:try_start_d .. :try_end_ef} :catchall_17f

    .line 2338
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_16c

    if-nez v3, :cond_16c

    .line 2339
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v9

    :goto_104
    if-ltz v3, :cond_16c

    .line 2340
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v4

    if-nez v4, :cond_16c

    .line 2341
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActiveInstrumentation;

    .line 2342
    iget-boolean v5, v4, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    if-nez v5, :cond_169

    iget-object v5, v4, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v9, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v5, v9, :cond_169

    .line 2343
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v5

    :try_start_125
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 2344
    iget-object v9, v4, Lcom/android/server/am/ActiveInstrumentation;->mTargetProcesses:[Ljava/lang/String;

    array-length v10, v9

    if-nez v10, :cond_144

    .line 2347
    iget-object v9, v4, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15e

    .line 2348
    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessRecord;->setActiveInstrumentation(Lcom/android/server/am/ActiveInstrumentation;)V

    .line 2349
    iget-object v4, v4, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15e

    .line 2352
    :cond_144
    array-length v10, v9

    move v11, v7

    :goto_146
    if-ge v11, v10, :cond_15e

    aget-object v12, v9, v11

    .line 2353
    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15b

    .line 2354
    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessRecord;->setActiveInstrumentation(Lcom/android/server/am/ActiveInstrumentation;)V

    .line 2355
    iget-object v4, v4, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15e

    :cond_15b
    add-int/lit8 v11, v11, 0x1

    goto :goto_146

    .line 2360
    :cond_15e
    :goto_15e
    monitor-exit v5
    :try_end_15f
    .catchall {:try_start_125 .. :try_end_15f} :catchall_163

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_169

    :catchall_163
    move-exception v0

    :try_start_164
    monitor-exit v5
    :try_end_165
    .catchall {:try_start_164 .. :try_end_165} :catchall_163

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :cond_169
    :goto_169
    add-int/lit8 v3, v3, -0x1

    goto :goto_104

    :cond_16c
    if-eqz v6, :cond_171

    .line 2368
    invoke-interface {v1, v6}, Landroid/app/IApplicationThread;->attachAgent(Ljava/lang/String;)V

    .line 2370
    :cond_171
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_17e

    .line 2371
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/app/IApplicationThread;->attachStartupAgents(Ljava/lang/String;)V

    :cond_17e
    return-object v8

    :catchall_17f
    move-exception v0

    .line 2332
    :try_start_180
    monitor-exit v5
    :try_end_181
    .catchall {:try_start_180 .. :try_end_181} :catchall_17f

    throw v0
.end method

.method public startHeapDumpLPf(Lcom/android/server/am/ProcessProfileRecord;Z)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 727
    iget-object v0, p1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 728
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 729
    invoke-static {v1}, Lcom/android/server/am/AppProfiler;->makeHeapDumpUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 730
    invoke-virtual {p1}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 731
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 732
    iput-boolean p2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    .line 735
    :try_start_18
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android"

    const/4 v2, 0x0

    .line 736
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 735
    invoke-virtual {p2, v1, v2, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p2
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_27} :catch_3a

    .line 740
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/AppProfiler$RecordPssRunnable;

    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 741
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-direct {v1, p0, p1, v2, p2}, Lcom/android/server/am/AppProfiler$RecordPssRunnable;-><init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessProfileRecord;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    .line 740
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 738
    :catch_3a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "android package not found."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final stopDeferPss()V
    .registers 5

    .line 903
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    const-string v1, "ActivityManager"

    if-gtz v0, :cond_2f

    .line 905
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v2, :cond_22

    .line 906
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PSS activity start deferral interval ended; now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    if-gez v0, :cond_47

    const-string v0, "Activity start nesting undercount!"

    .line 910
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_47

    .line 914
    :cond_2f
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz p0, :cond_47

    .line 915
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still deferring PSS, nesting="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    :goto_47
    return-void
.end method

.method public final stopProfilerLPf(Lcom/android/server/am/ProcessRecord;I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 1885
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-ne p1, v0, :cond_15

    .line 1886
    :cond_a
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    .line 1887
    iget p2, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 1888
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    :cond_15
    if-nez p1, :cond_18

    return-void

    .line 1893
    :cond_18
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    if-nez p0, :cond_21

    return-void

    :cond_21
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1898
    :try_start_23
    invoke-interface {p0, p1, v0, p2}, Landroid/app/IApplicationThread;->profilerControl(ZLandroid/app/ProfilerInfo;I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_27

    return-void

    .line 1900
    :catch_27
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Process disappeared"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final trimMemoryUiHiddenIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 1286
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_11

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1287
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->isSystemNoUi()Z

    move-result v0

    if-eqz v0, :cond_82

    :cond_11
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->hasPendingUiClean()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 1293
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_7d

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 1295
    :try_start_2a
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_TRIM_MEMORY_LOG:Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2c} :catch_7d

    const-string v4, " to "

    if-nez v3, :cond_38

    :try_start_30
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v3, :cond_38

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v3, :cond_56

    :cond_38
    const-string v3, "ActivityManager"

    .line 1297
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trimming memory of bg-ui "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "B|scheduleTrimMemory: Trimming memory of bg-ui "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 1302
    invoke-interface {v0, v2}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V

    const-string v0, "E|scheduleTrimMemory"

    .line 1303
    invoke-static {v0, v1}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 1305
    invoke-virtual {p0, v2}, Lcom/android/server/am/AppProfiler;->noteTrimMemory(I)V
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_7d} :catch_7d

    .line 1310
    :catch_7d
    :cond_7d
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessProfileRecord;->setPendingUiClean(Z)V

    :cond_82
    return-void
.end method

.method public updateCpuStats()V
    .registers 7

    .line 2028
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2029
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    sub-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_12

    return-void

    .line 2032
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2033
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Ljava/lang/Thread;

    monitor-enter v0

    .line 2034
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2035
    monitor-exit v0

    goto :goto_29

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_26

    throw p0

    :cond_29
    :goto_29
    return-void
.end method

.method public updateCpuStatsNow()V
    .registers 25

    move-object/from16 v0, p0

    .line 2040
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "settings_enable_monitor_phantom_procs"

    invoke-static {v1, v4}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, v3

    .line 2042
    :goto_1a
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v4

    .line 2043
    :try_start_1d
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2044
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 2047
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2048
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    const-wide/16 v9, 0x1388

    sub-long v9, v5, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_9e

    .line 2049
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 2050
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 2051
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->hasGoodLastStats()Z

    move-result v7

    if-eqz v7, :cond_9e

    const-string/jumbo v7, "true"

    const-string v8, "events.cpu"

    .line 2058
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9f

    .line 2059
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v7

    .line 2060
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v8

    .line 2061
    iget-object v9, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v9}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIoWaitTime()I

    move-result v9

    .line 2062
    iget-object v10, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v10}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v10

    .line 2063
    iget-object v11, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSoftIrqTime()I

    move-result v11

    .line 2064
    iget-object v12, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v12}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v12

    add-int v13, v7, v8

    add-int/2addr v13, v9

    add-int/2addr v13, v10

    add-int/2addr v13, v11

    add-int/2addr v12, v13

    if-nez v12, :cond_82

    move v12, v2

    :cond_82
    mul-int/lit8 v13, v13, 0x64

    .line 2069
    div-int v14, v13, v12

    mul-int/lit8 v7, v7, 0x64

    div-int v15, v7, v12

    mul-int/lit8 v8, v8, 0x64

    div-int v16, v8, v12

    mul-int/lit8 v9, v9, 0x64

    div-int v17, v9, v12

    mul-int/lit8 v10, v10, 0x64

    div-int v18, v10, v12

    mul-int/lit8 v11, v11, 0x64

    div-int v19, v11, v12

    invoke-static/range {v14 .. v19}, Lcom/android/server/am/EventLogTags;->writeCpu(IIIIII)V

    goto :goto_9f

    :cond_9e
    move v2, v3

    :cond_9f
    :goto_9f
    if-eqz v1, :cond_ac

    if-eqz v2, :cond_ac

    .line 2081
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1, v7}, Lcom/android/server/am/PhantomProcessList;->updateProcessCpuStatesLocked(Lcom/android/internal/os/ProcessCpuTracker;)V

    .line 2084
    :cond_ac
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    .line 2085
    monitor-enter v1
    :try_end_b5
    .catchall {:try_start_1d .. :try_end_b5} :catchall_1cd

    if-eqz v2, :cond_1af

    .line 2087
    :try_start_b7
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->startAddingCpuLocked()Z

    move-result v2

    if-eqz v2, :cond_1af

    .line 2090
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v2

    .line 2091
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 2092
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 2093
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v12
    :try_end_d0
    .catchall {:try_start_b7 .. :try_end_d0} :catchall_1ca

    move v8, v3

    move v9, v8

    :goto_d2
    if-ge v3, v2, :cond_17e

    .line 2095
    :try_start_d4
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7, v3}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v13

    .line 2096
    iget-boolean v7, v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-nez v7, :cond_e6

    move/from16 v20, v2

    move-wide/from16 v22, v5

    move-object/from16 v21, v12

    goto/16 :goto_170

    .line 2099
    :cond_e6
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget v10, v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v7, v10}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v7

    .line 2100
    iget v10, v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    add-int v18, v8, v10

    .line 2101
    iget v8, v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int v19, v9, v8

    if-eqz v7, :cond_146

    .line 2103
    iget-object v10, v7, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 2104
    invoke-virtual {v10}, Lcom/android/server/am/ProcessProfileRecord;->getCurProcBatteryStats()Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v8

    if-eqz v8, :cond_112

    .line 2105
    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->isActive()Z

    move-result v9

    if-nez v9, :cond_109

    goto :goto_112

    :cond_109
    move/from16 v20, v2

    move-wide/from16 v22, v5

    move-object v2, v10

    move-object/from16 v21, v12

    move-object v5, v13

    goto :goto_12b

    .line 2106
    :cond_112
    :goto_112
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;
    :try_end_118
    .catchall {:try_start_d4 .. :try_end_118} :catchall_17a

    move-object v7, v1

    move/from16 v20, v2

    move-object v2, v10

    move-wide v10, v14

    move-wide/from16 v22, v5

    move-object/from16 v21, v12

    move-object v5, v13

    move-wide/from16 v12, v16

    .line 2107
    :try_start_124
    invoke-virtual/range {v7 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;JJ)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v8

    .line 2106
    invoke-virtual {v2, v8}, Lcom/android/server/am/ProcessProfileRecord;->setCurProcBatteryStats(Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;)V

    .line 2111
    :goto_12b
    iget v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v7, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    invoke-virtual {v8, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V

    .line 2112
    iget-object v6, v2, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    iget v7, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v5, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v7, v5

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v5

    .line 2114
    iget-object v2, v2, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v7, 0x0

    invoke-virtual {v2, v7, v8, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    goto :goto_16c

    :cond_146
    move/from16 v20, v2

    move-wide/from16 v22, v5

    move-object/from16 v21, v12

    move-object v5, v13

    .line 2116
    iget-object v2, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->batteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    if-eqz v2, :cond_157

    .line 2117
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->isActive()Z

    move-result v6

    if-nez v6, :cond_165

    .line 2118
    :cond_157
    iget v8, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget-object v9, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object v7, v1

    move-wide v10, v14

    move-wide/from16 v12, v16

    invoke-virtual/range {v7 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;JJ)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v2

    iput-object v2, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->batteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 2121
    :cond_165
    iget v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v5, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    invoke-virtual {v2, v6, v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V

    :goto_16c
    move/from16 v8, v18

    move/from16 v9, v19

    :goto_170
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v20

    move-object/from16 v12, v21

    move-wide/from16 v5, v22

    goto/16 :goto_d2

    :catchall_17a
    move-exception v0

    move-object/from16 v21, v12

    goto :goto_1ad

    :cond_17e
    move-wide/from16 v22, v5

    move-object/from16 v21, v12

    .line 2124
    monitor-exit v21
    :try_end_183
    .catchall {:try_start_124 .. :try_end_183} :catchall_1ac

    .line 2126
    :try_start_183
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v10

    .line 2127
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v11

    .line 2128
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIoWaitTime()I

    move-result v12

    .line 2129
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v13

    .line 2130
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSoftIrqTime()I

    move-result v14

    .line 2131
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v15

    move-object v7, v1

    .line 2132
    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/os/BatteryStatsImpl;->finishAddingCpuLocked(IIIIIIII)V
    :try_end_1ab
    .catchall {:try_start_183 .. :try_end_1ab} :catchall_1ca

    goto :goto_1b1

    :catchall_1ac
    move-exception v0

    .line 2124
    :goto_1ad
    :try_start_1ad
    monitor-exit v21
    :try_end_1ae
    .catchall {:try_start_1ad .. :try_end_1ae} :catchall_1ac

    :try_start_1ae
    throw v0

    :cond_1af
    move-wide/from16 v22, v5

    .line 2137
    :goto_1b1
    iget-wide v2, v0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    const-wide/32 v5, 0x1b7740

    sub-long v5, v22, v5

    cmp-long v2, v2, v5

    if-gez v2, :cond_1c7

    move-wide/from16 v2, v22

    .line 2138
    iput-wide v2, v0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    .line 2139
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->scheduleWriteToDisk()V

    .line 2141
    :cond_1c7
    monitor-exit v1
    :try_end_1c8
    .catchall {:try_start_1ae .. :try_end_1c8} :catchall_1ca

    .line 2142
    :try_start_1c8
    monitor-exit v4
    :try_end_1c9
    .catchall {:try_start_1c8 .. :try_end_1c9} :catchall_1cd

    return-void

    :catchall_1ca
    move-exception v0

    .line 2141
    :try_start_1cb
    monitor-exit v1
    :try_end_1cc
    .catchall {:try_start_1cb .. :try_end_1cc} :catchall_1ca

    :try_start_1cc
    throw v0

    :catchall_1cd
    move-exception v0

    .line 2142
    monitor-exit v4
    :try_end_1cf
    .catchall {:try_start_1cc .. :try_end_1cf} :catchall_1cd

    throw v0
.end method

.method public updateLowMemStateLSP(III)Z
    .registers 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1020
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mOnTrimReclaimer:Lcom/android/server/am/AppProfiler$OnTrimReclaimer;

    invoke-virtual {v3}, Lcom/android/server/am/AppProfiler$OnTrimReclaimer;->shouldSkipReclaim()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v12, 0x1

    if-eqz v3, :cond_17

    const-string/jumbo v0, "skip onTrim"

    .line 1021
    invoke-static {v0, v4}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    return v12

    .line 1026
    :cond_17
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Lcom/android/server/am/LowMemDetector;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1027
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    invoke-virtual {v1}, Lcom/android/server/am/LowMemDetector;->getMemFactor()I

    move-result v1

    goto :goto_46

    .line 1035
    :cond_2a
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v7, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    if-gt v1, v7, :cond_45

    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-gt v2, v3, :cond_45

    add-int/2addr v1, v2

    .line 1038
    sget v2, Lcom/android/server/am/ProcessList;->TRIM_CRITICAL_THRESHOLD:I

    if-gt v1, v2, :cond_3d

    move v1, v6

    goto :goto_46

    .line 1040
    :cond_3d
    sget v2, Lcom/android/server/am/ProcessList;->TRIM_LOW_THRESHOLD:I

    if-gt v1, v2, :cond_43

    move v1, v5

    goto :goto_46

    :cond_43
    move v1, v12

    goto :goto_46

    :cond_45
    move v1, v4

    .line 1052
    :goto_46
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v2, :cond_99

    const-string v2, "ActivityManager"

    .line 1053
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "oom: memFactor="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " override="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " last="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " allowLow="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " numProcs="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1055
    invoke-virtual {v7}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " last="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1053
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_99
    iget v2, v0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_a0

    move v3, v12

    goto :goto_a1

    :cond_a0
    move v3, v4

    :goto_a1
    if-eqz v3, :cond_a4

    move v1, v2

    .line 1062
    :cond_a4
    iget v2, v0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    if-le v1, v2, :cond_c7

    if-nez v3, :cond_c7

    .line 1063
    iget-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    if-eqz v2, :cond_ba

    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1064
    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v2

    iget v3, v0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    if-lt v2, v3, :cond_c7

    .line 1065
    :cond_ba
    iget v1, v0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 1066
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v2, :cond_c7

    const-string v2, "ActivityManager"

    const-string v3, "Keeping last mem factor!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_c7
    iget v2, v0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    const/16 v3, 0xf

    if-eq v1, v2, :cond_df

    .line 1070
    invoke-static {v1, v2}, Lcom/android/server/am/EventLogTags;->writeAmMemFactor(II)V

    .line 1071
    invoke-static {v3, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 1072
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    iget v8, v0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    invoke-virtual {v2, v7, v8, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 1073
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1075
    :cond_df
    iput v1, v0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 1076
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v2

    iput v2, v0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    .line 1077
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    if-eqz v2, :cond_ff

    invoke-virtual {v2}, Lcom/android/server/am/LowMemDetector;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_ff

    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    invoke-virtual {v2}, Lcom/android/server/am/LowMemDetector;->hasTrimMemPressure()Z

    move-result v2

    if-eqz v2, :cond_ff

    move v7, v12

    goto :goto_100

    :cond_ff
    move v7, v4

    .line 1081
    :goto_100
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1082
    :try_start_107
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1083
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v8, :cond_11c

    .line 1084
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result v8

    if-nez v8, :cond_11a

    goto :goto_11c

    :cond_11a
    move v8, v4

    goto :goto_11d

    :cond_11c
    :goto_11c
    move v8, v12

    .line 1083
    :goto_11d
    invoke-virtual {v9, v1, v8, v10, v11}, Lcom/android/server/am/ProcessStatsService;->setMemFactorLocked(IZJ)Z

    move-result v13

    .line 1085
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v8

    .line 1086
    monitor-exit v2
    :try_end_12a
    .catchall {:try_start_107 .. :try_end_12a} :catchall_195

    const-wide/16 v14, 0x0

    if-eqz v1, :cond_17a

    .line 1088
    iget-wide v3, v0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    cmp-long v2, v3, v14

    if-nez v2, :cond_136

    .line 1089
    iput-wide v10, v0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    :cond_136
    if-eq v1, v5, :cond_13f

    if-eq v1, v6, :cond_13c

    const/4 v1, 0x5

    goto :goto_141

    :cond_13c
    const/16 v14, 0xf

    goto :goto_142

    :cond_13f
    const/16 v1, 0xa

    :goto_141
    move v14, v1

    .line 1103
    :goto_142
    div-int/lit8 v1, p3, 0x3

    .line 1105
    iget-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mHasHomeProcess:Z

    if-eqz v2, :cond_149

    move v5, v6

    .line 1106
    :cond_149
    iget-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mHasPreviousProcess:Z

    if-eqz v2, :cond_14f

    add-int/lit8 v5, v5, 0x1

    :cond_14f
    if-ge v1, v5, :cond_153

    move v15, v5

    goto :goto_154

    :cond_153
    move v15, v1

    :goto_154
    new-array v6, v12, [I

    const/4 v1, 0x0

    aput v1, v6, v1

    new-array v9, v12, [I

    const/16 v2, 0x50

    aput v2, v9, v1

    .line 1111
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v4, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;

    move-object v1, v4

    move-object/from16 v2, p0

    move v3, v13

    move-object v0, v4

    move v4, v8

    move-object v8, v5

    move v5, v7

    move-object v7, v6

    move-object v6, v9

    move-object v9, v8

    move v8, v15

    move-object v15, v9

    move v9, v14

    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/AppProfiler;ZIZ[I[IIIJ)V

    invoke-virtual {v15, v12, v0}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    goto :goto_194

    .line 1263
    :cond_17a
    iget-wide v1, v0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    cmp-long v3, v1, v14

    if-eqz v3, :cond_188

    .line 1264
    iget-wide v3, v0, Lcom/android/server/am/AppProfiler;->mLowRamTimeSinceLastIdle:J

    sub-long/2addr v10, v1

    add-long/2addr v3, v10

    iput-wide v3, v0, Lcom/android/server/am/AppProfiler;->mLowRamTimeSinceLastIdle:J

    .line 1265
    iput-wide v14, v0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    .line 1267
    :cond_188
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v2, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v13, v8}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/AppProfiler;ZI)V

    invoke-virtual {v1, v12, v2}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    :goto_194
    return v13

    :catchall_195
    move-exception v0

    .line 1086
    :try_start_196
    monitor-exit v2
    :try_end_197
    .catchall {:try_start_196 .. :try_end_197} :catchall_195

    throw v0
.end method

.method public updateLowRamTimestampLPr(J)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 999
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamTimeSinceLastIdle:J

    .line 1000
    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_c

    .line 1001
    iput-wide p1, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    :cond_c
    return-void
.end method

.method public updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    if-nez p5, :cond_2d

    .line 587
    invoke-virtual {p2}, Lcom/android/server/am/ProcessProfileRecord;->getNextPssTime()J

    move-result-wide v0

    cmp-long p5, p3, v0

    if-gtz p5, :cond_26

    invoke-virtual {p2}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    .line 588
    invoke-virtual {p2}, Lcom/android/server/am/ProcessProfileRecord;->getLastStateTime()J

    move-result-wide v2

    iget-boolean p5, p0, Lcom/android/server/am/AppProfiler;->mTestPssMode:Z

    .line 589
    invoke-static {p5}, Lcom/android/server/am/ProcessList;->minTimeFromStateChange(Z)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 587
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long p5, p3, v0

    if-gtz p5, :cond_26

    return-void

    .line 593
    :cond_26
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/AppProfiler;->requestPssLPf(Lcom/android/server/am/ProcessProfileRecord;I)Z

    move-result p5

    if-nez p5, :cond_2d

    return-void

    .line 597
    :cond_2d
    iget-boolean v2, p0, Lcom/android/server/am/AppProfiler;->mTestPssMode:Z

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 598
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result v3

    move-object v0, p2

    move v1, p1

    move-wide v4, p3

    .line 597
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessProfileRecord;->computeNextPssTime(IZZJ)J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Lcom/android/server/am/ProcessProfileRecord;->setNextPssTime(J)V

    return-void
.end method

.method public writeMemWatchProcessToProtoLPf(Landroid/util/proto/ProtoOutputStream;)V
    .registers 18
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2502
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_d7

    const-wide v2, 0x10b00000020L

    .line 2503
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 2505
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    const/4 v5, 0x0

    .line 2506
    :goto_20
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const-wide v7, 0x10900000001L

    if-ge v5, v6, :cond_97

    .line 2507
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2508
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    const-wide v10, 0x20b00000001L

    .line 2509
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 2511
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2513
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_49
    if-ltz v6, :cond_91

    const-wide v7, 0x20b00000002L

    .line 2514
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 2516
    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    const-wide v13, 0x10500000001L

    .line 2518
    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 2517
    invoke-virtual {v1, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2519
    iget-object v15, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    .line 2521
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v14, v15}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v13

    const-wide v14, 0x10900000002L

    .line 2519
    invoke-virtual {v1, v14, v15, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v13, 0x10900000003L

    .line 2522
    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v1, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2524
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_49

    .line 2526
    :cond_91
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_97
    const-wide v4, 0x10b00000002L

    .line 2529
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 2531
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v6, 0x10900000006L

    .line 2533
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 2534
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2533
    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v6, 0x10500000003L

    .line 2535
    iget v8, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10500000004L

    .line 2537
    iget v8, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10800000005L

    .line 2539
    iget-boolean v0, v0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    invoke-virtual {v1, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2542
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2544
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_d7
    return-void
.end method

.method public writeMemoryLevelsToProtoLocked(Landroid/util/proto/ProtoOutputStream;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2573
    iget-boolean v0, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    const-wide v1, 0x10800000037L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2575
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    const-wide v1, 0x10500000038L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2576
    iget p0, p0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    const-wide v0, 0x10500000039L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method public writeProcessesToGcToProto(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;)V
    .registers 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 2608
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6f

    .line 2609
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    .line 2610
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_18
    if-ge v5, v6, :cond_6f

    .line 2611
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2f

    .line 2612
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2f

    goto :goto_6c

    .line 2615
    :cond_2f
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 2616
    iget-object v10, v7, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const-wide v11, 0x10b00000001L

    .line 2617
    invoke-virtual {v7, v1, v11, v12}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v11, 0x10800000002L

    .line 2618
    invoke-virtual {v10}, Lcom/android/server/am/ProcessProfileRecord;->getReportLowMemory()Z

    move-result v7

    invoke-virtual {v1, v11, v12, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v11, 0x10300000003L

    .line 2619
    invoke-virtual {v1, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v11, 0x10300000004L

    .line 2620
    invoke-virtual {v10}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v13

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v11, 0x10300000005L

    .line 2621
    invoke-virtual {v10}, Lcom/android/server/am/ProcessProfileRecord;->getLastLowMemory()J

    move-result-wide v13

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2622
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_6c
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_6f
    return-void
.end method

.method public writeProfileDataToProtoLocked(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2550
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2551
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2552
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2553
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_82

    :cond_2c
    if-eqz p2, :cond_3a

    .line 2554
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_82

    :cond_3a
    const-wide v0, 0x10b00000022L

    .line 2555
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10900000001L

    .line 2556
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2557
    invoke-virtual {p2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object p2

    .line 2556
    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2558
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object p2

    const-wide v2, 0x10b00000002L

    invoke-virtual {p2, p1, v2, v3}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2560
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p2

    if-eqz p2, :cond_7f

    .line 2561
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p2

    const-wide v2, 0x10b00000003L

    invoke-virtual {p2, p1, v2, v3}, Landroid/app/ProfilerInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v2, 0x10500000004L

    .line 2563
    iget p0, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2566
    :cond_7f
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_82
    return-void
.end method
