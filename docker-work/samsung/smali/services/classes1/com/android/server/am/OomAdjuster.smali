.class public Lcom/android/server/am/OomAdjuster;
.super Ljava/lang/Object;
.source "OomAdjuster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;
    }
.end annotation


# static fields
.field public static final CAMERA_MICROPHONE_CAPABILITY_CHANGE_ID:J = 0x81e8a55L

.field public static final OOM_ADJ_REASON_ACTIVITY:Ljava/lang/String; = "updateOomAdj_activityChange"

.field public static final OOM_ADJ_REASON_ALLOWLIST:Ljava/lang/String; = "updateOomAdj_allowlistChange"

.field public static final OOM_ADJ_REASON_BIND_SERVICE:Ljava/lang/String; = "updateOomAdj_bindService"

.field public static final OOM_ADJ_REASON_FGSFILTER:Ljava/lang/String; = "updateOomAdj_fgsfilter"

.field public static final OOM_ADJ_REASON_FINISH_RECEIVER:Ljava/lang/String; = "updateOomAdj_finishReceiver"

.field public static final OOM_ADJ_REASON_GET_PROVIDER:Ljava/lang/String; = "updateOomAdj_getProvider"

.field public static final OOM_ADJ_REASON_METHOD:Ljava/lang/String; = "updateOomAdj"

.field public static final OOM_ADJ_REASON_NONE:Ljava/lang/String; = "updateOomAdj_meh"

.field public static final OOM_ADJ_REASON_PROCESS_BEGIN:Ljava/lang/String; = "updateOomAdj_processBegin"

.field public static final OOM_ADJ_REASON_PROCESS_END:Ljava/lang/String; = "updateOomAdj_processEnd"

.field public static final OOM_ADJ_REASON_REMOVE_PROVIDER:Ljava/lang/String; = "updateOomAdj_removeProvider"

.field public static final OOM_ADJ_REASON_SLOWDOWN:Ljava/lang/String; = "updateOomAdj_slowdown"

.field public static final OOM_ADJ_REASON_START_RECEIVER:Ljava/lang/String; = "updateOomAdj_startReceiver"

.field public static final OOM_ADJ_REASON_START_SERVICE:Ljava/lang/String; = "updateOomAdj_startService"

.field public static final OOM_ADJ_REASON_UI_VISIBILITY:Ljava/lang/String; = "updateOomAdj_uiVisibility"

.field public static final OOM_ADJ_REASON_UNBIND_SERVICE:Ljava/lang/String; = "updateOomAdj_unbindService"

.field public static final PROCESS_CAPABILITY_CHANGE_ID:J = 0x81f62a4L

.field public static final TAG:Ljava/lang/String; = "OomAdjuster"

.field public static final USE_SHORT_FGS_USAGE_INTERACTION_TIME:J = 0xaf7340dL


# instance fields
.field public VENDING_PKG:Ljava/lang/String;

.field public mActiveUids:Lcom/android/server/am/ActiveUids;
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mAdjSeq:I

.field public mCFMS:Landroid/os/ICustomFrequencyManager;

.field public mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

.field public mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

.field public mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field public mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

.field public mGPUMemoryReclaimer:Lcom/android/server/am/GPUMemoryReclaimer;

.field public mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field public mNewNumAServiceProcs:I

.field public mNewNumServiceProcs:I

.field public mNextNoKillDebugMessageTime:J

.field public mNumCachedHiddenProcs:I

.field public mNumCachedProcessCount:I

.field public mNumCachedSlotCount:I

.field public mNumEmptyProcessCount:I

.field public mNumEmptySlotCount:I

.field public mNumNonCachedProcs:I

.field public mNumServiceProcs:I

.field public final mNumSlots:I

.field public mOomAdjUpdateOngoing:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mPendingFullOomAdjUpdate:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public final mPendingProcessSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mPerProcessNandswap:Lcom/android/server/am/PerProcessNandswap;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mProcessGroupHandler:Landroid/os/Handler;

.field public final mProcessList:Lcom/android/server/am/ProcessList;

.field public final mProcessesInCycle:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mTmpBecameIdle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UidRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpBroadcastQueue:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/BroadcastQueue;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

.field public final mTmpLong:[J

.field public final mTmpProcessList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpUidRecords:Lcom/android/server/am/ActiveUids;


# direct methods
.method public static synthetic $r8$lambda$4pnHIE50TnOcNgt4SOu10KtoinY(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CxsEyTIlQ9DHd8L_GVqYsMNnVWU(Landroid/os/Message;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/OomAdjuster;->lambda$new$1(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WwoeZTnUBMxV-JLJr5QQfTatx6U(Lcom/android/server/ServiceThread;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/OomAdjuster;->lambda$createAdjusterThread$0(Lcom/android/server/ServiceThread;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ihQaI4mSYofPBYBnyj-KozGpFJs(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateKeepWarmIfNecessaryForProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mhzuBlrkcZYF_jWCk6HvZlrGJkc(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->lambda$applyOomAdjLSP$2(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/OomAdjuster;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mreportOomAdjMessageLocked(Lcom/android/server/am/OomAdjuster;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;)V
    .registers 5

    .line 326
    invoke-static {}, Lcom/android/server/am/OomAdjuster;->createAdjusterThread()Lcom/android/server/ServiceThread;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/am/OomAdjuster;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;)V
    .registers 8

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCFMS:Landroid/os/ICustomFrequencyManager;

    const/4 v1, 0x3

    new-array v1, v1, [J

    .line 241
    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpLong:[J

    const/4 v1, 0x0

    .line 246
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 252
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 253
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 254
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 260
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 266
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 278
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    .line 284
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 287
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedProcessCount:I

    .line 288
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumEmptyProcessCount:I

    .line 289
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedSlotCount:I

    .line 290
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumEmptySlotCount:I

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    .line 298
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    .line 299
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    .line 308
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 314
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    const-string v0, "com.android.vending"

    .line 1171
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->VENDING_PKG:Ljava/lang/String;

    .line 1599
    new-instance v0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    invoke-direct {v0, p0}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;-><init>(Lcom/android/server/am/OomAdjuster;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    .line 346
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 347
    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 348
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 349
    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 351
    const-class p3, Landroid/os/PowerManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PowerManagerInternal;

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 352
    iget-object p3, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 353
    new-instance p3, Lcom/android/server/am/CachedAppOptimizer;

    invoke-direct {p3, p1}, Lcom/android/server/am/CachedAppOptimizer;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 354
    new-instance p3, Lcom/android/server/am/CacheOomRanker;

    invoke-direct {p3, p1}, Lcom/android/server/am/CacheOomRanker;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    .line 357
    invoke-static {p1}, Lcom/android/server/am/GPUMemoryReclaimer;->createInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/GPUMemoryReclaimer;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mGPUMemoryReclaimer:Lcom/android/server/am/GPUMemoryReclaimer;

    .line 362
    invoke-static {p1}, Lcom/android/server/am/PerProcessNandswap;->createInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/PerProcessNandswap;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mPerProcessNandswap:Lcom/android/server/am/PerProcessNandswap;

    .line 366
    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p4

    new-instance v0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p3, p4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    .line 388
    new-instance p3, Lcom/android/server/am/ActiveUids;

    invoke-direct {p3, p1, v1}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActivityManagerService;Z)V

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 389
    new-instance p3, Ljava/util/ArrayDeque;

    iget-object p4, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p4, p4, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    shl-int/lit8 p4, p4, 0x1

    invoke-direct {p3, p4}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    const/16 p3, 0xa

    .line 390
    iput p3, p0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    .line 393
    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->getInstance()Lcom/android/server/am/DynamicHiddenApp;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 394
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {p3, p1, p2, p0}, Lcom/android/server/am/DynamicHiddenApp;->initDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActivityManagerConstants;)V

    return-void
.end method

.method public static createAdjusterThread()Lcom/android/server/ServiceThread;
    .registers 4

    .line 332
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "OomAdjuster"

    const/16 v2, -0xa

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 334
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 336
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ServiceThread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method private synthetic lambda$applyOomAdjLSP$2(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 3387
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3388
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/ActiveServices;->stopAllForegroundServicesLocked(ILjava/lang/String;)V

    .line 3390
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_18
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public static synthetic lambda$createAdjusterThread$0(Lcom/android/server/ServiceThread;)V
    .registers 2

    .line 337
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result p0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v0, :cond_b

    const/16 v0, 0xa

    goto :goto_c

    :cond_b
    const/4 v0, 0x5

    .line 336
    :goto_c
    invoke-static {p0, v0}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    return-void
.end method

.method public static synthetic lambda$new$1(Landroid/os/Message;)Z
    .registers 8

    .line 367
    iget v0, p0, Landroid/os/Message;->arg1:I

    .line 368
    iget v1, p0, Landroid/os/Message;->arg2:I

    .line 369
    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_a

    return v3

    :cond_a
    const-wide/16 v4, 0x40

    .line 373
    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setProcessGroup "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v5, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 378
    :cond_31
    :try_start_31
    invoke-static {v0, v1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_38

    .line 384
    :catch_34
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_3d

    :catchall_38
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 385
    throw p0

    :goto_3d
    return v3
.end method


# virtual methods
.method public final applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJ)Z
    .registers 24
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    .line 2986
    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2987
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 2989
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v3

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetRawAdj()I

    move-result v4

    if-eq v3, v4, :cond_1f

    .line 2990
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->setSetRawAdj(I)V

    .line 2996
    :cond_1f
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v3}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    move-result v3

    const/16 v4, 0x352

    const/4 v5, 0x5

    const/16 v6, 0x33e

    const/16 v7, 0x3e7

    const/4 v14, 0x1

    if-eqz v3, :cond_103

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-eqz v3, :cond_103

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v3}, Lcom/android/server/am/DynamicHiddenApp;->getIsUsingCamera()Z

    move-result v3

    if-nez v3, :cond_103

    .line 3000
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    if-lt v3, v6, :cond_6a

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    if-gt v3, v7, :cond_6a

    .line 3001
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    if-lt v3, v4, :cond_62

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    if-gt v3, v7, :cond_62

    .line 3002
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v3, :cond_6a

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v3, v2}, Lcom/android/server/am/DynamicHiddenApp;->IsProtected(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_6a

    goto :goto_68

    .line 3005
    :cond_62
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    if-ne v3, v6, :cond_6a

    :goto_68
    const/4 v3, 0x0

    goto :goto_6b

    :cond_6a
    move v3, v14

    .line 3010
    :goto_6b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v8

    if-eqz v8, :cond_77

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v8

    if-nez v8, :cond_83

    .line 3011
    :cond_77
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v8

    if-gt v8, v7, :cond_83

    .line 3012
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v8

    if-le v8, v7, :cond_84

    :cond_83
    const/4 v3, 0x0

    .line 3016
    :cond_84
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v8

    const/16 v15, 0x12

    if-ne v8, v15, :cond_8d

    const/4 v3, 0x0

    .line 3023
    :cond_8d
    iget-boolean v8, v2, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-eqz v8, :cond_92

    const/4 v3, 0x0

    .line 3028
    :cond_92
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getIpmLaunchtype()I

    move-result v8

    if-nez v8, :cond_a1

    .line 3029
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v8

    const/16 v15, 0x13

    if-ne v8, v15, :cond_a1

    const/4 v3, 0x0

    .line 3035
    :cond_a1
    iget-object v8, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->getAppLaunchFlag()Z

    move-result v8

    if-eqz v8, :cond_b2

    iget-object v8, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v8}, Lcom/android/server/am/CachedAppOptimizer;->isReclaimerControlEnabled()Z

    move-result v8

    if-nez v8, :cond_b2

    const/4 v3, 0x0

    .line 3041
    :cond_b2
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v8

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v15

    if-eq v8, v15, :cond_cc

    if-eqz v3, :cond_cc

    .line 3042
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v8

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v15

    invoke-virtual {v3, v8, v15, v2}, Lcom/android/server/am/CachedAppOptimizer;->onOomAdjustChanged(IILcom/android/server/am/ProcessRecord;)V

    goto :goto_103

    .line 3043
    :cond_cc
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v3, v14, :cond_103

    .line 3045
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    if-gez v3, :cond_f0

    .line 3046
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isRunningRemoteAnimation()Z

    move-result v3

    if-nez v3, :cond_f0

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 3051
    invoke-virtual {v3, v2, v9, v10}, Lcom/android/server/am/CachedAppOptimizer;->shouldCompactPersistent(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v3

    if-eqz v3, :cond_f0

    .line 3052
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v3, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactAppPersistent(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_103

    .line 3053
    :cond_f0
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    if-ne v3, v5, :cond_103

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 3055
    invoke-virtual {v3, v2, v9, v10}, Lcom/android/server/am/CachedAppOptimizer;->shouldCompactBFGS(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v3

    if-eqz v3, :cond_103

    .line 3056
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v3, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactAppBfgs(Lcom/android/server/am/ProcessRecord;)V

    .line 3062
    :cond_103
    :goto_103
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    .line 3064
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v3, v2}, Lcom/android/server/am/DynamicHiddenApp;->setCustomADJAndGetProcState(Lcom/android/server/am/ProcessRecord;)I

    move-result v3

    .line 3069
    iget-object v8, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v8, v8, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    const/4 v15, 0x2

    if-eqz v8, :cond_182

    iget-object v8, v1, Lcom/android/server/am/OomAdjuster;->mPerProcessNandswap:Lcom/android/server/am/PerProcessNandswap;

    if-eqz v8, :cond_182

    .line 3070
    invoke-virtual {v8}, Lcom/android/server/am/PerProcessNandswap;->isWritebackEnabled()Z

    move-result v8

    if-eqz v8, :cond_182

    .line 3072
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v8

    if-nez v8, :cond_128

    .line 3073
    iget-object v8, v1, Lcom/android/server/am/OomAdjuster;->mPerProcessNandswap:Lcom/android/server/am/PerProcessNandswap;

    invoke-virtual {v8, v2, v9, v10}, Lcom/android/server/am/PerProcessNandswap;->tryNandswapNonActivityApp(Lcom/android/server/am/ProcessRecord;J)V

    .line 3077
    :cond_128
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getSlotCount()I

    move-result v8

    if-lez v8, :cond_182

    .line 3081
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v8

    const/16 v5, 0x2bc

    if-ne v8, v5, :cond_14d

    .line 3082
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v8

    if-lt v8, v6, :cond_14d

    .line 3083
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v8

    if-gt v8, v7, :cond_14d

    .line 3084
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v7

    if-eqz v7, :cond_14d

    .line 3085
    iget-object v7, v1, Lcom/android/server/am/OomAdjuster;->mPerProcessNandswap:Lcom/android/server/am/PerProcessNandswap;

    invoke-virtual {v7, v2}, Lcom/android/server/am/PerProcessNandswap;->notifyAppBecomeBG(Lcom/android/server/am/ProcessRecord;)V

    .line 3092
    :cond_14d
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isWritebackOnBGEnabled()Z

    move-result v7

    if-nez v7, :cond_182

    .line 3093
    iget v7, v2, Lcom/android/server/am/ProcessRecord;->ppnState:I

    if-eq v7, v14, :cond_159

    if-ne v7, v15, :cond_182

    .line 3095
    :cond_159
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v7

    if-ne v7, v5, :cond_172

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v5

    if-eqz v5, :cond_172

    const/16 v4, 0x96

    .line 3096
    invoke-virtual {v13, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 3097
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v4

    invoke-virtual {v13, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    goto :goto_182

    .line 3098
    :cond_172
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v5

    if-lt v5, v4, :cond_182

    .line 3099
    invoke-virtual {v13, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 3100
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v4

    invoke-virtual {v13, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 3109
    :cond_182
    :goto_182
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mGPUMemoryReclaimer:Lcom/android/server/am/GPUMemoryReclaimer;

    if-eqz v4, :cond_189

    .line 3110
    invoke-virtual {v4, v2, v13}, Lcom/android/server/am/GPUMemoryReclaimer;->onOomAdjChanged(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;)V

    .line 3114
    :cond_189
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v4

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v5

    if-eq v4, v5, :cond_200

    .line 3116
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v6

    invoke-static {v4, v5, v6, v3}, Lcom/android/server/am/ProcessList;->setOomAdj(IIII)V

    .line 3121
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v3, :cond_1b2

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v3, :cond_1b2

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_1ee

    .line 3122
    :cond_1b2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " adj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3123
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    .line 3124
    invoke-virtual {v1, v4, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 3126
    :cond_1ee
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->setSetAdj(I)V

    if-eqz v0, :cond_1fa

    .line 3128
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->noteProcAdjChanged()V

    :cond_1fa
    const/16 v0, -0x2710

    .line 3130
    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setVerifiedAdj(I)V

    goto :goto_215

    :cond_200
    const/16 v0, 0xb4

    if-lt v3, v0, :cond_215

    const/16 v0, 0xc8

    if-ge v3, v0, :cond_215

    .line 3132
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v5

    invoke-static {v0, v4, v5, v3}, Lcom/android/server/am/ProcessList;->setOomAdj(IIII)V

    .line 3136
    :cond_215
    :goto_215
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v0

    .line 3137
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v3

    const/16 v8, 0xa

    if-eq v3, v0, :cond_38b

    .line 3138
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v3

    .line 3139
    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetSchedGroup(I)V

    .line 3140
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v4, :cond_238

    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v4, :cond_238

    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, v5, :cond_264

    .line 3141
    :cond_238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting sched group of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3142
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    .line 3143
    invoke-virtual {v1, v5, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 3145
    :cond_264
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWaitingToKill()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_289

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessReceiverRecord;->numberOfCurReceivers()I

    move-result v4

    if-nez v4, :cond_289

    .line 3146
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v4

    if-eqz v4, :cond_279

    goto :goto_289

    :cond_279
    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->mClearedWaitingToKill:Z

    if-nez v4, :cond_289

    .line 3152
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWaitingToKill()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x16

    invoke-virtual {v2, v0, v8, v3, v14}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    const/4 v15, 0x0

    goto/16 :goto_38c

    :cond_289
    :goto_289
    const/4 v4, -0x2

    const/4 v5, -0x1

    const/4 v6, 0x3

    if-eq v0, v4, :cond_2aa

    if-eqz v0, :cond_2a9

    if-eq v0, v14, :cond_2a7

    if-eq v0, v6, :cond_2a4

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2a4

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2aa

    const/4 v4, 0x6

    if-eq v0, v4, :cond_29e

    goto :goto_2aa

    .line 3172
    :cond_29e
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v4, :cond_2aa

    move v5, v8

    goto :goto_2aa

    :cond_2a4
    const/4 v4, 0x5

    move v5, v4

    goto :goto_2aa

    :cond_2a7
    const/4 v5, 0x7

    goto :goto_2aa

    :cond_2a9
    const/4 v5, 0x0

    .line 3209
    :cond_2aa
    :goto_2aa
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    .line 3210
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v15, 0x0

    .line 3209
    invoke-virtual {v4, v15, v7, v5, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3212
    :try_start_2ba
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v4

    if-ne v0, v6, :cond_323

    if-eq v3, v6, :cond_38b

    .line 3216
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 3217
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z

    if-eqz v0, :cond_314

    .line 3219
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setSavedPriority(I)V

    .line 3220
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-static {v0, v14}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    if-eqz v4, :cond_307

    .line 3222
    invoke-static {v4, v14}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    .line 3224
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_38b

    const-string v0, "UI_FIFO"

    .line 3225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set RenderThread (TID "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") to FIFO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38b

    .line 3229
    :cond_307
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_38b

    const-string v0, "UI_FIFO"

    const-string v3, "Not setting RenderThread TID"

    .line 3230
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38b

    .line 3235
    :cond_314
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    const/16 v3, -0xa

    invoke-static {v0, v3}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_31d
    .catch Ljava/lang/Exception; {:try_start_2ba .. :try_end_31d} :catch_38b

    if-eqz v4, :cond_38b

    .line 3238
    :try_start_31f
    invoke-static {v4, v3}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_322
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31f .. :try_end_322} :catch_38b
    .catch Ljava/lang/Exception; {:try_start_31f .. :try_end_322} :catch_38b

    goto :goto_38b

    :cond_323
    if-ne v3, v6, :cond_38b

    if-eq v0, v6, :cond_38b

    .line 3248
    :try_start_327
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 3249
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z
    :try_end_332
    .catch Ljava/lang/Exception; {:try_start_327 .. :try_end_332} :catch_38b

    if-eqz v0, :cond_37d

    .line 3252
    :try_start_334
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v3}, Landroid/os/Process;->setThreadScheduler(III)V

    .line 3253
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSavedPriority()I

    move-result v5

    invoke-static {v0, v5}, Landroid/os/Process;->setThreadPriority(II)V

    if-eqz v4, :cond_385

    .line 3255
    invoke-static {v4, v3, v3}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_34c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_334 .. :try_end_34c} :catch_365
    .catch Ljava/lang/SecurityException; {:try_start_334 .. :try_end_34c} :catch_34d
    .catch Ljava/lang/Exception; {:try_start_334 .. :try_end_34c} :catch_38b

    goto :goto_385

    :catch_34d
    move-exception v0

    :try_start_34e
    const-string v3, "OomAdjuster"

    .line 3263
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set scheduling policy, not allowed:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_385

    :catch_365
    move-exception v0

    const-string v3, "OomAdjuster"

    .line 3259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set scheduling policy, thread does not exist:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_385

    .line 3267
    :cond_37d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/Process;->setThreadPriority(II)V

    :cond_385
    :goto_385
    if-eqz v4, :cond_38b

    const/4 v0, -0x4

    .line 3271
    invoke-static {v4, v0}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_38b
    .catch Ljava/lang/Exception; {:try_start_34e .. :try_end_38b} :catch_38b

    :catch_38b
    :cond_38b
    :goto_38b
    move v15, v14

    .line 3281
    :goto_38c
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasRepForegroundActivities()Z

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v3

    if-eq v0, v3, :cond_39f

    .line 3282
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setRepForegroundActivities(Z)V

    move v0, v14

    goto :goto_3a0

    :cond_39f
    const/4 v0, 0x0

    .line 3286
    :goto_3a0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->updateAppFreezeStateLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 3288
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v3

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    if-eq v3, v4, :cond_3c5

    .line 3289
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->setReportedProcState(I)V

    .line 3290
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_3c5

    .line 3297
    :try_start_3ba
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/app/IApplicationThread;->setProcessState(I)V
    :try_end_3c5
    .catch Landroid/os/RemoteException; {:try_start_3ba .. :try_end_3c5} :catch_3c5

    .line 3303
    :catch_3c5
    :cond_3c5
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    const/16 v4, 0x14

    if-eq v3, v4, :cond_3de

    .line 3305
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v4

    .line 3304
    invoke-static {v3, v4}, Lcom/android/server/am/ProcessList;->procStatesDifferForMem(II)Z

    move-result v3

    if-eqz v3, :cond_3dc

    goto :goto_3de

    :cond_3dc
    const/4 v8, 0x0

    goto :goto_42b

    .line 3306
    :cond_3de
    :goto_3de
    invoke-virtual {v13, v9, v10}, Lcom/android/server/am/ProcessStateRecord;->setLastStateTime(J)V

    .line 3308
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v3, :cond_42a

    const-string v3, "ActivityManager"

    .line 3309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Process state change from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3310
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3311
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " next pss in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 3312
    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getNextPssTime()J

    move-result-wide v5

    sub-long/2addr v5, v9

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3309
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42a
    move v8, v14

    .line 3315
    :goto_42b
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v6, v3, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3316
    :try_start_432
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessProfileRecord;->updateProcState(Lcom/android/server/am/ProcessStateRecord;)V

    .line 3317
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 3318
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;
    :try_end_443
    .catchall {:try_start_432 .. :try_end_443} :catchall_661

    move-object/from16 v16, v6

    move-wide/from16 v6, p3

    const/16 v14, 0xa

    .line 3317
    :try_start_449
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/AppProfiler;->updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V

    .line 3319
    monitor-exit v16
    :try_end_44d
    .catchall {:try_start_449 .. :try_end_44d} :catchall_666

    .line 3320
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    if-eq v3, v4, :cond_500

    .line 3321
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v3, :cond_467

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v3, :cond_467

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v3, v4, :cond_4a7

    .line 3322
    :cond_467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proc state change of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3323
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3324
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    .line 3325
    invoke-virtual {v1, v4, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 3327
    :cond_4a7
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    if-ge v3, v14, :cond_4af

    const/4 v3, 0x1

    goto :goto_4b0

    :cond_4af
    const/4 v3, 0x0

    .line 3328
    :goto_4b0
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    if-ge v4, v14, :cond_4b8

    const/4 v4, 0x1

    goto :goto_4b9

    :cond_4b8
    const/4 v4, 0x0

    :goto_4b9
    if-eqz v3, :cond_4c9

    if-nez v4, :cond_4c9

    .line 3333
    invoke-virtual {v13, v9, v10}, Lcom/android/server/am/ProcessStateRecord;->setWhenUnimportant(J)V

    .line 3334
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 3338
    :cond_4c9
    invoke-virtual {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 3340
    invoke-virtual {v1, v13, v9, v10}, Lcom/android/server/am/OomAdjuster;->maybeUpdateLastTopTime(Lcom/android/server/am/ProcessStateRecord;J)V

    .line 3342
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->setSetProcState(I)V

    .line 3343
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    const/16 v4, 0xe

    if-lt v3, v4, :cond_4e2

    const/4 v3, 0x0

    .line 3344
    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->setNotCachedSinceIdle(Z)V

    :cond_4e2
    if-nez p2, :cond_4fb

    .line 3347
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v3, v3, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3348
    :try_start_4eb
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 3349
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    .line 3348
    invoke-virtual {v4, v2, v5}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLOSP(Lcom/android/server/am/ProcessRecord;I)V

    .line 3350
    monitor-exit v3

    goto :goto_541

    :catchall_4f8
    move-exception v0

    monitor-exit v3
    :try_end_4fa
    .catchall {:try_start_4eb .. :try_end_4fa} :catchall_4f8

    throw v0

    :cond_4fb
    const/4 v4, 0x1

    .line 3352
    invoke-virtual {v13, v4}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    goto :goto_541

    .line 3354
    :cond_500
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasReportedInteraction()Z

    move-result v3

    if-eqz v3, :cond_524

    const/4 v3, 0x2

    .line 3355
    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v3

    if-eqz v3, :cond_512

    .line 3358
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    goto :goto_516

    .line 3359
    :cond_512
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    .line 3362
    :goto_516
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getInteractionEventTime()J

    move-result-wide v5

    sub-long v5, v11, v5

    cmp-long v3, v5, v3

    if-lez v3, :cond_541

    .line 3363
    invoke-virtual {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    goto :goto_541

    :cond_524
    const/4 v3, 0x2

    .line 3366
    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v3

    if-eqz v3, :cond_530

    .line 3369
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    goto :goto_534

    .line 3370
    :cond_530
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    .line 3372
    :goto_534
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v5

    sub-long v5, v11, v5

    cmp-long v3, v5, v3

    if-lez v3, :cond_541

    .line 3373
    invoke-virtual {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 3377
    :cond_541
    :goto_541
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v3

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v4

    if-eq v3, v4, :cond_554

    or-int/lit8 v0, v0, 0x4

    .line 3379
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->setSetCapability(I)V

    :cond_554
    move v7, v0

    .line 3382
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v0

    .line 3383
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isSetBoundByNonBgRestrictedApp()Z

    move-result v3

    if-eq v0, v3, :cond_576

    .line 3384
    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetBoundByNonBgRestrictedApp(Z)V

    if-nez v0, :cond_576

    .line 3385
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isBackgroundRestricted()Z

    move-result v0

    if-eqz v0, :cond_576

    .line 3386
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_576
    if-eqz v7, :cond_620

    .line 3396
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v0, :cond_59a

    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Changes in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    :cond_59a
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasRepForegroundActivities()Z

    move-result v8

    .line 3403
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v9

    .line 3404
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ProcessList;->enqueueProcessChangeItemLocked(IIIZI)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-result-object v0

    .line 3415
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v3, :cond_620

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3416
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3417
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": changes="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " foreground="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3419
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " source="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " target="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3420
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " capability="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->capability:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3415
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3423
    :cond_620
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v0

    if-eqz v0, :cond_652

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->shouldNotKillOnBgRestrictedAndIdle()Z

    move-result v0

    if-nez v0, :cond_652

    .line 3426
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isSetCached()Z

    move-result v0

    if-eqz v0, :cond_638

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isSetNoKillOnBgRestrictedAndIdle()Z

    move-result v0

    if-eqz v0, :cond_652

    .line 3429
    :cond_638
    invoke-virtual {v13, v11, v12}, Lcom/android/server/am/ProcessStateRecord;->setLastCanKillOnBgRestrictedAndIdleTime(J)V

    .line 3431
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_652

    .line 3432
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v1, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3437
    :cond_652
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetCached(Z)V

    .line 3438
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->shouldNotKillOnBgRestrictedAndIdle()Z

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetNoKillOnBgRestrictedAndIdle(Z)V

    return v15

    :catchall_661
    move-exception v0

    move-object/from16 v16, v6

    .line 3319
    :goto_664
    :try_start_664
    monitor-exit v16
    :try_end_665
    .catchall {:try_start_664 .. :try_end_665} :catchall_666

    throw v0

    :catchall_666
    move-exception v0

    goto :goto_664
.end method

.method public final assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V
    .registers 30
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 983
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 993
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v3, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 994
    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int/2addr v2, v3

    .line 1000
    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    sub-int v3, v1, v3

    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    sub-int/2addr v3, v4

    if-le v3, v2, :cond_17

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    const/4 v3, 0x1

    if-lez v4, :cond_20

    .line 1010
    iget v5, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    goto :goto_21

    :cond_20
    move v4, v3

    :goto_21
    iget v5, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    div-int/2addr v4, v5

    if-ge v4, v3, :cond_27

    move v4, v3

    :cond_27
    add-int/2addr v2, v5

    sub-int/2addr v2, v3

    .line 1014
    div-int/2addr v2, v5

    if-ge v2, v3, :cond_2d

    move v2, v3

    .line 1023
    :cond_2d
    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-eqz v5, :cond_38

    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    if-eqz v6, :cond_38

    invoke-virtual {v5}, Lcom/android/server/am/DynamicHiddenApp;->clearRecentActivityProcess()V

    :cond_38
    sub-int/2addr v1, v3

    const/4 v5, -0x1

    const/16 v7, 0x384

    const/16 v8, 0x38e

    const/16 v9, 0x389

    const/16 v10, 0x393

    move v11, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v5

    :goto_4b
    if-ltz v1, :cond_25a

    move-object/from16 v3, p1

    .line 1026
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 1027
    iget-object v3, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1030
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v16

    if-nez v16, :cond_247

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v16

    if-eqz v16, :cond_247

    move/from16 v16, v2

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    move/from16 v17, v5

    const/16 v5, 0x3e9

    if-lt v2, v5, :cond_241

    .line 1032
    iget-object v2, v6, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1033
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v5

    move/from16 v18, v10

    const-string v10, ")"

    move/from16 v19, v11

    const-string v11, " curCachedImpAdj="

    const-string v0, " (curCachedAdj="

    move-object/from16 v20, v10

    const-string v10, "Assigning activity LRU #"

    move-object/from16 v21, v11

    const-string v11, " adj: "

    move-object/from16 v22, v0

    const-string v0, "ActivityManager"

    move-object/from16 v23, v0

    packed-switch v5, :pswitch_data_25c

    move-object v5, v11

    move-object/from16 v25, v20

    move-object/from16 v11, v21

    move-object/from16 v0, v22

    move-object/from16 v26, v23

    .line 1088
    sget-boolean v20, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    if-eqz v20, :cond_1d6

    .line 1089
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v20

    if-eqz v20, :cond_1d6

    move-object/from16 v21, v11

    .line 1091
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v11

    move-object/from16 v22, v0

    if-eqz v11, :cond_169

    .line 1093
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v0

    move-object/from16 v24, v5

    .line 1094
    iget v5, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v12, v5, :cond_165

    if-ne v13, v11, :cond_165

    if-le v0, v14, :cond_163

    if-ge v8, v9, :cond_162

    const/16 v5, 0x3e7

    if-ge v8, v5, :cond_162

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_162

    .line 1039
    :pswitch_c7
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v5

    if-eqz v5, :cond_ea

    .line 1041
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v0

    move-object/from16 v24, v11

    .line 1042
    iget v11, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v12, v11, :cond_e6

    if-ne v13, v5, :cond_e6

    if-le v0, v14, :cond_e4

    if-ge v8, v9, :cond_e3

    const/16 v5, 0x3e7

    if-ge v8, v5, :cond_e3

    add-int/lit8 v15, v15, 0x1

    :cond_e3
    move v14, v0

    :cond_e4
    const/4 v0, 0x1

    goto :goto_ed

    :cond_e6
    move v14, v0

    move v13, v5

    move v12, v11

    goto :goto_ec

    :cond_ea
    move-object/from16 v24, v11

    :goto_ec
    const/4 v0, 0x0

    :goto_ed
    if-nez v0, :cond_104

    if-eq v8, v9, :cond_104

    add-int/lit8 v7, v7, 0x1

    if-lt v7, v4, :cond_103

    add-int/lit8 v0, v9, 0xa

    const/16 v5, 0x3e7

    move v8, v9

    const/4 v7, 0x0

    if-le v0, v5, :cond_100

    const/16 v9, 0x3e7

    goto :goto_103

    :cond_100
    const/4 v15, 0x0

    move v9, v0

    goto :goto_104

    :cond_103
    :goto_103
    const/4 v15, 0x0

    :cond_104
    :goto_104
    add-int v0, v8, v15

    .line 1075
    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1076
    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 1077
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v0, :cond_149

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v5, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v11, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v23

    .line 1078
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_149
    move-object/from16 v0, p0

    .line 1083
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-eqz v2, :cond_156

    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    if-eqz v3, :cond_156

    .line 1084
    invoke-virtual {v2, v6}, Lcom/android/server/am/DynamicHiddenApp;->addRecentActivityProcess(Lcom/android/server/am/ProcessRecord;)V

    :cond_156
    :goto_156
    move/from16 v5, v17

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v18, v4

    move/from16 v4, v16

    goto/16 :goto_250

    :cond_162
    :goto_162
    move v14, v0

    :cond_163
    const/4 v0, 0x1

    goto :goto_16c

    :cond_165
    move v14, v0

    move v12, v5

    move v13, v11

    goto :goto_16b

    :cond_169
    move-object/from16 v24, v5

    :goto_16b
    const/4 v0, 0x0

    :goto_16c
    if-nez v0, :cond_183

    if-eq v8, v9, :cond_183

    add-int/lit8 v7, v7, 0x1

    if-lt v7, v4, :cond_182

    add-int/lit8 v0, v9, 0xa

    const/16 v5, 0x3e7

    move v8, v9

    const/4 v7, 0x0

    if-le v0, v5, :cond_17f

    const/16 v9, 0x3e7

    goto :goto_182

    :cond_17f
    const/4 v15, 0x0

    move v9, v0

    goto :goto_183

    :cond_182
    :goto_182
    const/4 v15, 0x0

    :cond_183
    :goto_183
    add-int v0, v8, v15

    .line 1127
    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1128
    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 1129
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v0, :cond_1c8

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v5, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") inGroup2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v10, v26

    .line 1130
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c8
    move-object/from16 v0, p0

    .line 1135
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-eqz v2, :cond_156

    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    if-eqz v3, :cond_156

    .line 1136
    invoke-virtual {v2, v6}, Lcom/android/server/am/DynamicHiddenApp;->addRecentActivityProcess(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_156

    :cond_1d6
    move-object/from16 v0, p0

    move-object/from16 v10, v26

    move/from16 v6, v18

    move/from16 v11, v19

    if-eq v6, v11, :cond_1f9

    add-int/lit8 v0, v17, 0x1

    move/from16 v18, v4

    move/from16 v4, v16

    if-lt v0, v4, :cond_1ff

    add-int/lit8 v0, v11, 0xa

    const/16 v6, 0x3e7

    if-le v0, v6, :cond_1f5

    const/4 v0, 0x0

    move/from16 v27, v11

    move v11, v6

    move/from16 v6, v27

    goto :goto_1ff

    :cond_1f5
    move v6, v11

    move v11, v0

    const/4 v0, 0x0

    goto :goto_1ff

    :cond_1f9
    move/from16 v18, v4

    move/from16 v4, v16

    move/from16 v0, v17

    .line 1157
    :cond_1ff
    :goto_1ff
    invoke-virtual {v3, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1158
    invoke-virtual {v2, v6}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 1159
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v2, :cond_23b

    .line 1160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    const-string v0, "Assigning empty LRU #"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (curEmptyAdj="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1160
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23d

    :cond_23b
    move/from16 v16, v0

    :goto_23d
    move v10, v6

    move/from16 v5, v16

    goto :goto_250

    :cond_241
    move/from16 v18, v4

    move v6, v10

    move/from16 v4, v16

    goto :goto_24d

    :cond_247
    move/from16 v18, v4

    move/from16 v17, v5

    move v6, v10

    move v4, v2

    :goto_24d
    move v10, v6

    move/from16 v5, v17

    :goto_250
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    move v2, v4

    move/from16 v4, v18

    const/4 v3, 0x1

    goto/16 :goto_4b

    :cond_25a
    return-void

    nop

    :pswitch_data_25c
    .packed-switch 0x10
        :pswitch_c7
        :pswitch_c7
        :pswitch_c7
    .end packed-switch
.end method

.method public final checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 754
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 v0, 0x1

    if-eqz p1, :cond_f

    .line 758
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 760
    :cond_f
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    :goto_11
    return v0
.end method

.method public final collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ActiveUids;",
            ")Z"
        }
    .end annotation

    .line 656
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    .line 657
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clear()V

    .line 658
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 659
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    const/4 v3, 0x1

    if-ge v2, v0, :cond_22

    .line 660
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 661
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 662
    invoke-virtual {p0, v4}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 665
    :cond_22
    invoke-virtual {p3}, Lcom/android/server/am/ActiveUids;->clear()V

    .line 670
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    move v0, v1

    :goto_2c
    if-eqz p1, :cond_c2

    .line 671
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 674
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v4

    invoke-virtual {p3, v4, v2}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 676
    :cond_3e
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 677
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_45
    if-ltz v4, :cond_89

    .line 678
    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v5

    .line 679
    iget v6, v5, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_58

    .line 680
    iget-object v6, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    goto :goto_5e

    :cond_58
    iget-object v6, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    :goto_5e
    if-eqz v6, :cond_86

    if-ne v6, p1, :cond_63

    goto :goto_86

    .line 684
    :cond_63
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v7

    or-int/2addr v0, v7

    .line 685
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v7

    if-eqz v7, :cond_73

    goto :goto_86

    .line 688
    :cond_73
    iget v5, v5, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v7, 0x80000a0

    and-int/2addr v5, v7

    const/16 v7, 0x20

    if-ne v5, v7, :cond_7e

    goto :goto_86

    .line 694
    :cond_7e
    invoke-virtual {p0, v6}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 695
    iget-object v5, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    :cond_86
    :goto_86
    add-int/lit8 v4, v4, -0x1

    goto :goto_45

    .line 697
    :cond_89
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 698
    invoke-virtual {v2}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_90
    if-ltz v4, :cond_ba

    .line 699
    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v5

    .line 700
    iget-object v5, v5, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v5, v5, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_b7

    if-ne v5, p1, :cond_9f

    goto :goto_b7

    .line 704
    :cond_9f
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v6

    or-int/2addr v0, v6

    .line 705
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v6

    if-eqz v6, :cond_af

    goto :goto_b7

    .line 708
    :cond_af
    invoke-virtual {p0, v5}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 709
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    :cond_b7
    :goto_b7
    add-int/lit8 v4, v4, -0x1

    goto :goto_90

    .line 670
    :cond_ba
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    goto/16 :goto_2c

    .line 713
    :cond_c2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_e2

    sub-int/2addr p0, v3

    :goto_c9
    if-ge v1, p0, :cond_e2

    .line 717
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 718
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2, v1, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 719
    invoke-virtual {p2, p0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p0, p0, -0x1

    goto :goto_c9

    :cond_e2
    return v0
.end method

.method public final computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z
    .registers 66
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    .line 1736
    iget-object v8, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1737
    iget v0, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v1

    const/4 v7, 0x1

    const/4 v5, 0x0

    if-ne v0, v1, :cond_26

    .line 1738
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v0

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result v1

    if-ne v0, v1, :cond_1d

    return v5

    .line 1744
    :cond_1d
    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    .line 1745
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return v5

    .line 1751
    :cond_26
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    const/16 v6, 0x13

    if-nez v0, :cond_4c

    .line 1752
    iget v0, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    .line 1753
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 1754
    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    const/16 v0, 0x3e7

    .line 1755
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 1756
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1757
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    .line 1758
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    return v5

    .line 1762
    :cond_4c
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    const/4 v4, 0x0

    .line 1763
    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 1764
    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 1765
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setEmpty(Z)V

    .line 1766
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    if-nez p7, :cond_75

    .line 1769
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setNoKillOnBgRestrictedAndIdle(Z)V

    .line 1771
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 1772
    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v0

    if-eqz v0, :cond_71

    move v0, v7

    goto :goto_72

    :cond_71
    move v0, v5

    :goto_72
    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    .line 1775
    :cond_75
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1776
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 1778
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v1

    .line 1779
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    .line 1780
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v15

    .line 1781
    iget-object v14, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1783
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v12

    const/4 v7, 0x2

    const-string v13, "ActivityManager"

    if-gtz v12, :cond_14e

    .line 1786
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v4, :cond_9a

    if-ne v2, v3, :cond_ae

    .line 1787
    :cond_9a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making fixed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v13, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ae
    const-string v2, "fixed"

    .line 1789
    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1790
    iget v2, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    .line 1791
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1792
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    .line 1793
    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    const/16 v12, 0xf

    .line 1794
    invoke-virtual {v8, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    .line 1795
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    const/4 v2, 0x1

    .line 1800
    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    if-ne v10, v11, :cond_e1

    .line 1802
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    const/4 v2, 0x3

    .line 1803
    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    const-string/jumbo v2, "pers-top-activity"

    .line 1804
    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_fa

    .line 1805
    :cond_e1
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 1807
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    const-string/jumbo v2, "pers-top-ui"

    .line 1808
    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_fa

    .line 1809
    :cond_f1
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasVisibleActivities()Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 1810
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    .line 1812
    :cond_fa
    :goto_fa
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isSystemNoUi()Z

    move-result v2

    if-nez v2, :cond_121

    .line 1813
    iget-object v2, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_11a

    .line 1814
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isRunningRemoteAnimation()Z

    move-result v2

    if-eqz v2, :cond_112

    goto :goto_11a

    :cond_112
    const/4 v2, 0x5

    .line 1820
    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 1821
    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    goto :goto_121

    .line 1816
    :cond_11a
    :goto_11a
    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    const/4 v2, 0x3

    .line 1817
    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 1824
    :cond_121
    :goto_121
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 1825
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 1826
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    .line 1830
    iget-boolean v2, v10, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-eqz v2, :cond_13d

    .line 1831
    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 1837
    :cond_13d
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    if-lt v2, v1, :cond_14c

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    if-ge v1, v0, :cond_14a

    goto :goto_14c

    :cond_14a
    move v7, v5

    goto :goto_14d

    :cond_14c
    :goto_14c
    const/4 v7, 0x1

    :goto_14d
    return v7

    :cond_14e
    const/16 v12, 0xf

    const/16 v23, 0x5

    const/16 v24, 0x3

    .line 1840
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    .line 1842
    iget-object v4, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v4

    if-eqz p7, :cond_168

    .line 1856
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v6

    goto :goto_169

    :cond_168
    move v6, v5

    :goto_169
    if-ne v4, v7, :cond_197

    if-ne v10, v11, :cond_197

    const-string/jumbo v12, "top-activity"

    .line 1864
    invoke-virtual {v8, v12}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1868
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v12, :cond_179

    if-ne v2, v3, :cond_18d

    .line 1869
    :cond_179
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Making top: "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v13, v7}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18d
    move/from16 v18, v4

    move/from16 v19, v24

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/16 v17, 0x1

    goto/16 :goto_2fd

    .line 1871
    :cond_197
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isRunningRemoteAnimation()Z

    move-result v7

    if-eqz v7, :cond_1c8

    const-string/jumbo v7, "running-remote-anim"

    .line 1874
    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1876
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v7, :cond_1a9

    if-ne v2, v3, :cond_1bd

    .line 1877
    :cond_1a9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Making running remote anim: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v13, v7}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1bd
    move/from16 v18, v4

    move/from16 v19, v24

    const/16 v5, 0x64

    const/4 v7, 0x0

    const/16 v17, 0x0

    goto/16 :goto_2fd

    .line 1879
    :cond_1c8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v7

    if-eqz v7, :cond_1f8

    const-string/jumbo v7, "instrumentation"

    .line 1883
    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1895
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v7, :cond_1da

    if-ne v2, v3, :cond_1ee

    .line 1896
    :cond_1da
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Making instrumentation: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v13, v7}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ee
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x2

    goto/16 :goto_2fd

    .line 1898
    :cond_1f8
    iget-object v7, v9, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsReceivingBroadcast(Landroid/util/ArraySet;)Z

    move-result v7

    if-eqz v7, :cond_238

    .line 1904
    iget-object v7, v9, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    iget-object v12, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v7, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20e

    const/4 v7, 0x2

    goto :goto_20f

    :cond_20e
    const/4 v7, 0x0

    :goto_20f
    const-string v12, "broadcast"

    .line 1906
    invoke-virtual {v8, v12}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1913
    sget-boolean v17, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v17, :cond_21a

    if-ne v2, v3, :cond_22e

    .line 1914
    :cond_21a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Making broadcast: "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v13, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22e
    move/from16 v19, v7

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xb

    goto/16 :goto_2fd

    .line 1916
    :cond_238
    invoke-virtual {v14}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v5

    if-lez v5, :cond_270

    .line 1920
    invoke-virtual {v14}, Lcom/android/server/am/ProcessServiceRecord;->shouldExecServicesFg()Z

    move-result v5

    if-eqz v5, :cond_246

    const/4 v5, 0x2

    goto :goto_247

    :cond_246
    const/4 v5, 0x0

    :goto_247
    const-string v7, "exec-service"

    .line 1922
    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1929
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v7, :cond_252

    if-ne v2, v3, :cond_266

    .line 1930
    :cond_252
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Making exec-service: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v13, v7}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_266
    move/from16 v19, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xa

    goto/16 :goto_2fd

    :cond_270
    if-ne v10, v11, :cond_297

    const-string/jumbo v5, "top-sleeping"

    .line 1935
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1938
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v5, :cond_27e

    if-ne v2, v3, :cond_292

    .line 1939
    :cond_27e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Making top (sleeping): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v13, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_292
    move/from16 v18, v4

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto :goto_2b1

    .line 1942
    :cond_297
    iget-object v5, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 1944
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v7

    .line 1943
    invoke-virtual {v5, v7}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->hasKeepAliveActivities(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v5

    if-eqz v5, :cond_2b6

    const-string v5, "force-keep-alive"

    .line 1947
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    :goto_2ac
    move/from16 v18, v4

    const/16 v5, 0x64

    const/4 v7, 0x0

    :goto_2b1
    const/16 v17, 0x0

    :goto_2b3
    const/16 v19, 0x0

    goto :goto_2fd

    .line 1949
    :cond_2b6
    iget-boolean v5, v10, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    if-eqz v5, :cond_2ce

    const-string v5, "dedicated"

    .line 1953
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1954
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v5

    if-eqz v5, :cond_2c6

    goto :goto_2ac

    :cond_2c6
    const/16 v5, 0x64

    :goto_2c8
    const/4 v7, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x13

    goto :goto_2b3

    .line 1967
    :cond_2ce
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v5

    if-nez v5, :cond_2e0

    const/4 v5, 0x1

    .line 1968
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 1969
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setEmpty(Z)V

    const-string v5, "cch-empty"

    .line 1970
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1972
    :cond_2e0
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v5, :cond_2e6

    if-ne v2, v3, :cond_2fa

    .line 1973
    :cond_2e6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Making empty: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v13, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2fa
    move/from16 v5, p2

    goto :goto_2c8

    :goto_2fd
    if-nez v7, :cond_33f

    .line 1978
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasActivities()Z

    move-result v12

    if-eqz v12, :cond_33f

    .line 1979
    iget-object v12, v9, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    move-object/from16 v16, v12

    const/16 v20, 0xf

    move-object v12, v8

    move-object v11, v13

    move-object/from16 v13, v16

    move-object/from16 v32, v14

    move v14, v5

    move v5, v15

    move v15, v7

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v3

    move/from16 v20, v2

    move/from16 v21, v4

    invoke-virtual/range {v12 .. v21}, Lcom/android/server/am/ProcessStateRecord;->computeOomAdjFromActivitiesIfNecessary(Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;IZZIIIII)V

    .line 1983
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedAdj()I

    move-result v4

    .line 1984
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedForegroundActivities()Z

    move-result v7

    .line 1985
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasVisibleActivities()Z

    move-result v17

    .line 1986
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedProcState()I

    move-result v18

    .line 1987
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedSchedGroup()I

    move-result v12

    move v13, v7

    move/from16 v19, v12

    move/from16 v14, v17

    move v12, v5

    move v5, v4

    goto :goto_346

    :cond_33f
    move-object v11, v13

    move-object/from16 v32, v14

    move v12, v15

    move v13, v7

    move/from16 v14, v17

    :goto_346
    move/from16 v4, v18

    const/16 v7, 0x12

    if-le v4, v7, :cond_373

    .line 1990
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasRecentTasks()Z

    move-result v7

    if-eqz v7, :cond_373

    const/16 v4, 0x12

    const-string v7, "cch-rec"

    .line 1992
    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1993
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v7, :cond_35f

    if-ne v2, v3, :cond_373

    .line 1994
    :cond_35f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Raise procstate to cached recent: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v11, v7}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_373
    const-string v15, ": "

    const-string v7, "Raise to "

    move/from16 v16, v12

    const/16 v12, 0xc8

    if-gt v5, v12, :cond_381

    const/4 v12, 0x4

    if-le v4, v12, :cond_3ea

    goto :goto_382

    :cond_381
    const/4 v12, 0x4

    .line 2000
    :goto_382
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v20

    if-eqz v20, :cond_3be

    const-string v4, "fg-service"

    .line 2004
    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 2005
    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 2007
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v4, :cond_397

    if-ne v2, v3, :cond_3b8

    .line 2008
    :cond_397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v11, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b8
    move v4, v12

    :goto_3b9
    const/16 v5, 0xc8

    const/16 v19, 0x2

    goto :goto_3ea

    .line 2011
    :cond_3be
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v20

    if-eqz v20, :cond_3ea

    const/4 v12, 0x0

    .line 2015
    invoke-virtual {v8, v12}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string/jumbo v4, "has-overlay-ui"

    .line 2016
    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2018
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v4, :cond_3d4

    if-ne v2, v3, :cond_3e8

    .line 2019
    :cond_3d4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Raise to overlay ui: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v11, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e8
    const/4 v4, 0x6

    goto :goto_3b9

    .line 2027
    :cond_3ea
    :goto_3ea
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v12

    move/from16 v20, v0

    const/16 v0, 0x32

    if-eqz v12, :cond_42f

    if-le v5, v0, :cond_42f

    .line 2028
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getLastTopTime()J

    move-result-wide v33

    iget-object v12, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v21, v1

    iget-wide v0, v12, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    add-long v33, v33, v0

    cmp-long v0, v33, p5

    if-gtz v0, :cond_40d

    .line 2029
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_431

    :cond_40d
    const-string v0, "fg-service-act"

    .line 2031
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2032
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_418

    if-ne v2, v3, :cond_42c

    .line 2033
    :cond_418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise to recent fg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42c
    const/16 v5, 0x32

    goto :goto_431

    :cond_42f
    move/from16 v21, v1

    .line 2041
    :cond_431
    :goto_431
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ProcessServiceRecord;->hasTopStartedAlmostPerceptibleServices()Z

    move-result v0

    if-eqz v0, :cond_472

    const/16 v0, 0x32

    if-le v5, v0, :cond_472

    .line 2043
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getLastTopTime()J

    move-result-wide v33

    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v1, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    add-long v33, v33, v0

    cmp-long v0, v33, p5

    if-gtz v0, :cond_450

    .line 2045
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_472

    :cond_450
    const-string/jumbo v0, "top-ej-act"

    .line 2049
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2050
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_45c

    if-ne v2, v3, :cond_470

    .line 2051
    :cond_45c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise to recent fg for EJ: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_470
    const/16 v5, 0x32

    :cond_472
    const/16 v12, 0x8

    const/16 v0, 0xc8

    if-gt v5, v0, :cond_47a

    if-le v4, v12, :cond_4af

    .line 2057
    :cond_47a
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4af

    const/4 v0, 0x0

    .line 2063
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string v0, "force-imp"

    .line 2064
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2065
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 2067
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_496

    if-ne v2, v3, :cond_4aa

    .line 2068
    :cond_496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise to force imp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4aa
    move v4, v12

    const/16 v5, 0xc8

    const/16 v19, 0x2

    .line 2073
    :cond_4af
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHeavyWeight()Z

    move-result v0

    if-eqz v0, :cond_507

    const/16 v0, 0x190

    if-le v5, v0, :cond_4e1

    const/16 v5, 0x190

    const/4 v0, 0x0

    .line 2078
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string/jumbo v0, "heavy"

    .line 2079
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2080
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_4cb

    if-ne v2, v3, :cond_4df

    .line 2081
    :cond_4cb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise adj to heavy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4df
    const/16 v19, 0x0

    :cond_4e1
    const/16 v0, 0xd

    if-le v4, v0, :cond_507

    const/16 v4, 0xd

    const-string/jumbo v0, "heavy"

    .line 2086
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2087
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_4f3

    if-ne v2, v3, :cond_507

    .line 2088
    :cond_4f3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise procstate to heavy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    :cond_507
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v0

    if-eqz v0, :cond_568

    const/16 v0, 0x258

    if-le v5, v0, :cond_541

    const/16 v5, 0x258

    const/4 v0, 0x0

    .line 2099
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string/jumbo v0, "home"

    .line 2100
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2102
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService;->currentLauncherName:Ljava/lang/String;

    .line 2104
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_52b

    if-ne v2, v3, :cond_53f

    .line 2105
    :cond_52b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise adj to home: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_53f
    const/16 v19, 0x0

    :cond_541
    const/16 v0, 0xe

    if-le v4, v0, :cond_568

    const/16 v0, 0xe

    const-string/jumbo v1, "home"

    .line 2110
    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2111
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_553

    if-ne v2, v3, :cond_567

    .line 2112
    :cond_553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise procstate to home: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v11, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_567
    move v4, v0

    .line 2117
    :cond_568
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsPreviousProcess()Z

    move-result v0

    const/16 v1, 0x2bc

    if-eqz v0, :cond_5cb

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasActivities()Z

    move-result v0

    if-eqz v0, :cond_5cb

    if-le v5, v1, :cond_5a2

    const/4 v0, 0x0

    .line 2124
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string/jumbo v0, "previous"

    .line 2125
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2126
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_588

    if-ne v2, v3, :cond_59c

    .line 2127
    :cond_588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Raise adj to prev: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_59c
    move v5, v1

    const/16 v0, 0xf

    const/16 v19, 0x0

    goto :goto_5a4

    :cond_5a2
    const/16 v0, 0xf

    :goto_5a4
    if-le v4, v0, :cond_5cb

    const-string/jumbo v0, "previous"

    .line 2132
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2133
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_5b2

    if-ne v2, v3, :cond_5c6

    .line 2134
    :cond_5b2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise procstate to prev: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c6
    move/from16 v0, v19

    const/16 v4, 0xf

    goto :goto_5cd

    :cond_5cb
    move/from16 v0, v19

    :goto_5cd
    if-eqz p7, :cond_5e7

    .line 2148
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2149
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2150
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2152
    :cond_5e7
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2153
    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    const/4 v1, 0x0

    .line 2155
    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setHasStartedServices(Z)V

    .line 2156
    iget v1, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    .line 2158
    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBackupTargets:Landroid/util/SparseArray;

    iget v12, v10, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BackupRecord;

    if-eqz v1, :cond_675

    .line 2159
    iget-object v1, v1, Lcom/android/server/am/BackupRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v10, v1, :cond_675

    const/16 v1, 0x12c

    if-le v5, v1, :cond_650

    .line 2162
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKUP:Z

    if-eqz v1, :cond_625

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "oom BACKUP_APP_ADJ for "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_625
    const/16 v5, 0x12c

    const/16 v1, 0x8

    if-le v4, v1, :cond_62d

    const/16 v4, 0x8

    :cond_62d
    const-string v1, "backup"

    .line 2167
    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2168
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_638

    if-ne v2, v3, :cond_64c

    .line 2169
    :cond_638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Raise adj to backup: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v11, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64c
    const/4 v1, 0x0

    .line 2171
    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    :cond_650
    const/16 v1, 0x9

    if-le v4, v1, :cond_675

    const/16 v4, 0x9

    const-string v1, "backup"

    .line 2175
    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2176
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_661

    if-ne v2, v3, :cond_675

    .line 2177
    :cond_661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Raise procstate to backup: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v11, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    :cond_675
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v1

    .line 2190
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v12

    const/16 v22, 0x1

    add-int/lit8 v12, v12, -0x1

    move/from16 v35, v6

    move v6, v12

    move/from16 v36, v13

    const/4 v12, 0x0

    const/16 v34, 0x0

    :goto_689
    if-ltz v6, :cond_c40

    if-gtz v5, :cond_692

    if-eqz v0, :cond_692

    const/4 v13, 0x2

    if-le v4, v13, :cond_c40

    :cond_692
    move-object/from16 v13, v32

    move/from16 v32, v14

    .line 2195
    invoke-virtual {v13, v6}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v14

    move/from16 v38, v0

    .line 2196
    iget-boolean v0, v14, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_73c

    const/4 v0, 0x1

    .line 2197
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setHasStartedServices(Z)V

    const/16 v0, 0xa

    if-le v4, v0, :cond_6ca

    const-string/jumbo v4, "started-services"

    .line 2200
    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2201
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v4, :cond_6b4

    if-ne v2, v3, :cond_6c8

    .line 2202
    :cond_6b4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Raise procstate to started service: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6c8
    const/16 v4, 0xa

    .line 2206
    :cond_6ca
    iget-boolean v0, v14, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    if-nez v0, :cond_6e4

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v0

    if-eqz v0, :cond_6e4

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v0

    if-nez v0, :cond_6e4

    const/16 v0, 0x1f4

    if-le v5, v0, :cond_73c

    const-string v0, "cch-started-ui-services"

    .line 2212
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_73c

    .line 2215
    :cond_6e4
    iget-boolean v0, v14, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    move/from16 v39, v1

    if-nez v0, :cond_6fc

    iget-wide v0, v14, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move/from16 v40, v4

    iget-object v4, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v42, v6

    move-object/from16 v41, v7

    iget-wide v6, v4, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v0, v6

    cmp-long v0, p5, v0

    if-gez v0, :cond_72f

    goto :goto_702

    :cond_6fc
    move/from16 v40, v4

    move/from16 v42, v6

    move-object/from16 v41, v7

    :goto_702
    const/16 v0, 0x1f4

    if-le v5, v0, :cond_72f

    const-string/jumbo v0, "started-services"

    .line 2222
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2223
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_712

    if-ne v2, v3, :cond_726

    .line 2224
    :cond_712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise adj to started service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_726
    const/4 v6, 0x0

    .line 2227
    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const/16 v0, 0x1f4

    const/16 v5, 0x1f4

    goto :goto_732

    :cond_72f
    const/4 v6, 0x0

    const/16 v0, 0x1f4

    :goto_732
    if-le v5, v0, :cond_739

    const-string v0, "cch-started-services"

    .line 2234
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    :cond_739
    move/from16 v4, v40

    goto :goto_743

    :cond_73c
    :goto_73c
    move/from16 v39, v1

    move/from16 v42, v6

    move-object/from16 v41, v7

    const/4 v6, 0x0

    .line 2239
    :goto_743
    iget-boolean v0, v14, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_770

    .line 2240
    iget v0, v14, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 2241
    iget-boolean v1, v14, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    if-eqz v1, :cond_770

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_753

    const/4 v1, 0x1

    goto :goto_754

    :cond_753
    move v1, v6

    :goto_754
    or-int/2addr v1, v12

    const/4 v7, 0x1

    .line 2246
    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v12

    if-eqz v12, :cond_76d

    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_762

    const/4 v7, 0x2

    goto :goto_763

    :cond_762
    move v7, v6

    :goto_763
    or-int/2addr v1, v7

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_76a

    const/4 v0, 0x4

    goto :goto_76b

    :cond_76a
    move v0, v6

    :goto_76b
    or-int/2addr v0, v1

    goto :goto_76f

    :cond_76d
    or-int/lit8 v0, v1, 0x6

    :goto_76f
    move v12, v0

    .line 2262
    :cond_770
    invoke-virtual {v14}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v7

    .line 2263
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/16 v22, 0x1

    add-int/lit8 v0, v0, -0x1

    move/from16 v27, v5

    move/from16 v1, v39

    move v5, v0

    move/from16 v0, v38

    :goto_783
    if-ltz v5, :cond_c11

    if-gtz v27, :cond_7a2

    if-eqz v0, :cond_7a2

    const/4 v6, 0x2

    if-le v4, v6, :cond_78d

    goto :goto_7a2

    :cond_78d
    move v14, v3

    move-object v3, v8

    move/from16 v31, v12

    move-object v6, v13

    move/from16 v46, v20

    move/from16 v47, v21

    move-object/from16 v8, v41

    move/from16 v20, v42

    const/16 v25, 0x0

    const/16 v30, 0xa

    move v13, v2

    const/4 v2, 0x0

    goto/16 :goto_c27

    .line 2268
    :cond_7a2
    :goto_7a2
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    move/from16 v40, v2

    move/from16 v38, v35

    move/from16 v35, v34

    move/from16 v34, v1

    move v1, v4

    const/4 v4, 0x0

    move/from16 v55, v27

    move/from16 v27, v0

    move/from16 v0, v55

    .line 2270
    :goto_7b8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_bc8

    if-gtz v0, :cond_7c6

    if-eqz v27, :cond_7c6

    const/4 v2, 0x2

    if-le v1, v2, :cond_bc8

    goto :goto_7c7

    :cond_7c6
    const/4 v2, 0x2

    .line 2276
    :goto_7c7
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v43, v8

    move-object/from16 v8, v30

    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    .line 2277
    iget-object v2, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v2, v10, :cond_7f7

    move/from16 v28, v4

    move/from16 v26, v5

    move-object/from16 v29, v6

    move/from16 v31, v12

    move-object v6, v13

    move-object v5, v14

    move/from16 v46, v20

    move/from16 v47, v21

    move/from16 v13, v40

    move-object/from16 v8, v41

    move/from16 v20, v42

    const/4 v2, 0x0

    const/16 v25, 0x0

    const/16 v30, 0xa

    move v14, v3

    move-object/from16 v21, v7

    move-object/from16 v3, v43

    goto/16 :goto_ba8

    :cond_7f7
    move-object/from16 v39, v8

    .line 2285
    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    if-eqz p8, :cond_840

    const/16 v44, 0x1

    move/from16 v45, v0

    move/from16 v46, v20

    const/16 v20, 0xa

    move-object/from16 v0, p0

    move/from16 v19, v1

    move/from16 v47, v21

    move-object v1, v2

    move-object/from16 v49, v2

    move/from16 v48, v40

    const/16 v21, 0x2

    move/from16 v2, p2

    move/from16 v50, v3

    move-object/from16 v3, p3

    move/from16 v28, v4

    const/16 v25, 0x0

    move/from16 v4, p4

    move/from16 v26, v5

    move-object/from16 v29, v6

    move/from16 v30, v20

    move/from16 v20, v42

    move-wide/from16 v5, p5

    move/from16 v31, v12

    move/from16 v12, v21

    move-object/from16 v51, v41

    move-object/from16 v21, v7

    move/from16 v7, p7

    move-object/from16 v37, v8

    move-object/from16 v52, v39

    move-object/from16 v22, v43

    move/from16 v8, v44

    .line 2287
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    move-object/from16 v6, v37

    goto :goto_877

    :cond_840
    move/from16 v45, v0

    move/from16 v19, v1

    move-object/from16 v49, v2

    move/from16 v50, v3

    move/from16 v28, v4

    move/from16 v26, v5

    move-object/from16 v29, v6

    move-object/from16 v37, v8

    move/from16 v31, v12

    move/from16 v46, v20

    move/from16 v47, v21

    move-object/from16 v52, v39

    move/from16 v48, v40

    move-object/from16 v51, v41

    move/from16 v20, v42

    move-object/from16 v22, v43

    const/4 v12, 0x2

    const/16 v25, 0x0

    const/16 v30, 0xa

    move-object/from16 v21, v7

    .line 2290
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    move-object/from16 v6, v37

    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2291
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2294
    :goto_877
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v7

    .line 2295
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v8

    if-ge v8, v12, :cond_884

    const/16 v37, 0x1

    goto :goto_886

    :cond_884
    const/16 v37, 0x0

    .line 2299
    :goto_886
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v0

    if-nez v0, :cond_89b

    const/4 v0, 0x3

    if-le v8, v0, :cond_89b

    const/4 v5, 0x4

    if-ne v8, v5, :cond_899

    .line 2302
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->isBackgroundRestricted()Z

    move-result v0

    if-nez v0, :cond_899

    goto :goto_89c

    :cond_899
    const/4 v0, 0x0

    goto :goto_89d

    :cond_89b
    const/4 v5, 0x4

    :goto_89c
    const/4 v0, 0x1

    :goto_89d
    or-int v34, v34, v0

    move-object/from16 v0, v49

    .line 2304
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v0

    if-eqz v0, :cond_8b0

    .line 2306
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    goto :goto_8b1

    :cond_8b0
    const/4 v4, 0x1

    :goto_8b1
    move-object/from16 v3, v52

    .line 2309
    iget v0, v3, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_b1f

    const/16 v0, 0x1000

    .line 2310
    invoke-virtual {v3, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_8c7

    .line 2311
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    or-int v38, v38, v0

    .line 2319
    :cond_8c7
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_8dc

    const/4 v0, 0x5

    if-gt v8, v0, :cond_8da

    .line 2321
    iget v0, v3, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_8dc

    :cond_8da
    or-int/lit8 v38, v38, 0x8

    :cond_8dc
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v12, v3

    move/from16 v3, v19

    move-object/from16 v41, v13

    move v13, v4

    move/from16 v4, v45

    move/from16 v5, p7

    .line 2330
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z

    move-result v0

    if-eqz v0, :cond_903

    move-object v5, v14

    move/from16 v1, v19

    move-object/from16 v3, v22

    move-object/from16 v6, v41

    move/from16 v0, v45

    move/from16 v13, v48

    move/from16 v14, v50

    move-object/from16 v8, v51

    const/4 v2, 0x0

    goto/16 :goto_ba8

    :cond_903
    const/16 v0, 0x10

    if-lt v8, v0, :cond_909

    const/16 v8, 0x13

    .line 2341
    :cond_909
    iget v1, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_956

    const/16 v0, 0x384

    if-ge v7, v0, :cond_917

    .line 2344
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0, v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    .line 2348
    :cond_917
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v0

    if-eqz v0, :cond_93a

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v0

    if-nez v0, :cond_93a

    move/from16 v0, v45

    if-le v0, v7, :cond_92c

    const-string v4, "cch-bound-ui-services"

    move-object/from16 v3, v22

    goto :goto_930

    :cond_92c
    move-object/from16 v3, v22

    move-object/from16 v4, v25

    :goto_930
    const/4 v2, 0x0

    .line 2356
    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    move v5, v0

    move-object/from16 v22, v14

    move/from16 v7, v19

    goto :goto_961

    :cond_93a
    move-object/from16 v3, v22

    move/from16 v0, v45

    const/4 v2, 0x0

    .line 2360
    iget-wide v4, v14, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-object/from16 v22, v14

    iget-wide v13, v1, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v4, v13

    cmp-long v1, p5, v4

    if-ltz v1, :cond_95d

    if-le v0, v7, :cond_951

    const-string v4, "cch-bound-services"

    goto :goto_953

    :cond_951
    move-object/from16 v4, v25

    :goto_953
    move v5, v0

    move v7, v8

    goto :goto_961

    :cond_956
    move-object/from16 v3, v22

    move/from16 v0, v45

    const/4 v2, 0x0

    move-object/from16 v22, v14

    :cond_95d
    move v5, v7

    move v7, v8

    move-object/from16 v4, v25

    :goto_961
    if-le v0, v5, :cond_a01

    .line 2382
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v1

    if-eqz v1, :cond_982

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v1

    if-nez v1, :cond_982

    const/16 v1, 0xc8

    if-le v5, v1, :cond_982

    const/16 v1, 0x384

    if-lt v0, v1, :cond_a01

    const-string v4, "cch-bound-ui-services"

    move v5, v2

    move/from16 v1, v19

    move/from16 v13, v27

    const/16 v8, 0x64

    goto/16 :goto_a08

    .line 2389
    :cond_982
    iget v1, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v8, v1, 0x48

    if-eqz v8, :cond_99c

    const/16 v1, -0x2bc

    if-lt v5, v1, :cond_98d

    goto :goto_9c9

    :cond_98d
    const/16 v5, -0x2bc

    .line 2398
    iget v1, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v12, v2, v1}, Lcom/android/server/am/ConnectionRecord;->trackProcState(II)V

    move/from16 v19, v2

    const/4 v1, 0x1

    const/16 v8, 0x64

    const/16 v27, 0x2

    goto :goto_9e7

    :cond_99c
    and-int/lit16 v8, v1, 0x100

    if-eqz v8, :cond_9ab

    const/16 v8, 0xc8

    if-gt v5, v8, :cond_9ad

    const/16 v13, 0xfa

    if-lt v0, v13, :cond_9ad

    const/16 v5, 0xfa

    goto :goto_9c9

    :cond_9ab
    const/16 v8, 0xc8

    :cond_9ad
    const/high16 v13, 0x10000

    and-int/2addr v13, v1

    if-eqz v13, :cond_9bb

    if-ge v5, v8, :cond_9bb

    const/16 v13, 0xe1

    if-lt v0, v13, :cond_9bb

    const/16 v5, 0xe1

    goto :goto_9c9

    :cond_9bb
    const/high16 v13, 0x40000000    # 2.0f

    and-int/2addr v1, v13

    if-eqz v1, :cond_9c7

    if-ge v5, v8, :cond_9c7

    if-lt v0, v8, :cond_9c7

    move v1, v2

    move v5, v8

    goto :goto_9ca

    :cond_9c7
    if-lt v5, v8, :cond_9cd

    :goto_9c9
    move v1, v2

    :goto_9ca
    const/16 v8, 0x64

    goto :goto_9e7

    :cond_9cd
    const/high16 v1, 0x10000000

    .line 2415
    invoke-virtual {v12, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v1

    const/16 v8, 0x64

    if-eqz v1, :cond_9de

    if-gt v5, v8, :cond_9de

    if-le v0, v8, :cond_9de

    move v1, v2

    move v5, v8

    goto :goto_9e7

    :cond_9de
    if-le v0, v8, :cond_9e5

    .line 2422
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_9e6

    :cond_9e5
    move v5, v0

    :goto_9e6
    move v1, v2

    .line 2427
    :goto_9e7
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v13

    if-nez v13, :cond_9f0

    .line 2428
    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    :cond_9f0
    if-le v0, v5, :cond_9ff

    .line 2432
    invoke-virtual {v3, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    const-string/jumbo v4, "service"

    move v0, v5

    move/from16 v13, v27

    move v5, v1

    move/from16 v1, v19

    goto :goto_a08

    :cond_9ff
    move v5, v1

    goto :goto_a04

    :cond_a01
    const/16 v8, 0x64

    move v5, v2

    :goto_a04
    move/from16 v1, v19

    move/from16 v13, v27

    .line 2437
    :goto_a08
    iget v14, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v19, 0x800004

    and-int v19, v14, v19

    if-nez v19, :cond_a6b

    .line 2442
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v14

    if-le v14, v13, :cond_a20

    .line 2444
    iget v13, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v13, v13, 0x40

    if-eqz v13, :cond_a1f

    move v13, v14

    goto :goto_a20

    :cond_a1f
    const/4 v13, 0x2

    :cond_a20
    :goto_a20
    const/4 v14, 0x2

    if-ge v7, v14, :cond_a4c

    const/high16 v6, 0x10000000

    .line 2455
    invoke-virtual {v12, v6}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_a2d

    const/4 v7, 0x4

    goto :goto_a68

    :cond_a2d
    const/high16 v6, 0x4000000

    .line 2457
    invoke-virtual {v12, v6}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_a37

    :goto_a35
    const/4 v7, 0x5

    goto :goto_a68

    .line 2459
    :cond_a37
    iget-object v6, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a4a

    iget v6, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v7, 0x2000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_a4a

    goto :goto_a35

    :cond_a4a
    const/4 v7, 0x6

    goto :goto_a68

    :cond_a4c
    if-ne v7, v14, :cond_a68

    .line 2482
    invoke-virtual {v6, v2}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v7

    if-eqz v7, :cond_a61

    const/16 v7, 0x1000

    .line 2485
    invoke-virtual {v12, v7}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v7

    if-eqz v7, :cond_a67

    .line 2487
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v6

    goto :goto_a65

    .line 2493
    :cond_a61
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v6

    :goto_a65
    or-int v38, v38, v6

    :cond_a67
    const/4 v7, 0x3

    :cond_a68
    :goto_a68
    const/16 v6, 0x8

    goto :goto_a7c

    :cond_a6b
    const/high16 v6, 0x800000

    and-int/2addr v6, v14

    if-nez v6, :cond_a76

    const/16 v6, 0x8

    if-ge v7, v6, :cond_a7c

    move v7, v6

    goto :goto_a7c

    :cond_a76
    const/16 v6, 0x8

    const/4 v14, 0x7

    if-ge v7, v14, :cond_a7c

    const/4 v7, 0x7

    :cond_a7c
    :goto_a7c
    const/4 v14, 0x3

    if-ge v13, v14, :cond_a8c

    .line 2510
    iget v14, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v19, 0x80000

    and-int v14, v14, v19

    if-eqz v14, :cond_a8c

    if-eqz v37, :cond_a8c

    const/4 v13, 0x3

    const/16 v35, 0x1

    :cond_a8c
    if-nez v5, :cond_a93

    .line 2518
    iget v5, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v12, v7, v5}, Lcom/android/server/am/ConnectionRecord;->trackProcState(II)V

    :cond_a93
    if-le v1, v7, :cond_a9e

    .line 2523
    invoke-virtual {v3, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    if-nez v4, :cond_a9d

    const-string/jumbo v4, "service"

    :cond_a9d
    move v1, v7

    :cond_a9e
    const/4 v5, 0x7

    if-ge v1, v5, :cond_aac

    .line 2528
    iget v5, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v14, 0x20000000

    and-int/2addr v5, v14

    if-eqz v5, :cond_aac

    const/4 v5, 0x1

    .line 2530
    invoke-virtual {v10, v5}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    :cond_aac
    if-eqz v4, :cond_b10

    .line 2533
    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v5, 0x2

    .line 2534
    invoke-virtual {v3, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    .line 2536
    iget-object v5, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 2537
    invoke-virtual {v3, v7}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    move-object/from16 v5, v22

    .line 2538
    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v3, v7}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 2539
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v7, :cond_ad1

    move/from16 v7, v48

    move/from16 v14, v50

    if-ne v7, v14, :cond_b16

    goto :goto_ad5

    :cond_ad1
    move/from16 v7, v48

    move/from16 v14, v50

    .line 2540
    :goto_ad5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v51

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", due to "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " adj="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " procState="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2543
    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2540
    invoke-virtual {v9, v11, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b18

    :cond_b10
    move-object/from16 v5, v22

    move/from16 v7, v48

    move/from16 v14, v50

    :cond_b16
    move-object/from16 v8, v51

    :goto_b18
    const/4 v4, 0x1

    move/from16 v55, v13

    move v13, v7

    move/from16 v7, v55

    goto :goto_b3e

    :cond_b1f
    move-object v12, v3

    move-object/from16 v41, v13

    move-object v5, v14

    move-object/from16 v3, v22

    move/from16 v0, v45

    move/from16 v13, v48

    move/from16 v14, v50

    move-object/from16 v8, v51

    const/4 v2, 0x0

    const/16 v1, 0x384

    if-ge v7, v1, :cond_b39

    .line 2557
    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    goto :goto_b3a

    :cond_b39
    const/4 v4, 0x1

    :goto_b3a
    move/from16 v1, v19

    move/from16 v7, v27

    .line 2560
    :goto_b3e
    iget v6, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v19, 0x8000000

    and-int v6, v6, v19

    if-eqz v6, :cond_b4c

    move-object/from16 v6, v41

    .line 2561
    invoke-virtual {v6, v4}, Lcom/android/server/am/ProcessServiceRecord;->setTreatLikeActivity(Z)V

    goto :goto_b4e

    :cond_b4c
    move-object/from16 v6, v41

    .line 2563
    :goto_b4e
    iget-object v4, v12, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 2564
    iget v2, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_ba5

    if-eqz v4, :cond_ba5

    if-lez v0, :cond_ba5

    .line 2566
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->isActivityVisible()Z

    move-result v2

    if-eqz v2, :cond_ba5

    const/4 v2, 0x0

    .line 2568
    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2569
    iget v0, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v12, v0, 0x4

    if-nez v12, :cond_b71

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_b70

    const/4 v7, 0x4

    goto :goto_b71

    :cond_b70
    const/4 v7, 0x2

    .line 2576
    :cond_b71
    :goto_b71
    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string/jumbo v0, "service"

    .line 2577
    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 2578
    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    .line 2580
    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 2581
    invoke-virtual {v3, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    .line 2582
    iget-object v0, v5, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 2583
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_b8f

    if-ne v13, v14, :cond_ba3

    .line 2584
    :cond_b8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise to service w/activity: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ba3
    move v0, v2

    goto :goto_ba6

    :cond_ba5
    const/4 v2, 0x0

    :goto_ba6
    move/from16 v27, v7

    :goto_ba8
    add-int/lit8 v4, v28, 0x1

    move-object/from16 v41, v8

    move/from16 v40, v13

    move/from16 v42, v20

    move-object/from16 v7, v21

    move/from16 v12, v31

    move/from16 v20, v46

    move/from16 v21, v47

    const/16 v22, 0x1

    const/16 v23, 0x5

    const/16 v24, 0x3

    move-object v8, v3

    move-object v13, v6

    move v3, v14

    move-object/from16 v6, v29

    move-object v14, v5

    move/from16 v5, v26

    goto/16 :goto_7b8

    :cond_bc8
    move/from16 v19, v1

    move/from16 v26, v5

    move/from16 v31, v12

    move-object v6, v13

    move-object v5, v14

    move/from16 v46, v20

    move/from16 v47, v21

    move/from16 v13, v40

    move/from16 v20, v42

    const/4 v2, 0x0

    const/16 v25, 0x0

    const/16 v30, 0xa

    move v14, v3

    move-object/from16 v21, v7

    move-object v3, v8

    move-object/from16 v8, v41

    add-int/lit8 v1, v26, -0x1

    move-object/from16 v41, v8

    move/from16 v4, v19

    move/from16 v42, v20

    move-object/from16 v7, v21

    move/from16 v12, v31

    move/from16 v20, v46

    move/from16 v21, v47

    const/16 v22, 0x1

    const/16 v23, 0x5

    const/16 v24, 0x3

    move-object v8, v3

    move v3, v14

    move-object v14, v5

    move v5, v1

    move/from16 v1, v34

    move/from16 v34, v35

    move/from16 v35, v38

    move/from16 v55, v27

    move/from16 v27, v0

    move/from16 v0, v55

    move-object/from16 v56, v6

    move v6, v2

    move v2, v13

    move-object/from16 v13, v56

    goto/16 :goto_783

    :cond_c11
    move v14, v3

    move-object v3, v8

    move/from16 v31, v12

    move/from16 v46, v20

    move/from16 v47, v21

    move-object/from16 v8, v41

    move/from16 v20, v42

    const/16 v25, 0x0

    const/16 v30, 0xa

    move-object/from16 v55, v13

    move v13, v2

    move v2, v6

    move-object/from16 v6, v55

    :goto_c27
    add-int/lit8 v5, v20, -0x1

    move-object v7, v8

    move v2, v13

    move/from16 v12, v31

    move/from16 v20, v46

    move/from16 v21, v47

    const/16 v23, 0x5

    const/16 v24, 0x3

    move-object v8, v3

    move v3, v14

    move/from16 v14, v32

    move-object/from16 v32, v6

    move v6, v5

    move/from16 v5, v27

    goto/16 :goto_689

    :cond_c40
    move/from16 v38, v0

    move/from16 v39, v1

    move v13, v2

    move/from16 v27, v12

    move/from16 v46, v20

    move/from16 v47, v21

    move-object/from16 v6, v32

    const/4 v2, 0x0

    const/16 v25, 0x0

    move/from16 v32, v14

    move v14, v3

    move-object v3, v8

    move-object v8, v7

    .line 2593
    iget-object v12, v10, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 2594
    invoke-virtual {v12}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviders()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v7, v0

    move v1, v5

    move/from16 v5, v38

    move/from16 v0, v39

    :goto_c63
    if-ltz v7, :cond_edb

    if-gtz v1, :cond_c7a

    if-eqz v5, :cond_c7a

    const/4 v2, 0x2

    if-le v4, v2, :cond_c6d

    goto :goto_c7a

    :cond_c6d
    move/from16 v17, v2

    move-object v8, v3

    move-object/from16 v41, v6

    move-object/from16 v20, v12

    const/4 v6, 0x6

    move-object v12, v11

    move v11, v13

    const/4 v13, 0x0

    goto/16 :goto_ee6

    .line 2599
    :cond_c7a
    :goto_c7a
    invoke-virtual {v12, v7}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v2

    move-object/from16 v22, v3

    .line 2600
    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v19, 0x1

    add-int/lit8 v3, v3, -0x1

    move/from16 v19, v0

    move/from16 v55, v3

    move v3, v1

    move v1, v5

    move/from16 v5, v55

    :goto_c92
    if-ltz v5, :cond_e57

    if-gtz v3, :cond_c9b

    if-eqz v1, :cond_c9b

    const/4 v0, 0x2

    if-le v4, v0, :cond_e57

    .line 2605
    :cond_c9b
    iget-object v0, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    move-object/from16 v51, v8

    .line 2606
    iget-object v8, v0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v20, v12

    .line 2607
    iget-object v12, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    if-ne v8, v10, :cond_cc4

    move-object/from16 v53, v2

    move/from16 v29, v3

    move/from16 v30, v4

    move/from16 v31, v5

    move-object/from16 v41, v6

    move/from16 v33, v7

    move-object/from16 v26, v11

    move/from16 v48, v13

    move-object/from16 v28, v15

    move-object/from16 v54, v51

    move v15, v1

    goto/16 :goto_d28

    :cond_cc4
    if-eqz p8, :cond_cf2

    const/16 v21, 0x1

    move-object/from16 v26, v11

    move-object v11, v0

    move-object/from16 v0, p0

    move-object/from16 v28, v15

    move v15, v1

    move-object v1, v8

    move-object/from16 v53, v2

    move/from16 v2, p2

    move/from16 v29, v3

    move-object/from16 v3, p3

    move/from16 v30, v4

    move/from16 v4, p4

    move/from16 v31, v5

    move-object/from16 v41, v6

    move-wide/from16 v5, p5

    move/from16 v33, v7

    move/from16 v7, p7

    move/from16 v48, v13

    move-object/from16 v54, v51

    move-object v13, v8

    move/from16 v8, v21

    .line 2613
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    goto :goto_d17

    :cond_cf2
    move-object/from16 v53, v2

    move/from16 v29, v3

    move/from16 v30, v4

    move/from16 v31, v5

    move-object/from16 v41, v6

    move/from16 v33, v7

    move-object/from16 v26, v11

    move/from16 v48, v13

    move-object/from16 v28, v15

    move-object/from16 v54, v51

    move-object v11, v0

    move v15, v1

    move-object v13, v8

    .line 2615
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2616
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    :goto_d17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v3, v30

    move/from16 v4, v29

    move/from16 v5, p7

    .line 2619
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z

    move-result v0

    if-eqz v0, :cond_d3c

    :goto_d28
    move v1, v15

    move-object/from16 v8, v22

    move-object/from16 v12, v26

    move-object/from16 v4, v28

    move/from16 v5, v30

    move/from16 v11, v48

    move-object/from16 v6, v53

    move-object/from16 v2, v54

    const/4 v3, 0x4

    const/16 v7, 0xc8

    goto/16 :goto_e42

    .line 2623
    :cond_d3c
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v5

    .line 2624
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v6

    const/16 v2, 0x10

    if-lt v6, v2, :cond_d4a

    const/16 v6, 0x13

    .line 2631
    :cond_d4a
    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v0

    if-eqz v0, :cond_d58

    .line 2633
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    .line 2636
    :cond_d58
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v0

    if-nez v0, :cond_d6d

    const/4 v0, 0x3

    if-le v6, v0, :cond_d6d

    const/4 v3, 0x4

    if-ne v6, v3, :cond_d6b

    .line 2639
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->isBackgroundRestricted()Z

    move-result v0

    if-nez v0, :cond_d6b

    goto :goto_d6e

    :cond_d6b
    const/4 v7, 0x0

    goto :goto_d6f

    :cond_d6d
    const/4 v3, 0x4

    :goto_d6e
    const/4 v7, 0x1

    :goto_d6f
    or-int v19, v19, v7

    move/from16 v1, v29

    if-le v1, v5, :cond_daa

    .line 2643
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v0

    if-eqz v0, :cond_d8b

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v0

    if-nez v0, :cond_d8b

    const/16 v7, 0xc8

    if-le v5, v7, :cond_d8d

    const-string v0, "cch-ui-provider"

    move-object v4, v0

    move-object/from16 v8, v22

    goto :goto_d9d

    :cond_d8b
    const/16 v7, 0xc8

    :cond_d8d
    if-lez v5, :cond_d92

    move-object/from16 v8, v22

    goto :goto_d95

    :cond_d92
    move-object/from16 v8, v22

    const/4 v5, 0x0

    .line 2649
    :goto_d95
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    const-string/jumbo v0, "provider"

    move-object v4, v0

    move v1, v5

    .line 2652
    :goto_d9d
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v0

    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v5

    and-int/2addr v0, v5

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    goto :goto_db0

    :cond_daa
    move-object/from16 v8, v22

    const/16 v7, 0xc8

    move-object/from16 v4, v25

    :goto_db0
    if-gt v6, v3, :cond_dbf

    if-nez v4, :cond_db8

    const-string/jumbo v0, "provider"

    move-object v4, v0

    :cond_db8
    const/4 v0, 0x2

    if-ne v6, v0, :cond_dbd

    const/4 v6, 0x3

    goto :goto_dc0

    :cond_dbd
    const/4 v6, 0x5

    goto :goto_dc0

    :cond_dbf
    const/4 v0, 0x2

    .line 2678
    :goto_dc0
    iget v5, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v11, v6, v5}, Lcom/android/server/am/ContentProviderConnection;->trackProcState(II)V

    move/from16 v5, v30

    if-le v5, v6, :cond_dcd

    .line 2681
    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    move v5, v6

    .line 2683
    :cond_dcd
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v11

    if-le v11, v15, :cond_dd4

    move v15, v0

    :cond_dd4
    if-eqz v4, :cond_e35

    .line 2687
    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v11, 0x1

    .line 2688
    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    .line 2690
    invoke-virtual {v8, v13}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 2691
    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    move-object/from16 v6, v53

    .line 2692
    iget-object v11, v6, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 2693
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v11, :cond_df8

    move/from16 v11, v48

    if-ne v11, v14, :cond_df3

    goto :goto_dfa

    :cond_df3
    move-object/from16 v12, v26

    move-object/from16 v4, v28

    goto :goto_e3d

    :cond_df8
    move/from16 v11, v48

    .line 2694
    :goto_dfa
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v54

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v28

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", due to "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " adj="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " procState="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2697
    invoke-static {v5}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v12, v26

    .line 2694
    invoke-virtual {v9, v12, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e3f

    :cond_e35
    move-object/from16 v12, v26

    move-object/from16 v4, v28

    move/from16 v11, v48

    move-object/from16 v6, v53

    :goto_e3d
    move-object/from16 v2, v54

    :goto_e3f
    move/from16 v29, v1

    move v1, v15

    :goto_e42
    add-int/lit8 v0, v31, -0x1

    move-object v15, v4

    move v4, v5

    move-object/from16 v22, v8

    move v13, v11

    move-object v11, v12

    move-object/from16 v12, v20

    move/from16 v3, v29

    move/from16 v7, v33

    move v5, v0

    move-object v8, v2

    move-object v2, v6

    move-object/from16 v6, v41

    goto/16 :goto_c92

    :cond_e57
    move v5, v4

    move-object/from16 v41, v6

    move/from16 v33, v7

    move-object/from16 v20, v12

    move-object v4, v15

    const/16 v7, 0xc8

    move v15, v1

    move-object v6, v2

    move v1, v3

    move-object v2, v8

    move-object v12, v11

    move v11, v13

    move-object/from16 v8, v22

    const/4 v3, 0x4

    .line 2704
    invoke-virtual {v6}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v0

    if-eqz v0, :cond_ec3

    const/4 v13, 0x0

    if-lez v1, :cond_ea1

    .line 2707
    invoke-virtual {v8, v13}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2709
    invoke-virtual {v8, v13}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string v0, "ext-provider"

    .line 2710
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2711
    iget-object v0, v6, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 2712
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_e89

    if-ne v11, v14, :cond_e9d

    .line 2713
    :cond_e89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise adj to external provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e9d
    move v1, v13

    const/4 v6, 0x6

    const/4 v15, 0x2

    goto :goto_ea2

    :cond_ea1
    const/4 v6, 0x6

    :goto_ea2
    if-le v5, v6, :cond_ec5

    .line 2719
    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2720
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_ead

    if-ne v11, v14, :cond_ec1

    .line 2721
    :cond_ead
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Raise procstate to external provider: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ec1
    move v5, v6

    goto :goto_ec5

    :cond_ec3
    const/4 v6, 0x6

    const/4 v13, 0x0

    :cond_ec5
    :goto_ec5
    add-int/lit8 v0, v33, -0x1

    move v7, v0

    move-object v3, v8

    move/from16 v0, v19

    move-object/from16 v6, v41

    move-object v8, v2

    move v2, v13

    move v13, v11

    move-object v11, v12

    move-object/from16 v12, v20

    move/from16 v55, v15

    move-object v15, v4

    move v4, v5

    move/from16 v5, v55

    goto/16 :goto_c63

    :cond_edb
    move-object v8, v3

    move-object/from16 v41, v6

    move-object/from16 v20, v12

    const/4 v6, 0x6

    const/16 v17, 0x2

    move-object v12, v11

    move v11, v13

    move v13, v2

    .line 2728
    :goto_ee6
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ProcessProviderRecord;->getLastProviderTime()J

    move-result-wide v2

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-lez v2, :cond_f4b

    .line 2729
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ProcessProviderRecord;->getLastProviderTime()J

    move-result-wide v2

    iget-object v7, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v7, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v2, v6

    cmp-long v2, v2, p5

    if-lez v2, :cond_f4b

    const/16 v2, 0x2bc

    if-le v1, v2, :cond_f26

    .line 2733
    invoke-virtual {v8, v13}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string/jumbo v1, "recent-provider"

    .line 2734
    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2735
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_f10

    if-ne v11, v14, :cond_f24

    .line 2736
    :cond_f10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise adj to recent provider: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v12, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f24
    move v1, v2

    move v5, v13

    :cond_f26
    const/16 v2, 0xf

    if-le v4, v2, :cond_f4b

    const-string/jumbo v3, "recent-provider"

    .line 2742
    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2743
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_f36

    if-ne v11, v14, :cond_f4a

    .line 2744
    :cond_f36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise procstate to recent provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v12, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f4a
    move v4, v2

    :cond_f4b
    const/16 v2, 0x13

    if-lt v4, v2, :cond_f6b

    .line 2751
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v2

    if-eqz v2, :cond_f5d

    const/16 v2, 0x11

    const-string v3, "cch-client-act"

    .line 2754
    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_f6c

    .line 2755
    :cond_f5d
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v2

    if-eqz v2, :cond_f6b

    const-string v2, "cch-as-act"

    .line 2759
    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/16 v2, 0x10

    goto :goto_f6c

    :cond_f6b
    move v2, v4

    :goto_f6c
    const/16 v3, 0x1f4

    if-ne v1, v3, :cond_fc2

    if-eqz p4, :cond_fba

    if-nez p7, :cond_fba

    .line 2765
    iget v3, v9, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iget v4, v9, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    const/4 v6, 0x3

    div-int/2addr v4, v6

    if-le v3, v4, :cond_f7e

    const/4 v7, 0x1

    goto :goto_f7f

    :cond_f7e
    move v7, v13

    :goto_f7f
    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setServiceB(Z)V

    .line 2766
    iget v3, v9, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v9, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 2767
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isServiceB()Z

    move-result v3

    if-nez v3, :cond_fb7

    .line 2772
    iget-object v3, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/AppProfiler;->isLastMemoryLevelNormal()Z

    move-result v3

    if-nez v3, :cond_fb0

    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 2773
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v3

    iget-object v6, v9, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 2774
    invoke-virtual {v6}, Lcom/android/server/am/ProcessList;->getCachedRestoreThresholdKb()J

    move-result-wide v6

    cmp-long v3, v3, v6

    if-ltz v3, :cond_fb0

    const/4 v3, 0x1

    .line 2775
    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setServiceHighRam(Z)V

    .line 2776
    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setServiceB(Z)V

    goto :goto_fba

    :cond_fb0
    const/4 v3, 0x1

    .line 2779
    iget v4, v9, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    add-int/2addr v4, v3

    iput v4, v9, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    goto :goto_fba

    .line 2783
    :cond_fb7
    invoke-virtual {v8, v13}, Lcom/android/server/am/ProcessStateRecord;->setServiceHighRam(Z)V

    .line 2786
    :cond_fba
    :goto_fba
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isServiceB()Z

    move-result v3

    if-eqz v3, :cond_fc2

    const/16 v1, 0x320

    .line 2791
    :cond_fc2
    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2793
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v3

    if-le v1, v3, :cond_fd6

    .line 2794
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v1

    const/16 v3, 0xfa

    if-gt v1, v3, :cond_fd6

    move/from16 v7, v17

    goto :goto_fd7

    :cond_fd6
    move v7, v5

    :goto_fd7
    const/4 v3, 0x5

    if-lt v2, v3, :cond_feb

    .line 2802
    iget-object v3, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2803
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_fec

    if-nez v34, :cond_fec

    if-le v7, v4, :cond_fec

    move v7, v4

    goto :goto_fec

    :cond_feb
    const/4 v4, 0x1

    .line 2811
    :cond_fec
    :goto_fec
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v3

    if-eqz v3, :cond_ff4

    or-int v35, v35, v27

    :cond_ff4
    move-object/from16 v3, v41

    .line 2815
    invoke-virtual {v9, v3, v2}, Lcom/android/server/am/OomAdjuster;->getDefaultCapability(Lcom/android/server/am/ProcessServiceRecord;I)I

    move-result v5

    or-int v5, v35, v5

    .line 2824
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v6, :cond_1007

    .line 2825
    invoke-virtual {v9, v7, v2, v8}, Lcom/android/server/am/OomAdjuster;->promoteSchedGroupIfNecessary(IILcom/android/server/am/ProcessStateRecord;)Z

    move-result v6

    if-eqz v6, :cond_1007

    const/4 v7, 0x6

    .line 2864
    :cond_1007
    invoke-virtual {v3, v1}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 2865
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    .line 2866
    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 2867
    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 2868
    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    move/from16 v1, v32

    .line 2869
    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->updateLastInvisibleTime(Z)V

    move/from16 v7, v36

    .line 2870
    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    .line 2871
    iget v1, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    .line 2872
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    .line 2876
    iget-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-eqz v0, :cond_103b

    .line 2877
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v0, :cond_1036

    const/4 v7, 0x6

    goto :goto_1038

    :cond_1036
    move/from16 v7, v17

    :goto_1038
    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 2885
    :cond_103b
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    move/from16 v1, v47

    if-lt v0, v1, :cond_1056

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    move/from16 v1, v46

    if-lt v0, v1, :cond_1056

    .line 2886
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    move/from16 v1, v16

    if-eq v0, v1, :cond_1054

    goto :goto_1056

    :cond_1054
    move v7, v13

    goto :goto_1057

    :cond_1056
    :goto_1056
    move v7, v4

    :goto_1057
    return v7
.end method

.method public dumpCacheOomRankerSettings(Ljava/io/PrintWriter;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3658
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CacheOomRanker;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpCachedAppOptimizerSettings(Ljava/io/PrintWriter;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 3653
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpProcCountsLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNumNonCachedProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 3645
    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " total) mNumCachedHiddenProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNewNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3644
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpProcessListVariablesLocked(Landroid/util/proto/ProtoOutputStream;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3627
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const-wide v1, 0x10500000031L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3628
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruSeqLOSP()I

    move-result v0

    const-wide v1, 0x10500000032L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3629
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    const-wide v1, 0x10500000033L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3631
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    const-wide v1, 0x10500000035L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3632
    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const-wide v0, 0x10500000036L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method public dumpSequenceNumbersLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAdjSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLruSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSeqLOSP()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 731
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public final getDefaultCapability(Lcom/android/server/am/ProcessServiceRecord;I)I
    .registers 4

    if-eqz p2, :cond_21

    const/4 p0, 0x1

    if-eq p2, p0, :cond_21

    const/4 p0, 0x2

    if-eq p2, p0, :cond_21

    const/4 p0, 0x3

    const/16 v0, 0x8

    if-eq p2, p0, :cond_20

    const/4 p0, 0x4

    if-eq p2, p0, :cond_16

    const/4 p0, 0x5

    if-eq p2, p0, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    return v0

    .line 2909
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result p0

    if-eqz p0, :cond_1d

    return v0

    :cond_1d
    const/16 p0, 0xe

    return p0

    :cond_20
    return v0

    :cond_21
    const/16 p0, 0xf

    return p0
.end method

.method public handleUserSwitchedLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v1, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/OomAdjuster;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    return-void
.end method

.method public idleUidsLocked()V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3548
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    if-gtz v0, :cond_9

    return-void

    .line 3552
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 3553
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long v3, v1, v3

    .line 3555
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v5, :cond_1a

    .line 3556
    invoke-virtual {v5}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    :cond_1a
    const/4 v5, 0x1

    sub-int/2addr v0, v5

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_1f
    if-ltz v0, :cond_6c

    .line 3559
    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v10

    .line 3560
    invoke-virtual {v10}, Lcom/android/server/am/UidRecord;->getLastBackgroundTime()J

    move-result-wide v11

    cmp-long v13, v11, v6

    if-lez v13, :cond_69

    .line 3561
    invoke-virtual {v10}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v13

    if-nez v13, :cond_69

    cmp-long v13, v11, v3

    if-gtz v13, :cond_60

    .line 3563
    invoke-virtual {v10}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v11

    invoke-static {v11}, Lcom/android/server/am/EventLogTags;->writeAmUidIdle(I)V

    .line 3564
    iget-object v13, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v13

    :try_start_43
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 3565
    invoke-virtual {v10, v5}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    .line 3566
    invoke-virtual {v10, v5}, Lcom/android/server/am/UidRecord;->setSetIdle(Z)V

    .line 3567
    monitor-exit v13
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_5a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3568
    iget-object v11, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v12

    invoke-virtual {v11, v12, v10}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    goto :goto_69

    :catchall_5a
    move-exception p0

    .line 3567
    :try_start_5b
    monitor-exit v13
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_60
    cmp-long v10, v8, v6

    if-eqz v10, :cond_68

    cmp-long v10, v8, v11

    if-lez v10, :cond_69

    :cond_68
    move-wide v8, v11

    :cond_69
    :goto_69
    add-int/lit8 v0, v0, -0x1

    goto :goto_1f

    .line 3576
    :cond_6c
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_73

    .line 3577
    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 3582
    :cond_73
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    if-eqz v0, :cond_a7

    .line 3583
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    const/4 v3, 0x0

    .line 3584
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    :goto_84
    if-ge v3, v4, :cond_a7

    .line 3586
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 3587
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 3586
    invoke-virtual {v5, v10, v1, v2}, Lcom/android/server/am/ProcessList;->killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J

    move-result-wide v10

    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v12, v5, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long/2addr v10, v12

    cmp-long v5, v10, v6

    if-lez v5, :cond_a4

    cmp-long v5, v8, v6

    if-eqz v5, :cond_a3

    cmp-long v5, v8, v10

    if-lez v5, :cond_a4

    :cond_a3
    move-wide v8, v10

    :cond_a4
    add-int/lit8 v3, v3, 0x1

    goto :goto_84

    :cond_a7
    cmp-long v0, v8, v6

    if-lez v0, :cond_c1

    .line 3594
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3595
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    add-long/2addr v8, v4

    sub-long/2addr v8, v1

    invoke-virtual {v0, v3, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_c1
    return-void
.end method

.method public initSettings()V
    .registers 5

    .line 398
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->init()V

    .line 399
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/CacheOomRanker;->init(Ljava/util/concurrent/Executor;)V

    .line 400
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_36

    .line 401
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/OomAdjuster$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/OomAdjuster$1;-><init>(Lcom/android/server/am/OomAdjuster;)V

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_36
    return-void
.end method

.method public isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 321
    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    .line 322
    invoke-static {p1, p2, p3}, Lcom/android/server/am/PlatformCompatCache;->isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z

    move-result p0

    return p0
.end method

.method public final maybeUpdateLastTopTime(Lcom/android/server/am/ProcessStateRecord;J)V
    .registers 5

    .line 3536
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result p0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_10

    .line 3537
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    if-le p0, v0, :cond_10

    .line 3538
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessStateRecord;->setLastTopTime(J)V

    :cond_10
    return-void
.end method

.method public maybeUpdateUsageStats(Lcom/android/server/am/ProcessRecord;J)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3472
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3473
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1e

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 3474
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 3475
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_18

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3476
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_1e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_18
    move-exception p0

    .line 3475
    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    :try_start_1a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :catchall_1e
    move-exception p0

    .line 3476
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 3481
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3482
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USAGE_STATS:Z

    if-eqz v1, :cond_3c

    .line 3483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking proc ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] state changes: old = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3484
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", new = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3485
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OomAdjuster"

    .line 3483
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3487
    :cond_3c
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-nez v1, :cond_43

    return-void

    :cond_43
    const/4 v1, 0x2

    .line 3490
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v1

    .line 3496
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    invoke-static {v2}, Landroid/app/ActivityManager;->isProcStateConsideredInteraction(I)Z

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_5b

    .line 3498
    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    goto :goto_8f

    .line 3499
    :cond_5b
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    const/4 v8, 0x4

    if-gt v2, v8, :cond_84

    .line 3500
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v8

    cmp-long v2, v8, v5

    if-nez v2, :cond_6f

    .line 3501
    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    :cond_6d
    move v7, v4

    goto :goto_8f

    :cond_6f
    if-eqz v1, :cond_76

    .line 3505
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    goto :goto_7a

    .line 3506
    :cond_76
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    .line 3507
    :goto_7a
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v10

    add-long/2addr v10, v8

    cmp-long v2, p2, v10

    if-lez v2, :cond_6d

    goto :goto_8f

    .line 3511
    :cond_84
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    if-gt v2, v3, :cond_8b

    goto :goto_8c

    :cond_8b
    move v7, v4

    .line 3512
    :goto_8c
    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    :goto_8f
    if-eqz v1, :cond_96

    .line 3515
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    goto :goto_9a

    .line 3516
    :cond_96
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    :goto_9a
    if-eqz v7, :cond_c6

    .line 3518
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->hasReportedInteraction()Z

    move-result v8

    if-eqz v8, :cond_ac

    .line 3519
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getInteractionEventTime()J

    move-result-wide v8

    sub-long v8, p2, v8

    cmp-long v1, v8, v1

    if-lez v1, :cond_c6

    .line 3520
    :cond_ac
    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/ProcessStateRecord;->setInteractionEventTime(J)V

    .line 3521
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_c6

    .line 3523
    :goto_b5
    array-length p3, p2

    if-ge v4, p3, :cond_c6

    .line 3524
    iget-object p3, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    aget-object v1, p2, v4

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p3, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b5

    .line 3529
    :cond_c6
    invoke-virtual {v0, v7}, Lcom/android/server/am/ProcessStateRecord;->setReportedInteraction(Z)V

    if-nez v7, :cond_ce

    .line 3531
    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setInteractionEventTime(J)V

    :cond_ce
    return-void
.end method

.method public onWakefulnessChanged(I)V
    .registers 2

    .line 2978
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->onWakefulnessChanged(I)V

    return-void
.end method

.method public final performUpdateOomAdjLSP(Ljava/lang/String;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 526
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 527
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/AppProfiler;->mHasHomeProcess:Z

    iput-boolean v1, v0, Lcom/android/server/am/AppProfiler;->mHasPreviousProcess:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    .line 528
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    return-void
.end method

.method public final performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;J)Z
    .registers 18
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    move-object v9, p0

    move-object v10, p1

    .line 450
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 454
    :cond_a
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    .line 455
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    .line 456
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v11

    if-eqz v11, :cond_37

    .line 458
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v0, :cond_34

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting update of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_34
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->reset()V

    .line 465
    :cond_37
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 467
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide/from16 v5, p4

    .line 468
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    .line 469
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_73

    .line 471
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_5d
    if-ltz v0, :cond_72

    .line 473
    iget-object v2, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v3, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_5d

    :cond_72
    return v1

    :cond_73
    if-eqz v11, :cond_b6

    .line 481
    new-instance v0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/OomAdjuster;)V

    invoke-virtual {v11, v0}, Lcom/android/server/am/UidRecord;->forEachProcess(Ljava/util/function/Consumer;)V

    .line 482
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_b6

    .line 483
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    if-ne v0, v1, :cond_a3

    .line 484
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v1

    if-ne v0, v1, :cond_a3

    .line 485
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v1

    if-eq v0, v1, :cond_b6

    .line 486
    :cond_a3
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 487
    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->clear()V

    .line 488
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v1

    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 489
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V

    :cond_b6
    const/4 v2, 0x0

    .line 493
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v3, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    move-result v0

    return v0
.end method

.method public final performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .registers 21
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    .line 570
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v8

    const-wide/16 v9, 0x40

    move-object/from16 v11, p2

    .line 572
    invoke-static {v9, v10, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 573
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    .line 574
    iget v0, v7, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v12, 0x1

    add-int/2addr v0, v12

    iput v0, v7, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 577
    iget-object v13, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 578
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v14

    .line 579
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v15

    const/16 v4, 0x3e9

    const/16 v0, 0x384

    if-lt v15, v0, :cond_30

    move v2, v15

    goto :goto_31

    :cond_30
    move v2, v4

    .line 583
    :goto_31
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    .line 582
    invoke-static {v0}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v5

    .line 584
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v3

    const/4 v1, 0x0

    .line 585
    invoke-virtual {v13, v1}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    .line 586
    invoke-virtual {v13, v1}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    .line 587
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    .line 588
    invoke-virtual {v13, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    .line 590
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 592
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    move v9, v1

    move-object/from16 v1, p1

    move v10, v3

    move-object v3, v8

    move v9, v5

    move-wide/from16 v4, v16

    .line 591
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;J)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 595
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v1

    if-ne v14, v1, :cond_87

    const/16 v1, -0x2710

    if-eq v15, v1, :cond_87

    iget-object v1, v7, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    .line 596
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 597
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v1

    if-ne v10, v1, :cond_87

    .line 599
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v1

    .line 598
    invoke-static {v1}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v1

    if-ne v9, v1, :cond_87

    goto/16 :goto_108

    .line 611
    :cond_87
    iget-object v3, v7, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 612
    iget-object v4, v7, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 613
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v12

    :goto_97
    if-ltz v0, :cond_a9

    .line 617
    iget-object v1, v7, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    iget-object v2, v7, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_97

    .line 619
    :cond_a9
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 621
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v7, v0, v3, v4}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    move-result v5

    .line 625
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    if-nez v5, :cond_c2

    const/4 v0, 0x0

    .line 629
    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 631
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 634
    :cond_c2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d7

    .line 636
    iget v0, v7, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    sub-int/2addr v0, v12

    iput v0, v7, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v8

    .line 638
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    goto :goto_f6

    .line 639
    :cond_d7
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_f6

    .line 642
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    invoke-virtual {v7, v3}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    .line 644
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 645
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v5, v8

    .line 644
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    .line 647
    :cond_f6
    :goto_f6
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 648
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    const-wide/16 v0, 0x40

    .line 649
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v12

    .line 600
    :cond_108
    :goto_108
    iget-object v1, v7, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 602
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v1, :cond_127

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No oomadj changes for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_127
    iget-object v1, v7, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    const-wide/16 v1, 0x40

    .line 606
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v0
.end method

.method public final performUpdateOomAdjPendingTargetsLocked(Ljava/lang/String;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    const-wide/16 v8, 0x40

    .line 801
    invoke-static {v8, v9, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 802
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    .line 804
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 805
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 806
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, v1, v0, v5}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    .line 807
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 808
    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v10

    :try_start_23
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v0

    .line 809
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    .line 810
    monitor-exit v10
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_40

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 811
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 813
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {p0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    .line 814
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_40
    move-exception p0

    .line 810
    :try_start_41
    monitor-exit v10
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final promoteSchedGroupIfNecessary(IILcom/android/server/am/ProcessStateRecord;)Z
    .registers 4

    const/4 p0, 0x2

    if-ne p1, p0, :cond_3d

    .line 2891
    invoke-virtual {p3}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "fg-service-act"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    invoke-virtual {p3}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "vis-activity"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    if-nez p2, :cond_2b

    .line 2892
    invoke-virtual {p3}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "service"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    :cond_2b
    const/4 p0, 0x3

    if-ne p2, p0, :cond_3d

    .line 2893
    invoke-virtual {p3}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "provider"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    :cond_3b
    const/4 p0, 0x1

    return p0

    :cond_3d
    const/4 p0, 0x0

    return p0
.end method

.method public removeOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    if-eqz p1, :cond_12

    .line 738
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_12

    .line 740
    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/am/PlatformCompatCache;->invalidate(Landroid/content/pm/ApplicationInfo;)V

    :cond_12
    return-void
.end method

.method public final reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2968
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mOomAdjObserverLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2970
    :try_start_8
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjObserver:Lcom/android/server/am/ActivityManagerService$OomAdjObserver;

    if-eqz v0, :cond_19

    .line 2971
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v0, 0x46

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2972
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 2974
    :cond_19
    monitor-exit p1

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public setAppIdTempAllowlistStateLSP(IZ)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 3603
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_9
    if-ltz v0, :cond_24

    .line 3604
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 3605
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v4

    if-ne v4, p1, :cond_21

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v4

    if-eq v4, p2, :cond_21

    .line 3606
    invoke-virtual {v3, p2}, Lcom/android/server/am/UidRecord;->setCurAllowListed(Z)V

    move v2, v1

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_24
    if-eqz v2, :cond_2c

    const-string/jumbo p1, "updateOomAdj_allowlistChange"

    .line 3611
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

.method public setAttachingSchedGroupLSP(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 3446
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz p0, :cond_6

    const/4 p0, 0x6

    goto :goto_7

    :cond_6
    const/4 p0, 0x2

    .line 3449
    :goto_7
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3452
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 3457
    :try_start_f
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 3458
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    const/16 v2, -0xa

    invoke-static {v1, v2}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_21

    const/4 p0, 0x3

    goto :goto_40

    :catch_21
    move-exception v1

    .line 3461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to pre-set top priority to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OomAdjuster"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3465
    :cond_40
    :goto_40
    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessStateRecord;->setSetSchedGroup(I)V

    .line 3466
    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    return-void
.end method

.method public setUidTempAllowlistStateLSP(IZ)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 3618
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 3619
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v0

    if-eq v0, p2, :cond_17

    .line 3620
    invoke-virtual {p1, p2}, Lcom/android/server/am/UidRecord;->setCurAllowListed(Z)V

    const-string/jumbo p1, "updateOomAdj_allowlistChange"

    .line 3621
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public final shouldKillExcessiveProcesses(J)Z
    .registers 9

    .line 1584
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getLastUserUnlockingUptime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_15

    .line 1588
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    xor-int/2addr p0, v3

    return p0

    .line 1590
    :cond_15
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    add-long/2addr v0, v4

    cmp-long p0, v0, p1

    if-lez p0, :cond_20

    const/4 p0, 0x0

    return p0

    :cond_20
    return v3
.end method

.method public final shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z
    .registers 8

    .line 2939
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2943
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    .line 2944
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2947
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result p1

    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ge p1, p0, :cond_28

    if-eqz p5, :cond_27

    .line 2951
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result p0

    if-lt p0, p3, :cond_28

    .line 2952
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result p0

    if-lt p0, p4, :cond_28

    :cond_27
    return v1

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public final updateAndTrimProcessLSP(JJJLcom/android/server/am/ActiveUids;)Z
    .registers 39
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    move-object/from16 v7, p0

    move-wide/from16 v8, p5

    .line 1179
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v10

    .line 1180
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1182
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/OomAdjuster;->shouldKillExcessiveProcesses(J)Z

    move-result v1

    const-string v11, "OomAdjuster"

    if-nez v1, :cond_27

    .line 1184
    iget-wide v2, v7, Lcom/android/server/am/OomAdjuster;->mNextNoKillDebugMessageTime:J

    cmp-long v2, v2, p1

    if-gez v2, :cond_27

    const-string v2, "Not killing cached processes"

    .line 1185
    invoke-static {v11, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1388

    add-long v2, p1, v2

    .line 1186
    iput-wide v2, v7, Lcom/android/server/am/OomAdjuster;->mNextNoKillDebugMessageTime:J

    :cond_27
    const v2, 0x7fffffff

    if-eqz v1, :cond_32

    .line 1190
    iget-object v3, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    move v12, v3

    goto :goto_33

    :cond_32
    move v12, v2

    :goto_33
    if-eqz v1, :cond_3b

    .line 1192
    iget-object v1, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int v2, v1, v12

    :cond_3b
    move v13, v2

    .line 1201
    iget-object v1, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-eqz v1, :cond_4d

    .line 1202
    invoke-virtual {v1}, Lcom/android/server/am/DynamicHiddenApp;->initActiveLaunchParam()V

    .line 1203
    iget-object v1, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v1}, Lcom/android/server/am/DynamicHiddenApp;->initMLLaunchCountParam()V

    .line 1204
    iget-object v1, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v1}, Lcom/android/server/am/DynamicHiddenApp;->initDhaProcessesLocked()V

    :cond_4d
    const/4 v14, 0x1

    sub-int/2addr v0, v14

    move v5, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_59
    if-ltz v5, :cond_350

    .line 1208
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1209
    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1210
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v18

    if-nez v18, :cond_330

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v18

    if-eqz v18, :cond_330

    .line 1212
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isExcessiveResourceUsage()Z

    move-result v18

    if-eqz v18, :cond_a0

    .line 1213
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v1

    const-string v1, "Excessive Resource Usage detectd task: "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    invoke-static {v1}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1213
    invoke-static {v11, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a2

    :cond_a0
    move/from16 v18, v1

    .line 1219
    :goto_a2
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result v1

    iget v14, v7, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ne v1, v14, :cond_cb

    const/4 v14, 0x1

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v25, v10

    move/from16 v10, v18

    move-object/from16 v1, v24

    move-object/from16 v26, v11

    move v11, v2

    move v2, v14

    move v14, v3

    move/from16 v27, v4

    move-wide/from16 v3, p1

    move/from16 v29, v5

    move/from16 v28, v12

    move v12, v6

    move-wide/from16 v5, p3

    .line 1220
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    move-object/from16 v0, v24

    goto :goto_da

    :cond_cb
    move v14, v3

    move/from16 v27, v4

    move/from16 v29, v5

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move/from16 v28, v12

    move/from16 v10, v18

    move v11, v2

    move v12, v6

    .line 1223
    :goto_da
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1227
    iget-object v2, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    const/16 v6, 0x11

    const/16 v5, 0x10

    if-eqz v2, :cond_155

    invoke-virtual {v2, v0}, Lcom/android/server/am/DynamicHiddenApp;->checkKeptProcess(Lcom/android/server/am/ProcessRecord;)I

    move-result v2

    if-lez v2, :cond_155

    .line 1229
    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    const/4 v3, 0x1

    if-ne v4, v3, :cond_f6

    .line 1230
    iget-object v2, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v2, v0}, Lcom/android/server/am/DynamicHiddenApp;->activeLaunchKillCheck(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_1d3

    .line 1233
    :cond_f6
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getIpmLaunchtype()I

    move-result v3

    if-nez v3, :cond_103

    .line 1234
    iget-object v2, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v2, v0}, Lcom/android/server/am/DynamicHiddenApp;->updateNapProcessProtection(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_1d3

    .line 1240
    :cond_103
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    if-eq v3, v5, :cond_11a

    if-eq v3, v6, :cond_118

    const/16 v4, 0x13

    if-eq v3, v4, :cond_116

    .line 1249
    iget v3, v7, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v7, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    goto :goto_124

    :cond_116
    const/4 v4, 0x1

    goto :goto_124

    :cond_118
    const/4 v4, 0x1

    goto :goto_11f

    :cond_11a
    const/4 v4, 0x1

    if-ne v2, v4, :cond_11f

    add-int/lit8 v16, v16, 0x1

    .line 1244
    :cond_11f
    :goto_11f
    iget v3, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/2addr v3, v4

    iput v3, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    :goto_124
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1d3

    .line 1253
    iget-object v2, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v2, v0, v12, v13}, Lcom/android/server/am/DynamicHiddenApp;->destroyKeptProcessActivity(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v2

    if-eqz v2, :cond_14e

    add-int/lit8 v2, v12, 0x1

    .line 1255
    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v3

    if-eqz v3, :cond_149

    .line 1257
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v11, v4, :cond_142

    if-ne v10, v3, :cond_142

    add-int/lit8 v17, v17, 0x1

    goto :goto_14b

    .line 1264
    :cond_142
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move v10, v3

    move v11, v4

    goto :goto_14b

    :cond_149
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_14b
    move v12, v2

    goto/16 :goto_1d3

    .line 1271
    :cond_14e
    iget-object v2, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v2, v0, v14, v8, v9}, Lcom/android/server/am/DynamicHiddenApp;->killTimeOverEmptyProcess(Lcom/android/server/am/ProcessRecord;IJ)V

    goto/16 :goto_1d3

    .line 1277
    :cond_155
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    const-string v3, "bg_restriction"

    if-eq v2, v5, :cond_241

    if-eq v2, v6, :cond_241

    const/16 v4, 0x13

    if-eq v2, v4, :cond_192

    .line 1359
    iget-object v2, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    add-int v4, v12, v16

    sub-int v4, v4, v17

    .line 1360
    invoke-virtual {v2, v0, v4}, Lcom/android/server/am/DynamicHiddenApp;->isForceKillHeavyCondition(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v2

    if-eqz v2, :cond_18b

    .line 1361
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v2

    if-eqz v2, :cond_18b

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v2

    const/16 v4, 0xc8

    if-lt v2, v4, :cond_18b

    .line 1362
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    if-lt v2, v4, :cond_18b

    const/4 v2, 0x2

    const/16 v4, 0xd

    const/4 v5, 0x1

    .line 1363
    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_18c

    :cond_18b
    const/4 v5, 0x1

    .line 1368
    :goto_18c
    iget v2, v7, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    add-int/2addr v2, v5

    iput v2, v7, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    goto :goto_1d3

    .line 1326
    :cond_192
    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    if-eqz v2, :cond_197

    goto :goto_1d3

    .line 1331
    :cond_197
    iget-object v2, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    const-string/jumbo v3, "s"

    const-wide/16 v4, 0x3e8

    if-le v14, v2, :cond_1db

    .line 1332
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v18

    cmp-long v2, v18, v8

    if-gez v2, :cond_1db

    .line 1333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "empty for "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v18

    sub-long v18, p1, v18

    div-long v4, v18, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0xd

    const/16 v22, 0x4

    const/16 v23, 0x1

    const-string v20, "empty for too long"

    move-object/from16 v18, v0

    .line 1333
    invoke-virtual/range {v18 .. v23}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    :cond_1d3
    :goto_1d3
    move v2, v11

    move v3, v14

    move-object/from16 v4, v26

    move/from16 v6, v28

    goto/16 :goto_2c9

    :cond_1db
    add-int/lit8 v2, v14, 0x1

    move/from16 v6, v28

    if-le v2, v6, :cond_23b

    .line 1343
    iget-object v14, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v14, v0}, Lcom/android/server/am/DynamicHiddenApp;->isBEKCondition(Lcom/android/server/am/ProcessRecord;)Z

    move-result v14

    if-eqz v14, :cond_219

    .line 1344
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v14, :cond_23b

    .line 1345
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BootKillSkip proc : "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uptime : "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v18, 0x3e8

    div-long v4, v4, v18

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v26

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23d

    :cond_219
    move-object/from16 v4, v26

    .line 1350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "empty #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0xd

    const/16 v22, 0x3

    const/16 v23, 0x1

    const-string/jumbo v20, "too many empty"

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v23}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    goto :goto_23d

    :cond_23b
    move-object/from16 v4, v26

    :goto_23d
    move v3, v2

    move v2, v11

    goto/16 :goto_2c9

    :cond_241
    move-object/from16 v4, v26

    move/from16 v6, v28

    .line 1280
    iget v2, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    const/16 v19, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/lit8 v2, v12, 0x1

    .line 1282
    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v12

    if-eqz v12, :cond_267

    .line 1284
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v11, v5, :cond_260

    if-ne v10, v12, :cond_260

    add-int/lit8 v17, v17, 0x1

    goto :goto_269

    .line 1291
    :cond_260
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move v11, v5

    move v10, v12

    goto :goto_269

    :cond_267
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_269
    sub-int v5, v2, v17

    if-le v5, v13, :cond_2ad

    .line 1300
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    const/16 v5, 0x10

    if-eq v3, v5, :cond_276

    goto :goto_2c3

    .line 1303
    :cond_276
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_28d

    .line 1304
    iget-object v3, v7, Lcom/android/server/am/OomAdjuster;->VENDING_PKG:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28d

    const-string v3, "GATE"

    const-string v5, "<GATE-M> MARKET_LAUNCHED_FAIL </GATE-M>"

    .line 1305
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :cond_28d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cached #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0xd

    const/16 v22, 0x2

    const/16 v23, 0x1

    const-string/jumbo v20, "too many cached"

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v23}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    goto :goto_2c3

    .line 1316
    :cond_2ad
    iget-object v5, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    add-int v12, v2, v16

    sub-int v12, v12, v17

    .line 1317
    invoke-virtual {v5, v0, v12}, Lcom/android/server/am/DynamicHiddenApp;->isForceKillHeavyCondition(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v5

    if-eqz v5, :cond_2c3

    move/from16 v18, v2

    const/4 v2, 0x1

    const/4 v5, 0x2

    const/16 v12, 0xd

    .line 1318
    invoke-virtual {v0, v3, v12, v5, v2}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_2c5

    :cond_2c3
    :goto_2c3
    move/from16 v18, v2

    :goto_2c5
    move v2, v11

    move v3, v14

    move/from16 v12, v18

    .line 1373
    :goto_2c9
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isExcessiveResourceUsage()Z

    move-result v5

    if-eqz v5, :cond_2f8

    .line 1374
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v5

    packed-switch v5, :pswitch_data_378

    goto :goto_2f8

    .line 1378
    :pswitch_2d7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ERU task kill: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x9

    const-string v11, "Excessive resource usage"

    const/4 v14, 0x1

    .line 1379
    invoke-virtual {v0, v11, v5, v14}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    goto :goto_2f9

    :cond_2f8
    :goto_2f8
    const/4 v14, 0x1

    .line 1387
    :goto_2f9
    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v5, :cond_314

    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v1

    if-gtz v1, :cond_314

    .line 1388
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_314

    const-string/jumbo v1, "isolated not needed"

    const/16 v5, 0xd

    const/16 v11, 0x11

    .line 1396
    invoke-virtual {v0, v1, v5, v11, v14}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_317

    .line 1400
    :cond_314
    invoke-virtual {v7, v0}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1403
    :goto_317
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    const/16 v5, 0xe

    if-lt v1, v5, :cond_32b

    .line 1404
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_32b

    move/from16 v15, v27

    add-int/lit8 v0, v15, 0x1

    move v15, v0

    goto :goto_32d

    :cond_32b
    move/from16 v15, v27

    :goto_32d
    move v1, v10

    move v0, v14

    goto :goto_342

    :cond_330
    move v15, v4

    move/from16 v29, v5

    move-object/from16 v25, v10

    move-object v4, v11

    move v0, v14

    move v10, v1

    move v11, v2

    move v14, v3

    move/from16 v30, v12

    move v12, v6

    move/from16 v6, v30

    move v1, v10

    move v2, v11

    move v3, v14

    :goto_342
    add-int/lit8 v5, v29, -0x1

    move v14, v0

    move-object v11, v4

    move v4, v15

    move-object/from16 v10, v25

    move/from16 v30, v12

    move v12, v6

    move/from16 v6, v30

    goto/16 :goto_59

    :cond_350
    move v14, v3

    move v15, v4

    move v12, v6

    .line 1411
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerConstants;->getOverrideMaxCachedProcesses()I

    move-result v0

    if-gez v0, :cond_36f

    .line 1413
    iput v12, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedProcessCount:I

    .line 1414
    iput v14, v7, Lcom/android/server/am/OomAdjuster;->mNumEmptyProcessCount:I

    .line 1415
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v0}, Lcom/android/server/am/DynamicHiddenApp;->getCachedMax()I

    move-result v0

    iput v0, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedSlotCount:I

    .line 1416
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v0}, Lcom/android/server/am/DynamicHiddenApp;->getEmptyMax()I

    move-result v0

    iput v0, v7, Lcom/android/server/am/OomAdjuster;->mNumEmptySlotCount:I

    .line 1421
    :cond_36f
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0, v12, v14, v15}, Lcom/android/server/am/AppProfiler;->updateLowMemStateLSP(III)Z

    move-result v0

    return v0

    :pswitch_data_378
    .packed-switch 0x10
        :pswitch_2d7
        :pswitch_2d7
        :pswitch_2d7
    .end packed-switch
.end method

.method public final updateAppFreezeStateLSP(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 3663
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 3667
    :cond_9
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFreezeExempt()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 3671
    :cond_12
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 3673
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 3674
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V

    return-void

    .line 3678
    :cond_26
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3682
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    const/16 v3, 0x33e

    if-lt v2, v3, :cond_42

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v2

    if-nez v2, :cond_42

    .line 3683
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v0

    if-nez v0, :cond_42

    .line 3684
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_4d

    .line 3685
    :cond_42
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    if-ge v0, v3, :cond_4d

    .line 3686
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method public final updateAppUidRecIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 1426
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 1427
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v0, :cond_1f

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v0

    if-gtz v0, :cond_1f

    .line 1428
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    goto :goto_22

    .line 1432
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public final updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 1439
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 1441
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1442
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/UidRecord;->setEphemeral(Z)V

    .line 1443
    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    if-le v1, v2, :cond_22

    .line 1444
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    .line 1446
    :cond_22
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result p1

    if-eqz p1, :cond_2e

    const/4 p1, 0x1

    .line 1447
    invoke-virtual {p0, p1}, Lcom/android/server/am/UidRecord;->setForegroundServices(Z)V

    .line 1449
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result p1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/server/am/UidRecord;->setCurCapability(I)V

    :cond_3a
    return-void
.end method

.method public final updateKeepWarmIfNecessaryForProcessLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 425
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    .line 427
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    .line 428
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_10
    if-ltz v1, :cond_27

    .line 429
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    move p0, v2

    goto :goto_28

    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_27
    const/4 p0, 0x0

    :goto_28
    if-nez p0, :cond_2b

    return-void

    .line 437
    :cond_2b
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 438
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_32
    if-ltz p1, :cond_3e

    .line 439
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->updateKeepWarmLocked()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_32

    :cond_3e
    return-void
.end method

.method public final updateOomAdjInnerLSP(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V
    .registers 32
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ActiveUids;",
            "ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-wide/16 v10, 0x40

    if-eqz p6, :cond_12

    move-object/from16 v1, p1

    .line 827
    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 828
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    .line 830
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 831
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 832
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    sub-long v16, v12, v1

    const/16 v18, 0x1

    const/4 v9, 0x0

    if-nez p3, :cond_28

    move/from16 v19, v18

    goto :goto_2a

    :cond_28
    move/from16 v19, v9

    :goto_2a
    if-eqz v19, :cond_34

    .line 835
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v1

    move-object v8, v1

    goto :goto_36

    :cond_34
    move-object/from16 v8, p3

    .line 837
    :goto_36
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez p4, :cond_5c

    .line 840
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    .line 841
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 842
    invoke-virtual {v2}, Lcom/android/server/am/ActiveUids;->clear()V

    move v3, v9

    :goto_48
    if-ge v3, v1, :cond_5a

    .line 844
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v4

    .line 845
    invoke-virtual {v4}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v5

    invoke-virtual {v2, v5, v4}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    :cond_5a
    move-object v7, v2

    goto :goto_5e

    :cond_5c
    move-object/from16 v7, p4

    .line 850
    :goto_5e
    invoke-virtual {v7}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_64
    if-ltz v1, :cond_8a

    .line 851
    invoke-virtual {v7, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 852
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v3, :cond_84

    const-string v3, "ActivityManager"

    .line 853
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting update of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_84
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->reset()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_64

    .line 858
    :cond_8a
    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-eqz v19, :cond_96

    .line 860
    iput v9, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 861
    iput v9, v0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    :cond_96
    if-nez v19, :cond_9e

    if-eqz p5, :cond_9b

    goto :goto_9e

    :cond_9b
    move/from16 v20, v9

    goto :goto_a0

    :cond_9e
    :goto_9e
    move/from16 v20, v18

    :goto_a0
    add-int/lit8 v1, v6, -0x1

    move v2, v1

    :goto_a3
    if-ltz v2, :cond_d1

    .line 869
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 870
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 871
    invoke-virtual {v3, v9}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 873
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v4

    iget v5, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-eq v4, v5, :cond_ce

    .line 874
    invoke-virtual {v3, v9}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    const/16 v4, 0x13

    .line 875
    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    const/16 v4, 0x3e9

    .line 876
    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 877
    invoke-virtual {v3, v9}, Lcom/android/server/am/ProcessStateRecord;->setSetCapability(I)V

    .line 878
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    .line 879
    invoke-virtual {v3, v9}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    :cond_ce
    add-int/lit8 v2, v2, -0x1

    goto :goto_a3

    .line 882
    :cond_d1
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    move v5, v1

    move/from16 v21, v9

    :goto_d9
    if-ltz v5, :cond_133

    .line 884
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 885
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 886
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v1

    if-nez v1, :cond_120

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_120

    .line 887
    invoke-virtual {v4, v9}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    const/16 v3, 0x3e9

    const/16 v22, 0x0

    move-object/from16 v1, p0

    move-object/from16 p1, v4

    move-object/from16 v4, p2

    move/from16 v23, v5

    move/from16 v5, v19

    move v10, v6

    move-object v11, v7

    move-wide v6, v12

    move-object/from16 v24, v8

    move/from16 v8, v22

    move-object/from16 p3, v11

    move v11, v9

    move/from16 v9, v20

    .line 888
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    .line 891
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v1

    or-int v1, v21, v1

    .line 893
    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    move/from16 v21, v1

    goto :goto_128

    :cond_120
    move/from16 v23, v5

    move v10, v6

    move-object/from16 p3, v7

    move-object/from16 v24, v8

    move v11, v9

    :goto_128
    add-int/lit8 v5, v23, -0x1

    move-object/from16 v7, p3

    move v6, v10

    move v9, v11

    move-object/from16 v8, v24

    const-wide/16 v10, 0x40

    goto :goto_d9

    :cond_133
    move v10, v6

    move-object/from16 p3, v7

    move-object/from16 v24, v8

    move v11, v9

    .line 897
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-virtual {v1}, Lcom/android/server/am/CacheOomRanker;->useOomReranking()Z

    move-result v1

    if-eqz v1, :cond_152

    .line 898
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getLruProcessesLSP()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 899
    invoke-virtual {v3}, Lcom/android/server/am/ProcessList;->getLruProcessServiceStartLOSP()I

    move-result v3

    .line 898
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/CacheOomRanker;->reRankLruCachedAppsLSP(Ljava/util/ArrayList;I)V

    .line 901
    :cond_152
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    if-eqz v20, :cond_1e0

    move v9, v11

    :goto_15e
    if-eqz v21, :cond_1e0

    const/16 v1, 0xa

    if-ge v9, v1, :cond_1e0

    add-int/lit8 v19, v9, 0x1

    move v9, v11

    :goto_167
    if-ge v9, v10, :cond_190

    move-object/from16 v8, v24

    .line 914
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 915
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 916
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v3

    if-nez v3, :cond_18b

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_18b

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v1

    if-eqz v1, :cond_18b

    .line 917
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->decAdjSeq()V

    .line 918
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->decCompletedAdjSeq()V

    :cond_18b
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v24, v8

    goto :goto_167

    :cond_190
    move-object/from16 v8, v24

    move v9, v11

    move/from16 v21, v9

    :goto_195
    if-ge v9, v10, :cond_1da

    .line 923
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 924
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 925
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v3

    if-nez v3, :cond_1d1

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_1d1

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v3

    if-eqz v3, :cond_1d1

    .line 926
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v3

    const/4 v5, 0x1

    const/16 v20, 0x1

    const/16 v22, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-wide v6, v12

    move-object/from16 v23, v8

    move/from16 v8, v20

    move/from16 v20, v9

    move/from16 v9, v22

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    move-result v1

    if-eqz v1, :cond_1d5

    move/from16 v21, v18

    goto :goto_1d5

    :cond_1d1
    move-object/from16 v23, v8

    move/from16 v20, v9

    :cond_1d5
    :goto_1d5
    add-int/lit8 v9, v20, 0x1

    move-object/from16 v8, v23

    goto :goto_195

    :cond_1da
    move-object/from16 v24, v8

    move/from16 v9, v19

    goto/16 :goto_15e

    .line 934
    :cond_1e0
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 936
    iput v11, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 937
    iput v11, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    move-object/from16 v1, p0

    move-wide v2, v12

    move-wide v4, v14

    move-wide/from16 v6, v16

    move-object/from16 v8, p3

    .line 939
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OomAdjuster;->updateAndTrimProcessLSP(JJJLcom/android/server/am/ActiveUids;)Z

    move-result v1

    .line 940
    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v2, v0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 942
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mAlwaysFinishActivities:Z

    if-eqz v3, :cond_206

    .line 945
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v3, "always-finish"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities(Ljava/lang/String;)V

    :cond_206
    if-eqz v1, :cond_215

    .line 949
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 950
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->isMemFactorLowered()Z

    move-result v1

    .line 949
    invoke-virtual {v2, v12, v13, v11, v1}, Lcom/android/server/am/AppProfiler;->requestPssAllProcsLPr(JZZ)V

    :cond_215
    move-object/from16 v2, p3

    .line 953
    invoke-virtual {v0, v2, v14, v15}, Lcom/android/server/am/OomAdjuster;->updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V

    .line 955
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 956
    :try_start_221
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 957
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/ProcessStatsService;->shouldWriteNowLocked(J)Z

    move-result v4

    if-eqz v4, :cond_23d

    .line 958
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v6, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-direct {v6, v4, v7}, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 963
    :cond_23d
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget v5, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/am/ProcessStatsService;->updateTrackingAssociationsLocked(IJ)V

    .line 964
    monitor-exit v1
    :try_end_247
    .catchall {:try_start_221 .. :try_end_247} :catchall_27b

    .line 966
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v1, :cond_26c

    .line 967
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v12

    const-string v3, "ActivityManager"

    .line 972
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Did OOM ADJ in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26c
    if-eqz p6, :cond_27a

    .line 976
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    const-wide/16 v0, 0x40

    .line 977
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_27a
    return-void

    :catchall_27b
    move-exception v0

    .line 964
    :try_start_27c
    monitor-exit v1
    :try_end_27d
    .catchall {:try_start_27c .. :try_end_27d} :catchall_27b

    throw v0
.end method

.method public final updateOomAdjLSP(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 508
    invoke-virtual {p0, v0}, Lcom/android/server/am/OomAdjuster;->checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 513
    :try_start_a
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 514
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_15

    .line 517
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 518
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    return-void

    :catchall_15
    move-exception v0

    .line 517
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 518
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 519
    throw v0
.end method

.method public final updateOomAdjLSP(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_25

    .line 548
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    if-nez v1, :cond_a

    goto :goto_25

    .line 553
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_11

    return v0

    :cond_11
    const/4 v1, 0x0

    .line 559
    :try_start_12
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 560
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result p1
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1e

    .line 563
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 564
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    return p1

    :catchall_1e
    move-exception p1

    .line 563
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 564
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 565
    throw p1

    .line 549
    :cond_25
    :goto_25
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Ljava/lang/String;)V

    return v0
.end method

.method public updateOomAdjLocked(Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 502
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Ljava/lang/String;)V

    .line 503
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_e
    move-exception p0

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 542
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return p0

    :catchall_f
    move-exception p0

    .line 543
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 772
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 773
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    .line 774
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 775
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    return-void

    .line 778
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    .line 782
    :cond_19
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    if-eqz v0, :cond_1e

    return-void

    :cond_1e
    const/4 v0, 0x1

    .line 788
    :try_start_1f
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 789
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjPendingTargetsLocked(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_2a

    .line 792
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 793
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    return-void

    :catchall_2a
    move-exception v0

    .line 792
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 793
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 794
    throw v0
.end method

.method public final updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 1458
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessList;->incrementProcStateSeqAndNotifyAppsLOSP(Lcom/android/server/am/ActiveUids;)V

    .line 1460
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    .line 1461
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1464
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_11

    .line 1465
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    .line 1467
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_17
    if-ltz v1, :cond_23d

    .line 1468
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 1469
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v4

    const/16 v5, 0x14

    if-eq v4, v5, :cond_22e

    .line 1470
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v6

    if-ne v4, v6, :cond_49

    .line 1471
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v6

    if-ne v4, v6, :cond_49

    .line 1472
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v6

    if-ne v4, v6, :cond_49

    .line 1473
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getProcAdjChanged()Z

    move-result v4

    if-eqz v4, :cond_22e

    .line 1475
    :cond_49
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    const-string v6, "Changes in "

    const-string v7, "ActivityManager"

    const-string v8, " to "

    if-eqz v4, :cond_b3

    .line 1476
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": proc state from "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1478
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", capability from "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", allowlist from "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1481
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", procAdjChanged: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getProcAdjChanged()Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1476
    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    :cond_b3
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-nez v4, :cond_123

    .line 1487
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v9

    if-eq v4, v9, :cond_123

    .line 1488
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1489
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1491
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v6, :cond_117

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Caller="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x7

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_119

    :cond_117
    const-string v6, ""

    :goto_119
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1488
    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    :cond_123
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v4

    invoke-static {v4}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_171

    .line 1496
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v4

    if-nez v4, :cond_171

    .line 1499
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v4

    invoke-static {v4}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v4

    if-eqz v4, :cond_144

    .line 1500
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v4

    if-eqz v4, :cond_15e

    .line 1501
    :cond_144
    invoke-virtual {v3, p2, p3}, Lcom/android/server/am/UidRecord;->setLastBackgroundTime(J)V

    .line 1502
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v7, 0x3a

    invoke-virtual {v4, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_15e

    .line 1507
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v8, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1511
    :cond_15e
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_16f

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isSetIdle()Z

    move-result v4

    if-nez v4, :cond_16f

    const/4 v4, 0x2

    .line 1513
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_189

    :cond_16f
    move v4, v6

    goto :goto_189

    .line 1516
    :cond_171
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_183

    const/4 v4, 0x4

    .line 1518
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v7

    invoke-static {v7}, Lcom/android/server/am/EventLogTags;->writeAmUidActive(I)V

    .line 1519
    invoke-virtual {v3, v6}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    goto :goto_184

    :cond_183
    move v4, v6

    :goto_184
    const-wide/16 v7, 0x0

    .line 1521
    invoke-virtual {v3, v7, v8}, Lcom/android/server/am/UidRecord;->setLastBackgroundTime(J)V

    .line 1523
    :goto_189
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v7

    const/16 v8, 0xb

    if-le v7, v8, :cond_193

    move v7, v2

    goto :goto_194

    :cond_193
    move v7, v6

    .line 1525
    :goto_194
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v9

    if-le v9, v8, :cond_19b

    move v6, v2

    :cond_19b
    if-ne v7, v6, :cond_1a3

    .line 1528
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v7

    if-ne v7, v5, :cond_1ab

    :cond_1a3
    if-eqz v6, :cond_1a8

    const/16 v5, 0x8

    goto :goto_1aa

    :cond_1a8
    const/16 v5, 0x10

    :goto_1aa
    or-int/2addr v4, v5

    .line 1532
    :cond_1ab
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v6

    if-eq v5, v6, :cond_1b7

    or-int/lit8 v4, v4, 0x20

    .line 1535
    :cond_1b7
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v6

    const/high16 v7, -0x80000000

    if-eq v5, v6, :cond_1c4

    or-int/2addr v4, v7

    .line 1538
    :cond_1c4
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getProcAdjChanged()Z

    move-result v5

    if-eqz v5, :cond_1cc

    or-int/lit8 v4, v4, 0x40

    .line 1541
    :cond_1cc
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/UidRecord;->setSetProcState(I)V

    .line 1542
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/UidRecord;->setSetCapability(I)V

    .line 1543
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/UidRecord;->setSetAllowListed(Z)V

    .line 1544
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/UidRecord;->setSetIdle(Z)V

    .line 1545
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->clearProcAdjChanged()V

    and-int v5, v4, v7

    if-nez v5, :cond_1f3

    and-int/lit8 v6, v4, 0x20

    if-eqz v6, :cond_202

    .line 1548
    :cond_1f3
    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1549
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v7

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v8

    .line 1548
    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidProcStateChanged(II)V

    :cond_202
    if-eqz v4, :cond_20a

    .line 1552
    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, -0x1

    invoke-virtual {v6, v3, v7, v4}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    :cond_20a
    if-nez v5, :cond_210

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_221

    .line 1556
    :cond_210
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v6

    .line 1557
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v7

    .line 1556
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    .line 1559
    :cond_221
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->hasForegroundServices()Z

    move-result v4

    if-eqz v4, :cond_22e

    .line 1560
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActiveServices;->foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V

    .line 1564
    :cond_22e
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v3

    invoke-virtual {v4, v3, p2, p3}, Landroid/app/ActivityManagerInternal;->deletePendingTopUid(IJ)V

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_17

    .line 1566
    :cond_23d
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz p1, :cond_244

    .line 1567
    invoke-virtual {p1}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 1570
    :cond_244
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_261

    sub-int/2addr p1, v2

    :goto_24b
    if-ltz p1, :cond_261

    .line 1575
    iget-object p2, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/UidRecord;

    invoke-virtual {p3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/server/am/ActiveServices;->stopInBackgroundLocked(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_24b

    :cond_261
    return-void
.end method
