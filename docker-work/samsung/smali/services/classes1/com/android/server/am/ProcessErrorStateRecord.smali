.class public Lcom/android/server/am/ProcessErrorStateRecord;
.super Ljava/lang/Object;
.source "ProcessErrorStateRecord.java"


# instance fields
.field public mAnrAnnotation:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mAnrData:Lcom/android/server/am/AppNotRespondingDialog$Data;
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mBad:Z
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mCrashHandler:Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mCrashing:Z
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public final mDialogController:Lcom/android/server/am/ErrorDialogController;
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mErrorReportReceiver:Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mForceCrashReport:Z
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mNotResponding:Z
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public static synthetic $r8$lambda$7HmO4QmBT-7MmO9QUGPHyRGmDBM(Lcom/android/server/am/ProcessErrorStateRecord;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessErrorStateRecord;->lambda$appNotResponding$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B-mCX3-mfHLjsTFdEX-IyS_ANtQ(Lcom/android/server/am/ProcessErrorStateRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->lambda$appNotResponding$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$bCeqMXWRfHTKELw2_rvTBDNRjgk(Lcom/android/server/am/ProcessErrorStateRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->lambda$appNotResponding$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$g5iK6hfNB0rUzAAxy2PqDtz-ZUo(IILjava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/server/am/ProcessRecord;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/am/ProcessErrorStateRecord;->lambda$appNotResponding$1(IILjava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 256
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 257
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 258
    new-instance v0, Lcom/android/server/am/ErrorDialogController;

    invoke-direct {v0, p1}, Lcom/android/server/am/ErrorDialogController;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    return-void
.end method

.method private synthetic lambda$appNotResponding$0(Ljava/lang/String;)V
    .registers 5

    .line 268
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessErrorStateRecord;->setAnrAnnotation(Ljava/lang/String;)V

    .line 271
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const-string p1, "anr"

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    .line 272
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_17
    move-exception p0

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public static synthetic lambda$appNotResponding$1(IILjava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/server/am/ProcessRecord;)V
    .registers 6

    if-eqz p4, :cond_83

    .line 358
    invoke-virtual {p4}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_83

    .line 359
    invoke-virtual {p4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_83

    if-eq v0, p0, :cond_83

    if-eq v0, p1, :cond_83

    .line 360
    sget p0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, p0, :cond_83

    .line 361
    invoke-virtual {p4}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result p0

    const-string p1, "ActivityManager"

    if-eqz p0, :cond_3e

    .line 362
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz p0, :cond_83

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Adding persistent proc: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 364
    :cond_3e
    iget-object p0, p4, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result p0

    if-eqz p0, :cond_66

    .line 365
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz p0, :cond_83

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Adding likely IME: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 368
    :cond_66
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz p0, :cond_83

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Adding ANR proc: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    :goto_83
    return-void
.end method

.method private synthetic lambda$appNotResponding$2()V
    .registers 5

    .line 568
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 569
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const-string v1, "anr"

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    .line 570
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method private synthetic lambda$appNotResponding$3()V
    .registers 3

    .line 573
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 574
    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 575
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public appNotResponding(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;Z)V
    .registers 62

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move-object/from16 v6, p3

    move-object/from16 v1, p4

    move-object/from16 v13, p6

    .line 264
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 265
    new-instance v4, Landroid/util/SparseArray;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    .line 267
    iget-object v5, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v5

    new-instance v7, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, v13}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;Ljava/lang/String;)V

    invoke-virtual {v5, v13, v7}, Lcom/android/server/wm/WindowProcessController;->appEarlyNotResponding(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 275
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isMonitorCpuUsage()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 277
    iget-object v5, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    :cond_36
    const-string v5, "ANR"

    const/4 v10, 0x0

    .line 282
    invoke-static {v5, v10}, Lcom/samsung/android/core/SystemDumpWriter;->saveDumpsysFiles(Ljava/lang/String;Z)V

    .line 287
    iget-object v5, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    .line 289
    iget-object v7, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_45
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 291
    invoke-virtual {v0, v13}, Lcom/android/server/am/ProcessErrorStateRecord;->setAnrAnnotation(Ljava/lang/String;)V

    .line 294
    iget-object v8, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isShuttingDown()Z

    move-result v8

    if-eqz v8, :cond_78

    const-string v1, "ActivityManager"

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "During shutdown skipping ANR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    monitor-exit v7
    :try_end_74
    .catchall {:try_start_45 .. :try_end_74} :catchall_66b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 297
    :cond_78
    :try_start_78
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v8

    if-eqz v8, :cond_a1

    const-string v1, "ActivityManager"

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping duplicate ANR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    monitor-exit v7
    :try_end_9d
    .catchall {:try_start_78 .. :try_end_9d} :catchall_66b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 300
    :cond_a1
    :try_start_a1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v8

    if-eqz v8, :cond_ca

    const-string v1, "ActivityManager"

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crashing app skipping ANR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    monitor-exit v7
    :try_end_c6
    .catchall {:try_start_a1 .. :try_end_c6} :catchall_66b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 303
    :cond_ca
    :try_start_ca
    iget-object v8, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v8

    if-eqz v8, :cond_f5

    const-string v1, "ActivityManager"

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App already killed by AM skipping ANR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    monitor-exit v7
    :try_end_f1
    .catchall {:try_start_ca .. :try_end_f1} :catchall_66b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 306
    :cond_f5
    :try_start_f5
    iget-object v8, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v8

    if-eqz v8, :cond_120

    const-string v1, "ActivityManager"

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping died app ANR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    monitor-exit v7
    :try_end_11c
    .catchall {:try_start_f5 .. :try_end_11c} :catchall_66b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 313
    :cond_120
    :try_start_120
    iget-object v8, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v8
    :try_end_123
    .catchall {:try_start_120 .. :try_end_123} :catchall_66b

    :try_start_123
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    const/4 v9, 0x1

    .line 314
    invoke-virtual {v0, v9}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 315
    monitor-exit v8
    :try_end_12b
    .catchall {:try_start_123 .. :try_end_12b} :catchall_665

    :try_start_12b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    new-array v3, v3, [Ljava/lang/Object;

    .line 318
    iget-object v8, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v9

    iget-object v8, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v9, v3, v10

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 319
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v3, v9

    const/4 v8, 0x4

    aput-object v13, v3, v8

    const/16 v8, 0x7538

    .line 318
    invoke-static {v8, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 321
    iget-object v3, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    const/16 v44, 0x0

    if-eqz v3, :cond_185

    .line 322
    invoke-virtual {v3}, Lcom/android/server/am/TraceErrorLogger;->isAddErrorIdEnabled()Z

    move-result v3

    if-eqz v3, :cond_185

    .line 323
    iget-object v3, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v3}, Lcom/android/server/am/TraceErrorLogger;->generateErrorId()Ljava/util/UUID;

    move-result-object v3

    .line 324
    iget-object v8, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    iget-object v9, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9, v3}, Lcom/android/server/am/TraceErrorLogger;->addErrorIdToTrace(Ljava/lang/String;Ljava/util/UUID;)V

    .line 325
    iget-object v8, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v8, v13, v3}, Lcom/android/server/am/TraceErrorLogger;->addSubjectToTrace(Ljava/lang/String;Ljava/util/UUID;)V

    move-object/from16 v45, v3

    goto :goto_187

    :cond_185
    move-object/from16 v45, v44

    :goto_187
    const/16 v3, 0x178

    .line 334
    iget-object v8, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v3, v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    .line 338
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isSilentAnr()Z

    move-result v3

    if-nez v3, :cond_1e4

    if-nez p7, :cond_1e4

    if-eqz v1, :cond_1ac

    .line 344
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v8

    if-lez v8, :cond_1ac

    .line 345
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v8

    goto :goto_1ad

    :cond_1ac
    move v8, v5

    :goto_1ad
    if-eq v8, v5, :cond_1b6

    .line 347
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_1b6
    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v9, v5, :cond_1c3

    if-eq v9, v8, :cond_1c3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c3
    if-eq v9, v5, :cond_1d6

    if-eq v9, v8, :cond_1d6

    .line 352
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d6

    .line 353
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 357
    :cond_1d6
    iget-object v9, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v10, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda1;

    invoke-direct {v10, v5, v8, v2, v4}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda1;-><init>(IILjava/util/ArrayList;Landroid/util/SparseArray;)V

    const/4 v8, 0x0

    invoke-virtual {v9, v8, v10}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    goto :goto_1e5

    :cond_1e4
    const/4 v8, 0x0

    .line 375
    :goto_1e5
    monitor-exit v7
    :try_end_1e6
    .catchall {:try_start_12b .. :try_end_1e6} :catchall_66b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 379
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v7

    iget-object v9, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 380
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    move-result v9

    iget-object v10, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 379
    invoke-virtual {v7, v9, v8, v10}, Lcom/android/server/criticalevents/CriticalEventLog;->logLinesForTraceFile(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 381
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    move-result v9

    iget-object v8, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v20, v4

    iget v4, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->mPid:I

    move/from16 v18, v8

    const/16 v21, 0x0

    move-object/from16 v8, p6

    const/4 v1, 0x1

    move/from16 v1, v21

    move-wide/from16 v47, v11

    move v11, v4

    move/from16 v12, v18

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/criticalevents/CriticalEventLog;->logAnr(Ljava/lang/String;ILjava/lang/String;II)V

    .line 385
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v4, "ANR in "

    .line 387
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v15, :cond_245

    const-string v4, " ("

    .line 389
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_245
    const-string v4, "\n"

    .line 391
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "PID: "

    .line 392
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v13, :cond_266

    const-string v4, "Reason: "

    .line 394
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_266
    if-eqz v6, :cond_27b

    .line 397
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27b

    const-string v4, "Parent: "

    .line 398
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27b
    if-eqz v45, :cond_28e

    const-string v4, "ErrorId: "

    .line 401
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v45 .. v45}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28e
    const-string v4, "Frozen: s["

    .line 405
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/os/Process;->isFrozenState(I)Z

    move-result v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "] g["

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 406
    invoke-virtual {v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    iget-object v4, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/wm/ActivityTaskManagerService;->getAnrController(Landroid/content/pm/ApplicationInfo;)Landroid/app/AnrController;

    move-result-object v11

    if-eqz v11, :cond_2ea

    .line 419
    iget-object v4, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 420
    iget v9, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 421
    invoke-interface {v11, v4, v9}, Landroid/app/AnrController;->getAnrDelayMillis(Ljava/lang/String;I)J

    move-result-wide v7

    .line 424
    invoke-interface {v11, v4, v9}, Landroid/app/AnrController;->onAnrDelayStarted(Ljava/lang/String;I)V

    const-string v9, "ActivityManager"

    .line 425
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANR delay of "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms started for "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v9, v7

    goto :goto_2ec

    :cond_2ea
    const-wide/16 v9, 0x0

    .line 428
    :goto_2ec
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    invoke-static {}, Lcom/android/server/MemoryPressureUtil;->currentPsiState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    new-instance v4, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v7, 0x1

    invoke-direct {v4, v7}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    if-nez v3, :cond_306

    if-eqz p7, :cond_303

    goto :goto_306

    .line 442
    :cond_303
    sget-object v7, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    goto :goto_32a

    :cond_306
    :goto_306
    const/4 v7, 0x0

    .line 435
    :goto_307
    sget-object v8, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    array-length v6, v8

    if-ge v7, v6, :cond_328

    .line 436
    aget-object v6, v8, v7

    iget-object v8, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_323

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    .line 437
    iget-object v6, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    goto :goto_32a

    :cond_323
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v6, p3

    goto :goto_307

    :cond_328
    move-object/from16 v7, v44

    :goto_32a
    if-nez v7, :cond_32f

    move-object/from16 v6, v44

    goto :goto_333

    .line 445
    :cond_32f
    invoke-static {v7}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v6

    :goto_333
    if-eqz v6, :cond_350

    .line 449
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v6

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 450
    array-length v8, v6

    move-wide/from16 v49, v9

    const/4 v9, 0x0

    :goto_33f
    if-ge v9, v8, :cond_34d

    aget v10, v6, v9

    .line 451
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_33f

    :cond_34d
    move-object/from16 v19, v7

    goto :goto_354

    :cond_350
    move-wide/from16 v49, v9

    move-object/from16 v19, v44

    .line 457
    :goto_354
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    const/4 v10, 0x2

    new-array v7, v10, [J

    if-eqz v3, :cond_361

    move-object/from16 v17, v44

    goto :goto_363

    :cond_361
    move-object/from16 v17, v4

    :goto_363
    if-eqz v3, :cond_368

    move-object/from16 v18, v44

    goto :goto_36a

    :cond_368
    move-object/from16 v18, v20

    :goto_36a
    move-object/from16 v16, v2

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, p6

    .line 460
    invoke-static/range {v16 .. v23}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/io/StringWriter;[JLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v46

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isMonitorCpuUsage()Z

    move-result v2

    if-eqz v2, :cond_39c

    .line 465
    iget-object v2, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 466
    iget-object v2, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    move-wide/from16 v8, v47

    invoke-virtual {v2, v1, v8, v9}, Lcom/android/server/am/AppProfiler;->printCurrentCpuState(Ljava/lang/StringBuilder;J)V

    .line 467
    invoke-virtual {v4}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v4}, Lcom/android/internal/os/ProcessCpuTracker;->printCpuCoreInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_39e

    :cond_39c
    move-wide/from16 v8, v47

    .line 473
    :goto_39e
    invoke-virtual {v6}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v4, v8, v9}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ActivityManager"

    .line 477
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v46, :cond_3bd

    const/4 v2, 0x3

    .line 480
    invoke-static {v5, v2}, Landroid/os/Process;->sendSignal(II)V

    const/4 v2, 0x1

    goto :goto_3e5

    :cond_3bd
    const/4 v2, 0x1

    aget-wide v3, v7, v2

    const-wide/16 v8, 0x0

    cmp-long v3, v3, v8

    if-lez v3, :cond_3e5

    .line 483
    iget-object v3, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v4, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v6, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 484
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v19

    const/4 v4, 0x0

    aget-wide v21, v7, v4

    aget-wide v23, v7, v2

    move-object/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v20, v46

    .line 483
    invoke-virtual/range {v16 .. v24}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogAnrTrace(II[Ljava/lang/String;Ljava/io/File;JJ)V

    goto :goto_3e6

    :cond_3e5
    :goto_3e5
    const/4 v4, 0x0

    :goto_3e6
    const/high16 v3, 0x3f800000    # 1.0f

    .line 490
    iget-object v6, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v6

    .line 491
    iget-object v7, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/high16 v8, 0x42c80000    # 100.0f

    if-eqz v7, :cond_471

    iget-object v7, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_471

    if-eqz v6, :cond_471

    .line 492
    iget-object v7, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v9, 0x3e8

    iget-object v2, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 493
    invoke-virtual {v6, v7, v9, v2}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(Ljava/lang/String;II)Landroid/content/pm/IncrementalStatesInfo;

    move-result-object v2

    if-eqz v2, :cond_416

    .line 496
    invoke-virtual {v2}, Landroid/content/pm/IncrementalStatesInfo;->getProgress()F

    move-result v3

    .line 498
    :cond_416
    iget-object v2, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_471

    .line 499
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_471

    .line 500
    invoke-static {v2}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_471

    const-string v6, "ActivityManager"

    .line 502
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App ANR on incremental package "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " which is "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v9, v3, v8

    float-to-int v9, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "% loaded."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "incremental"

    .line 504
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_471

    .line 507
    new-instance v7, Landroid/os/incremental/IncrementalManager;

    .line 508
    invoke-static {v6}, Landroid/os/incremental/IIncrementalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IIncrementalService;

    move-result-object v6

    invoke-direct {v7, v6}, Landroid/os/incremental/IncrementalManager;-><init>(Landroid/os/incremental/IIncrementalService;)V

    .line 509
    invoke-virtual {v7, v2}, Landroid/os/incremental/IncrementalManager;->getMetrics(Ljava/lang/String;)Landroid/os/incremental/IncrementalMetrics;

    move-result-object v2

    move-object/from16 v47, v2

    goto :goto_473

    :cond_471
    move-object/from16 v47, v44

    :goto_473
    if-eqz v47, :cond_484

    const-string v2, "Package is "

    .line 515
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float/2addr v8, v3

    float-to-int v2, v8

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "% loaded.\n"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_484
    const/16 v16, 0x4f

    .line 518
    iget-object v2, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v15, :cond_494

    const-string/jumbo v8, "unknown"

    move-object/from16 v19, v8

    goto :goto_496

    :cond_494
    move-object/from16 v19, v15

    .line 521
    :goto_496
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_4aa

    iget-object v2, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    if-eqz v2, :cond_4a7

    move/from16 v21, v10

    goto :goto_4ac

    :cond_4a7
    const/16 v21, 0x1

    goto :goto_4ac

    :cond_4aa
    move/from16 v21, v4

    .line 525
    :goto_4ac
    iget-object v2, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v2

    if-eqz v2, :cond_4b7

    move/from16 v22, v10

    goto :goto_4b9

    :cond_4b7
    const/16 v22, 0x1

    .line 527
    :goto_4b9
    iget-object v2, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 528
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    move-result v23

    .line 529
    iget-object v2, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_4cc

    iget-object v2, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_4ce

    :cond_4cc
    const-string v2, ""

    :goto_4ce
    move-object/from16 v24, v2

    if-eqz v47, :cond_4d5

    const/16 v25, 0x1

    goto :goto_4d7

    :cond_4d5
    move/from16 v25, v4

    :goto_4d7
    const-wide/16 v8, -0x1

    if-eqz v47, :cond_4e2

    .line 531
    invoke-virtual/range {v47 .. v47}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceOldestPendingRead()J

    move-result-wide v17

    move-wide/from16 v27, v17

    goto :goto_4e4

    :cond_4e2
    move-wide/from16 v27, v8

    :goto_4e4
    const/4 v2, -0x1

    if-eqz v47, :cond_4ee

    .line 533
    invoke-virtual/range {v47 .. v47}, Landroid/os/incremental/IncrementalMetrics;->getStorageHealthStatusCode()I

    move-result v17

    move/from16 v29, v17

    goto :goto_4f0

    :cond_4ee
    move/from16 v29, v2

    :goto_4f0
    if-eqz v47, :cond_4f9

    .line 535
    invoke-virtual/range {v47 .. v47}, Landroid/os/incremental/IncrementalMetrics;->getDataLoaderStatusCode()I

    move-result v17

    move/from16 v30, v17

    goto :goto_4fb

    :cond_4f9
    move/from16 v30, v2

    :goto_4fb
    if-eqz v47, :cond_506

    .line 537
    invoke-virtual/range {v47 .. v47}, Landroid/os/incremental/IncrementalMetrics;->getReadLogsEnabled()Z

    move-result v17

    if-eqz v17, :cond_506

    const/16 v31, 0x1

    goto :goto_508

    :cond_506
    move/from16 v31, v4

    :goto_508
    if-eqz v47, :cond_511

    .line 538
    invoke-virtual/range {v47 .. v47}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceLastDataLoaderBind()J

    move-result-wide v17

    move-wide/from16 v32, v17

    goto :goto_513

    :cond_511
    move-wide/from16 v32, v8

    :goto_513
    if-eqz v47, :cond_51c

    .line 540
    invoke-virtual/range {v47 .. v47}, Landroid/os/incremental/IncrementalMetrics;->getDataLoaderBindDelayMillis()J

    move-result-wide v17

    move-wide/from16 v34, v17

    goto :goto_51e

    :cond_51c
    move-wide/from16 v34, v8

    :goto_51e
    if-eqz v47, :cond_527

    .line 542
    invoke-virtual/range {v47 .. v47}, Landroid/os/incremental/IncrementalMetrics;->getTotalDelayedReads()I

    move-result v17

    move/from16 v36, v17

    goto :goto_529

    :cond_527
    move/from16 v36, v2

    :goto_529
    if-eqz v47, :cond_532

    .line 544
    invoke-virtual/range {v47 .. v47}, Landroid/os/incremental/IncrementalMetrics;->getTotalFailedReads()I

    move-result v17

    move/from16 v37, v17

    goto :goto_534

    :cond_532
    move/from16 v37, v2

    :goto_534
    if-eqz v47, :cond_53a

    .line 546
    invoke-virtual/range {v47 .. v47}, Landroid/os/incremental/IncrementalMetrics;->getLastReadErrorUid()I

    move-result v2

    :cond_53a
    move/from16 v38, v2

    if-eqz v47, :cond_545

    .line 548
    invoke-virtual/range {v47 .. v47}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceLastReadError()J

    move-result-wide v17

    move-wide/from16 v39, v17

    goto :goto_547

    :cond_545
    move-wide/from16 v39, v8

    :goto_547
    if-eqz v47, :cond_550

    .line 550
    invoke-virtual/range {v47 .. v47}, Landroid/os/incremental/IncrementalMetrics;->getLastReadErrorNumber()I

    move-result v2

    move/from16 v41, v2

    goto :goto_552

    :cond_550
    move/from16 v41, v4

    :goto_552
    if-eqz v47, :cond_558

    .line 552
    invoke-virtual/range {v47 .. v47}, Landroid/os/incremental/IncrementalMetrics;->getTotalDelayedReadsDurationMillis()J

    move-result-wide v8

    :cond_558
    move-wide/from16 v42, v8

    move/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v20, p6

    move/from16 v26, v3

    .line 518
    invoke-static/range {v16 .. v43}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ZFJIIZJJIIIJIJ)V

    move-object/from16 v2, p4

    if-eqz v2, :cond_56f

    .line 555
    iget-object v2, v2, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    move-object v7, v2

    goto :goto_571

    :cond_56f
    move-object/from16 v7, v44

    .line 558
    :goto_571
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->DEBUG_LEVEL_LOW:Z

    if-eqz v2, :cond_576

    goto :goto_57c

    .line 559
    :cond_576
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->getBinderTransactionInfo(I)Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    move-result-object v2

    move-object/from16 v44, v2

    .line 562
    :goto_57c
    iget-object v2, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "anr"

    iget-object v5, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v8, 0x0

    .line 563
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x0

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v3}, Ljava/lang/Float;-><init>(F)V

    move-object/from16 v17, v1

    const/4 v3, 0x1

    move-object v1, v2

    move-object v2, v4

    move v4, v3

    move-object v3, v5

    move v5, v4

    move-object v4, v6

    move v6, v5

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-wide/from16 v51, v49

    move-object/from16 v10, v46

    move-object/from16 v53, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v47

    move-object/from16 v14, v45

    move-object/from16 v15, v44

    .line 562
    invoke-virtual/range {v1 .. v15}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/Float;Landroid/os/incremental/IncrementalMetrics;Ljava/util/UUID;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)V

    .line 566
    iget-object v1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;)V

    new-instance v4, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowProcessController;->appNotResponding(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_5ce

    return-void

    .line 580
    :cond_5ce
    iget-object v1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_5d1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 583
    iget-object v2, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    if-eqz v2, :cond_5e3

    .line 584
    iget-object v3, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/BatteryStatsService;->noteProcessAnr(Ljava/lang/String;I)V

    .line 587
    :cond_5e3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isSilentAnr()Z

    move-result v2

    if-eqz v2, :cond_5ff

    iget-object v2, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v2

    if-nez v2, :cond_5ff

    .line 588
    iget-object v0, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const-string v2, "bg anr"

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    .line 589
    monitor-exit v1
    :try_end_5fb
    .catchall {:try_start_5d1 .. :try_end_5fb} :catchall_65f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 592
    :cond_5ff
    :try_start_5ff
    iget-object v2, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v2
    :try_end_602
    .catchall {:try_start_5ff .. :try_end_602} :catchall_65f

    :try_start_602
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    move-object/from16 v3, p6

    if-eqz v3, :cond_61b

    .line 595
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ANR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_61d

    :cond_61b
    const-string v3, "ANR"

    :goto_61d
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p1

    .line 594
    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/am/ProcessErrorStateRecord;->makeAppNotRespondingLSP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v3, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    move-object/from16 v4, v53

    invoke-virtual {v3, v4}, Lcom/android/server/am/ErrorDialogController;->setAnrController(Landroid/app/AnrController;)V

    .line 597
    monitor-exit v2
    :try_end_62e
    .catchall {:try_start_602 .. :try_end_62e} :catchall_659

    :try_start_62e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 601
    iget-object v2, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    if-eqz v2, :cond_654

    .line 603
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x2

    .line 604
    iput v3, v2, Landroid/os/Message;->what:I

    .line 605
    new-instance v3, Lcom/android/server/am/AppNotRespondingDialog$Data;

    iget-object v4, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v5, p2

    move/from16 v6, p5

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/am/AppNotRespondingDialog$Data;-><init>(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;Z)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 607
    iget-object v0, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    move-wide/from16 v7, v51

    invoke-virtual {v0, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 609
    :cond_654
    monitor-exit v1
    :try_end_655
    .catchall {:try_start_62e .. :try_end_655} :catchall_65f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_659
    move-exception v0

    .line 597
    :try_start_65a
    monitor-exit v2
    :try_end_65b
    .catchall {:try_start_65a .. :try_end_65b} :catchall_659

    :try_start_65b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_65f
    move-exception v0

    .line 609
    monitor-exit v1
    :try_end_661
    .catchall {:try_start_65b .. :try_end_661} :catchall_65f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_665
    move-exception v0

    .line 315
    :try_start_666
    monitor-exit v8
    :try_end_667
    .catchall {:try_start_666 .. :try_end_667} :catchall_665

    :try_start_667
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_66b
    move-exception v0

    .line 375
    monitor-exit v7
    :try_end_66d
    .catchall {:try_start_667 .. :try_end_66d} :catchall_66b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 5

    .line 693
    iget-object p3, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter p3

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 694
    iget-boolean p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    if-nez p4, :cond_22

    iget-object p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    invoke-virtual {p4}, Lcom/android/server/am/ErrorDialogController;->hasCrashDialogs()Z

    move-result p4

    if-nez p4, :cond_22

    iget-boolean p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    if-nez p4, :cond_22

    iget-object p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 695
    invoke-virtual {p4}, Lcom/android/server/am/ErrorDialogController;->hasAnrDialogs()Z

    move-result p4

    if-nez p4, :cond_22

    iget-boolean p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    if-eqz p4, :cond_b0

    .line 696
    :cond_22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 697
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " mCrashing="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 698
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    invoke-virtual {p4}, Lcom/android/server/am/ErrorDialogController;->getCrashDialogs()Ljava/util/List;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 699
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " mNotResponding="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 700
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    invoke-virtual {p4}, Lcom/android/server/am/ErrorDialogController;->getAnrDialogs()Ljava/util/List;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 701
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " bad="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 704
    iget-object p2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    if-eqz p2, :cond_ad

    const-string p2, " errorReportReceiver="

    .line 705
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 706
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 708
    :cond_ad
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 710
    :cond_b0
    monitor-exit p3
    :try_end_b1
    .catchall {:try_start_3 .. :try_end_b1} :catchall_b5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_b5
    move-exception p0

    :try_start_b6
    monitor-exit p3
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public getAnrAnnotation()Ljava/lang/String;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 211
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrAnnotation:Ljava/lang/String;

    return-object p0
.end method

.method public getAnrData()Lcom/android/server/am/AppNotRespondingDialog$Data;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 251
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrData:Lcom/android/server/am/AppNotRespondingDialog$Data;

    return-object p0
.end method

.method public getCrashHandler()Ljava/lang/Runnable;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 191
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashHandler:Ljava/lang/Runnable;

    return-object p0
.end method

.method public getCrashingReport()Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 201
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-object p0
.end method

.method public getDialogController()Lcom/android/server/am/ErrorDialogController;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 241
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    return-object p0
.end method

.method public getErrorReportReceiver()Landroid/content/ComponentName;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 231
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getNotRespondingReport()Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 221
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-object p0
.end method

.method public final getShowBackground()Z
    .registers 3

    .line 663
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "anr_show_background"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public isBad()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 149
    iget-boolean p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    return p0
.end method

.method public isCrashing()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 159
    iget-boolean p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    return p0
.end method

.method public isForceCrashReport()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 170
    iget-boolean p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mForceCrashReport:Z

    return p0
.end method

.method public final isInterestingForBackgroundTraces()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 644
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    return v2

    .line 657
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.systemui"

    .line 658
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    :cond_28
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 659
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result p0

    if-eqz p0, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x0

    :cond_3e
    :goto_3e
    return v2
.end method

.method public isMonitorCpuUsage()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 680
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 p0, 0x1

    return p0
.end method

.method public isNotResponding()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 180
    iget-boolean p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    return p0
.end method

.method public isSilentAnr()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 674
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->getShowBackground()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isInterestingForBackgroundTraces()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final makeAppNotRespondingLSP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    const/4 v0, 0x1

    .line 614
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 617
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    if-eqz v1, :cond_17

    .line 618
    iget-object v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x2

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 622
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->startAppProblemLSP()V

    .line 623
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->stopFreezingActivities()V

    return-void
.end method

.method public onCleanupApplicationRecordLSP()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 686
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->clearAllErrorDialogs()V

    const/4 v0, 0x0

    .line 688
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashing(Z)V

    .line 689
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    return-void
.end method

.method public setAnrAnnotation(Ljava/lang/String;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrAnnotation:Ljava/lang/String;

    return-void
.end method

.method public setAnrData(Lcom/android/server/am/AppNotRespondingDialog$Data;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 246
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrData:Lcom/android/server/am/AppNotRespondingDialog$Data;

    return-void
.end method

.method public setBad(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 154
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    return-void
.end method

.method public setCrashHandler(Ljava/lang/Runnable;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashHandler:Ljava/lang/Runnable;

    return-void
.end method

.method public setCrashing(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 164
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    .line 165
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setCrashing(Z)V

    return-void
.end method

.method public setCrashingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-void
.end method

.method public setErrorReportReceiver(Landroid/content/ComponentName;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    return-void
.end method

.method public setForceCrashReport(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 175
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mForceCrashReport:Z

    return-void
.end method

.method public setNotResponding(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 185
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    .line 186
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setNotResponding(Z)V

    return-void
.end method

.method public setNotRespondingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-void
.end method

.method public startAppProblemLSP()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 630
    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 632
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_2e

    aget v3, v0, v2

    .line 633
    iget-object v4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v5, v3, :cond_2b

    .line 634
    iget-object v3, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v3, v4, v5}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 638
    :cond_2e
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method
