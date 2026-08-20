.class public Lcom/android/server/am/HealthStatsBatteryStatsWriter;
.super Ljava/lang/Object;
.source "HealthStatsBatteryStatsWriter.java"


# instance fields
.field public final mNowRealtimeMs:J

.field public final mNowUptimeMs:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowUptimeMs:J

    return-void
.end method


# virtual methods
.method public final addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V
    .registers 10

    if-eqz p3, :cond_14

    const/4 v0, 0x0

    .line 463
    invoke-virtual {p3, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v1

    iget-wide v2, p0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 464
    invoke-virtual {p3, v2, v3, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    div-long/2addr v2, v4

    .line 463
    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addTimer(IIJ)V

    :cond_14
    return-void
.end method

.method public final addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V
    .registers 12

    if-eqz p4, :cond_19

    .line 474
    new-instance v0, Landroid/os/health/TimerStat;

    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    iget-wide v3, p0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 475
    invoke-virtual {p4, v3, v4, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-direct {v0, v2, v3, v4}, Landroid/os/health/TimerStat;-><init>(IJ)V

    .line 474
    invoke-virtual {p1, p2, p3, v0}, Landroid/os/health/HealthStatsWriter;->addTimers(ILjava/lang/String;Landroid/os/health/TimerStat;)V

    :cond_19
    return-void
.end method

.method public writePid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pid;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/16 p0, 0x4e21

    .line 384
    iget v0, p2, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 387
    iget-wide v0, p2, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    const/16 p0, 0x4e22

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 390
    iget-wide v0, p2, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    return-void
.end method

.method public writePkg(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pkg;)V
    .registers 7

    .line 428
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 429
    new-instance v2, Landroid/os/health/HealthStatsWriter;

    sget-object v3, Landroid/os/health/ServiceHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v2, v3}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 430
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writeServ(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pkg$Serv;)V

    const v3, 0x9c41

    .line 431
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    goto :goto_c

    .line 436
    :cond_35
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_41
    :goto_41
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_68

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 437
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Counter;

    if-eqz v0, :cond_41

    const v1, 0x9c42

    .line 440
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v0

    int-to-long v2, v0

    .line 439
    invoke-virtual {p1, v1, p2, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurements(ILjava/lang/String;J)V

    goto :goto_41

    :cond_68
    return-void
.end method

.method public writeProc(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Proc;)V
    .registers 6

    const/4 p0, 0x0

    .line 399
    invoke-virtual {p2, p0}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v0

    const/16 v2, 0x7531

    .line 398
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 403
    invoke-virtual {p2, p0}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v0

    const/16 v2, 0x7532

    .line 402
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 407
    invoke-virtual {p2, p0}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x7533

    .line 406
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 411
    invoke-virtual {p2, p0}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x7534

    .line 410
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 415
    invoke-virtual {p2, p0}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x7535

    .line 414
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 419
    invoke-virtual {p2, p0}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v0

    const/16 p0, 0x7536

    .line 418
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    return-void
.end method

.method public writeServ(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pkg$Serv;)V
    .registers 6

    const/4 p0, 0x0

    .line 451
    invoke-virtual {p2, p0}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v0

    int-to-long v0, v0

    const v2, 0xc351

    .line 450
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 455
    invoke-virtual {p2, p0}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result p0

    int-to-long v0, p0

    const p0, 0xc352

    .line 454
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    return-void
.end method

.method public writeUid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats;Landroid/os/BatteryStats$Uid;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 65
    iget-wide v4, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const/4 v8, 0x0

    .line 66
    invoke-virtual {v2, v4, v5, v8}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v4

    div-long/2addr v4, v6

    const/16 v9, 0x2711

    .line 65
    invoke-virtual {v1, v9, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 69
    iget-wide v4, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowUptimeMs:J

    mul-long/2addr v4, v6

    .line 70
    invoke-virtual {v2, v4, v5, v8}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v4

    div-long/2addr v4, v6

    const/16 v9, 0x2712

    .line 69
    invoke-virtual {v1, v9, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 73
    iget-wide v4, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    mul-long/2addr v4, v6

    .line 74
    invoke-virtual {v2, v4, v5, v8}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v4

    div-long/2addr v4, v6

    const/16 v9, 0x2713

    .line 73
    invoke-virtual {v1, v9, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 78
    iget-wide v4, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowUptimeMs:J

    mul-long/2addr v4, v6

    .line 79
    invoke-virtual {v2, v4, v5, v8}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v4

    div-long/2addr v4, v6

    const/16 v2, 0x2714

    .line 78
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 86
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v9, 0x1

    if-eqz v4, :cond_8c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 87
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 88
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 91
    invoke-virtual {v4, v9}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    const/16 v11, 0x2715

    .line 92
    invoke-virtual {v0, v1, v11, v10, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    .line 95
    invoke-virtual {v4, v8}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    const/16 v11, 0x2716

    .line 96
    invoke-virtual {v0, v1, v11, v10, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    .line 99
    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const/16 v9, 0x2717

    .line 100
    invoke-virtual {v0, v1, v9, v10, v5}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    const/16 v5, 0x12

    .line 103
    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/16 v5, 0x2718

    .line 104
    invoke-virtual {v0, v1, v5, v10, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    goto :goto_4b

    .line 109
    :cond_8c
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_98
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    const/16 v10, 0x2719

    .line 110
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v0, v1, v10, v11, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    goto :goto_98

    .line 115
    :cond_b6
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    const/16 v10, 0x271a

    .line 116
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v0, v1, v10, v11, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    goto :goto_c2

    .line 120
    :cond_e0
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v10, v8

    :goto_e9
    if-ge v10, v4, :cond_12d

    .line 123
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    const/16 v12, -0x2710

    if-ne v11, v12, :cond_103

    const/16 v11, 0x271b

    .line 128
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v12

    .line 127
    invoke-virtual {v0, v1, v11, v12}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    goto :goto_12a

    :cond_103
    const/16 v12, -0x2711

    if-ne v11, v12, :cond_117

    const/16 v11, 0x2751

    .line 131
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v12

    .line 130
    invoke-virtual {v0, v1, v11, v12}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    goto :goto_12a

    :cond_117
    const/16 v12, 0x271c

    .line 133
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 134
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v13

    .line 133
    invoke-virtual {v0, v1, v12, v11, v13}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    :goto_12a
    add-int/lit8 v10, v10, 0x1

    goto :goto_e9

    .line 139
    :cond_12d
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v10, v8

    :goto_136
    if-ge v10, v4, :cond_158

    .line 142
    new-instance v11, Landroid/os/health/HealthStatsWriter;

    sget-object v12, Landroid/os/health/PidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v11, v12}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 143
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryStats$Uid$Pid;

    invoke-virtual {v0, v11, v12}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writePid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pid;)V

    const/16 v12, 0x271d

    .line 144
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13, v11}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_136

    .line 149
    :cond_158
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_164
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 150
    new-instance v10, Landroid/os/health/HealthStatsWriter;

    sget-object v11, Landroid/os/health/ProcessHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v10, v11}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 151
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid$Proc;

    invoke-virtual {v0, v10, v11}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writeProc(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Proc;)V

    const/16 v11, 0x271e

    .line 152
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v11, v4, v10}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    goto :goto_164

    .line 157
    :cond_18c
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_198
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 158
    new-instance v10, Landroid/os/health/HealthStatsWriter;

    sget-object v11, Landroid/os/health/PackageHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v10, v11}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 159
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v0, v10, v11}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writePkg(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pkg;)V

    const/16 v11, 0x271f

    .line 160
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v11, v4, v10}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    goto :goto_198

    .line 163
    :cond_1c0
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    if-eqz v2, :cond_206

    const/16 v4, 0x2720

    .line 167
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v12

    .line 166
    invoke-virtual {v1, v4, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v4, 0x2721

    .line 170
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v12

    .line 169
    invoke-virtual {v1, v4, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 173
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    array-length v12, v4

    move v13, v8

    const-wide/16 v14, 0x0

    :goto_1e8
    if-ge v13, v12, :cond_1f4

    aget-object v10, v4, v13

    .line 174
    invoke-virtual {v10, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v10

    add-long/2addr v14, v10

    add-int/lit8 v13, v13, 0x1

    goto :goto_1e8

    :cond_1f4
    const/16 v4, 0x2722

    .line 176
    invoke-virtual {v1, v4, v14, v15}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v4, 0x2723

    .line 179
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v10

    .line 178
    invoke-virtual {v1, v4, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 182
    :cond_206
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    if-eqz v2, :cond_24c

    const/16 v4, 0x2724

    .line 186
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v10

    .line 185
    invoke-virtual {v1, v4, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v4, 0x2725

    .line 189
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v10

    .line 188
    invoke-virtual {v1, v4, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 192
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    array-length v10, v4

    move v11, v8

    const-wide/16 v12, 0x0

    :goto_22e
    if-ge v11, v10, :cond_23a

    aget-object v14, v4, v11

    .line 193
    invoke-virtual {v14, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v14

    add-long/2addr v12, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_22e

    :cond_23a
    const/16 v4, 0x2726

    .line 195
    invoke-virtual {v1, v4, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v4, 0x2727

    .line 198
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v10

    .line 197
    invoke-virtual {v1, v4, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 201
    :cond_24c
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    if-eqz v2, :cond_292

    const/16 v4, 0x2728

    .line 205
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v10

    .line 204
    invoke-virtual {v1, v4, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v4, 0x2729

    .line 208
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v10

    .line 207
    invoke-virtual {v1, v4, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 211
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    array-length v10, v4

    move v11, v8

    const-wide/16 v12, 0x0

    :goto_274
    if-ge v11, v10, :cond_280

    aget-object v14, v4, v11

    .line 212
    invoke-virtual {v14, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v14

    add-long/2addr v12, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_274

    :cond_280
    const/16 v4, 0x272a

    .line 214
    invoke-virtual {v1, v4, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v4, 0x272b

    .line 217
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v10

    .line 216
    invoke-virtual {v1, v4, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    :cond_292
    const/16 v2, 0x272c

    .line 221
    iget-wide v10, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    mul-long/2addr v10, v6

    .line 222
    invoke-virtual {v3, v10, v11, v8}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v10

    div-long/2addr v10, v6

    .line 221
    invoke-virtual {v1, v2, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v2, 0x272d

    .line 225
    iget-wide v10, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    mul-long/2addr v10, v6

    .line 226
    invoke-virtual {v3, v10, v11, v8}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v10

    div-long/2addr v10, v6

    .line 225
    invoke-virtual {v1, v2, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v2, 0x272e

    .line 230
    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v4

    iget-wide v10, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    mul-long/2addr v10, v6

    .line 231
    invoke-virtual {v3, v10, v11, v8}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v10

    div-long/2addr v10, v6

    .line 229
    invoke-virtual {v1, v2, v4, v10, v11}, Landroid/os/health/HealthStatsWriter;->addTimer(IIJ)V

    const/16 v2, 0x272f

    .line 234
    iget-wide v10, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    mul-long/2addr v10, v6

    .line 235
    invoke-virtual {v3, v10, v11, v8}, Landroid/os/BatteryStats$Uid;->getWifiMulticastTime(JI)J

    move-result-wide v10

    div-long/2addr v10, v6

    .line 234
    invoke-virtual {v1, v2, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v2, 0x2730

    .line 238
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v2, 0x2731

    .line 241
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v2, 0x2732

    .line 244
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v2, 0x2733

    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v2, 0x2734

    .line 251
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    .line 250
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v2, 0x2735

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v2, 0x2736

    .line 258
    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    .line 257
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v2, 0x2737

    .line 262
    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    .line 261
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v2, 0x2738

    const/4 v4, 0x4

    .line 266
    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v10

    .line 265
    invoke-virtual {v0, v1, v2, v10}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v2, 0x2739

    .line 270
    invoke-virtual {v3, v5}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v10

    .line 269
    invoke-virtual {v0, v1, v2, v10}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v2, 0x273a

    const/4 v10, 0x3

    .line 274
    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v11

    .line 273
    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v2, 0x273b

    const/4 v11, 0x6

    .line 278
    invoke-virtual {v3, v11}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v11

    .line 277
    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v2, 0x273c

    .line 281
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v11

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v0, 0x273d

    .line 285
    invoke-virtual {v3, v8, v8}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v2

    int-to-long v11, v2

    .line 284
    invoke-virtual {v1, v0, v11, v12}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x273e

    .line 290
    invoke-virtual {v3, v9, v8}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v2

    int-to-long v11, v2

    .line 289
    invoke-virtual {v1, v0, v11, v12}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x273f

    .line 295
    invoke-virtual {v3, v5, v8}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v2

    int-to-long v11, v2

    .line 294
    invoke-virtual {v1, v0, v11, v12}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x2740

    .line 300
    invoke-virtual {v3, v8, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v11

    .line 299
    invoke-virtual {v1, v0, v11, v12}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x2741

    .line 305
    invoke-virtual {v3, v9, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v11

    .line 304
    invoke-virtual {v1, v0, v11, v12}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x2742

    .line 310
    invoke-virtual {v3, v5, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v11

    .line 309
    invoke-virtual {v1, v0, v11, v12}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x2743

    .line 315
    invoke-virtual {v3, v10, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v11

    .line 314
    invoke-virtual {v1, v0, v11, v12}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x2744

    .line 320
    invoke-virtual {v3, v4, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v11

    .line 319
    invoke-virtual {v1, v0, v11, v12}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x2745

    const/4 v2, 0x5

    .line 325
    invoke-virtual {v3, v2, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v11

    .line 324
    invoke-virtual {v1, v0, v11, v12}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x2746

    .line 330
    invoke-virtual {v3, v8, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v11

    .line 329
    invoke-virtual {v1, v0, v11, v12}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x2747

    .line 335
    invoke-virtual {v3, v9, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v11

    .line 334
    invoke-virtual {v1, v0, v11, v12}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x2748

    .line 340
    invoke-virtual {v3, v5, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v11

    .line 339
    invoke-virtual {v1, v0, v11, v12}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x2749

    .line 345
    invoke-virtual {v3, v10, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v9

    .line 344
    invoke-virtual {v1, v0, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x274a

    .line 350
    invoke-virtual {v3, v4, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    .line 349
    invoke-virtual {v1, v0, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x274b

    .line 355
    invoke-virtual {v3, v2, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    .line 354
    invoke-virtual {v1, v0, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x274d

    .line 360
    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v2

    .line 361
    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v4

    .line 359
    invoke-virtual {v1, v0, v2, v4, v5}, Landroid/os/health/HealthStatsWriter;->addTimer(IIJ)V

    const/16 v0, 0x274e

    .line 365
    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v4

    div-long/2addr v4, v6

    .line 364
    invoke-virtual {v1, v0, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x274f

    .line 369
    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v2

    div-long/2addr v2, v6

    .line 368
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x2750

    const-wide/16 v2, 0x0

    .line 372
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    return-void
.end method
