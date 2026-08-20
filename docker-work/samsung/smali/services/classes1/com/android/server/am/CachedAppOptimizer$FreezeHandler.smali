.class public final Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;
.super Landroid/os/Handler;
.source "CachedAppOptimizer.java"

# interfaces
.implements Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FreezeHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method public static synthetic $r8$lambda$EiBKz5-7UCcv-60FwthGHMNTOBw(Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->lambda$freezeProcess$0(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$npQysogUXpu_JEZ8vLERGmbmjYI(Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->lambda$freezeProcess$1(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 2

    .line 1791
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1792
    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$FreezeHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    return-void
.end method

.method private synthetic lambda$freezeProcess$0(Lcom/android/server/am/ProcessRecord;)V
    .registers 6

    .line 1878
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {p0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmAm(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    monitor-enter p0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-string v0, "Unable to freeze binder interface"

    const/16 v1, 0xe

    const/16 v2, 0x13

    const/4 v3, 0x1

    .line 1879
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 1882
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private synthetic lambda$freezeProcess$1(Lcom/android/server/am/ProcessRecord;)V
    .registers 6

    .line 1930
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {p0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmAm(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    monitor-enter p0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-string v0, "Unable to freeze binder interface"

    const/16 v1, 0xe

    const/16 v2, 0x13

    const/4 v3, 0x1

    .line 1931
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 1934
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method


# virtual methods
.method public final freezeProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 1825
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    .line 1826
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1829
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v1, 0x0

    .line 1831
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setPendingFreeze(Z)V

    .line 1833
    iget-boolean v2, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setForceFreeze:Z

    if-eqz v2, :cond_25

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Force freeze "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    :cond_25
    iget-boolean v2, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setForceFreeze:Z

    if-nez v2, :cond_30

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->freezeTargetProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-nez v2, :cond_30

    return-void

    .line 1837
    :cond_30
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v2}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v2

    monitor-enter v2

    :try_start_37
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1838
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    .line 1839
    iget-boolean v3, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setForceFreeze:Z

    const/4 v4, 0x1

    if-nez v3, :cond_d6

    .line 1840
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    const/16 v5, 0x352

    if-lt v3, v5, :cond_95

    .line 1841
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v3

    if-eqz v3, :cond_54

    goto :goto_95

    .line 1849
    :cond_54
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmFreezerOverride(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 1850
    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezerOverride(Z)V

    const-string p0, "ActivityManager"

    .line 1851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping freeze for process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " curAdj = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1852
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "(override)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1851
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    monitor-exit v2
    :try_end_91
    .catchall {:try_start_37 .. :try_end_91} :catchall_25c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1842
    :cond_95
    :goto_95
    :try_start_95
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZER:Z

    if-eqz p0, :cond_d1

    const-string p0, "ActivityManager"

    .line 1843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping freeze for process "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " curAdj = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1844
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", shouldNotFreeze = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1845
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1843
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :cond_d1
    monitor-exit v2
    :try_end_d2
    .catchall {:try_start_95 .. :try_end_d2} :catchall_25c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :cond_d6
    if-eqz v7, :cond_257

    .line 1858
    :try_start_d8
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v3

    if-eqz v3, :cond_e0

    goto/16 :goto_257

    :cond_e0
    const-string v3, "ActivityManager"

    .line 1864
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "freezing "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fe
    .catchall {:try_start_d8 .. :try_end_fe} :catchall_25c

    .line 1869
    :try_start_fe
    invoke-static {v7, v4}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smfreezeBinder(IZ)I

    move-result v3

    if-eqz v3, :cond_146

    const-string/jumbo v3, "outstanding txns"

    .line 1870
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->rescheduleFreeze(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    :try_end_10a
    .catch Ljava/lang/RuntimeException; {:try_start_fe .. :try_end_10a} :catch_10f
    .catchall {:try_start_fe .. :try_end_10a} :catchall_25c

    .line 1871
    :try_start_10a
    monitor-exit v2
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_25c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1874
    :catch_10f
    :try_start_10f
    iget-boolean v3, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setForceFreeze:Z

    if-eqz v3, :cond_11a

    const-string v3, "ActivityManager"

    const-string v5, "freezing failed due to Binder"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11a
    const-string v3, "ActivityManager"

    .line 1876
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to freeze binder for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmFreezeHandler(Lcom/android/server/am/CachedAppOptimizer;)Landroid/os/Handler;

    move-result-object v3

    new-instance v5, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1886
    :cond_146
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getFreezeUnfreezeTime()J

    move-result-wide v8
    :try_end_14a
    .catchall {:try_start_10f .. :try_end_14a} :catchall_25c

    .line 1889
    :try_start_14a
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v7, v3, v4}, Landroid/os/Process;->setProcessFrozen(IIZ)V

    .line 1891
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezeUnfreezeTime(J)V

    .line 1892
    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFrozen(Z)V

    .line 1893
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmFrozenProcesses(Lcom/android/server/am/CachedAppOptimizer;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v7, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_162} :catch_163
    .catchall {:try_start_14a .. :try_end_162} :catchall_25c

    goto :goto_181

    :catch_163
    :try_start_163
    const-string v3, "ActivityManager"

    .line 1895
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to freeze "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    :goto_181
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getFreezeUnfreezeTime()J

    move-result-wide v10

    sub-long v8, v10, v8

    .line 1899
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v0

    .line 1900
    monitor-exit v2
    :try_end_18c
    .catchall {:try_start_163 .. :try_end_18c} :catchall_25c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    if-nez v0, :cond_192

    return-void

    :cond_192
    const/16 v0, 0x7574

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1906
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    aput-object v6, v2, v4

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1909
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmRandom(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget v1, v1, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1bd

    const/16 v0, 0xfe

    const/4 v1, 0x1

    move v2, v7

    move-object v3, v6

    move-wide v4, v8

    .line 1910
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;J)V

    .line 1919
    :cond_1bd
    :try_start_1bd
    invoke-static {v7}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smgetBinderFreezeInfo(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_20c

    .line 1922
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v0

    monitor-enter v0
    :try_end_1cc
    .catch Ljava/lang/RuntimeException; {:try_start_1bd .. :try_end_1cc} :catch_1e0

    :try_start_1cc
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    const-string/jumbo v1, "new pending txns"

    .line 1923
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->rescheduleFreeze(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 1924
    monitor-exit v0
    :try_end_1d6
    .catchall {:try_start_1cc .. :try_end_1d6} :catchall_1da

    :try_start_1d6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V
    :try_end_1d9
    .catch Ljava/lang/RuntimeException; {:try_start_1d6 .. :try_end_1d9} :catch_1e0

    return-void

    :catchall_1da
    move-exception v1

    :try_start_1db
    monitor-exit v0
    :try_end_1dc
    .catchall {:try_start_1db .. :try_end_1dc} :catchall_1da

    :try_start_1dc
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
    :try_end_1e0
    .catch Ljava/lang/RuntimeException; {:try_start_1dc .. :try_end_1e0} :catch_1e0

    :catch_1e0
    const-string v0, "ActivityManager"

    .line 1928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to freeze binder for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmFreezeHandler(Lcom/android/server/am/CachedAppOptimizer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1940
    :cond_20c
    :try_start_20c
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLocksReader(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/internal/os/ProcLocksReader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/os/ProcLocksReader;->handleBlockingFileLocks(Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;)V
    :try_end_215
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_215} :catch_216

    goto :goto_250

    :catch_216
    move-exception v0

    const-string v1, "ActivityManager"

    .line 1942
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to check file locks for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_244
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1944
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1945
    monitor-exit v0
    :try_end_24d
    .catchall {:try_start_244 .. :try_end_24d} :catchall_251

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    :goto_250
    return-void

    :catchall_251
    move-exception p0

    :try_start_252
    monitor-exit v0
    :try_end_253
    .catchall {:try_start_252 .. :try_end_253} :catchall_251

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 1861
    :cond_257
    :goto_257
    :try_start_257
    monitor-exit v2
    :try_end_258
    .catchall {:try_start_257 .. :try_end_258} :catchall_25c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_25c
    move-exception p0

    .line 1900
    :try_start_25d
    monitor-exit v2
    :try_end_25e
    .catchall {:try_start_25d .. :try_end_25e} :catchall_25c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final freezeTargetProcess(Lcom/android/server/am/ProcessRecord;)Z
    .registers 6

    .line 1951
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    const-string v2, "android.app.stubs"

    .line 1952
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    return v1

    .line 1954
    :cond_10
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1955
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is core app"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager:MARs"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1959
    :cond_31
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3d

    return v2

    .line 1962
    :cond_3d
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmAm(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v3, v2}, Lcom/android/server/am/ActivityManagerService;->isOnDeviceIdleAllowlistLOSP(IZ)Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {p0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmAm(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->isOnDeviceIdleAllowlistLOSP(IZ)Z

    move-result p0

    if-eqz p0, :cond_5a

    goto :goto_5b

    :cond_5a
    move v1, v2

    :cond_5b
    :goto_5b
    return v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1797
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    return-void

    .line 1804
    :cond_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1805
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1806
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1808
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->reportUnfreeze(IILjava/lang/String;)V

    goto :goto_2a

    .line 1799
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmAm(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_1c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1800
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->freezeProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 1801
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :goto_2a
    return-void

    :catchall_2b
    move-exception p0

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onBlockingFileLock(I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 1984
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZER:Z

    if-eqz v0, :cond_1f

    const-string v0, "ActivityManager"

    .line 1985
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") holds blocking file lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    :cond_1f
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_26
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1988
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmFrozenProcesses(Lcom/android/server/am/CachedAppOptimizer;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_5c

    const-string v2, "ActivityManager"

    .line 1990
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") holds blocking file lock"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, v1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1993
    :cond_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_26 .. :try_end_5d} :catchall_61

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_61
    move-exception p0

    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final reportUnfreeze(IILjava/lang/String;)V
    .registers 8

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 1968
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/16 v2, 0x7575

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1971
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmRandom(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    cmpg-float p0, v1, p0

    if-gez p0, :cond_29

    const/16 p0, 0xfe

    .line 1972
    invoke-static {p0, v0, p1, p3, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;I)V

    :cond_29
    return-void
.end method

.method public final rescheduleFreeze(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm",
            "mProcLock"
        }
    .end annotation

    .line 1817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reschedule freeze for process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActivityManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    iget-object p2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p2, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1820
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method
