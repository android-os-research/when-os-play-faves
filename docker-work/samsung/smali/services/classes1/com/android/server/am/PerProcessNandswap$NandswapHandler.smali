.class public final Lcom/android/server/am/PerProcessNandswap$NandswapHandler;
.super Landroid/os/Handler;
.source "PerProcessNandswap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PerProcessNandswap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NandswapHandler"
.end annotation


# static fields
.field public static final NANDSWAP_TYPE_ALL:I = 0x3

.field public static final NANDSWAP_TYPE_NONE:I = 0x0

.field public static final NANDSWAP_TYPE_SWAP:I = 0x1

.field public static final NANDSWAP_TYPE_WRITEBACK:I = 0x2


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/am/PerProcessNandswap;


# direct methods
.method public constructor <init>(Lcom/android/server/am/PerProcessNandswap;)V
    .registers 2

    .line 1196
    iput-object p1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    .line 1197
    invoke-static {p1}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmNandswapThread(Lcom/android/server/am/PerProcessNandswap;)Lcom/android/server/ServiceThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1198
    const-class p1, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/PerProcessNandswap;Lcom/android/server/am/PerProcessNandswap$NandswapHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;-><init>(Lcom/android/server/am/PerProcessNandswap;)V

    return-void
.end method


# virtual methods
.method public final canDoNandswapProcess(Lcom/android/server/am/ProcessRecord;)Z
    .registers 8

    .line 1456
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$mgetProcessRecord(Lcom/android/server/am/PerProcessNandswap;Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    const-string v1, " pid:"

    const-string v2, "canDoNandswapProcess fail: "

    const/4 v3, 0x0

    if-eqz v0, :cond_5b

    if-ne p1, v0, :cond_5b

    .line 1459
    iget-object p1, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result p1

    .line 1465
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->ppnState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_26

    const/16 v4, 0x33e

    if-lt p1, v4, :cond_26

    move v3, v5

    goto :goto_82

    .line 1468
    :cond_26
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->ppnState:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " adj:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 1472
    :cond_5b
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not exist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_82
    return v3
.end method

.method public final doNandswapApp(Lcom/android/server/am/ProcessRecord;IIZ)J
    .registers 52

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v12, p2

    move/from16 v13, p3

    .line 1480
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v14

    .line 1481
    iget-object v15, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1482
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v10

    .line 1483
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v11

    if-eqz p4, :cond_1f

    const-string v2, "activity"

    goto :goto_22

    :cond_1f
    const-string/jumbo v2, "non-activity"

    :goto_22
    move-object v8, v2

    const/4 v9, 0x2

    const/4 v6, 0x1

    if-ne v13, v6, :cond_2b

    const-string/jumbo v2, "swaponly"

    goto :goto_33

    :cond_2b
    if-ne v13, v9, :cond_31

    const-string/jumbo v2, "writebackonly"

    goto :goto_33

    :cond_31
    const-string v2, "all"

    :goto_33
    const-wide/16 v4, 0x40

    const-wide/16 v16, -0x1

    .line 1489
    :try_start_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nandswap"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1490
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "B|Nandswap: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 1491
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->-$$Nest$smreadZramBdstat()[J

    move-result-object v18

    .line 1492
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->-$$Nest$smreadZramWritebackLimit()J

    move-result-wide v19

    .line 1493
    invoke-static {v14}, Landroid/os/Process;->getRss(I)[J

    move-result-object v21

    .line 1494
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v22

    .line 1496
    iget-object v2, v0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_98} :catch_382
    .catchall {:try_start_37 .. :try_end_98} :catchall_37c

    :try_start_98
    const-string/jumbo v4, "nandswap start for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " adj:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1499
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isForcedPrefetchEnabled()Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_f6

    .line 1503
    iget-object v4, v0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v4}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmMsgHandler(Lcom/android/server/am/PerProcessNandswap;)Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;

    move-result-object v4

    iget-object v6, v0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v6}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmMsgHandler(Lcom/android/server/am/PerProcessNandswap;)Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;

    move-result-object v6

    .line 1504
    invoke-virtual {v6, v5, v7, v7, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1505
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getForcedPrefetchDelayMS()I

    move-result v5

    move/from16 v28, v10

    int-to-long v9, v5

    .line 1503
    invoke-virtual {v4, v6, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_f8

    :cond_f6
    move/from16 v28, v10

    .line 1509
    :goto_f8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    invoke-static {v4, v13}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$smcompactProcessForWriteback(II)J

    move-result-wide v9
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_100} :catch_379
    .catchall {:try_start_98 .. :try_end_100} :catchall_376

    .line 1511
    :try_start_100
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1512
    iget-object v4, v0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v31, v11

    const-string/jumbo v11, "nandswap end for "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "(pid "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") ret:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " adj:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1513
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " sadj:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1512
    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v3, v5, v2

    .line 1516
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->-$$Nest$smreadZramBdstat()[J

    move-result-object v16

    .line 1517
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->-$$Nest$smreadZramWritebackLimit()J

    move-result-wide v32

    .line 1518
    invoke-static {v14}, Landroid/os/Process;->getRss(I)[J

    move-result-object v11

    .line 1519
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v12

    const/4 v7, 0x0

    .line 1521
    aget-wide v34, v11, v7

    aget-wide v36, v21, v7
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_168} :catch_36f
    .catchall {:try_start_100 .. :try_end_168} :catchall_368

    sub-long v0, v34, v36

    move-wide/from16 v34, v0

    sub-long v0, v12, v22

    sub-long v36, v32, v19

    const-wide/16 v38, 0x4

    move-wide/from16 v40, v12

    mul-long v12, v36, v38

    const-wide/16 v36, 0x0

    cmp-long v2, v9, v36

    if-lez v2, :cond_1a4

    move-object v2, v15

    move-wide/from16 v36, v3

    move v3, v14

    const-wide/16 v24, 0x40

    move/from16 v4, p2

    move-wide/from16 v42, v5

    const/16 v17, 0x3

    move/from16 v5, p3

    move/from16 v27, v14

    const/16 v26, 0x1

    move v14, v7

    move-wide/from16 v6, v36

    move-wide/from16 v29, v9

    const/16 v38, 0x2

    move-object v10, v8

    move-wide v8, v0

    move-object/from16 v45, v10

    move-object/from16 v46, v11

    move/from16 v44, v28

    move/from16 v28, v31

    move-wide v10, v12

    .line 1526
    :try_start_1a0
    invoke-static/range {v2 .. v11}, Lcom/android/server/am/PerProcessNandswap$NandswapLogger;->saveSwapOutLog(Ljava/lang/String;IIIJJJ)V

    goto :goto_1bd

    :cond_1a4
    move-wide/from16 v36, v3

    move-wide/from16 v42, v5

    move-object/from16 v45, v8

    move-wide/from16 v29, v9

    move-object/from16 v46, v11

    move/from16 v27, v14

    move/from16 v44, v28

    move/from16 v28, v31

    const/16 v17, 0x3

    const-wide/16 v24, 0x40

    const/16 v26, 0x1

    const/16 v38, 0x2

    move v14, v7

    .line 1529
    :goto_1bd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "E|Nandswap: d_rss="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v34

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "KB, d_zramFree="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "KB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 1531
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b4

    move-object/from16 v2, p0

    .line 1532
    iget-object v3, v2, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "nandswap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v45

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v27

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") action:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p2

    move-wide/from16 v7, v40

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", adj:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p1

    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1533
    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", state:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v44

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v27, v15

    move-object/from16 v11, v46

    aget-wide v14, v11, v26

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v14, v11, v38

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v14, v11, v17

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, v36

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v34, v11, v26

    aget-wide v36, v21, v26

    move-wide/from16 v40, v7

    sub-long v6, v34, v36

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, v11, v38

    aget-wide v34, v21, v38

    sub-long v6, v6, v34

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, v11, v17

    aget-wide v34, v21, v17

    sub-long v6, v6, v34

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1532
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c2

    :cond_2b4
    move-object/from16 v2, p0

    move-object/from16 v9, p1

    move/from16 v5, v27

    move/from16 v10, v44

    move-object/from16 v11, v46

    move-object/from16 v27, v15

    move-wide/from16 v14, v36

    :goto_2c2
    if-eqz v18, :cond_343

    if-eqz v16, :cond_343

    const v0, 0x13d6e8

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Object;

    .line 1543
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aput-object v27, v1, v26

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v38

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v17

    const/4 v3, 0x4

    .line 1544
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x8

    .line 1545
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x9

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0xa

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0xb

    .line 1546
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0xc

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0xd

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    .line 1543
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1549
    :cond_343
    iget-object v0, v2, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmProcLock(Lcom/android/server/am/PerProcessNandswap;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v1

    monitor-enter v1
    :try_end_34a
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_34a} :catch_373
    .catchall {:try_start_1a0 .. :try_end_34a} :catchall_36c

    :try_start_34a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    move-wide/from16 v3, v42

    .line 1550
    iput-wide v3, v9, Lcom/android/server/am/ProcessRecord;->lastNandswapTime:J

    .line 1551
    monitor-exit v1
    :try_end_352
    .catchall {:try_start_34a .. :try_end_352} :catchall_362

    :try_start_352
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    if-nez p4, :cond_35e

    .line 1553
    iget-object v0, v2, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    move-object/from16 v1, v27

    invoke-static {v0, v5, v1, v11}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$mupdateLastNandswapStats(Lcom/android/server/am/PerProcessNandswap;ILjava/lang/String;[J)V
    :try_end_35e
    .catch Ljava/lang/Exception; {:try_start_352 .. :try_end_35e} :catch_373
    .catchall {:try_start_352 .. :try_end_35e} :catchall_36c

    .line 1558
    :cond_35e
    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v29

    :catchall_362
    move-exception v0

    .line 1551
    :try_start_363
    monitor-exit v1
    :try_end_364
    .catchall {:try_start_363 .. :try_end_364} :catchall_362

    :try_start_364
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
    :try_end_368
    .catch Ljava/lang/Exception; {:try_start_364 .. :try_end_368} :catch_373
    .catchall {:try_start_364 .. :try_end_368} :catchall_36c

    :catchall_368
    move-wide/from16 v29, v9

    const-wide/16 v24, 0x40

    :catchall_36c
    move-wide/from16 v16, v29

    goto :goto_37e

    :catch_36f
    move-wide/from16 v29, v9

    const-wide/16 v24, 0x40

    :catch_373
    move-wide/from16 v16, v29

    goto :goto_384

    :catchall_376
    const-wide/16 v24, 0x40

    goto :goto_37e

    :catch_379
    const-wide/16 v24, 0x40

    goto :goto_384

    :catchall_37c
    move-wide/from16 v24, v4

    .line 1558
    :goto_37e
    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v16

    :catch_382
    move-wide/from16 v24, v4

    :goto_384
    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v16
.end method

.method public final getNandswapNonActivityAppType(Lcom/android/server/am/ProcessRecord;II)I
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1327
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->-$$Nest$smisWritebackQuotaAvailable()Z

    move-result v2

    .line 1328
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    .line 1329
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v3, :cond_12

    return v5

    .line 1336
    :cond_12
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-ne v6, v3, :cond_3a

    .line 1337
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1338
    iget-object v0, v0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping nandswap as process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is system_server."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return v5

    :cond_3a
    const-string v6, "com.sec.android.app.launcher"

    .line 1343
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_206

    const-string v6, "com.samsung.android.honeyboard"

    .line 1344
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_206

    const-string v6, "com.android.systemui"

    .line 1345
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    goto/16 :goto_206

    .line 1349
    :cond_54
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v1

    const-string v6, "Skipping nandswap for process"

    move/from16 v7, p3

    if-eq v1, v7, :cond_80

    .line 1350
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 1351
    iget-object v0, v0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adj is changed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    return v5

    .line 1357
    :cond_80
    iget-object v1, v0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    move/from16 v7, p2

    invoke-static {v1, v7}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$misExpandAction(Lcom/android/server/am/PerProcessNandswap;I)Z

    move-result v1

    const/4 v7, 0x1

    if-eqz v1, :cond_af

    if-nez v2, :cond_ad

    .line 1359
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 1360
    iget-object v0, v0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " expandedAction and !needWriteback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ac
    return v5

    :cond_ad
    move v1, v7

    goto :goto_b0

    :cond_af
    move v1, v5

    .line 1370
    :goto_b0
    invoke-static {v3}, Landroid/os/Process;->getRss(I)[J

    move-result-object v6

    .line 1372
    aget-wide v8, v6, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    const-string v9, "Skipping nandswap for process "

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-nez v8, :cond_f2

    aget-wide v14, v6, v7

    cmp-long v8, v14, v10

    if-nez v8, :cond_f2

    aget-wide v14, v6, v13

    cmp-long v8, v14, v10

    if-nez v8, :cond_f2

    aget-wide v14, v6, v12

    cmp-long v8, v14, v10

    if-nez v8, :cond_f2

    .line 1374
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 1375
    iget-object v0, v0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with no memory usage. Dead?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f1
    return v5

    :cond_f2
    if-eqz v1, :cond_f7

    .line 1381
    aget-wide v14, v6, v12

    goto :goto_f9

    :cond_f7
    aget-wide v14, v6, v13

    :goto_f9
    const-wide/16 v16, 0x2710

    const-wide/16 v18, 0x4e20

    if-eqz v1, :cond_102

    move-wide/from16 v20, v16

    goto :goto_104

    :cond_102
    move-wide/from16 v20, v18

    :goto_104
    if-eqz v1, :cond_10a

    const-string/jumbo v8, "swap"

    goto :goto_10c

    :cond_10a
    const-string v8, "anon"

    :goto_10c
    cmp-long v20, v14, v20

    const-string v7, "KB."

    const-string v10, "; "

    if-gez v20, :cond_140

    .line 1387
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_13f

    .line 1388
    iget-object v0, v0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " RSS is too small: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13f
    return v5

    .line 1394
    :cond_140
    iget-object v11, v0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    iget-object v11, v11, Lcom/android/server/am/PerProcessNandswap;->mLastNandswapStats:Ljava/util/LinkedHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/PerProcessNandswap$LastNandswapStats;

    if-eqz v11, :cond_184

    .line 1395
    invoke-virtual {v11}, Lcom/android/server/am/PerProcessNandswap$LastNandswapStats;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_184

    .line 1396
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_183

    .line 1397
    iget-object v14, v0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ignore lastNandswapStats because it is old stats for name: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " stats.name: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1398
    invoke-virtual {v11}, Lcom/android/server/am/PerProcessNandswap$LastNandswapStats;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1397
    invoke-static {v14, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_183
    const/4 v11, 0x0

    :cond_184
    if-eqz v11, :cond_1f8

    .line 1404
    invoke-virtual {v11}, Lcom/android/server/am/PerProcessNandswap$LastNandswapStats;->getRssAfterNandswap()[J

    move-result-object v5

    if-eqz v1, :cond_18f

    const-wide/16 v14, 0x0

    goto :goto_195

    .line 1405
    :cond_18f
    aget-wide v14, v6, v13

    aget-wide v21, v5, v13

    sub-long v14, v14, v21

    .line 1406
    :goto_195
    aget-wide v21, v6, v12

    aget-wide v23, v5, v12

    sub-long v21, v21, v23

    if-eqz v1, :cond_1a2

    .line 1407
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(J)J

    move-result-wide v23

    goto :goto_1ac

    .line 1408
    :cond_1a2
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(J)J

    move-result-wide v25

    add-long v23, v23, v25

    :goto_1ac
    move-wide/from16 v12, v23

    if-eqz v1, :cond_1b1

    goto :goto_1b3

    :cond_1b1
    move-wide/from16 v16, v18

    :goto_1b3
    cmp-long v18, v12, v16

    if-gtz v18, :cond_1e4

    .line 1413
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1e2

    .line 1414
    iget-object v0, v0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " abs delta is too small: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e2
    const/4 v0, 0x0

    return v0

    :cond_1e4
    add-long v14, v14, v21

    cmp-long v7, v14, v16

    if-gez v7, :cond_1f8

    if-eqz v1, :cond_1f7

    const-wide/16 v7, 0x0

    cmp-long v2, v21, v7

    if-gez v2, :cond_1f7

    .line 1422
    iget-object v0, v0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v0, v3, v4, v6}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$mupdateLastNandswapStats(Lcom/android/server/am/PerProcessNandswap;ILjava/lang/String;[J)V

    :cond_1f7
    const/4 v2, 0x0

    :cond_1f8
    if-eqz v2, :cond_200

    if-eqz v1, :cond_1fe

    const/4 v0, 0x2

    return v0

    :cond_1fe
    const/4 v0, 0x3

    return v0

    :cond_200
    if-eqz v1, :cond_204

    const/4 v0, 0x0

    return v0

    :cond_204
    const/4 v0, 0x1

    return v0

    :cond_206
    :goto_206
    move v0, v5

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    .line 1204
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetWRITEBACK_ENABLED(Lcom/android/server/am/PerProcessNandswap;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-string/jumbo v0, "ppNandswap"

    .line 1207
    invoke-static {v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getReclaimerMode(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v2

    .line 1209
    :goto_17
    iget v3, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_13c

    if-eq v3, v1, :cond_13c

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eq v3, v4, :cond_3d

    if-eq v3, v5, :cond_3d

    .line 1318
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ff

    .line 1251
    :cond_3d
    iget-object v3, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v3}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$misAppLaunch(Lcom/android/server/am/PerProcessNandswap;)Z

    move-result v3

    .line 1252
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v5, :cond_49

    move v6, v1

    goto :goto_4a

    :cond_49
    move v6, v2

    .line 1254
    :goto_4a
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 1255
    iget-object v7, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "activity_app_msg: delayed:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " app launch:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    if-eqz v6, :cond_88

    .line 1265
    iget-object v7, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v7}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapActivityAppDelayed(Lcom/android/server/am/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_77} :catch_1e7

    .line 1266
    :try_start_77
    iget-object v8, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v8}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapActivityAppDelayed(Lcom/android/server/am/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 1267
    monitor-exit v7

    goto :goto_9c

    :catchall_85
    move-exception v0

    monitor-exit v7
    :try_end_87
    .catchall {:try_start_77 .. :try_end_87} :catchall_85

    :try_start_87
    throw v0

    .line 1269
    :cond_88
    iget-object v7, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v7}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapActivityApp(Lcom/android/server/am/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8f} :catch_1e7

    .line 1270
    :try_start_8f
    iget-object v8, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v8}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapActivityApp(Lcom/android/server/am/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 1271
    monitor-exit v7
    :try_end_9c
    .catchall {:try_start_8f .. :try_end_9c} :catchall_139

    .line 1275
    :goto_9c
    :try_start_9c
    invoke-virtual {p0, v8}, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->canDoNandswapProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v7

    if-nez v7, :cond_a6

    move v0, v2

    move v3, v0

    goto/16 :goto_120

    :cond_a6
    if-eqz v0, :cond_af

    const-string/jumbo v0, "skip ppNandswap"

    .line 1280
    invoke-static {v0, v2}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    goto :goto_b1

    :cond_af
    if-eqz v3, :cond_b4

    :cond_b1
    :goto_b1
    move v3, v1

    move v0, v2

    goto :goto_120

    :cond_b4
    const/16 v0, 0x9

    .line 1286
    invoke-virtual {p0, v8, v0, v5, v1}, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->doNandswapApp(Lcom/android/server/am/ProcessRecord;IIZ)J

    move-result-wide v9

    .line 1288
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_118

    .line 1289
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activity_app_msg: delayed:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " iter: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " pid:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ret:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " pending apps:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v5}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapActivityApp(Lcom/android/server/am/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1291
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " delayed apps:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v5}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapActivityAppDelayed(Lcom/android/server/am/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1292
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1289
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_118
    const-wide/16 v5, 0x0

    cmp-long v0, v9, v5

    if-lez v0, :cond_b1

    move v0, v1

    move v3, v2

    :goto_120
    if-eqz v0, :cond_129

    .line 1306
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v0, v8, v4}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$mrequestChangePPRState(Lcom/android/server/am/PerProcessNandswap;Lcom/android/server/am/ProcessRecord;I)V

    goto/16 :goto_1ff

    :cond_129
    if-eqz v3, :cond_132

    .line 1309
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v0, v8}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$mnandswapActivityAppDelayed(Lcom/android/server/am/PerProcessNandswap;Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_1ff

    .line 1312
    :cond_132
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v0, v8, v2, v1}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$mrequestChangePPRState(Lcom/android/server/am/PerProcessNandswap;Lcom/android/server/am/ProcessRecord;II)V
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_137} :catch_1e7

    goto/16 :goto_1ff

    :catchall_139
    move-exception v0

    .line 1271
    :try_start_13a
    monitor-exit v7
    :try_end_13b
    .catchall {:try_start_13a .. :try_end_13b} :catchall_139

    :try_start_13b
    throw v0

    .line 1213
    :cond_13c
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 1214
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 1215
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1216
    iget-object v7, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v7}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$misAppLaunch(Lcom/android/server/am/PerProcessNandswap;)Z

    move-result v7

    .line 1217
    iget v8, p1, Landroid/os/Message;->what:I

    if-ne v8, v1, :cond_14f

    goto :goto_150

    :cond_14f
    move v1, v2

    :goto_150
    if-eqz v1, :cond_15f

    .line 1220
    iget-object v8, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v8}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapNonActivityAppDelayed(Lcom/android/server/am/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    goto :goto_16b

    .line 1222
    :cond_15f
    iget-object v8, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v8}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapNonActivityApp(Lcom/android/server/am/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 1225
    :goto_16b
    iget-object v9, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v9}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmProcLock(Lcom/android/server/am/PerProcessNandswap;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v9

    monitor-enter v9
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_172} :catch_1e7

    :try_start_172
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1226
    iput-wide v5, v8, Lcom/android/server/am/ProcessRecord;->lastNandswapTime:J

    .line 1227
    monitor-exit v9
    :try_end_178
    .catchall {:try_start_172 .. :try_end_178} :catchall_1e1

    :try_start_178
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1229
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1c6

    .line 1230
    iget-object v5, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "non_activity_app_msg: delayed:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "(pid "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") action:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " app launch:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isPprSuppressed:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1230
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c6
    if-eqz v7, :cond_1ce

    if-nez v1, :cond_1ff

    .line 1237
    invoke-virtual {p0, v8, v4, v3}, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->nandswapNonActivityAppDelayed(Lcom/android/server/am/ProcessRecord;II)V

    goto :goto_1ff

    :cond_1ce
    if-eqz v0, :cond_1d7

    const-string/jumbo v0, "skip ppNandswap"

    .line 1240
    invoke-static {v0, v2}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    goto :goto_1ff

    .line 1242
    :cond_1d7
    invoke-virtual {p0, v8, v4, v3}, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->getNandswapNonActivityAppType(Lcom/android/server/am/ProcessRecord;II)I

    move-result v0

    if-eqz v0, :cond_1ff

    .line 1244
    invoke-virtual {p0, v8, v4, v0, v2}, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->doNandswapApp(Lcom/android/server/am/ProcessRecord;IIZ)J
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_178 .. :try_end_1e0} :catch_1e7

    goto :goto_1ff

    :catchall_1e1
    move-exception v0

    .line 1227
    :try_start_1e2
    monitor-exit v9
    :try_end_1e3
    .catchall {:try_start_1e2 .. :try_end_1e3} :catchall_1e1

    :try_start_1e3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
    :try_end_1e7
    .catch Ljava/lang/Exception; {:try_start_1e3 .. :try_end_1e7} :catch_1e7

    .line 1322
    :catch_1e7
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ff
    :goto_1ff
    return-void
.end method

.method public final nandswapNonActivityAppDelayed(Lcom/android/server/am/ProcessRecord;II)V
    .registers 8

    .line 1441
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapNonActivityAppDelayed(Lcom/android/server/am/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x14

    cmp-long v0, v0, v2

    if-gez v0, :cond_31

    .line 1442
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapNonActivityAppDelayed(Lcom/android/server/am/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1443
    iget-object p1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {p1}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmNandswapHandler(Lcom/android/server/am/PerProcessNandswap;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-static {p0}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$fgetmNandswapHandler(Lcom/android/server/am/PerProcessNandswap;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    .line 1444
    invoke-virtual {p0, v0, p3, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    const-wide/16 p2, 0x1388

    .line 1443
    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3e

    .line 1448
    :cond_31
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 1449
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    const-string p1, "Skipping send NANDSWAP_NON_ACTIVITY_APP_DELAYED_MSG"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    :goto_3e
    return-void
.end method
