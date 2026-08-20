.class public final Lcom/android/server/am/Pageboost$PageboostHandler;
.super Landroid/os/Handler;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageboostHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2357
    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16

    .line 2371
    :try_start_0
    iget p0, p1, Landroid/os/Message;->what:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_346

    const/4 v0, 0x2

    const/4 v1, 0x3

    const-string/jumbo v2, "pid"

    const/16 v3, 0xbb8

    const/4 v4, 0x0

    const-string/jumbo v5, "pkg"

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch p0, :pswitch_data_362

    :pswitch_12
    goto/16 :goto_345

    .line 2625
    :pswitch_14
    :try_start_14
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmBootFileManager()Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 2626
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmBootFileManager()Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->munlockAllFiles()V

    .line 2628
    :cond_21
    invoke-static {v4}, Lcom/android/server/am/Pageboost;->-$$Nest$sfputmBootFileManager(Lcom/android/server/am/Pageboost$VramdiskMlockManager;)V

    goto/16 :goto_345

    :pswitch_26
    const-string p0, "boot_file"

    .line 2620
    invoke-static {p0}, Lcom/android/server/am/Pageboost$VramdiskXMLParser;->getString(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p0

    .line 2621
    new-instance v0, Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/Pageboost$VramdiskMlockManager;-><init>(Ljava/util/LinkedList;)V

    invoke-static {v0}, Lcom/android/server/am/Pageboost;->-$$Nest$sfputmBootFileManager(Lcom/android/server/am/Pageboost$VramdiskMlockManager;)V

    .line 2622
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmBootFileManager()Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->mlockAllFiles()V

    goto/16 :goto_345

    .line 2614
    :pswitch_3d
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "stop alp by timeout"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    goto/16 :goto_345

    .line 2611
    :pswitch_4c
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    goto/16 :goto_345

    .line 2602
    :pswitch_51
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object p0

    if-nez p0, :cond_59

    goto/16 :goto_345

    .line 2605
    :cond_59
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    .line 2606
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "alp"

    .line 2607
    invoke-static {p0, v0}, Lcom/android/server/am/Pageboost;->prefetchPackage(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_345

    .line 2477
    :pswitch_68
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 2478
    invoke-static {p0}, Lcom/android/server/am/Pageboost$MemUsageCollector;->collectMemUsage(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    goto/16 :goto_345

    .line 2461
    :pswitch_71
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object p0

    if-nez p0, :cond_79

    goto/16 :goto_345

    .line 2465
    :cond_79
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    .line 2466
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object p0

    if-eqz p0, :cond_345

    .line 2468
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getMemUsage()Lcom/android/server/am/Pageboost$MemUsage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$MemUsage;->getTotal()I

    move-result v0

    if-nez v0, :cond_345

    .line 2469
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getGameApp()Z

    move-result v0

    const/16 v1, 0x12

    if-eqz v0, :cond_a1

    const v0, 0x88b8

    .line 2470
    invoke-static {v1, p0, v0}, Lcom/android/server/am/Pageboost;->-$$Nest$smsendMessageWithObject(ILjava/lang/Object;I)V

    goto/16 :goto_345

    :cond_a1
    const/16 v0, 0x1388

    .line 2472
    invoke-static {v1, p0, v0}, Lcom/android/server/am/Pageboost;->-$$Nest$smsendMessageWithObject(ILjava/lang/Object;I)V

    goto/16 :goto_345

    .line 2574
    :pswitch_a8
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object p0

    if-nez p0, :cond_b0

    goto/16 :goto_345

    .line 2577
    :cond_b0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v1, "status"

    .line 2578
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2579
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2580
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2582
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v3

    if-eqz v3, :cond_345

    if-ne v1, v7, :cond_e4

    .line 2585
    iget v0, v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    if-eqz v0, :cond_da

    .line 2586
    invoke-static {p0, v6}, Lcom/android/server/am/Pageboost;->-$$Nest$smgetPidFromPackageName(Ljava/lang/String;Z)I

    move-result p0

    if-eqz p0, :cond_da

    move v2, p0

    .line 2589
    :cond_da
    iget p0, v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    if-eq p0, v2, :cond_345

    .line 2590
    iput v2, v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 2591
    iput v7, v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    goto/16 :goto_345

    :cond_e4
    if-ne v1, v0, :cond_345

    .line 2594
    iget p0, v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    if-ne p0, v2, :cond_345

    .line 2595
    iput v6, v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 2596
    iput v6, v3, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    goto/16 :goto_345

    .line 2450
    :pswitch_f0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/Pageboost$IoRecord;

    .line 2451
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$IoRecord;->getResultFromKernel()J

    .line 2452
    invoke-static {p0}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->captureFinished(Lcom/android/server/am/Pageboost$IoRecord;)V

    .line 2454
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$IoRecord;->getApp()Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object p0

    if-eqz p0, :cond_345

    .line 2456
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmAppDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->storeApp(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/am/Pageboost$PageboostAppList;Lcom/android/server/am/Pageboost$PageboostAppInfo;)V

    goto/16 :goto_345

    .line 2415
    :pswitch_10d
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object p0

    if-nez p0, :cond_115

    goto/16 :goto_345

    .line 2419
    :cond_115
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    .line 2422
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v0

    .line 2423
    invoke-static {v0}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->needCapture(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v1

    if-eqz v1, :cond_345

    .line 2425
    iget v1, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 2426
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record App IO : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_149} :catch_346

    if-nez v1, :cond_16b

    :goto_14b
    const/16 v2, 0xa

    if-ge v6, v2, :cond_16b

    .line 2431
    :try_start_14f
    invoke-static {p0, v7}, Lcom/android/server/am/Pageboost;->-$$Nest$smgetPidFromPackageName(Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_156

    goto :goto_16b

    :cond_156
    const-wide/16 v2, 0x32

    .line 2435
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_15b} :catch_15e

    add-int/lit8 v6, v6, 0x1

    goto :goto_14b

    :catch_15e
    move-exception p0

    .line 2439
    :try_start_15f
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to sleep"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_16b
    :goto_16b
    if-lez v1, :cond_345

    .line 2444
    invoke-static {v0, v1}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->capture(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    goto/16 :goto_345

    .line 2571
    :pswitch_172
    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->sendData()V

    goto/16 :goto_345

    .line 2490
    :pswitch_177
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object p0

    if-nez p0, :cond_17f

    goto/16 :goto_345

    .line 2493
    :cond_17f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    .line 2494
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "launchtime"

    .line 2495
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v8, "0,0,0"

    .line 2499
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2500
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    const-string v9, "Launcher App Execution"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmPredictor()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v5
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_1a1} :catch_346

    const-string v9, ","

    if-eqz v5, :cond_234

    .line 2504
    :try_start_1a5
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v4

    if-eqz v4, :cond_22d

    .line 2505
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/am/Pageboost$PageboostAppList;->remove(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v5

    if-eqz v5, :cond_22d

    .line 2506
    iget v5, v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    if-ne v5, v7, :cond_1bf

    .line 2507
    iput v0, v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    :cond_1bf
    if-eqz v2, :cond_1fd

    .line 2509
    invoke-virtual {v4}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getPid()I

    move-result v0

    if-eq v2, v0, :cond_1fd

    .line 2510
    invoke-virtual {v4, v2}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setPid(I)V

    if-lez v3, :cond_1d3

    const/16 v0, 0x2710

    if-ge v3, v0, :cond_1d3

    .line 2513
    invoke-virtual {v4, v3}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->updateExecTime(I)V

    :cond_1d3
    new-array v0, v1, [J

    .line 2517
    invoke-virtual {v4, v0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getIoinfo([J)V

    aget-wide v10, v0, v6

    const-wide/16 v12, -0x1

    cmp-long v2, v10, v12

    if-eqz v2, :cond_1fe

    const-string v2, ""

    move-object v8, v2

    move v2, v6

    :goto_1e4
    if-ge v2, v1, :cond_1fe

    .line 2520
    aget-wide v10, v0, v2

    .line 2521
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e4

    :cond_1fd
    move v3, v6

    .line 2527
    :cond_1fe
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmPredictor()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/android/server/am/Pageboost$PageboostPredictor;->checkPredictHit(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z

    move-result v0

    if-eqz v0, :cond_226

    .line 2528
    iget v0, v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    add-int/2addr v0, v7

    iput v0, v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    .line 2529
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prefetch Hit! : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2533
    :cond_226
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v0

    invoke-virtual {v0, v4, v7}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    .line 2535
    :cond_22d
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmPredictor()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$PageboostPredictor;->finalizePredict()V

    :cond_234
    if-eqz v4, :cond_345

    if-lez v3, :cond_260

    .line 2541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppEntry,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    goto/16 :goto_345

    :cond_260
    if-nez v3, :cond_345

    .line 2543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppReEntry,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    goto/16 :goto_345

    .line 2485
    :pswitch_284
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    const/16 p0, 0xc

    .line 2486
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/server/am/Pageboost;->-$$Nest$smsendMessageWithBundle(ILandroid/os/Bundle;I)V

    goto/16 :goto_345

    .line 2481
    :pswitch_292
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    const/16 p0, 0xb

    .line 2482
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/server/am/Pageboost;->-$$Nest$smsendMessageWithBundle(ILandroid/os/Bundle;I)V

    goto/16 :goto_345

    .line 2558
    :pswitch_2a0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_345

    .line 2560
    invoke-static {p0}, Lcom/android/server/am/Pageboost;->-$$Nest$smremovePackage(Ljava/lang/String;)V

    goto/16 :goto_345

    .line 2552
    :pswitch_2ab
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_345

    .line 2554
    invoke-static {p0}, Lcom/android/server/am/Pageboost;->-$$Nest$smaddPackage(Ljava/lang/String;)V

    goto/16 :goto_345

    .line 2564
    :pswitch_2b6
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object p0

    if-nez p0, :cond_2be

    goto/16 :goto_345

    .line 2567
    :cond_2be
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmAppDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->storeAppLRU(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/am/Pageboost$PageboostAppList;)V

    .line 2568
    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->keepLastData()V

    goto/16 :goto_345

    .line 2397
    :pswitch_2ce
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetPAGEBOOST_IO_PREFETCH_ENABLED()Z

    move-result p0

    if-nez p0, :cond_2d6

    goto/16 :goto_345

    .line 2400
    :cond_2d6
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object p0

    if-nez p0, :cond_2dd

    goto :goto_345

    .line 2403
    :cond_2dd
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    .line 2405
    invoke-static {p0, v7}, Lcom/android/server/am/Pageboost;->-$$Nest$smgetPidFromPackageName(Ljava/lang/String;Z)I

    move-result v0

    if-lez v0, :cond_345

    .line 2407
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object p0

    .line 2408
    invoke-static {p0}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->needCapture(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v1

    if-eqz v1, :cond_345

    .line 2409
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "capturing App IO"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    invoke-static {p0, v0}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->capture(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    goto :goto_345

    .line 2549
    :pswitch_302
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$smrealupdatePackages()V

    goto :goto_345

    .line 2387
    :pswitch_306
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetPAGEBOOST_IO_PREFETCH_ENABLED()Z

    move-result p0

    if-eqz p0, :cond_345

    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetPAGEBOOST_VRAMDISK_WITHOUT_PREDICT()Z

    move-result p0

    if-eqz p0, :cond_313

    goto :goto_345

    .line 2390
    :cond_313
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 2391
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher Page Up"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmPredictor()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v0

    if-eqz v0, :cond_345

    .line 2393
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmPredictor()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/Pageboost$PageboostPredictor;->predict(Lcom/android/server/am/Pageboost$PageboostAppList;)V

    goto :goto_345

    .line 2377
    :pswitch_32e
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetPAGEBOOST_IO_PREFETCH_ENABLED()Z

    move-result p0

    if-nez p0, :cond_335

    goto :goto_345

    .line 2380
    :cond_335
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    .line 2383
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/Pageboost$PageboostAppList;

    const/16 v0, 0x190

    .line 2384
    invoke-static {v1, p0, v0}, Lcom/android/server/am/Pageboost;->-$$Nest$smsendMessageWithObject(ILjava/lang/Object;I)V

    goto :goto_345

    .line 2374
    :pswitch_342
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$smdelayedInitPageboost()V
    :try_end_345
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_345} :catch_346

    :cond_345
    :goto_345
    return-void

    .line 2633
    :catch_346
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_362
    .packed-switch 0x1
        :pswitch_342
        :pswitch_32e
        :pswitch_306
        :pswitch_302
        :pswitch_2ce
        :pswitch_2b6
        :pswitch_2ab
        :pswitch_2a0
        :pswitch_292
        :pswitch_284
        :pswitch_177
        :pswitch_177
        :pswitch_172
        :pswitch_10d
        :pswitch_f0
        :pswitch_a8
        :pswitch_71
        :pswitch_68
        :pswitch_51
        :pswitch_4c
        :pswitch_3d
        :pswitch_12
        :pswitch_26
        :pswitch_14
    .end packed-switch
.end method
