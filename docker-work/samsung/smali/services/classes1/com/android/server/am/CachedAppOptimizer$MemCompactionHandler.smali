.class public final Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;
.super Landroid/os/Handler;
.source "CachedAppOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MemCompactionHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 2

    .line 1463
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1464
    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 55

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1624
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b

    goto/16 :goto_385

    .line 1626
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1634
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1635
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 1637
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v6}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v6

    monitor-enter v6

    :try_start_1a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1638
    iget-object v7, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v7}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmPendingCompactionProcesses(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_39

    .line 1639
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_34

    const-string v0, "ActivityManager"

    const-string v1, "No processes pending compaction, bail out"

    .line 1640
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    :cond_34
    monitor-exit v6
    :try_end_35
    .catchall {:try_start_1a .. :try_end_35} :catchall_38b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1644
    :cond_39
    :try_start_39
    iget-object v7, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v7}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmPendingCompactionProcesses(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 1645
    iget-object v14, v7, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1646
    invoke-virtual {v14}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isForceCompact()Z

    move-result v9

    .line 1647
    invoke-virtual {v14, v8}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setForceCompact(Z)V

    .line 1649
    invoke-virtual {v14}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getReqCompactAction()I

    move-result v10

    .line 1650
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v15

    .line 1651
    iget-object v12, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1652
    invoke-virtual {v14, v8}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setHasPendingCompact(Z)V

    .line 1653
    invoke-virtual {v14}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactAction()I

    move-result v28

    .line 1654
    invoke-virtual {v14}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v29

    .line 1655
    monitor-exit v6
    :try_end_65
    .catchall {:try_start_39 .. :try_end_65} :catchall_38b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1657
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v6}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcCompactionsRequested(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v16

    const-wide/16 v18, 0x1

    move-wide/from16 v20, v4

    add-long v3, v16, v18

    invoke-static {v6, v3, v4}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmProcCompactionsRequested(Lcom/android/server/am/CachedAppOptimizer;J)V

    if-nez v15, :cond_90

    .line 1661
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v1, :cond_84

    const-string v1, "ActivityManager"

    const-string v2, "Compaction failed, pid is 0"

    .line 1662
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :cond_84
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcCompactionsNoPidThrottled(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v1

    add-long v1, v1, v18

    invoke-static {v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmProcCompactionsNoPidThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V

    return-void

    :cond_90
    if-nez v9, :cond_f6

    .line 1669
    invoke-virtual {v0, v7, v10}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->shouldOomAdjThrottleCompaction(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 1670
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcCompactionsOomAdjThrottled(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v1

    add-long v1, v1, v18

    invoke-static {v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmProcCompactionsOomAdjThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V

    return-void

    :cond_a4
    move-wide/from16 v3, v20

    .line 1673
    invoke-virtual {v0, v7, v3, v4, v10}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->shouldTimeThrottleCompaction(Lcom/android/server/am/ProcessRecord;JI)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 1674
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcCompactionsTimeThrottled(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v1

    add-long v1, v1, v18

    invoke-static {v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmProcCompactionsTimeThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V

    return-void

    .line 1677
    :cond_b8
    invoke-virtual {v0, v7, v1, v10}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->shouldThrottleMiscCompaction(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 1678
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcCompactionsMiscThrottled(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v1

    add-long v1, v1, v18

    invoke-static {v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmProcCompactionsMiscThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V

    return-void

    .line 1681
    :cond_ca
    iget-object v5, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v5}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v5

    invoke-interface {v5, v15}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v5

    .line 1682
    invoke-virtual {v0, v10, v15, v12, v5}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->shouldRssThrottleCompaction(IILjava/lang/String;[J)Z

    move-result v6

    if-eqz v6, :cond_e6

    .line 1683
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcCompactionsRSSThrottled(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v1

    add-long v1, v1, v18

    invoke-static {v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmProcCompactionsRSSThrottled(Lcom/android/server/am/CachedAppOptimizer;J)V

    return-void

    .line 1686
    :cond_e6
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerReclaimer:Lcom/android/server/am/CachedAppOptimizer$CachedAppOptimizerReclaimer;

    invoke-virtual {v6}, Lcom/android/server/am/CachedAppOptimizer$CachedAppOptimizerReclaimer;->shouldSkipCompaction()Z

    move-result v6

    if-eqz v6, :cond_11c

    .line 1687
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, v7}, Lcom/android/server/am/CachedAppOptimizer;->delayCompactProcess(Lcom/android/server/am/ProcessRecord;)V

    return-void

    :cond_f6
    move-wide/from16 v3, v20

    .line 1691
    iget-object v5, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v5}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v5

    invoke-interface {v5, v15}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v5

    .line 1692
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v6, :cond_11c

    const-string v6, "ActivityManager"

    .line 1693
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Forcing compaction for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11c
    const/4 v6, 0x4

    const/4 v13, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x1

    if-eq v10, v7, :cond_14b

    if-eq v10, v9, :cond_140

    if-eq v10, v13, :cond_135

    if-eq v10, v6, :cond_129

    goto :goto_156

    .line 1710
    :cond_129
    iget-object v11, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v11}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmBfgsCompactionCount(Lcom/android/server/am/CachedAppOptimizer;)I

    move-result v16

    add-int/lit8 v6, v16, 0x1

    invoke-static {v11, v6}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmBfgsCompactionCount(Lcom/android/server/am/CachedAppOptimizer;I)V

    goto :goto_156

    .line 1707
    :cond_135
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v6}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmPersistentCompactionCount(Lcom/android/server/am/CachedAppOptimizer;)I

    move-result v11

    add-int/2addr v11, v7

    invoke-static {v6, v11}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmPersistentCompactionCount(Lcom/android/server/am/CachedAppOptimizer;I)V

    goto :goto_156

    .line 1704
    :cond_140
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v6}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmFullCompactionCount(Lcom/android/server/am/CachedAppOptimizer;)I

    move-result v11

    add-int/2addr v11, v7

    invoke-static {v6, v11}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmFullCompactionCount(Lcom/android/server/am/CachedAppOptimizer;I)V

    goto :goto_156

    .line 1701
    :cond_14b
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v6}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmSomeCompactionCount(Lcom/android/server/am/CachedAppOptimizer;)I

    move-result v11

    add-int/2addr v11, v7

    move v7, v11

    invoke-static {v6, v7}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmSomeCompactionCount(Lcom/android/server/am/CachedAppOptimizer;I)V

    .line 1716
    :goto_156
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v6, v10}, Lcom/android/server/am/CachedAppOptimizer;->resolveCompactionAction(I)I

    move-result v7

    .line 1717
    invoke-static {v7}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v14

    const-wide/16 v13, 0x40

    .line 1720
    :try_start_164
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Compact "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v14, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1722
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "B|Compact "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 1723
    iget-object v9, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v9}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcCompactionsPerformed(Lcom/android/server/am/CachedAppOptimizer;)J

    move-result-wide v22
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_1a7} :catch_35c
    .catchall {:try_start_164 .. :try_end_1a7} :catchall_358

    add-long v13, v22, v18

    :try_start_1a9
    invoke-static {v9, v13, v14}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fputmProcCompactionsPerformed(Lcom/android/server/am/CachedAppOptimizer;J)V

    .line 1724
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v33

    .line 1725
    iget-object v9, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v9}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v9

    invoke-interface {v9, v6, v15}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->performCompaction(Ljava/lang/String;I)V

    .line 1726
    iget-object v9, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v9}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v9

    invoke-interface {v9, v15}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v14

    .line 1727
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v26, v8, v3

    .line 1729
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v35

    const/4 v3, 0x0

    .line 1730
    aget-wide v18, v14, v3

    aget-wide v22, v5, v3

    sub-long v18, v18, v22

    const/4 v3, 0x1

    .line 1731
    aget-wide v22, v14, v3

    aget-wide v31, v5, v3

    sub-long v22, v22, v31

    const/4 v3, 0x2

    .line 1732
    aget-wide v31, v14, v3

    aget-wide v37, v5, v3

    sub-long v31, v31, v37

    const/4 v3, 0x3

    .line 1733
    aget-wide v37, v14, v3

    aget-wide v39, v5, v3

    sub-long v37, v37, v39

    .line 1734
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "E|Compact d_rss="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-wide v39, v14, v4

    aget-wide v41, v5, v4

    move-object v4, v14

    sub-long v13, v39, v41

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "KB"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    const/16 v3, 0x756f

    const/16 v13, 0x12

    new-array v14, v13, [Ljava/lang/Object;

    .line 1735
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v20, 0x0

    aput-object v13, v14, v20

    const/4 v11, 0x1

    aput-object v12, v14, v11

    const/4 v13, 0x2

    aput-object v6, v14, v13

    aget-wide v39, v5, v20

    .line 1736
    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v17, 0x3

    aput-object v6, v14, v17

    aget-wide v39, v5, v11

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v20, 0x4

    aput-object v6, v14, v20

    const/4 v6, 0x5

    const/16 v20, 0x2

    aget-wide v39, v5, v20

    .line 1737
    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v14, v6

    const/4 v6, 0x6

    const/16 v17, 0x3

    aget-wide v39, v5, v17

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v14, v6

    const/4 v6, 0x7

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v14, v6

    const/16 v6, 0x8

    .line 1738
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v14, v6

    const/16 v6, 0x9

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v14, v6

    const/16 v6, 0xa

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v14, v6

    const/16 v6, 0xb

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v14, v6

    const/16 v6, 0xc

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v14, v6

    const/16 v6, 0xd

    .line 1739
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v14, v6

    const/16 v6, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v14, v6

    const/16 v6, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v14, v6

    const/16 v6, 0x10

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v14, v6

    const/16 v6, 0x11

    sub-long v18, v35, v33

    .line 1740
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v14, v6

    .line 1735
    invoke-static {v3, v14}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1744
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmRandom(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_2ff

    const/16 v6, 0x73

    const/4 v3, 0x0

    .line 1745
    aget-wide v18, v5, v3

    const/4 v3, 0x1

    aget-wide v22, v5, v3

    const/4 v3, 0x2

    aget-wide v31, v5, v3

    const/4 v3, 0x3

    aget-wide v37, v5, v3

    const/4 v3, 0x0

    aget-wide v39, v4, v3

    const/4 v3, 0x1

    aget-wide v41, v4, v3

    const/4 v3, 0x2

    aget-wide v43, v4, v3

    const/4 v5, 0x3

    aget-wide v45, v4, v5

    .line 1752
    invoke-static {v1}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v1
    :try_end_2d4
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_2d4} :catch_353
    .catchall {:try_start_1a9 .. :try_end_2d4} :catchall_34f

    move v14, v7

    move v7, v15

    move-object/from16 p1, v4

    move-wide v3, v8

    move-object v8, v12

    const/4 v13, 0x2

    move v9, v10

    move-wide/from16 v10, v18

    move-object v5, v12

    const-wide/16 v47, 0x40

    move-wide/from16 v12, v22

    move-object/from16 v52, p1

    move/from16 v51, v14

    move/from16 v50, v15

    move-object/from16 v49, v16

    move-wide/from16 v14, v31

    move-wide/from16 v16, v37

    move-wide/from16 v18, v39

    move-wide/from16 v20, v41

    move-wide/from16 v22, v43

    move-wide/from16 v24, v45

    move/from16 v31, v2

    move/from16 v32, v1

    .line 1745
    :try_start_2fb
    invoke-static/range {v6 .. v36}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IJJJJJJJJJIJIIJJ)V

    goto :goto_30b

    :cond_2ff
    move-object/from16 v52, v4

    move/from16 v51, v7

    move-wide v3, v8

    move-object v5, v12

    move/from16 v50, v15

    move-object/from16 v49, v16

    const-wide/16 v47, 0x40

    .line 1755
    :goto_30b
    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v1

    monitor-enter v1
    :try_end_312
    .catch Ljava/lang/Exception; {:try_start_2fb .. :try_end_312} :catch_34d
    .catchall {:try_start_2fb .. :try_end_312} :catchall_386

    :try_start_312
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    move-object/from16 v2, v49

    .line 1756
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setLastCompactTime(J)V

    move/from16 v3, v51

    .line 1757
    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setLastCompactAction(I)V

    .line 1758
    monitor-exit v1
    :try_end_320
    .catchall {:try_start_312 .. :try_end_320} :catchall_347

    :try_start_320
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    const/4 v1, 0x3

    if-eq v3, v1, :cond_329

    const/4 v1, 0x2

    if-ne v3, v1, :cond_382

    .line 1762
    :cond_329
    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v1, v1, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;

    move-object/from16 v3, v52

    invoke-direct {v2, v3}, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;-><init>([J)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_346
    .catch Ljava/lang/Exception; {:try_start_320 .. :try_end_346} :catch_34d
    .catchall {:try_start_320 .. :try_end_346} :catchall_386

    goto :goto_382

    :catchall_347
    move-exception v0

    .line 1758
    :try_start_348
    monitor-exit v1
    :try_end_349
    .catchall {:try_start_348 .. :try_end_349} :catchall_347

    :try_start_349
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
    :try_end_34d
    .catch Ljava/lang/Exception; {:try_start_349 .. :try_end_34d} :catch_34d
    .catchall {:try_start_349 .. :try_end_34d} :catchall_386

    :catch_34d
    move-exception v0

    goto :goto_360

    :catchall_34f
    move-exception v0

    const-wide/16 v47, 0x40

    goto :goto_387

    :catch_353
    move-exception v0

    move-object v5, v12

    const-wide/16 v47, 0x40

    goto :goto_360

    :catchall_358
    move-exception v0

    move-wide/from16 v47, v13

    goto :goto_387

    :catch_35c
    move-exception v0

    move-object v5, v12

    move-wide/from16 v47, v13

    :goto_360
    :try_start_360
    const-string v1, "ActivityManager"

    .line 1767
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred while compacting pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1767
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_382
    .catchall {:try_start_360 .. :try_end_382} :catchall_386

    .line 1771
    :cond_382
    :goto_382
    invoke-static/range {v47 .. v48}, Landroid/os/Trace;->traceEnd(J)V

    :goto_385
    return-void

    :catchall_386
    move-exception v0

    :goto_387
    invoke-static/range {v47 .. v48}, Landroid/os/Trace;->traceEnd(J)V

    .line 1772
    throw v0

    :catchall_38b
    move-exception v0

    .line 1655
    :try_start_38c
    monitor-exit v6
    :try_end_38d
    .catchall {:try_start_38c .. :try_end_38d} :catchall_38b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method public final shouldOomAdjThrottleCompaction(Lcom/android/server/am/ProcessRecord;I)Z
    .registers 5

    .line 1468
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v0, 0x1

    if-eq p2, v0, :cond_8

    const/4 v1, 0x3

    if-ne p2, v1, :cond_32

    .line 1472
    :cond_8
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1473
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result p1

    const/16 p2, 0xc8

    if-gt p1, p2, :cond_32

    .line 1474
    sget-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz p1, :cond_31

    .line 1475
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skipping compaction as process "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is now perceptible."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return v0

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldRssThrottleCompaction(IILjava/lang/String;[J)Z
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x2

    .line 1580
    aget-wide v4, p4, v3

    .line 1581
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;

    const/4 v7, 0x0

    .line 1583
    aget-wide v8, p4, v7

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    const-string v9, "ActivityManager"

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-nez v8, :cond_56

    aget-wide v14, p4, v13

    cmp-long v8, v14, v10

    if-nez v8, :cond_56

    aget-wide v14, p4, v3

    cmp-long v8, v14, v10

    if-nez v8, :cond_56

    aget-wide v14, p4, v12

    cmp-long v8, v14, v10

    if-nez v8, :cond_56

    .line 1585
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_55

    .line 1586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping compaction forprocess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with no memory usage. Dead?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    return v13

    :cond_56
    if-eq v1, v12, :cond_5a

    if-ne v1, v3, :cond_e7

    .line 1594
    :cond_5a
    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v14, v1, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    cmp-long v1, v14, v10

    const-string v8, "KB."

    const-string v14, "Skipping full compaction for process "

    if-lez v1, :cond_90

    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v10, v1, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    cmp-long v1, v4, v10

    if-gez v1, :cond_90

    .line 1595
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_8f

    .line 1596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; anon RSS is too small: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    return v13

    :cond_90
    if-eqz v6, :cond_e7

    .line 1603
    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v4, v1, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    const-wide/16 v10, 0x0

    cmp-long v1, v4, v10

    if-lez v1, :cond_e7

    .line 1604
    invoke-virtual {v6}, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;->getRssAfterCompaction()[J

    move-result-object v1

    .line 1605
    aget-wide v4, p4, v13

    aget-wide v10, v1, v13

    sub-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    aget-wide v10, p4, v3

    aget-wide v15, v1, v3

    sub-long/2addr v10, v15

    .line 1606
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    add-long/2addr v4, v10

    aget-wide v10, p4, v12

    aget-wide v15, v1, v12

    sub-long/2addr v10, v15

    .line 1607
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    add-long/2addr v4, v10

    .line 1608
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    cmp-long v0, v4, v0

    if-gtz v0, :cond_e7

    .line 1609
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_e6

    .line 1610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; abs delta is too small: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e6
    return v13

    :cond_e7
    return v7
.end method

.method public final shouldThrottleMiscCompaction(Lcom/android/server/am/ProcessRecord;II)Z
    .registers 6

    .line 1557
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1558
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "ActivityManager"

    const/4 v1, 0x1

    if-eqz p0, :cond_34

    .line 1559
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz p0, :cond_33

    .line 1560
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Skipping full compaction for process "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; proc state is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return v1

    :cond_34
    if-nez p3, :cond_55

    .line 1568
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz p0, :cond_54

    .line 1569
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skipping compaction for process "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "since action is None"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    return v1

    :cond_55
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldTimeThrottleCompaction(Lcom/android/server/am/ProcessRecord;JI)Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 1487
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1488
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1490
    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactAction()I

    move-result v4

    .line 1491
    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_14b

    const-string v3, "/"

    const-string/jumbo v8, "ms ago"

    const-string v9, " last="

    const-string v10, ": too soon. throttle="

    const-string v11, "ActivityManager"

    const/4 v12, 0x1

    if-ne v2, v12, :cond_7b

    if-ne v4, v12, :cond_34

    sub-long v13, p2, v5

    .line 1502
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    move-object v15, v8

    iget-wide v7, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    cmp-long v2, v13, v7

    if-ltz v2, :cond_42

    goto :goto_35

    :cond_34
    move-object v15, v8

    :goto_35
    const/4 v2, 0x2

    if-ne v4, v2, :cond_14b

    sub-long v7, p2, v5

    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v13, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    cmp-long v2, v7, v13

    if-gez v2, :cond_14b

    .line 1506
    :cond_42
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v2, :cond_7a

    .line 1507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping some compaction for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v7, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v0, p2, v5

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object v7, v15

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    return v12

    :cond_7b
    move-object v7, v8

    const/4 v8, 0x2

    if-ne v2, v8, :cond_d8

    if-ne v4, v12, :cond_8f

    sub-long v13, p2, v5

    .line 1516
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    move-object/from16 p1, v9

    iget-wide v8, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    cmp-long v2, v13, v8

    if-ltz v2, :cond_9e

    const/4 v2, 0x2

    goto :goto_92

    :cond_8f
    move-object/from16 p1, v9

    move v2, v8

    :goto_92
    if-ne v4, v2, :cond_14b

    sub-long v8, p2, v5

    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v13, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    cmp-long v2, v8, v13

    if-gez v2, :cond_14b

    .line 1520
    :cond_9e
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v2, :cond_d7

    .line 1521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping full compaction for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v8, v1, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v0, p2, v5

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d7
    return v12

    :cond_d8
    move-object v3, v9

    const/4 v4, 0x3

    if-ne v2, v4, :cond_112

    sub-long v4, p2, v5

    .line 1530
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v8, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    cmp-long v2, v4, v8

    if-gez v2, :cond_14b

    .line 1531
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v2, :cond_111

    .line 1532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping persistent compaction for "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_111
    return v12

    :cond_112
    const/4 v4, 0x4

    if-ne v2, v4, :cond_14b

    sub-long v4, p2, v5

    .line 1540
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v8, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    cmp-long v2, v4, v8

    if-gez v2, :cond_14b

    .line 1541
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v2, :cond_14a

    .line 1542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping bfgs compaction for "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14a
    return v12

    :cond_14b
    const/4 v0, 0x0

    return v0
.end method
