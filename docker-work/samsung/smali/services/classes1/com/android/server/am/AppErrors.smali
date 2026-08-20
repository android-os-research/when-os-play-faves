.class public Lcom/android/server/am/AppErrors;
.super Ljava/lang/Object;
.source "AppErrors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrors$BadProcessInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field public mAppsNotReportingCrashes:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBadProcessLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mBadProcessLock:Ljava/lang/Object;

.field public volatile mBadProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/AppErrors$BadProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mCrashDexOpt:Lcom/android/server/am/CrashDexOpt;

.field public final mPackageWatchdog:Lcom/android/server/PackageWatchdog;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBadProcessLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBadProcessLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBadProcessLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBadProcessLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public static synthetic $r8$lambda$9N5lCaniJTLAKnJqrpD73kxOrwQ(Lcom/android/server/am/AppErrors;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/am/AppErrors;->lambda$handleAppCrashInActivityController$1(Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$EYNvQHuzJL337LHFRG7pcYxtbUg(Lcom/android/server/am/AppErrors;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppErrors;->lambda$scheduleAppCrashLocked$0(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/PackageWatchdog;)V
    .registers 5

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 120
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    .line 126
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    .line 133
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 154
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    .line 167
    new-instance v0, Lcom/android/server/am/CrashDexOpt;

    invoke-direct {v0}, Lcom/android/server/am/CrashDexOpt;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mCrashDexOpt:Lcom/android/server/am/CrashDexOpt;

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 171
    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 172
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 173
    iput-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 174
    iput-object p3, p0, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    .line 177
    invoke-static {}, Lcom/sec/android/iaft/IAFDDiagnosis;->getInstance()Lcom/sec/android/iaft/IAFDDiagnosis;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/iaft/IAFDDiagnosis;->init(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$handleAppCrashInActivityController$1(Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 15

    .line 844
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v3, "ActivityManager"

    if-eqz v2, :cond_32

    iget-object v2, p1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    const-string v4, "Native crash"

    .line 845
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 846
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip killing native crashed app "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") during testing"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 849
    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Force-killing crashed app "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at watcher\'s request"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_61

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p6

    move-object v4, p7

    .line 851
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v0

    if-nez v0, :cond_74

    const/4 v0, 0x4

    const/4 v1, 0x1

    const-string v2, "crash"

    .line 852
    invoke-virtual {p4, v2, v0, v1}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    goto :goto_74

    .line 856
    :cond_61
    invoke-static {p3}, Landroid/os/Process;->killProcess(I)V

    .line 857
    invoke-static {p8, p3}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 858
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const-string v5, "crash"

    move v1, p3

    move v2, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->noteAppKill(IIIILjava/lang/String;)V

    :cond_74
    :goto_74
    return-void
.end method

.method private synthetic lambda$scheduleAppCrashLocked$0(Lcom/android/server/am/ProcessRecord;)V
    .registers 10

    .line 573
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 574
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_29

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    const/16 v4, 0xd

    const/16 v5, 0xe

    const-string v6, "forced"

    const-string/jumbo v7, "killed for invalid state"

    move-object v2, p0

    move-object v3, p1

    .line 575
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppErrors;->killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V

    .line 578
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_23

    :try_start_1b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 579
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_29

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_23
    move-exception p0

    .line 578
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :catchall_29
    move-exception p0

    .line 579
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_29

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public clearBadProcess(Ljava/lang/String;I)V
    .registers 6

    .line 395
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 396
    :try_start_3
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 397
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ProcessMap;->putAll(Lcom/android/internal/app/ProcessMap;)V

    .line 398
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 399
    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 400
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public crashApplication(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .registers 7

    .line 593
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 594
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 596
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 598
    :try_start_c
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/AppErrors;->crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_13

    .line 600
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 601
    throw p0
.end method

.method public final crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    .registers 51

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v0, p2

    move/from16 v9, p3

    .line 606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 607
    iget-object v15, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 608
    iget-object v1, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 609
    iget-object v10, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v15, :cond_2b

    if-eqz v1, :cond_2b

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2f

    :cond_2b
    if-eqz v15, :cond_2f

    move-object v7, v15

    goto :goto_30

    :cond_2f
    :goto_2f
    move-object v7, v1

    .line 619
    :goto_30
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mCrashDexOpt:Lcom/android/server/am/CrashDexOpt;

    invoke-virtual {v1, v12, v15, v7}, Lcom/android/server/am/CrashDexOpt;->start(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v12, :cond_45

    .line 626
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v1, v9, :cond_41

    const-string/jumbo v1, "system_server"

    goto :goto_47

    :cond_41
    const-string/jumbo v1, "unknown"

    goto :goto_47

    .line 633
    :cond_45
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :goto_47
    const/4 v8, 0x0

    if-nez v12, :cond_4c

    move v2, v8

    goto :goto_4e

    .line 635
    :cond_4c
    iget v2, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    :goto_4e
    const/16 v16, 0x3

    const/16 v17, 0x5

    const/16 v18, 0x0

    .line 637
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    const-string v20, "AppErrors"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "crashed due to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    move/from16 v23, v2

    .line 636
    invoke-static/range {v16 .. v23}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 641
    iget-object v3, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v19, "crash"

    iget-object v4, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    iget-object v5, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-virtual/range {v16 .. v23}, Lcom/android/server/wm/ActivityTaskManagerService;->isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    const/4 v5, 0x3

    if-eqz v12, :cond_de

    .line 648
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v2, "com.android.systemui:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b7

    .line 651
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/android/server/PackageWatchdog;->onPackageFailure(Ljava/util/List;I)V

    .line 655
    :cond_b7
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_ba
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 656
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string v3, "Native crash"

    iget-object v4, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 657
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    const/4 v3, 0x5

    goto :goto_ce

    :cond_cd
    const/4 v3, 0x4

    :goto_ce
    const-string v4, "crash"

    .line 656
    invoke-virtual {v2, v12, v3, v8, v4}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 662
    monitor-exit v1
    :try_end_d4
    .catchall {:try_start_ba .. :try_end_d4} :catchall_d8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_de

    :catchall_d8
    move-exception v0

    :try_start_d9
    monitor-exit v1
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_de
    :goto_de
    if-eqz v12, :cond_ea

    .line 666
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->computeRelaunchReason()I

    move-result v1

    move v4, v1

    goto :goto_eb

    :cond_ea
    move v4, v8

    .line 668
    :goto_eb
    new-instance v3, Lcom/android/server/am/AppErrorResult;

    invoke-direct {v3}, Lcom/android/server/am/AppErrorResult;-><init>()V

    .line 670
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_f3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-string v1, "Native crash"

    .line 672
    iget-object v5, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v17, 0x0

    if-nez v1, :cond_12b

    .line 673
    new-instance v1, Landroid/os/BugreportParams;

    const/16 v5, 0xa

    invoke-direct {v1, v5}, Landroid/os/BugreportParams;-><init>(I)V

    .line 674
    new-instance v5, Landroid/os/BugreportParams;

    const/16 v6, 0xd

    invoke-direct {v5, v6}, Landroid/os/BugreportParams;-><init>(I)V

    if-nez v12, :cond_11f

    .line 676
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-ne v6, v9, :cond_11f

    const-string/jumbo v5, "system_server"

    .line 677
    invoke-static {v1, v5}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;)V

    goto :goto_12b

    :cond_11f
    if-nez v12, :cond_124

    move-object/from16 v1, v17

    goto :goto_128

    .line 679
    :cond_124
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_128
    invoke-static {v5, v1}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;)V
    :try_end_12b
    .catchall {:try_start_f3 .. :try_end_12b} :catchall_37a

    :cond_12b
    :goto_12b
    move-object/from16 v1, p0

    move-object/from16 v19, v2

    move-object/from16 v2, p1

    move-object v6, v3

    move-object/from16 v3, p2

    move v5, v4

    move-object v4, v15

    move v0, v5

    move-object v5, v7

    move-object/from16 v16, v15

    move-object v15, v6

    move-object v6, v10

    move-object/from16 v18, v7

    move-object/from16 v20, v15

    move v15, v8

    move-wide v7, v13

    move/from16 v9, p3

    move-object/from16 v21, v10

    move/from16 v10, p4

    .line 688
    :try_start_148
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/AppErrors;->handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z

    move-result v1

    if-eqz v1, :cond_153

    .line 690
    monitor-exit v19
    :try_end_14f
    .catchall {:try_start_148 .. :try_end_14f} :catchall_382

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_153
    const/4 v7, 0x2

    if-ne v0, v7, :cond_15b

    .line 696
    :try_start_156
    monitor-exit v19
    :try_end_157
    .catchall {:try_start_156 .. :try_end_157} :catchall_382

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_15b
    if-eqz v12, :cond_168

    .line 703
    :try_start_15d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v0

    if-eqz v0, :cond_168

    .line 704
    monitor-exit v19
    :try_end_164
    .catchall {:try_start_15d .. :try_end_164} :catchall_382

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_168
    if-eqz v12, :cond_175

    .line 709
    :try_start_16a
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->noteProcessCrash(Ljava/lang/String;I)V

    :cond_175
    if-eqz v12, :cond_194

    .line 717
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_194

    .line 719
    new-instance v1, Landroid/content/Intent;

    const-string v2, "appbooster.ACTION_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.appbooster"

    .line 720
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "pkgName"

    .line 721
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_194
    if-eqz v12, :cond_229

    .line 727
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_229

    const-string v0, "ActivityManager"

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crash : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.sdhms.action.CRASH_ANR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.sdhms"

    .line 730
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "pkgName"

    .line 731
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "userId"

    .line 732
    iget v2, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "uid"

    .line 733
    iget v2, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    const-string v2, "crash"

    .line 734
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-string v2, "com.samsung.permission.WRITE_SDHMS_DATA"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v34

    new-array v2, v15, [Ljava/lang/String;

    const/16 v36, 0x0

    const/16 v37, -0x1

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    sget v41, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v42, 0x3e8

    .line 738
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v43

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v44

    const/16 v45, -0x1

    move-object/from16 v24, v1

    move-object/from16 v28, v0

    move-object/from16 v35, v2

    .line 735
    invoke-virtual/range {v24 .. v45}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 742
    :cond_229
    new-instance v0, Lcom/android/server/am/AppErrorDialog$Data;

    invoke-direct {v0}, Lcom/android/server/am/AppErrorDialog$Data;-><init>()V

    move-object/from16 v8, v20

    .line 743
    iput-object v8, v0, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 744
    iput-object v12, v0, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v12, :cond_375

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-object/from16 v4, v18

    move-object/from16 v5, v21

    move-object v6, v0

    .line 748
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_249

    goto/16 :goto_375

    :cond_249
    move-object/from16 v1, p2

    .line 754
    iput-object v1, v0, Lcom/android/server/am/AppErrorDialog$Data;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 758
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    .line 759
    iput v3, v2, Landroid/os/Message;->what:I

    .line 761
    iget v9, v0, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    .line 762
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 763
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 764
    monitor-exit v19
    :try_end_260
    .catchall {:try_start_16a .. :try_end_260} :catchall_382

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 766
    invoke-virtual {v8}, Lcom/android/server/am/AppErrorResult;->get()I

    move-result v0

    .line 769
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v4, 0x13c

    invoke-static {v2, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    const/4 v2, 0x6

    if-eq v0, v2, :cond_274

    const/4 v2, 0x7

    if-ne v0, v2, :cond_275

    :cond_274
    move v0, v3

    :cond_275
    if-eq v0, v3, :cond_318

    if-eq v0, v7, :cond_303

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2bc

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2b0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_285

    goto/16 :goto_356

    .line 812
    :cond_285
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 814
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_358

    .line 775
    :cond_2b0
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 776
    :try_start_2b3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/AppErrors;->stopReportingCrashesLBp(Lcom/android/server/am/ProcessRecord;)V

    .line 777
    monitor-exit v1

    goto/16 :goto_356

    :catchall_2b9
    move-exception v0

    monitor-exit v1
    :try_end_2bb
    .catchall {:try_start_2b3 .. :try_end_2bb} :catchall_2b9

    throw v0

    .line 780
    :cond_2bc
    iget-object v7, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_2bf
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 781
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    const-string v6, "crash"

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    .line 783
    monitor-exit v7
    :try_end_2d1
    .catchall {:try_start_2bf .. :try_end_2d1} :catchall_2fd

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, -0x1

    if-eq v9, v0, :cond_356

    .line 786
    :try_start_2d7
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 787
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 786
    invoke-virtual {v0, v9, v1}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_2e4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d7 .. :try_end_2e4} :catch_2e5

    goto :goto_356

    :catch_2e5
    move-exception v0

    const-string v1, "ActivityManager"

    .line 791
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not restart taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_356

    :catchall_2fd
    move-exception v0

    .line 783
    :try_start_2fe
    monitor-exit v7
    :try_end_2ff
    .catchall {:try_start_2fe .. :try_end_2ff} :catchall_2fd

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 817
    :cond_303
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v2

    :try_start_306
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 818
    invoke-virtual {v11, v12, v13, v14, v1}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v17

    .line 819
    monitor-exit v2
    :try_end_30e
    .catchall {:try_start_306 .. :try_end_30e} :catchall_312

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_356

    :catchall_312
    move-exception v0

    :try_start_313
    monitor-exit v2
    :try_end_314
    .catchall {:try_start_313 .. :try_end_314} :catchall_312

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 796
    :cond_318
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 799
    :try_start_31c
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    .line 800
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_353

    .line 801
    iget-object v9, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9
    :try_end_330
    .catchall {:try_start_31c .. :try_end_330} :catchall_370

    :try_start_330
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 802
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v6, "crash"

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    .line 804
    monitor-exit v9
    :try_end_342
    .catchall {:try_start_330 .. :try_end_342} :catchall_34d

    :try_start_342
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 805
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v15}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V
    :try_end_34c
    .catchall {:try_start_342 .. :try_end_34c} :catchall_370

    goto :goto_353

    :catchall_34d
    move-exception v0

    .line 804
    :try_start_34e
    monitor-exit v9
    :try_end_34f
    .catchall {:try_start_34e .. :try_end_34f} :catchall_34d

    :try_start_34f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_353
    .catchall {:try_start_34f .. :try_end_353} :catchall_370

    .line 808
    :cond_353
    :goto_353
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_356
    :goto_356
    move-object/from16 v0, v17

    :goto_358
    if-eqz v0, :cond_36f

    .line 825
    :try_start_35a
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_366
    .catch Landroid/content/ActivityNotFoundException; {:try_start_35a .. :try_end_366} :catch_367

    goto :goto_36f

    :catch_367
    move-exception v0

    const-string v1, "ActivityManager"

    const-string v2, "bug report receiver dissappeared"

    .line 827
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_36f
    :goto_36f
    return-void

    :catchall_370
    move-exception v0

    .line 808
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 809
    throw v0

    .line 749
    :cond_375
    :goto_375
    :try_start_375
    monitor-exit v19
    :try_end_376
    .catchall {:try_start_375 .. :try_end_376} :catchall_382

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_37a
    move-exception v0

    move-object/from16 v19, v2

    .line 764
    :goto_37d
    :try_start_37d
    monitor-exit v19
    :try_end_37e
    .catchall {:try_start_37d .. :try_end_37e} :catchall_382

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_382
    move-exception v0

    goto :goto_37d
.end method

.method public createAppErrorIntentLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 917
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppErrors;->createAppErrorReportLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 921
    :cond_8
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.APP_ERROR"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 922
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessErrorStateRecord;->getErrorReportReceiver()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.BUG_REPORT"

    .line 923
    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 924
    invoke-virtual {p2, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p2
.end method

.method public final createAppErrorReportLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 931
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 932
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->getErrorReportReceiver()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 936
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 937
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isForceCrashReport()Z

    move-result v0

    if-nez v0, :cond_1d

    return-object v1

    .line 941
    :cond_1d
    new-instance v0, Landroid/app/ApplicationErrorReport;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 942
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 943
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->getErrorReportReceiver()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 944
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 945
    iput-wide p2, v0, Landroid/app/ApplicationErrorReport;->time:J

    .line 946
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_42

    move p1, p2

    goto :goto_43

    :cond_42
    const/4 p1, 0x0

    :goto_43
    iput-boolean p1, v0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 948
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result p1

    if-nez p1, :cond_76

    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isForceCrashReport()Z

    move-result p1

    if-eqz p1, :cond_52

    goto :goto_76

    .line 951
    :cond_52
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 953
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->getNotRespondingReport()Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object p0

    if-nez p0, :cond_5f

    return-object v1

    :cond_5f
    const/4 p1, 0x2

    .line 958
    iput p1, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 959
    new-instance p1, Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-direct {p1}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>()V

    iput-object p1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 961
    iget-object p2, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object p2, p1, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    .line 962
    iget-object p2, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object p2, p1, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    .line 963
    iget-object p0, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object p0, p1, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    goto :goto_7a

    .line 949
    :cond_76
    :goto_76
    iput p2, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 950
    iput-object p4, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    :cond_7a
    :goto_7a
    return-object v0
.end method

.method public dumpDebugLPr(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;)V
    .registers 25
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 197
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 198
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    return-void

    .line 202
    :cond_1f
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide v8, 0x10300000001L

    .line 204
    invoke-virtual {v1, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 206
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    const-wide v11, 0x10900000001L

    if-nez v6, :cond_101

    .line 207
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 208
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v15, 0x0

    :goto_47
    if-ge v15, v6, :cond_101

    const-wide v7, 0x20b00000003L

    .line 210
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 211
    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/String;

    .line 212
    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 213
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 215
    invoke-virtual {v1, v11, v12, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v14, 0x0

    :goto_68
    if-ge v14, v13, :cond_f0

    .line 217
    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 218
    iget-object v12, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v12

    invoke-virtual {v12, v9, v11}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_92

    if-eqz v12, :cond_88

    .line 220
    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_92

    :cond_88
    move-object/from16 v19, v3

    move-wide/from16 v17, v4

    move v11, v6

    move-object/from16 p3, v9

    move-object/from16 v16, v10

    goto :goto_de

    .line 223
    :cond_92
    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-wide/from16 v17, v4

    move-object/from16 p3, v9

    move-object/from16 v16, v10

    const-wide v9, 0x20b00000002L

    move-object v5, v3

    .line 224
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v9, 0x10500000001L

    .line 225
    invoke-virtual {v1, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 226
    iget-wide v9, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    move-object/from16 v19, v5

    move v11, v6

    const-wide v5, 0x10300000002L

    invoke-virtual {v1, v5, v6, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10900000003L

    .line 227
    iget-object v9, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v5, 0x10900000004L

    .line 228
    iget-object v9, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v5, 0x10900000005L

    .line 229
    iget-object v9, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 230
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_de
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, p3

    move v6, v11

    move-object/from16 v10, v16

    move-wide/from16 v4, v17

    move-object/from16 v3, v19

    const-wide v11, 0x10900000001L

    goto/16 :goto_68

    :cond_f0
    move-object/from16 v19, v3

    move-wide/from16 v17, v4

    move v11, v6

    .line 232
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v15, v15, 0x1

    const-wide v11, 0x10900000001L

    goto/16 :goto_47

    :cond_101
    move-wide/from16 v17, v4

    .line 236
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 237
    :try_start_106
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1be

    .line 238
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 239
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_11d
    if-ge v6, v5, :cond_1be

    const-wide v7, 0x20b00000002L

    .line 241
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 242
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 243
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 244
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v11

    const-wide v12, 0x10900000001L

    .line 246
    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v14, 0x0

    :goto_141
    if-ge v14, v11, :cond_1aa

    .line 248
    invoke-virtual {v8, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 249
    iget-object v12, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v12

    invoke-virtual {v12, v7, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_16e

    if-eqz v12, :cond_161

    .line 251
    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_16e

    :cond_161
    move-object/from16 p3, v4

    move/from16 v16, v5

    move-object v15, v7

    move-object/from16 v19, v8

    const-wide v7, 0x10300000002L

    goto :goto_19b

    :cond_16e
    move-object/from16 p3, v4

    move/from16 v16, v5

    const-wide v12, 0x20b00000002L

    .line 254
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v12, 0x10500000001L

    .line 255
    invoke-virtual {v1, v12, v13, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 257
    invoke-virtual {v8, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object v15, v7

    move-object/from16 v19, v8

    const-wide v7, 0x10300000002L

    .line 256
    invoke-virtual {v1, v7, v8, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 258
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_19b
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, p3

    move-object v7, v15

    move/from16 v5, v16

    move-object/from16 v8, v19

    const-wide v12, 0x10900000001L

    goto :goto_141

    :cond_1aa
    move-object/from16 p3, v4

    move/from16 v16, v5

    const-wide v7, 0x10300000002L

    .line 260
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, p3

    move/from16 v5, v16

    goto/16 :goto_11d

    .line 263
    :cond_1be
    monitor-exit v3
    :try_end_1bf
    .catchall {:try_start_106 .. :try_end_1bf} :catchall_1c5

    move-wide/from16 v2, v17

    .line 265
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    :catchall_1c5
    move-exception v0

    .line 263
    :try_start_1c6
    monitor-exit v3
    :try_end_1c7
    .catchall {:try_start_1c6 .. :try_end_1c7} :catchall_1c5

    throw v0
.end method

.method public dumpLPr(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .registers 24
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    .line 270
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 271
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v5

    .line 272
    :try_start_d
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a4

    .line 274
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    .line 275
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v9

    move/from16 v10, p3

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_27
    if-ge v11, v9, :cond_a6

    .line 277
    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 278
    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseArray;

    .line 279
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v15

    const/4 v7, 0x0

    :goto_3a
    if-ge v7, v15, :cond_9c

    .line 281
    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    move-object/from16 v16, v6

    .line 282
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v6

    invoke-virtual {v6, v13, v8}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_5e

    if-eqz v6, :cond_5c

    .line 284
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5e

    :cond_5c
    move v6, v9

    goto :goto_96

    :cond_5e
    if-nez v12, :cond_6c

    if-eqz v10, :cond_65

    .line 288
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_65
    const-string v6, "  Time since processes crashed:"

    .line 290
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x1

    const/4 v12, 0x1

    :cond_6c
    const-string v6, "    Process "

    .line 293
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " uid "

    .line 294
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ": last crashed "

    .line 295
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move v6, v9

    sub-long v8, v3, v17

    invoke-static {v8, v9, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v8, " ago"

    .line 297
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_96
    add-int/lit8 v7, v7, 0x1

    move v9, v6

    move-object/from16 v6, v16

    goto :goto_3a

    :cond_9c
    move-object/from16 v16, v6

    move v6, v9

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, v16

    goto :goto_27

    :cond_a4
    move/from16 v10, p3

    .line 302
    :cond_a6
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_149

    .line 304
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 305
    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    .line 306
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_be
    if-ge v8, v7, :cond_149

    .line 308
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 309
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 310
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_d1
    if-ge v14, v13, :cond_142

    .line 312
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    move-object/from16 p3, v6

    .line 313
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v6

    invoke-virtual {v6, v11, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_f5

    if-eqz v6, :cond_f3

    .line 315
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f5

    :cond_f3
    move v15, v7

    goto :goto_13c

    :cond_f5
    if-nez v9, :cond_103

    if-eqz v10, :cond_fc

    .line 319
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_fc
    const-string v6, "  First time processes crashed and counts:"

    .line 321
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v9, 0x1

    const/4 v10, 0x1

    :cond_103
    const-string v6, "    Process "

    .line 324
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " uid "

    .line 325
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ": first crashed "

    .line 326
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move v15, v7

    sub-long v6, v3, v16

    invoke-static {v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v6, " ago; crashes since then: "

    .line 328
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_13c
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, p3

    move v7, v15

    goto :goto_d1

    :cond_142
    move-object/from16 p3, v6

    move v15, v7

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_be

    .line 332
    :cond_149
    monitor-exit v5
    :try_end_14a
    .catchall {:try_start_d .. :try_end_14a} :catchall_239

    .line 334
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 335
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_238

    .line 337
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 338
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_160
    if-ge v5, v4, :cond_238

    .line 340
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 341
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 342
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_173
    if-ge v11, v9, :cond_232

    .line 344
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 345
    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v13

    invoke-virtual {v13, v7, v12}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_195

    if-eqz v13, :cond_22c

    .line 347
    invoke-virtual {v13}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_195

    goto/16 :goto_22c

    :cond_195
    if-nez v6, :cond_1a3

    if-eqz v10, :cond_19c

    .line 351
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_19c
    const-string v6, "  Bad processes:"

    .line 353
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v10, 0x1

    .line 356
    :cond_1a3
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/AppErrors$BadProcessInfo;

    const-string v14, "    Bad process "

    .line 357
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, " uid "

    .line 358
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v12, ": crashed at time "

    .line 359
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    invoke-virtual {v1, v14, v15}, Ljava/io/PrintWriter;->println(J)V

    .line 360
    iget-object v12, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    if-eqz v12, :cond_1d1

    const-string v12, "      Short msg: "

    .line 361
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    :cond_1d1
    iget-object v12, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    if-eqz v12, :cond_1df

    const-string v12, "      Long msg: "

    .line 364
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    :cond_1df
    iget-object v12, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    if-eqz v12, :cond_22c

    const-string v12, "      Stack:"

    .line 367
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 369
    :goto_1ea
    iget-object v15, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v12, v15, :cond_212

    .line 370
    iget-object v15, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v0, 0xa

    if-ne v15, v0, :cond_20d

    const-string v0, "        "

    .line 371
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    iget-object v0, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    sub-int v15, v12, v14

    invoke-virtual {v1, v0, v14, v15}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v14, v12, 0x1

    :cond_20d
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_1ea

    .line 377
    :cond_212
    iget-object v0, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v14, v0, :cond_22c

    const-string v0, "        "

    .line 378
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 379
    iget-object v0, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v14

    invoke-virtual {v1, v0, v14, v12}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_22c
    :goto_22c
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_173

    :cond_232
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_160

    :cond_238
    return v10

    :catchall_239
    move-exception v0

    .line 332
    :try_start_23a
    monitor-exit v5
    :try_end_23b
    .catchall {:try_start_23a .. :try_end_23b} :catchall_239

    throw v0
.end method

.method public generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .registers 7

    .line 900
    new-instance p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-direct {p0}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>()V

    .line 902
    iput p2, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    .line 903
    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    .line 904
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p2

    iput p2, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    .line 905
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p1, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    .line 906
    iput-object p3, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    .line 907
    iput-object p4, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 908
    iput-object p5, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    .line 909
    iput-object p6, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    return-object p0
.end method

.method public final handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    .registers 25
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    move-object/from16 v5, p1

    if-eqz v5, :cond_7

    .line 838
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    move-object v10, v0

    if-eqz v5, :cond_11

    .line 839
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    move v11, v0

    goto :goto_13

    :cond_11
    move/from16 v11, p8

    :goto_13
    if-eqz v5, :cond_1c

    .line 840
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v1, p0

    move v9, v0

    goto :goto_1f

    :cond_1c
    move-object v1, p0

    move/from16 v9, p9

    .line 842
    :goto_1f
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-object/from16 v2, p2

    iget-object v13, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    new-instance v14, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda0;

    move-object v0, v14

    move-object v1, p0

    move-object v3, v10

    move v4, v11

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppErrors;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v12

    move-object v2, v10

    move v3, v11

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p6

    move-object v8, v13

    move-object v9, v14

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->handleAppCrashInActivityController(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public final handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .registers 30
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock",
            "mBadProcessLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    .line 972
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 973
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 975
    invoke-virtual {v2}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v2

    const-string v3, "anr_show_background"

    const/4 v11, 0x0

    .line 973
    invoke-static {v1, v3, v11, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_23

    const/4 v13, 0x1

    goto :goto_24

    :cond_23
    move v13, v11

    .line 979
    :goto_24
    iget-object v14, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 980
    iget v15, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 981
    iget v6, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 982
    iget-boolean v5, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 983
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    .line 984
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    .line 985
    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 987
    iget-boolean v3, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v3, :cond_4b

    .line 988
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3, v14, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 989
    iget-object v11, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v11, v14, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    goto :goto_4d

    :cond_4b
    const/4 v3, 0x0

    move-object v11, v3

    .line 995
    :goto_4d
    iget-object v12, v7, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v12, v9, v10}, Lcom/android/server/am/ProcessServiceRecord;->incServiceCrashCountLocked(J)Z

    move-result v12

    if-eqz v3, :cond_66

    .line 998
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    sget v3, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    move-object/from16 v19, v2

    int-to-long v2, v3

    add-long v17, v17, v2

    cmp-long v2, v9, v17

    if-gez v2, :cond_68

    const/4 v2, 0x1

    goto :goto_69

    :cond_66
    move-object/from16 v19, v2

    :cond_68
    const/4 v2, 0x0

    :goto_69
    if-nez v2, :cond_a4

    .line 999
    invoke-virtual {v0, v7, v9, v10}, Lcom/android/server/am/AppErrors;->isProcOverCrashLimitLBp(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v3

    if-eqz v3, :cond_72

    goto :goto_a4

    .line 1047
    :cond_72
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-object/from16 v2, p2

    invoke-virtual {v1, v4, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->finishTopCrashedActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)I

    move-result v1

    if-eqz v8, :cond_80

    .line 1050
    iput v1, v8, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    :cond_80
    if-eqz v8, :cond_96

    if-eqz v11, :cond_96

    .line 1053
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget v3, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    move/from16 v17, v12

    int-to-long v11, v3

    add-long/2addr v1, v11

    cmp-long v1, v9, v1

    if-gez v1, :cond_98

    const/4 v1, 0x1

    .line 1054
    iput-boolean v1, v8, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    goto :goto_98

    :cond_96
    move/from16 v17, v12

    :cond_98
    :goto_98
    move/from16 v20, v5

    move-wide/from16 v21, v9

    move/from16 v18, v15

    move-object/from16 v15, v19

    move-object/from16 v19, v4

    goto/16 :goto_18b

    :cond_a4
    :goto_a4
    move/from16 v17, v12

    .line 1003
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Process "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " has crashed too many times, killing! Reason: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_bd

    const-string v2, "crashed quickly"

    goto :goto_c0

    :cond_bd
    const-string/jumbo v2, "over process crash limit"

    .line 1004
    :goto_c0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    .line 1003
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x7550

    const/4 v3, 0x3

    new-array v11, v3, [Ljava/lang/Object;

    .line 1006
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v16, 0x0

    aput-object v12, v11, v16

    const/4 v12, 0x1

    aput-object v14, v11, v12

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v18, 0x2

    aput-object v12, v11, v18

    .line 1005
    invoke-static {v2, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1007
    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    if-nez v1, :cond_179

    const/16 v1, 0x753f

    new-array v2, v3, [Ljava/lang/Object;

    .line 1013
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v11, 0x0

    aput-object v3, v2, v11

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v11, 0x1

    aput-object v3, v2, v11

    aput-object v14, v2, v18

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    if-nez v5, :cond_135

    .line 1018
    iget v11, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v12, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-object v1, v12

    move/from16 v18, v15

    move-object/from16 v15, v19

    move-wide v2, v9

    move-object/from16 v19, v4

    move-object/from16 v4, p3

    move/from16 v20, v5

    move-object/from16 v5, p4

    move-wide/from16 v21, v9

    move v9, v6

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors$BadProcessInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v14, v11, v12}, Lcom/android/server/am/AppErrors;->markBadProcess(Ljava/lang/String;ILcom/android/server/am/AppErrors$BadProcessInfo;)V

    .line 1020
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget v2, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v14, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 1021
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    iget v2, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v14, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_140

    :cond_135
    move/from16 v20, v5

    move-wide/from16 v21, v9

    move/from16 v18, v15

    move-object/from16 v15, v19

    move-object/from16 v19, v4

    move v9, v6

    :goto_140
    const/4 v1, 0x1

    .line 1023
    invoke-virtual {v15, v1}, Lcom/android/server/am/ProcessErrorStateRecord;->setBad(Z)V

    .line 1024
    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord;->setRemoved(Z)V

    .line 1025
    const-class v1, Lcom/android/server/usage/AppStandbyInternal;

    .line 1026
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppStandbyInternal;

    if-eqz v1, :cond_15f

    .line 1032
    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_15a

    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_15b

    :cond_15a
    move-object v2, v14

    :goto_15b
    const/4 v3, 0x4

    .line 1028
    invoke-interface {v1, v2, v9, v3}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    .line 1038
    :cond_15f
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x0

    const/4 v5, 0x4

    const-string v6, "crash"

    move-object/from16 v2, p1

    move/from16 v4, v17

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    .line 1040
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    if-nez v13, :cond_184

    return v2

    :cond_179
    move/from16 v20, v5

    move-wide/from16 v21, v9

    move/from16 v18, v15

    move-object/from16 v15, v19

    const/4 v2, 0x0

    move-object/from16 v19, v4

    .line 1045
    :cond_184
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    :goto_18b
    if-eqz v8, :cond_193

    if-eqz v17, :cond_193

    const/4 v1, 0x1

    .line 1059
    iput-boolean v1, v8, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    goto :goto_194

    :cond_193
    const/4 v1, 0x1

    .line 1066
    :goto_194
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v2

    if-eqz v2, :cond_1aa

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v2

    if-eqz v2, :cond_1aa

    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v1

    if-nez v2, :cond_1aa

    .line 1067
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowProcessController;->clearPackagePreferredForHomeActivities()V

    :cond_1aa
    if-nez v20, :cond_1c5

    .line 1073
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move/from16 v3, v18

    invoke-virtual {v1, v14, v3, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1074
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v14, v3, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v1, v21

    .line 1075
    invoke-virtual {v0, v14, v3, v1, v2}, Lcom/android/server/am/AppErrors;->updateProcessCrashCountLBp(Ljava/lang/String;IJ)V

    .line 1078
    :cond_1c5
    invoke-virtual {v15}, Lcom/android/server/am/ProcessErrorStateRecord;->getCrashHandler()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_1d6

    .line 1079
    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v15}, Lcom/android/server/am/ProcessErrorStateRecord;->getCrashHandler()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1d6
    const/4 v0, 0x1

    return v0
.end method

.method public handleDismissAnrDialogs(Lcom/android/server/am/ProcessRecord;)V
    .registers 6

    .line 1293
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1294
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 1297
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    .line 1298
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->getAnrData()Lcom/android/server/am/AppNotRespondingDialog$Data;

    move-result-object v3

    .line 1297
    invoke-virtual {p0, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1301
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->hasAnrDialogs()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_2d

    const/4 p0, 0x0

    .line 1302
    invoke-virtual {v1, p0}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 1303
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotRespondingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 1304
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    .line 1306
    :cond_2d
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setAnrData(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    .line 1307
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_37

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_37
    move-exception p0

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public handleShowAnrUi(Landroid/os/Message;)V
    .registers 12

    .line 1227
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 1228
    iget-object v0, p1, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_11

    const-string p0, "ActivityManager"

    const-string/jumbo p1, "handleShowAnrUi: proc is null"

    .line 1230
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1233
    :cond_11
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1

    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1234
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 1235
    invoke-virtual {v2, p1}, Lcom/android/server/am/ProcessErrorStateRecord;->setAnrData(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    .line 1236
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_28

    .line 1237
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object v3

    goto :goto_29

    :cond_28
    move-object v3, v4

    .line 1239
    :goto_29
    invoke-virtual {v2}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ErrorDialogController;->hasAnrDialogs()Z

    move-result v5

    const/16 v6, 0x13d

    if-eqz v5, :cond_56

    const-string p1, "ActivityManager"

    .line 1240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App already has anr dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 p1, -0x2

    invoke-static {p0, v6, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1243
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_14 .. :try_end_52} :catchall_109

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1247
    :cond_56
    :try_start_56
    new-instance v5, Landroid/os/BugreportParams;

    const/16 v7, 0xf

    invoke-direct {v5, v7}, Landroid/os/BugreportParams;-><init>(I)V

    .line 1248
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;)V

    .line 1251
    iget-object v5, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "anr_show_background"

    iget-object v8, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 1253
    invoke-virtual {v8}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v8

    const/4 v9, 0x0

    .line 1251
    invoke-static {v5, v7, v9, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_7e

    move v5, v7

    goto :goto_7f

    :cond_7e
    move v5, v9

    .line 1254
    :goto_7f
    iget-object v8, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs()Z

    move-result v8

    if-nez v8, :cond_94

    if-eqz v5, :cond_8c

    goto :goto_94

    .line 1276
    :cond_8c
    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-static {p1, v6, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    move v9, v7

    goto :goto_f5

    .line 1255
    :cond_94
    :goto_94
    invoke-virtual {v2}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ErrorDialogController;->getAnrController()Landroid/app/AnrController;

    move-result-object v5

    if-nez v5, :cond_a6

    .line 1257
    invoke-virtual {v2}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/am/ErrorDialogController;->showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    goto :goto_f5

    .line 1259
    :cond_a6
    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1260
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1261
    invoke-interface {v5, v6, v7}, Landroid/app/AnrController;->onAnrDelayCompleted(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_d2

    const-string v4, "ActivityManager"

    .line 1264
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ANR delay completed. Showing ANR dialog for package: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    invoke-virtual {v2}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/am/ErrorDialogController;->showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    goto :goto_f5

    :cond_d2
    const-string p1, "ActivityManager"

    .line 1268
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ANR delay completed. Cancelling ANR dialog for package: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    invoke-virtual {v2, v9}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 1271
    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotRespondingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 1272
    invoke-virtual {v2}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    .line 1281
    :goto_f5
    monitor-exit v1
    :try_end_f6
    .catchall {:try_start_56 .. :try_end_f6} :catchall_109

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    if-eqz v9, :cond_100

    .line 1283
    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;)V

    :cond_100
    if-eqz v3, :cond_108

    .line 1287
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    const/4 p1, 0x4

    invoke-virtual {p0, v3, p1}, Lcom/android/server/PackageWatchdog;->onPackageFailure(Ljava/util/List;I)V

    :cond_108
    return-void

    :catchall_109
    move-exception p0

    .line 1281
    :try_start_10a
    monitor-exit v1
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_109

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public handleShowAppErrorUi(Landroid/os/Message;)V
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1104
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/AppErrorDialog$Data;

    .line 1105
    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anr_show_background"

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 1107
    invoke-virtual {v4}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v4

    const/4 v5, 0x0

    .line 1105
    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    move v2, v5

    .line 1113
    :goto_22
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v4

    :try_start_25
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1114
    iget-object v6, v1, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 1115
    iget-object v7, v1, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    if-nez v6, :cond_3b

    const-string v0, "ActivityManager"

    const-string/jumbo v1, "handleShowAppErrorUi: proc is null"

    .line 1117
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_202

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1120
    :cond_3b
    :try_start_3b
    iget-object v8, v6, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 1121
    iget v9, v6, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 1122
    invoke-virtual {v8}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/ErrorDialogController;->hasCrashDialogs()Z

    move-result v10

    if-eqz v10, :cond_6b

    const-string v0, "ActivityManager"

    .line 1123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App already has crash dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_66

    .line 1125
    sget v0, Lcom/android/server/am/AppErrorDialog;->ALREADY_SHOWING:I

    invoke-virtual {v7, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1127
    :cond_66
    monitor-exit v4
    :try_end_67
    .catchall {:try_start_3b .. :try_end_67} :catchall_202

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1129
    :cond_6b
    :try_start_6b
    iget v10, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    const/16 v11, 0x2710

    if-lt v10, v11, :cond_7f

    .line 1131
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v10

    sget v11, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v10, v11, :cond_7f

    const/4 v10, 0x1

    goto :goto_80

    :cond_7f
    move v10, v5

    .line 1132
    :goto_80
    iget-object v11, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v11}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v11

    array-length v12, v11

    move v13, v5

    :goto_8a
    if-ge v13, v12, :cond_97

    aget v14, v11, v13

    if-eq v9, v14, :cond_92

    const/4 v14, 0x1

    goto :goto_93

    :cond_92
    move v14, v5

    :goto_93
    and-int/2addr v10, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_8a

    :cond_97
    if-eqz v10, :cond_c2

    if-nez v2, :cond_c2

    const-string v0, "ActivityManager"

    .line 1136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping crash dialog of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": background"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_bd

    .line 1138
    sget v0, Lcom/android/server/am/AppErrorDialog;->BACKGROUND_USER:I

    invoke-virtual {v7, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1140
    :cond_bd
    monitor-exit v4
    :try_end_be
    .catchall {:try_start_6b .. :try_end_be} :catchall_202

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :cond_c2
    const/4 v10, 0x0

    .line 1143
    :try_start_c3
    iget-object v11, v0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_202

    .line 1144
    :try_start_c6
    iget-boolean v12, v6, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v12, :cond_d6

    .line 1145
    iget-object v10, v0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v12, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v13, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v10, v12, v13}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 1148
    :cond_d6
    iget-object v12, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 1149
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "show_first_crash_dialog"

    .line 1148
    invoke-static {v12, v13, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_e7

    const/4 v12, 0x1

    goto :goto_e8

    :cond_e7
    move v12, v5

    .line 1151
    :goto_e8
    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 1152
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "show_first_crash_dialog_dev_option"

    iget-object v15, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 1155
    invoke-virtual {v15}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v15

    .line 1151
    invoke-static {v13, v14, v5, v15}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    if-eqz v13, :cond_101

    const/4 v13, 0x1

    goto :goto_102

    :cond_101
    move v13, v5

    .line 1156
    :goto_102
    iget-object v14, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1157
    iget-object v15, v0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-eqz v15, :cond_116

    iget-object v3, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1158
    invoke-virtual {v15, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_116

    const/4 v3, 0x1

    goto :goto_117

    :cond_116
    move v3, v5

    .line 1159
    :goto_117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    if-eqz v10, :cond_12e

    .line 1161
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    sget v10, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    move-object/from16 v19, v6

    int-to-long v5, v10

    add-long v17, v17, v5

    cmp-long v5, v15, v17

    if-gez v5, :cond_130

    const/4 v5, 0x1

    goto :goto_131

    :cond_12e
    move-object/from16 v19, v6

    :cond_130
    const/4 v5, 0x0

    .line 1162
    :goto_131
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs()Z

    move-result v6

    if-nez v6, :cond_13d

    if-eqz v2, :cond_1d2

    :cond_13d
    if-nez v3, :cond_1d2

    if-nez v5, :cond_1d2

    if-nez v12, :cond_149

    if-nez v13, :cond_149

    iget-boolean v2, v1, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    if-eqz v2, :cond_1d2

    :cond_149
    const-string v2, "ActivityManager"

    .line 1165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Showing crash dialog for package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " u"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_167
    .catchall {:try_start_c6 .. :try_end_167} :catchall_1ff

    .line 1174
    :try_start_167
    invoke-static {}, Lcom/sec/android/iaft/IAFDDiagnosis;->getInstance()Lcom/sec/android/iaft/IAFDDiagnosis;

    move-result-object v20
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_16b} :catch_19c
    .catchall {:try_start_167 .. :try_end_16b} :catchall_1ff

    move-object/from16 v2, v19

    :try_start_16d
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    iget-object v9, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    iget-object v12, v1, Lcom/android/server/am/AppErrorDialog$Data;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v13, v12, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    iget-object v14, v12, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    iget-object v12, v12, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v9

    move/from16 v25, v10

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    move-object/from16 v28, v12

    invoke-virtual/range {v20 .. v28}, Lcom/sec/android/iaft/IAFDDiagnosis;->parseExpType(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_19b} :catch_19e
    .catchall {:try_start_16d .. :try_end_19b} :catchall_1ff

    goto :goto_1a6

    :catch_19c
    move-object/from16 v2, v19

    :catch_19e
    :try_start_19e
    const-string v3, "ActivityManager"

    const-string v5, "IAFDParse false"

    .line 1176
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_1a6
    if-eqz v3, :cond_1b8

    const-string v3, "ActivityManager"

    const-string/jumbo v5, "step1: IAFD parse pass, will call showIAFDCrashDialogs"

    .line 1179
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_1b6

    const/4 v3, 0x7

    .line 1182
    invoke-virtual {v7, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_1b6
    const/4 v5, 0x1

    goto :goto_1c0

    .line 1185
    :cond_1b8
    invoke-virtual {v8}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/am/ErrorDialogController;->showCrashDialogs(Lcom/android/server/am/AppErrorDialog$Data;)V

    const/4 v5, 0x0

    .line 1191
    :goto_1c0
    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v3, :cond_1da

    .line 1192
    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v2, v6}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1da

    :cond_1d2
    if-eqz v7, :cond_1d9

    .line 1198
    sget v0, Lcom/android/server/am/AppErrorDialog;->CANT_SHOW:I

    invoke-virtual {v7, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_1d9
    const/4 v5, 0x0

    .line 1201
    :cond_1da
    :goto_1da
    monitor-exit v11
    :try_end_1db
    .catchall {:try_start_19e .. :try_end_1db} :catchall_1ff

    .line 1202
    :try_start_1db
    monitor-exit v4
    :try_end_1dc
    .catchall {:try_start_1db .. :try_end_1dc} :catchall_202

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    if-eqz v5, :cond_1fe

    .line 1208
    :try_start_1e1
    invoke-static {}, Lcom/sec/android/iaft/IAFDDiagnosis;->getInstance()Lcom/sec/android/iaft/IAFDDiagnosis;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v1, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2, v1}, Lcom/sec/android/iaft/IAFDDiagnosis;->showIAFDCrashDialogs(IILjava/lang/String;)Z
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_1e1 .. :try_end_1f6} :catch_1f7

    goto :goto_1fe

    :catch_1f7
    const-string v0, "ActivityManager"

    const-string v1, "IAFDShow false"

    .line 1210
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1fe
    :goto_1fe
    return-void

    :catchall_1ff
    move-exception v0

    .line 1201
    :try_start_200
    monitor-exit v11
    :try_end_201
    .catchall {:try_start_200 .. :try_end_201} :catchall_1ff

    :try_start_201
    throw v0

    :catchall_202
    move-exception v0

    .line 1202
    monitor-exit v4
    :try_end_204
    .catchall {:try_start_201 .. :try_end_204} :catchall_202

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method public isBadProcess(Ljava/lang/String;I)Z
    .registers 3

    .line 391
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isProcOverCrashLimitLBp(Lcom/android/server/am/ProcessRecord;J)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBadProcessLock"
        }
    .end annotation

    .line 1097
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    .line 1098
    iget-boolean p1, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez p1, :cond_2f

    if-eqz p0, :cond_2f

    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    .line 1099
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    add-long/2addr v0, v2

    cmp-long p1, p2, v0

    if-gez p1, :cond_2f

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    .line 1100
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget p1, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    if-lt p0, p1, :cond_2f

    const/4 p0, 0x1

    goto :goto_30

    :cond_2f
    const/4 p0, 0x0

    :goto_30
    return p0
.end method

.method public killAppAtUserRequestLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 481
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v0

    .line 485
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 486
    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->hasDebugWaitingDialog()Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0xd

    const/4 v3, 0x1

    goto :goto_18

    :cond_16
    const/4 v2, 0x6

    const/4 v3, 0x0

    :goto_18
    move v6, v2

    move v7, v3

    .line 490
    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->clearAllErrorDialogs()V

    const-string/jumbo v8, "user-terminated"

    const-string/jumbo v9, "user request after error"

    move-object v4, p0

    move-object v5, p1

    .line 491
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/AppErrors;->killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V

    .line 493
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_2d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_2d
    move-exception p0

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 499
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    const/4 v1, 0x0

    .line 500
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashing(Z)V

    const/4 v2, 0x0

    .line 501
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 502
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 503
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotRespondingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 504
    iget-object v0, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_32

    .line 505
    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_32

    .line 506
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    .line 507
    :try_start_26
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    .line 509
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_2f

    const/4 p0, 0x1

    .line 510
    invoke-virtual {p1, p5, p2, p3, p0}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_32

    :catchall_2f
    move-exception p0

    .line 509
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p0

    :cond_32
    :goto_32
    return-void
.end method

.method public loadAppsNotReportingCrashesFromConfig(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_1d

    const-string v0, ","

    .line 469
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 470
    array-length v0, p1

    if-lez v0, :cond_1d

    .line 471
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 472
    :try_start_e
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 473
    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 474
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw p0

    :cond_1d
    :goto_1d
    return-void
.end method

.method public final makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 870
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 871
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    const/4 v2, 0x1

    .line 872
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashing(Z)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    .line 873
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 876
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->startAppProblemLSP()V

    .line 877
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->stopFreezingActivities()V

    .line 878
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_3c

    :try_start_27
    const-string v4, "force-crash"

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 879
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppErrors;->handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result p0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_39

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_3c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return p0

    :catchall_39
    move-exception p0

    .line 881
    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    :try_start_3b
    throw p0

    :catchall_3c
    move-exception p0

    .line 882
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public markBadProcess(Ljava/lang/String;ILcom/android/server/am/AppErrors$BadProcessInfo;)V
    .registers 7

    .line 404
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_3
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 406
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ProcessMap;->putAll(Lcom/android/internal/app/ProcessMap;)V

    .line 407
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 408
    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 409
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final resetProcessCrashMapLBp(Landroid/util/SparseArray;ZII)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBadProcessLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "*>;ZII)V"
        }
    .end annotation

    .line 445
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_6
    if-ltz p0, :cond_2f

    const/4 v1, 0x0

    .line 447
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-nez p2, :cond_20

    const/4 v3, -0x1

    if-ne p4, v3, :cond_19

    .line 450
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-ne v2, p3, :cond_27

    goto :goto_26

    .line 454
    :cond_19
    invoke-static {p4, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    if-ne v2, v3, :cond_27

    goto :goto_26

    .line 458
    :cond_20
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p4, :cond_27

    :goto_26
    move v1, v0

    :cond_27
    if-eqz v1, :cond_2c

    .line 462
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_2c
    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    :cond_2f
    return-void
.end method

.method public resetProcessCrashTime(Ljava/lang/String;I)V
    .registers 5

    .line 413
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 414
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 415
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 416
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public resetProcessCrashTime(ZII)V
    .registers 8

    .line 420
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 421
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 422
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_f
    if-ltz v2, :cond_26

    .line 423
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 424
    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/android/server/am/AppErrors;->resetProcessCrashMapLBp(Landroid/util/SparseArray;ZII)V

    .line 425
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_23

    .line 426
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_23
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 430
    :cond_26
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 431
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 432
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_32
    if-ltz v2, :cond_49

    .line 433
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 434
    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/android/server/am/AppErrors;->resetProcessCrashMapLBp(Landroid/util/SparseArray;ZII)V

    .line 435
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_46

    .line 436
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_46
    add-int/lit8 v2, v2, -0x1

    goto :goto_32

    .line 439
    :cond_49
    monitor-exit v0

    return-void

    :catchall_4b
    move-exception p0

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method public resetState()V
    .registers 3

    const-string v0, "ActivityManager"

    const-string v1, "Resetting AppErrors"

    .line 184
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_a
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 187
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->clear()V

    .line 188
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->clear()V

    .line 189
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->clear()V

    .line 190
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->clear()V

    .line 191
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 192
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public scheduleAppCrashLocked(IILjava/lang/String;ILjava/lang/String;ZILandroid/os/Bundle;)V
    .registers 15

    .line 531
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    .line 532
    :goto_8
    :try_start_8
    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_3d

    .line 533
    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    if-ltz p1, :cond_21

    .line 534
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v5, p1, :cond_21

    goto :goto_3a

    .line 537
    :cond_21
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    if-ne v5, p2, :cond_29

    move-object v2, v4

    goto :goto_3d

    .line 541
    :cond_29
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    if-ltz p4, :cond_39

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v5, p4, :cond_3a

    :cond_39
    move-object v2, v4

    :cond_3a
    :goto_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 546
    :cond_3d
    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_b7

    if-nez v2, :cond_6f

    const-string p0, "ActivityManager"

    .line 549
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "crashApplication: nothing for uid="

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " initialPid="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " packageName="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " userId="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6f
    const/4 p1, 0x6

    if-ne p7, p1, :cond_a3

    .line 557
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object p1

    .line 558
    :goto_76
    array-length p2, p1

    if-ge v1, p2, :cond_a3

    .line 559
    iget-object p2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    aget-object p3, p1, v1

    iget p4, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p2, p3, p4}, Landroid/content/pm/PackageManagerInternal;->isPackageStateProtected(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_a0

    const-string p0, "ActivityManager"

    .line 560
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "crashApplication: Can not crash protected package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a0
    add-int/lit8 v1, v1, 0x1

    goto :goto_76

    .line 566
    :cond_a3
    invoke-virtual {v2, p5, p7, p8}, Lcom/android/server/am/ProcessRecord;->scheduleCrashLocked(Ljava/lang/String;ILandroid/os/Bundle;)V

    if-eqz p6, :cond_b6

    .line 571
    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance p2, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v2}, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/AppErrors;Lcom/android/server/am/ProcessRecord;)V

    const-wide/16 p3, 0x1388

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b6
    return-void

    :catchall_b7
    move-exception p0

    .line 546
    :try_start_b8
    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b7

    throw p0
.end method

.method public final stopReportingCrashesLBp(Lcom/android/server/am/ProcessRecord;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBadProcessLock"
        }
    .end annotation

    .line 1218
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-nez v0, :cond_b

    .line 1219
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 1221
    :cond_b
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateProcessCrashCountLBp(Ljava/lang/String;IJ)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBadProcessLock"
        }
    .end annotation

    .line 1086
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    const/4 v1, 0x1

    if-eqz v0, :cond_32

    .line 1087
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-wide v4, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    add-long/2addr v2, v4

    cmp-long v2, v2, p3

    if-gez v2, :cond_1b

    goto :goto_32

    .line 1090
    :cond_1b
    new-instance p3, Landroid/util/Pair;

    iget-object p4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Long;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p3, p4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_40

    .line 1088
    :cond_32
    :goto_32
    new-instance v0, Landroid/util/Pair;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {v0, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p3, v0

    .line 1092
    :goto_40
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
