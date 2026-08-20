.class public Lcom/android/server/pm/SnapshotStatistics;
.super Ljava/lang/Object;
.source "SnapshotStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/SnapshotStatistics$Stats;,
        Lcom/android/server/pm/SnapshotStatistics$BinMap;
    }
.end annotation


# static fields
.field public static final SNAPSHOT_BIG_BUILD_TIME_US:I = 0x2710

.field public static final SNAPSHOT_BUILD_REPORT_LIMIT:I = 0xa

.field public static final SNAPSHOT_LONG_TICKS:I = 0x2760

.field public static final SNAPSHOT_REPORTABLE_BUILD_TIME_US:I = 0x7530

.field public static final SNAPSHOT_SHORT_LIFETIME:I = 0x5

.field public static final SNAPSHOT_TICK_INTERVAL_MS:I = 0xea60

.field public static final US_IN_MS:I = 0x3e8


# instance fields
.field public mEventsReported:I

.field public mHandler:Landroid/os/Handler;

.field public mLastBuildTime:J

.field public final mLock:Ljava/lang/Object;

.field public mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

.field public mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

.field public mTicks:I

.field public final mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

.field public final mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmTimeBins(Lcom/android/server/pm/SnapshotStatistics;)Lcom/android/server/pm/SnapshotStatistics$BinMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics;->mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUseBins(Lcom/android/server/pm/SnapshotStatistics;)Lcom/android/server/pm/SnapshotStatistics$BinMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics;->mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleMessage(Lcom/android/server/pm/SnapshotStatistics;Landroid/os/Message;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/SnapshotStatistics;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mEventsReported:I

    .line 118
    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mTicks:I

    const/4 v1, 0x0

    .line 123
    iput-object v1, p0, Lcom/android/server/pm/SnapshotStatistics;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    .line 484
    iput-wide v2, p0, Lcom/android/server/pm/SnapshotStatistics;->mLastBuildTime:J

    .line 492
    new-instance v2, Lcom/android/server/pm/SnapshotStatistics$BinMap;

    const/4 v3, 0x7

    new-array v4, v3, [I

    fill-array-data v4, :array_5c

    invoke-direct {v2, v4}, Lcom/android/server/pm/SnapshotStatistics$BinMap;-><init>([I)V

    iput-object v2, p0, Lcom/android/server/pm/SnapshotStatistics;->mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    .line 493
    new-instance v2, Lcom/android/server/pm/SnapshotStatistics$BinMap;

    new-array v3, v3, [I

    fill-array-data v3, :array_6e

    invoke-direct {v2, v3}, Lcom/android/server/pm/SnapshotStatistics$BinMap;-><init>([I)V

    iput-object v2, p0, Lcom/android/server/pm/SnapshotStatistics;->mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    .line 496
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v2

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 497
    iput-object v4, p0, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 498
    new-instance v5, Lcom/android/server/pm/SnapshotStatistics$Stats;

    invoke-direct {v5, p0, v2, v3, v1}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;JLcom/android/server/pm/SnapshotStatistics$Stats-IA;)V

    aput-object v5, v4, v0

    const/16 v4, 0xa

    new-array v4, v4, [Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 499
    iput-object v4, p0, Lcom/android/server/pm/SnapshotStatistics;->mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 500
    new-instance v5, Lcom/android/server/pm/SnapshotStatistics$Stats;

    invoke-direct {v5, p0, v2, v3, v1}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;JLcom/android/server/pm/SnapshotStatistics$Stats-IA;)V

    aput-object v5, v4, v0

    .line 503
    new-instance v0, Lcom/android/server/pm/SnapshotStatistics$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/SnapshotStatistics$1;-><init>(Lcom/android/server/pm/SnapshotStatistics;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mHandler:Landroid/os/Handler;

    .line 509
    invoke-virtual {p0}, Lcom/android/server/pm/SnapshotStatistics;->scheduleTick()V

    return-void

    nop

    :array_5c
    .array-data 4
        0x1
        0x2
        0x5
        0xa
        0x14
        0x32
        0x64
    .end array-data

    :array_6e
    .array-data 4
        0x1
        0x2
        0x5
        0xa
        0x14
        0x32
        0x64
    .end array-data
.end method


# virtual methods
.method public final corked()V
    .registers 4

    .line 565
    iget-object v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/SnapshotStatistics;->mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mcorked(Lcom/android/server/pm/SnapshotStatistics$Stats;)V

    .line 567
    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    aget-object p0, p0, v2

    invoke-static {p0}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mcorked(Lcom/android/server/pm/SnapshotStatistics$Stats;)V

    .line 568
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;JIIZ)V
    .registers 20

    move-object v0, p0

    .line 632
    iget-object v1, v0, Lcom/android/server/pm/SnapshotStatistics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 633
    :try_start_4
    iget-object v2, v0, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, [Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 634
    new-instance v2, Lcom/android/server/pm/SnapshotStatistics$Stats;

    const/4 v3, 0x0

    aget-object v4, v9, v3

    const/4 v5, 0x0

    invoke-direct {v2, p0, v4, v5}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;Lcom/android/server/pm/SnapshotStatistics$Stats;Lcom/android/server/pm/SnapshotStatistics$Stats-IA;)V

    aput-object v2, v9, v3

    .line 635
    iget-object v2, v0, Lcom/android/server/pm/SnapshotStatistics;->mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, [Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 636
    new-instance v2, Lcom/android/server/pm/SnapshotStatistics$Stats;

    aget-object v4, v10, v3

    invoke-direct {v2, p0, v4, v5}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;Lcom/android/server/pm/SnapshotStatistics$Stats;Lcom/android/server/pm/SnapshotStatistics$Stats-IA;)V

    aput-object v2, v10, v3

    .line 637
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_73

    .line 638
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s Unrecorded-hits: %d  Cork-level: %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v3

    const/4 v3, 0x1

    .line 639
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x2

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v11, p1

    .line 638
    invoke-virtual {p1, v1, v2, v4}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 640
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v8, "stats"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, v9

    move-object v7, v10

    .line 641
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/SnapshotStatistics;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J[Lcom/android/server/pm/SnapshotStatistics$Stats;[Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/lang/String;)V

    if-eqz p7, :cond_5a

    return-void

    .line 645
    :cond_5a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v8, "times"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, v9

    move-object v7, v10

    .line 646
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/SnapshotStatistics;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J[Lcom/android/server/pm/SnapshotStatistics$Stats;[Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/lang/String;)V

    .line 647
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v8, "usage"

    .line 648
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/SnapshotStatistics;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J[Lcom/android/server/pm/SnapshotStatistics$Stats;[Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/lang/String;)V

    return-void

    :catchall_73
    move-exception v0

    .line 637
    :try_start_74
    monitor-exit v1
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;J[Lcom/android/server/pm/SnapshotStatistics$Stats;[Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/lang/String;)V
    .registers 20

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    const/4 v2, 0x0

    .line 610
    aget-object v3, v0, v2

    const/4 v8, 0x1

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-object/from16 v9, p7

    invoke-static/range {v3 .. v9}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mdump(Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V

    move v3, v2

    .line 611
    :goto_11
    array-length v4, v1

    if-ge v3, v4, :cond_24

    .line 612
    aget-object v5, v1, v3

    if-eqz v5, :cond_21

    const/4 v10, 0x0

    move-object v6, p1

    move-object v7, p2

    move-wide v8, p3

    move-object/from16 v11, p7

    .line 613
    invoke-static/range {v5 .. v11}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mdump(Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 616
    :cond_24
    :goto_24
    array-length v1, v0

    if-ge v2, v1, :cond_37

    .line 617
    aget-object v3, v0, v2

    if-eqz v3, :cond_34

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-object/from16 v9, p7

    .line 618
    invoke-static/range {v3 .. v9}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mdump(Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_37
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 516
    invoke-virtual {p0}, Lcom/android/server/pm/SnapshotStatistics;->tick()V

    .line 517
    invoke-virtual {p0}, Lcom/android/server/pm/SnapshotStatistics;->scheduleTick()V

    return-void
.end method

.method public final rebuild(JJI)V
    .registers 23

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v8, p5

    sub-long v3, p3, v1

    long-to-int v9, v3

    .line 538
    iget-object v10, v0, Lcom/android/server/pm/SnapshotStatistics;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 539
    :try_start_c
    iput-wide v1, v0, Lcom/android/server/pm/SnapshotStatistics;->mLastBuildTime:J

    .line 541
    iget-object v1, v0, Lcom/android/server/pm/SnapshotStatistics;->mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    div-int/lit16 v2, v9, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/server/pm/SnapshotStatistics$BinMap;->getBin(I)I

    move-result v11

    .line 542
    iget-object v1, v0, Lcom/android/server/pm/SnapshotStatistics;->mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    invoke-virtual {v1, v8}, Lcom/android/server/pm/SnapshotStatistics$BinMap;->getBin(I)I

    move-result v12

    const/16 v1, 0x2710

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-lt v9, v1, :cond_24

    move v15, v13

    goto :goto_25

    :cond_24
    move v15, v14

    :goto_25
    const/4 v1, 0x5

    if-gt v8, v1, :cond_2b

    move/from16 v16, v13

    goto :goto_2d

    :cond_2b
    move/from16 v16, v14

    .line 546
    :goto_2d
    iget-object v1, v0, Lcom/android/server/pm/SnapshotStatistics;->mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    aget-object v1, v1, v14

    move v2, v9

    move/from16 v3, p5

    move v4, v11

    move v5, v12

    move v6, v15

    move/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mrebuild(Lcom/android/server/pm/SnapshotStatistics$Stats;IIIIZZ)V

    .line 547
    iget-object v1, v0, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    aget-object v1, v1, v14

    move v2, v9

    move/from16 v3, p5

    move v4, v11

    move v5, v12

    move v6, v15

    move/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mrebuild(Lcom/android/server/pm/SnapshotStatistics$Stats;IIIIZZ)V

    const/16 v1, 0x7530

    if-lt v9, v1, :cond_5a

    .line 549
    iget v1, v0, Lcom/android/server/pm/SnapshotStatistics;->mEventsReported:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/android/server/pm/SnapshotStatistics;->mEventsReported:I

    const/16 v0, 0xa

    if-ge v1, v0, :cond_5a

    goto :goto_5b

    :cond_5a
    move v13, v14

    .line 553
    :goto_5b
    monitor-exit v10
    :try_end_5c
    .catchall {:try_start_c .. :try_end_5c} :catchall_64

    if-eqz v13, :cond_63

    .line 557
    div-int/lit16 v9, v9, 0x3e8

    invoke-static {v9, v8}, Lcom/android/server/EventLogTags;->writePmSnapshotRebuild(II)V

    :cond_63
    return-void

    :catchall_64
    move-exception v0

    .line 553
    :try_start_65
    monitor-exit v10
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v0
.end method

.method public final scheduleTick()V
    .registers 4

    .line 524
    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final shift([Lcom/android/server/pm/SnapshotStatistics$Stats;J)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 577
    aget-object v1, p1, v0

    invoke-static {v1, p2, p3}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mcomplete(Lcom/android/server/pm/SnapshotStatistics$Stats;J)V

    .line 578
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-lez v1, :cond_14

    add-int/lit8 v2, v1, -0x1

    .line 579
    aget-object v2, p1, v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 581
    :cond_14
    new-instance v1, Lcom/android/server/pm/SnapshotStatistics$Stats;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p3, v2}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;JLcom/android/server/pm/SnapshotStatistics$Stats-IA;)V

    aput-object v1, p1, v0

    return-void
.end method

.method public final tick()V
    .registers 5

    .line 595
    iget-object v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 596
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v1

    .line 597
    iget v3, p0, Lcom/android/server/pm/SnapshotStatistics;->mTicks:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/pm/SnapshotStatistics;->mTicks:I

    .line 598
    rem-int/lit16 v3, v3, 0x2760

    if-nez v3, :cond_16

    .line 599
    iget-object v3, p0, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/SnapshotStatistics;->shift([Lcom/android/server/pm/SnapshotStatistics$Stats;J)V

    .line 601
    :cond_16
    iget-object v3, p0, Lcom/android/server/pm/SnapshotStatistics;->mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/SnapshotStatistics;->shift([Lcom/android/server/pm/SnapshotStatistics$Stats;J)V

    const/4 v1, 0x0

    .line 602
    iput v1, p0, Lcom/android/server/pm/SnapshotStatistics;->mEventsReported:I

    .line 603
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public final usToMs(I)I
    .registers 2

    .line 130
    div-int/lit16 p1, p1, 0x3e8

    return p1
.end method
