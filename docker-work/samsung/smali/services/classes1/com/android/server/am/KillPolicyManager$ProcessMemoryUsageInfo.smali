.class public Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcessMemoryUsageInfo"
.end annotation


# instance fields
.field public final PROCS_STATS_COUNT:I

.field public final PROCS_STATS_PSS:I

.field public final PROCS_STATS_SWAP_PSS:I

.field public mProcDumpMemThread:Ljava/lang/Thread;

.field public procMemDumpInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/ActivityManagerService$MemDumpInfo;",
            ">;"
        }
    .end annotation
.end field

.field public procsMemoryPssKbByADJ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public static bridge synthetic -$$Nest$mclearAdjPss(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->clearAdjPss()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetProcDumpMemInfo(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->getProcDumpMemInfo()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowDebugAdjPss(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->showDebugAdjPss()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .registers 2

    .line 3440
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3442
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->PROCS_STATS_PSS:I

    const/4 p1, 0x1

    .line 3443
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->PROCS_STATS_SWAP_PSS:I

    const/4 p1, 0x2

    .line 3444
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->PROCS_STATS_COUNT:I

    .line 3446
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procMemDumpInfoList:Ljava/util/List;

    .line 3447
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final clearAdjPss()V
    .registers 2

    .line 3544
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    return-void
.end method

.method public final getAdjPss()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation

    .line 3540
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getProcDumpMemInfo()V
    .registers 16

    .line 3478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3479
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmAm(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getDumpMemoryInfo()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procMemDumpInfoList:Ljava/util/List;

    const-string v3, "ActivityManager_KPM"

    if-eqz v2, :cond_ba

    .line 3480
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_ba

    .line 3481
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procMemDumpInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ba

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 3482
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v6, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v5, :cond_50

    .line 3483
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    iget-object v11, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    const/4 v12, 0x3

    new-array v12, v12, [J

    iget-wide v13, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    aput-wide v13, v12, v10

    iget-wide v13, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    aput-wide v13, v12, v9

    aput-wide v6, v12, v8

    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d

    .line 3487
    :cond_50
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    iget-object v11, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    .line 3488
    aget-wide v11, v5, v10

    iget-wide v13, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    add-long/2addr v11, v13

    aput-wide v11, v5, v10

    .line 3489
    aget-wide v10, v5, v9

    iget-wide v12, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    add-long/2addr v10, v12

    aput-wide v10, v5, v9

    .line 3490
    aget-wide v9, v5, v8

    add-long/2addr v9, v6

    aput-wide v9, v5, v8

    .line 3492
    :goto_6d
    sget-boolean v5, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v5, :cond_20

    .line 3493
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "getProcDumpMemInfo() proc: "

    .line 3494
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3495
    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", adj: "

    .line 3496
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3497
    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", pss: "

    .line 3498
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3499
    iget-wide v6, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    long-to-double v6, v6

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    div-double/2addr v6, v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v10

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mb, swap: "

    .line 3500
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3501
    iget-wide v6, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    long-to-double v6, v6

    div-double/2addr v6, v8

    add-double/2addr v6, v10

    double-to-int v4, v6

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mb"

    .line 3502
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3503
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 3507
    :cond_ba
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 3508
    sget-boolean p0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz p0, :cond_dc

    .line 3509
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getProcDumpMemInfo() elapsed time "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dc
    return-void
.end method

.method public getProcDumpMemInfoThread(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .registers 4

    .line 3452
    new-instance v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;

    const-string v1, "KPMProcessMemoryDumpThread"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;-><init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcDumpMemThread:Ljava/lang/Thread;

    .line 3474
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final showDebugAdjPss()V
    .registers 18

    move-object/from16 v0, p0

    .line 3514
    sget-object v1, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_7
    if-ge v4, v2, :cond_93

    aget-object v5, v1, v4

    .line 3515
    iget-object v6, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "[ADJ Label] : "

    const-string v8, "ActivityManager_KPM"

    if-eqz v6, :cond_78

    .line 3516
    iget-object v6, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    .line 3517
    aget-wide v9, v6, v3

    const/4 v11, 0x1

    aget-wide v12, v6, v11

    add-long/2addr v9, v12

    const-wide/16 v12, 0x0

    cmp-long v14, v9, v12

    if-gez v14, :cond_2c

    move-wide v9, v12

    .line 3521
    :cond_2c
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v13, 0x80

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3522
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3523
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - total: "

    .line 3524
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v9, v9

    const-wide/high16 v13, 0x4090000000000000L    # 1024.0

    div-double/2addr v9, v13

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    add-double/2addr v9, v15

    double-to-int v5, v9

    .line 3525
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mb, pss: "

    .line 3526
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3527
    aget-wide v9, v6, v3

    long-to-double v9, v9

    div-double/2addr v9, v13

    add-double/2addr v9, v15

    double-to-int v5, v9

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mb, swap: "

    .line 3528
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3529
    aget-wide v9, v6, v11

    long-to-double v9, v9

    div-double/2addr v9, v13

    add-double/2addr v9, v15

    double-to-int v5, v9

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mb, count: "

    .line 3530
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    .line 3531
    aget-wide v5, v6, v5

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3532
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    .line 3534
    :cond_78
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - this ADJ not found"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    :cond_93
    return-void
.end method
