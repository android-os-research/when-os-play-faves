.class Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;
.super Ljava/lang/Object;
.source "SemIWCMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemIWCMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnDiscInfoHist"
.end annotation


# instance fields
.field private history:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 2403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2404
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->history:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public addOrUpdate(ILjava/lang/String;ILjava/lang/String;JI)V
    .registers 22

    move-object v1, p0

    move v0, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    .line 2418
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 2419
    monitor-enter p0

    :try_start_13
    const-string v2, "SemIWCMonitor"

    .line 2420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConnDiscInfoHist Size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->history:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dir="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bss="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {v4}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 2421
    invoke-virtual {v4, v10}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " nId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " configKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " t="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " by="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2420
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    monitor-exit p0

    goto :goto_6d

    :catchall_6a
    move-exception v0

    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_13 .. :try_end_6c} :catchall_6a

    throw v0

    :cond_6d
    :goto_6d
    if-nez v10, :cond_70

    return-void

    :cond_70
    const-string v2, "any"

    .line 2430
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 2431
    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->getByConfigKey(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;

    move-result-object v2

    goto :goto_9b

    .line 2433
    :cond_7d
    invoke-virtual {p0, v10}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->get(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;

    move-result-object v2

    if-nez v2, :cond_88

    .line 2435
    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->getByConfigKey(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;

    move-result-object v2

    goto :goto_9b

    :cond_88
    const-string v3, ""

    .line 2436
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9b

    const-string v2, "SemIWCMonitor"

    const-string v3, "Cannot find history with bssid or config key"

    .line 2437
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    invoke-virtual {p0, v11}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->get(I)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;

    move-result-object v2

    .line 2442
    :cond_9b
    :goto_9b
    monitor-enter p0

    if-nez v2, :cond_e0

    .line 2445
    :try_start_9e
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->history:Ljava/util/LinkedList;

    new-instance v13, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;

    move-object v2, v13

    move v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;-><init>(ILjava/lang/String;ILjava/lang/String;JI)V

    invoke-virtual {v12, v13}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const-string v0, "SemIWCMonitor"

    .line 2446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new ConnDiscInfo created "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {v3}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    invoke-virtual {v3, v10}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " nId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_163

    :catchall_dd
    move-exception v0

    goto/16 :goto_173

    :cond_e0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_133

    .line 2449
    iput-object v10, v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->bssid:Ljava/lang/String;

    if-nez v9, :cond_112

    const-string v0, "SemIWCMonitor"

    .line 2451
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Time difference = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->connTime:J

    sub-long v9, v7, v9

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    iget-wide v9, v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->connTime:J

    sub-long v9, v7, v9

    const-wide/16 v12, 0x2328

    cmp-long v0, v9, v12

    if-gez v0, :cond_10f

    .line 2453
    iput v4, v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->connTriggeredBy:I

    goto :goto_114

    .line 2455
    :cond_10f
    iput v3, v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->connTriggeredBy:I

    goto :goto_114

    .line 2458
    :cond_112
    iput v9, v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->connTriggeredBy:I

    .line 2460
    :goto_114
    iput v11, v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->networkId:I

    .line 2461
    iput-wide v7, v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->connTime:J

    .line 2462
    iput-object v6, v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->configKey:Ljava/lang/String;

    const-string v0, "SemIWCMonitor"

    .line 2464
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conn triggeredBy set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->connTriggeredBy:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_159

    :cond_133
    if-ne v0, v3, :cond_159

    .line 2466
    iput-object v10, v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->bssid:Ljava/lang/String;

    .line 2467
    iput v11, v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->networkId:I

    .line 2468
    iput-wide v7, v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->discTime:J

    .line 2469
    iput-object v6, v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->configKey:Ljava/lang/String;

    if-eqz v9, :cond_141

    .line 2471
    iput v9, v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->discTriggeredBy:I

    :cond_141
    const-string v0, "SemIWCMonitor"

    .line 2473
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disc triggeredBy set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->discTriggeredBy:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    :cond_159
    :goto_159
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->history:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 2477
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->history:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2480
    :goto_163
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->history:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_171

    .line 2481
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->history:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 2483
    :cond_171
    monitor-exit p0

    return-void

    :goto_173
    monitor-exit p0
    :try_end_174
    .catchall {:try_start_9e .. :try_end_174} :catchall_dd

    throw v0
.end method

.method public declared-synchronized get(I)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;
    .registers 6

    monitor-enter p0

    .line 2496
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->history:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;

    .line 2497
    iget v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->networkId:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1f

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    if-ne v2, p1, :cond_7

    .line 2498
    monitor-exit p0

    return-object v1

    :cond_1c
    const/4 p1, 0x0

    .line 2501
    monitor-exit p0

    return-object p1

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;
    .registers 5

    monitor-enter p0

    .line 2487
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->history:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;

    .line 2488
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->bssid:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_22

    if-eqz v2, :cond_7

    .line 2489
    monitor-exit p0

    return-object v1

    :cond_1f
    const/4 p1, 0x0

    .line 2492
    monitor-exit p0

    return-object p1

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;
    .registers 3

    .line 2522
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->get(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    .line 2525
    :cond_7
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->getByConfigKey(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;

    move-result-object p0

    if-eqz p0, :cond_e

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getBssidList()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 2539
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2540
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->history:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;

    .line 2541
    iget-object v2, v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 2543
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    monitor-exit p0

    return-object v0

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getByConfigKey(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;
    .registers 10

    monitor-enter p0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 2507
    :try_start_4
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->history:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;

    .line 2508
    iget-object v5, v4, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->configKey:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2509
    iget-wide v5, v4, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->discTime:J

    cmp-long v7, v1, v5

    if-gez v7, :cond_27

    :goto_24
    move-object v0, v4

    move-wide v1, v5

    goto :goto_a

    .line 2512
    :cond_27
    iget-wide v5, v4, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->connTime:J
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_30

    cmp-long v7, v1, v5

    if-gez v7, :cond_a

    goto :goto_24

    .line 2518
    :cond_2e
    monitor-exit p0

    return-object v0

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getKeyList()Ljava/lang/String;
    .registers 8

    monitor-enter p0

    .line 2547
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2548
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->history:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;

    .line 2549
    iget-wide v3, v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->connTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_26

    const-string v3, "[C]"

    .line 2550
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2b

    :cond_26
    const-string v3, "[D]"

    .line 2552
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2554
    :goto_2b
    iget-object v2, v2, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->configKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 2556
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3c

    monitor-exit p0

    return-object v0

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPreviousConnection(Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;
    .registers 5

    monitor-enter p0

    if-eqz p1, :cond_2e

    .line 2532
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->history:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2e

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->history:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->history:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1c

    goto :goto_2e

    .line 2535
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->history:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return-object p1

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2e
    :goto_2e
    const/4 p1, 0x0

    .line 2533
    monitor-exit p0

    return-object p1
.end method

.method public update(Landroid/net/wifi/WifiConfiguration;)V
    .registers 4

    .line 2408
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnDiscInfoHist update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProfileKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " networkId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemIWCMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    :cond_2a
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProfileKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->getByConfigKey(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 2413
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->networkId:I

    :cond_38
    return-void
.end method
