.class public Lcom/samsung/audio/Smps;
.super Ljava/lang/Object;
.source "Smps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/audio/Smps$TuneSet;
    }
.end annotation


# static fields
.field public static final blacklist PANING_DISABLE:I = 0x0

.field public static final blacklist PANING_ENABLE:I = 0x1

.field public static final blacklist SMPS_ERR_INDEX:I = 0x0

.field public static final blacklist SMPS_ERR_INSUFF_MEM:I = -0x2

.field public static final blacklist SMPS_ERR_INVALID_ARG:I = -0x3

.field public static final blacklist SMPS_ERR_MAX_SOURCESET:I = -0x5

.field public static final blacklist SMPS_ERR_NOT_OPEN_FILE:I = -0x4

.field public static final blacklist SMPS_ERR_UNSUPPORT_FORMAT:I = -0x1

.field public static blacklist SMPS_LOADLIBRARY:Z = false

.field public static final blacklist SMPS_OK:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SmpsJava"

.field public static final blacklist TYPE_ATTACK:I = 0x0

.field public static final blacklist TYPE_DRAG:I = 0x1

.field public static final blacklist TYPE_RELEASE:I = 0x2


# instance fields
.field private blacklist SMPS_ID:J

.field private blacklist TIMER_PERIOD:J

.field private blacklist mIsAudiotrackRunning:Z

.field private blacklist mPenWrited:Z

.field private blacklist mSleepTimer:Ljava/util/Timer;

.field private blacklist mTimerTask:Ljava/util/TimerTask;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPenWrited(Lcom/samsung/audio/Smps;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/audio/Smps;->mPenWrited:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSleepTimer(Lcom/samsung/audio/Smps;)Ljava/util/Timer;
    .registers 1

    iget-object p0, p0, Lcom/samsung/audio/Smps;->mSleepTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPenWrited(Lcom/samsung/audio/Smps;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/audio/Smps;->mPenWrited:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstopTimer(Lcom/samsung/audio/Smps;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/audio/Smps;->stopTimer()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 187
    const-string v0, "SmpsJava"

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/audio/Smps;->SMPS_LOADLIBRARY:Z

    .line 198
    :try_start_5
    const-string v2, "Smps loadLibrary : SmpsFastTrack"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v2, "smpsft.smps.samsung"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 200
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/audio/Smps;->SMPS_LOADLIBRARY:Z
    :try_end_12
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_12} :catch_13

    .line 204
    goto :goto_30

    .line 201
    :catch_13
    move-exception v2

    .line 202
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Smps is disabled in this model - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sput-boolean v1, Lcom/samsung/audio/Smps;->SMPS_LOADLIBRARY:Z

    .line 205
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_30
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/audio/Smps;->SMPS_ID:J

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/audio/Smps;->mIsAudiotrackRunning:Z

    .line 519
    iput-boolean v0, p0, Lcom/samsung/audio/Smps;->mPenWrited:Z

    .line 520
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/audio/Smps;->mTimerTask:Ljava/util/TimerTask;

    .line 521
    iput-object v0, p0, Lcom/samsung/audio/Smps;->mSleepTimer:Ljava/util/Timer;

    .line 522
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/samsung/audio/Smps;->TIMER_PERIOD:J

    return-void
.end method

.method private native blacklist deinit(J)I
.end method

.method private native blacklist gen_sounds(J[BFFJFI)I
.end method

.method private native blacklist gen_tofasttrack(JFFJFI)I
.end method

.method private native blacklist get_src_num(J)I
.end method

.method private native blacklist get_volumeTable([F[F)I
.end method

.method private native blacklist get_volumeTableSize(I)I
.end method

.method private native blacklist init(IIIII)J
.end method

.method private native blacklist reg_src_byfiles(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native blacklist set_src(JI)I
.end method

.method private native blacklist set_thickness(JD)I
.end method

.method private native blacklist set_tuneset(JIDDIDIDDDDDD)I
.end method

.method private blacklist set_tuneset(JILcom/samsung/audio/Smps$TuneSet;)I
    .registers 33
    .param p1, "id"    # J
    .param p3, "index"    # I
    .param p4, "tune"    # Lcom/samsung/audio/Smps$TuneSet;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    .line 217
    iget-wide v5, v0, Lcom/samsung/audio/Smps$TuneSet;->mgain:D

    iget-wide v7, v0, Lcom/samsung/audio/Smps$TuneSet;->pdepth:D

    iget v9, v0, Lcom/samsung/audio/Smps$TuneSet;->rough_enable:I

    iget-wide v10, v0, Lcom/samsung/audio/Smps$TuneSet;->rough:D

    iget v12, v0, Lcom/samsung/audio/Smps$TuneSet;->sharp_enable:I

    iget-wide v13, v0, Lcom/samsung/audio/Smps$TuneSet;->sharp:D

    move-object/from16 v25, v1

    move-wide/from16 v26, v2

    iget-wide v1, v0, Lcom/samsung/audio/Smps$TuneSet;->wgain:D

    move-wide v15, v1

    iget-wide v1, v0, Lcom/samsung/audio/Smps$TuneSet;->pgain:D

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lcom/samsung/audio/Smps$TuneSet;->avol:D

    move-wide/from16 v19, v1

    iget-wide v1, v0, Lcom/samsung/audio/Smps$TuneSet;->dvol:D

    move-wide/from16 v21, v1

    iget-wide v1, v0, Lcom/samsung/audio/Smps$TuneSet;->rvol:D

    move-wide/from16 v23, v1

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-direct/range {v1 .. v24}, Lcom/samsung/audio/Smps;->set_tuneset(JIDDIDIDDDDDD)I

    move-result v1

    return v1
.end method

.method private native blacklist set_volume(JD)I
.end method

.method private declared-synchronized blacklist startTimer()V
    .registers 8

    monitor-enter p0

    .line 525
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/samsung/audio/Smps;->mPenWrited:Z

    .line 527
    iget-object v0, p0, Lcom/samsung/audio/Smps;->mTimerTask:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 528
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 529
    iput-object v1, p0, Lcom/samsung/audio/Smps;->mTimerTask:Ljava/util/TimerTask;

    .line 532
    .end local p0    # "this":Lcom/samsung/audio/Smps;
    :cond_e
    iget-object v0, p0, Lcom/samsung/audio/Smps;->mSleepTimer:Ljava/util/Timer;

    if-eqz v0, :cond_17

    .line 533
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 534
    iput-object v1, p0, Lcom/samsung/audio/Smps;->mSleepTimer:Ljava/util/Timer;

    .line 537
    :cond_17
    iget-object v0, p0, Lcom/samsung/audio/Smps;->mTimerTask:Ljava/util/TimerTask;

    if-nez v0, :cond_22

    .line 538
    new-instance v0, Lcom/samsung/audio/Smps$1;

    invoke-direct {v0, p0}, Lcom/samsung/audio/Smps$1;-><init>(Lcom/samsung/audio/Smps;)V

    iput-object v0, p0, Lcom/samsung/audio/Smps;->mTimerTask:Ljava/util/TimerTask;

    .line 553
    :cond_22
    iget-object v0, p0, Lcom/samsung/audio/Smps;->mSleepTimer:Ljava/util/Timer;

    if-nez v0, :cond_3d

    .line 554
    new-instance v1, Ljava/util/Timer;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/Timer;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/audio/Smps;->mSleepTimer:Ljava/util/Timer;

    .line 555
    iget-object v2, p0, Lcom/samsung/audio/Smps;->mTimerTask:Ljava/util/TimerTask;
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_3f

    if-eqz v2, :cond_3d

    .line 557
    :try_start_32
    iget-wide v5, p0, Lcom/samsung/audio/Smps;->TIMER_PERIOD:J

    move-wide v3, v5

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_38} :catch_39
    .catchall {:try_start_32 .. :try_end_38} :catchall_3f

    .line 560
    goto :goto_3d

    .line 558
    :catch_39
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3a
    invoke-direct {p0}, Lcom/samsung/audio/Smps;->stopTimer()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3f

    .line 563
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3d
    :goto_3d
    monitor-exit p0

    return-void

    .line 524
    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native blacklist start_fasttrack(J)V
.end method

.method private declared-synchronized blacklist stopTimer()V
    .registers 3

    monitor-enter p0

    .line 566
    :try_start_1
    iget-object v0, p0, Lcom/samsung/audio/Smps;->mTimerTask:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 567
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 568
    iput-object v1, p0, Lcom/samsung/audio/Smps;->mTimerTask:Ljava/util/TimerTask;

    .line 571
    .end local p0    # "this":Lcom/samsung/audio/Smps;
    :cond_b
    iget-object v0, p0, Lcom/samsung/audio/Smps;->mSleepTimer:Ljava/util/Timer;

    if-eqz v0, :cond_14

    .line 572
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 573
    iput-object v1, p0, Lcom/samsung/audio/Smps;->mSleepTimer:Ljava/util/Timer;

    .line 575
    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/audio/Smps;->mPenWrited:Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 576
    monitor-exit p0

    return-void

    .line 565
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native blacklist stop_fasttrack(J)V
.end method


# virtual methods
.method public blacklist deinit()I
    .registers 7

    .line 264
    sget-boolean v0, Lcom/samsung/audio/Smps;->SMPS_LOADLIBRARY:Z

    if-nez v0, :cond_6

    .line 265
    const/4 v0, -0x3

    return v0

    .line 267
    :cond_6
    const/4 v0, -0x3

    .line 269
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/samsung/audio/Smps;->mIsAudiotrackRunning:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    .line 270
    invoke-virtual {p0}, Lcom/samsung/audio/Smps;->stop_fasttrack()V

    .line 273
    :cond_f
    iget-wide v1, p0, Lcom/samsung/audio/Smps;->SMPS_ID:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_24

    .line 274
    invoke-direct {p0, v1, v2}, Lcom/samsung/audio/Smps;->deinit(J)I

    move-result v0

    .line 275
    const-string v1, "SmpsJava"

    const-string v2, "Smps deinit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iput-wide v3, p0, Lcom/samsung/audio/Smps;->SMPS_ID:J

    .line 278
    :cond_24
    return v0
.end method

.method public blacklist gen_sounds([BFFJFI)I
    .registers 20
    .param p1, "pDst"    # [B
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "time"    # J
    .param p6, "pressure"    # F
    .param p7, "type"    # I

    .line 344
    move-object v10, p0

    sget-boolean v0, Lcom/samsung/audio/Smps;->SMPS_LOADLIBRARY:Z

    if-nez v0, :cond_7

    .line 345
    const/4 v0, 0x0

    return v0

    .line 347
    :cond_7
    const/4 v11, 0x0

    .line 348
    .local v11, "ret":I
    iget-wide v0, v10, Lcom/samsung/audio/Smps;->SMPS_ID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2a

    .line 349
    iget-boolean v0, v10, Lcom/samsung/audio/Smps;->mIsAudiotrackRunning:Z

    if-nez v0, :cond_17

    .line 350
    invoke-virtual {p0}, Lcom/samsung/audio/Smps;->start_fasttrack()V

    .line 352
    :cond_17
    iget-wide v1, v10, Lcom/samsung/audio/Smps;->SMPS_ID:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/samsung/audio/Smps;->gen_sounds(J[BFFJFI)I

    move-result v11

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/samsung/audio/Smps;->mPenWrited:Z

    .line 355
    :cond_2a
    return v11
.end method

.method public blacklist gen_tofasttrack(FFJFI)I
    .registers 18
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "time"    # J
    .param p5, "pressure"    # F
    .param p6, "type"    # I

    .line 366
    move-object v9, p0

    sget-boolean v0, Lcom/samsung/audio/Smps;->SMPS_LOADLIBRARY:Z

    if-nez v0, :cond_7

    .line 367
    const/4 v0, 0x0

    return v0

    .line 369
    :cond_7
    const/4 v10, 0x0

    .line 370
    .local v10, "ret":I
    iget-wide v0, v9, Lcom/samsung/audio/Smps;->SMPS_ID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_28

    .line 371
    iget-boolean v0, v9, Lcom/samsung/audio/Smps;->mIsAudiotrackRunning:Z

    if-nez v0, :cond_17

    .line 372
    invoke-virtual {p0}, Lcom/samsung/audio/Smps;->start_fasttrack()V

    .line 374
    :cond_17
    iget-wide v1, v9, Lcom/samsung/audio/Smps;->SMPS_ID:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/samsung/audio/Smps;->gen_tofasttrack(JFFJFI)I

    move-result v10

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/samsung/audio/Smps;->mPenWrited:Z

    .line 377
    :cond_28
    return v10
.end method

.method public blacklist get_VolTable([D[D)V
    .registers 19
    .param p1, "spkTable"    # [D
    .param p2, "headsetTable"    # [D

    .line 490
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-boolean v3, Lcom/samsung/audio/Smps;->SMPS_LOADLIBRARY:Z

    if-nez v3, :cond_b

    .line 491
    return-void

    .line 493
    :cond_b
    const/4 v3, 0x1

    invoke-direct {v0, v3}, Lcom/samsung/audio/Smps;->get_volumeTableSize(I)I

    move-result v3

    new-array v3, v3, [F

    .line 494
    .local v3, "spkVolTable":[F
    const/4 v4, 0x2

    invoke-direct {v0, v4}, Lcom/samsung/audio/Smps;->get_volumeTableSize(I)I

    move-result v4

    new-array v4, v4, [F

    .line 495
    .local v4, "headsetVolTable":[F
    invoke-direct {v0, v3, v4}, Lcom/samsung/audio/Smps;->get_volumeTable([F[F)I

    .line 497
    array-length v5, v1

    array-length v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 498
    .local v5, "len":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_23
    const-wide/high16 v7, 0x4034000000000000L    # 20.0

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-ge v6, v5, :cond_48

    .line 499
    aget v15, v3, v6

    float-to-double v11, v15

    cmpg-double v11, v11, v13

    if-gtz v11, :cond_38

    .line 500
    aget v7, v3, v6

    float-to-double v7, v7

    aput-wide v7, v1, v6

    goto :goto_45

    .line 502
    :cond_38
    aget v11, v3, v6

    float-to-double v11, v11

    sub-double/2addr v9, v11

    div-double/2addr v9, v7

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    aput-wide v7, v1, v6

    .line 498
    :goto_45
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 505
    .end local v6    # "i":I
    :cond_48
    array-length v6, v2

    array-length v11, v4

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 506
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4f
    if-ge v6, v5, :cond_73

    .line 507
    aget v11, v4, v6

    float-to-double v11, v11

    cmpg-double v11, v11, v13

    if-gtz v11, :cond_60

    .line 508
    aget v11, v4, v6

    float-to-double v11, v11

    aput-wide v11, v2, v6

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    goto :goto_6e

    .line 510
    :cond_60
    aget v11, v4, v6

    float-to-double v11, v11

    sub-double v11, v9, v11

    div-double/2addr v11, v7

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    aput-wide v11, v2, v6

    .line 506
    :goto_6e
    add-int/lit8 v6, v6, 0x1

    const-wide/high16 v7, 0x4034000000000000L    # 20.0

    goto :goto_4f

    .line 513
    .end local v6    # "i":I
    :cond_73
    const/4 v3, 0x0

    .line 514
    const/4 v4, 0x0

    .line 515
    return-void
.end method

.method public blacklist get_src_num()I
    .registers 6

    .line 326
    sget-boolean v0, Lcom/samsung/audio/Smps;->SMPS_LOADLIBRARY:Z

    if-nez v0, :cond_6

    .line 327
    const/4 v0, 0x0

    return v0

    .line 329
    :cond_6
    const/4 v0, 0x0

    .line 330
    .local v0, "ret":I
    iget-wide v1, p0, Lcom/samsung/audio/Smps;->SMPS_ID:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_13

    .line 331
    invoke-direct {p0, v1, v2}, Lcom/samsung/audio/Smps;->get_src_num(J)I

    move-result v0

    .line 333
    :cond_13
    return v0
.end method

.method public blacklist init(IIII)I
    .registers 14
    .param p1, "hz"    # I
    .param p2, "nch"    # I
    .param p3, "paning_width"    # I
    .param p4, "paning_height"    # I

    .line 243
    sget-boolean v0, Lcom/samsung/audio/Smps;->SMPS_LOADLIBRARY:Z

    const/4 v6, -0x3

    if-nez v0, :cond_6

    .line 244
    return v6

    .line 246
    :cond_6
    iget-wide v0, p0, Lcom/samsung/audio/Smps;->SMPS_ID:J

    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    if-eqz v0, :cond_f

    .line 247
    return v6

    .line 249
    :cond_f
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/audio/Smps;->init(IIIII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/audio/Smps;->SMPS_ID:J

    .line 250
    cmp-long v0, v0, v7

    if-lez v0, :cond_59

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Smps init("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "SmpsJava"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v0, 0x0

    return v0

    .line 254
    :cond_59
    return v6
.end method

.method public blacklist reg_src_byfiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p1, "attack_path"    # Ljava/lang/String;
    .param p2, "drag_path"    # Ljava/lang/String;
    .param p3, "release_path"    # Ljava/lang/String;

    .line 291
    sget-boolean v0, Lcom/samsung/audio/Smps;->SMPS_LOADLIBRARY:Z

    if-nez v0, :cond_6

    .line 292
    const/4 v0, -0x3

    return v0

    .line 294
    :cond_6
    const/4 v0, 0x0

    .line 295
    .local v0, "ret":I
    iget-wide v2, p0, Lcom/samsung/audio/Smps;->SMPS_ID:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_17

    .line 296
    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/audio/Smps;->reg_src_byfiles(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 298
    :cond_17
    return v0
.end method

.method public blacklist set_src(I)I
    .registers 7
    .param p1, "index"    # I

    .line 309
    sget-boolean v0, Lcom/samsung/audio/Smps;->SMPS_LOADLIBRARY:Z

    if-nez v0, :cond_6

    .line 310
    const/4 v0, -0x3

    return v0

    .line 312
    :cond_6
    const/4 v0, -0x3

    .line 313
    .local v0, "ret":I
    iget-wide v1, p0, Lcom/samsung/audio/Smps;->SMPS_ID:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_13

    .line 314
    invoke-direct {p0, v1, v2, p1}, Lcom/samsung/audio/Smps;->set_src(JI)I

    move-result v0

    .line 316
    :cond_13
    return v0
.end method

.method public blacklist set_thickness(D)I
    .registers 8
    .param p1, "value"    # D

    .line 421
    sget-boolean v0, Lcom/samsung/audio/Smps;->SMPS_LOADLIBRARY:Z

    if-nez v0, :cond_6

    .line 422
    const/4 v0, -0x3

    return v0

    .line 424
    :cond_6
    const/4 v0, -0x3

    .line 425
    .local v0, "ret":I
    iget-wide v1, p0, Lcom/samsung/audio/Smps;->SMPS_ID:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_13

    .line 426
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/samsung/audio/Smps;->set_thickness(JD)I

    move-result v0

    .line 428
    :cond_13
    return v0
.end method

.method public blacklist set_tuneset(IDDIDIDDDDDD)I
    .registers 47
    .param p1, "index"    # I
    .param p2, "mgain"    # D
    .param p4, "pdepth"    # D
    .param p6, "rough_enable"    # I
    .param p7, "rough"    # D
    .param p9, "sharp_enable"    # I
    .param p10, "sharp"    # D
    .param p12, "wgain"    # D
    .param p14, "pgain"    # D
    .param p16, "avol"    # D
    .param p18, "dvol"    # D
    .param p20, "rvol"    # D

    .line 404
    sget-boolean v0, Lcom/samsung/audio/Smps;->SMPS_LOADLIBRARY:Z

    if-nez v0, :cond_6

    .line 405
    const/4 v0, -0x3

    return v0

    .line 407
    :cond_6
    const/4 v0, -0x3

    .line 408
    .local v0, "ret":I
    move-object/from16 v15, p0

    iget-wide v2, v15, Lcom/samsung/audio/Smps;->SMPS_ID:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2f

    .line 409
    move-object/from16 v1, p0

    move/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move-wide/from16 v13, p10

    move-wide/from16 v15, p12

    move-wide/from16 v17, p14

    move-wide/from16 v19, p16

    move-wide/from16 v21, p18

    move-wide/from16 v23, p20

    invoke-direct/range {v1 .. v24}, Lcom/samsung/audio/Smps;->set_tuneset(JIDDIDIDDDDDD)I

    move-result v0

    .line 411
    :cond_2f
    return v0
.end method

.method public blacklist set_tuneset(ILcom/samsung/audio/Smps$TuneSet;)I
    .registers 8
    .param p1, "index"    # I
    .param p2, "tune"    # Lcom/samsung/audio/Smps$TuneSet;

    .line 387
    sget-boolean v0, Lcom/samsung/audio/Smps;->SMPS_LOADLIBRARY:Z

    if-nez v0, :cond_6

    .line 388
    const/4 v0, -0x3

    return v0

    .line 390
    :cond_6
    const/4 v0, -0x3

    .line 391
    .local v0, "ret":I
    iget-wide v1, p0, Lcom/samsung/audio/Smps;->SMPS_ID:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_13

    .line 392
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/samsung/audio/Smps;->set_tuneset(JILcom/samsung/audio/Smps$TuneSet;)I

    move-result v0

    .line 394
    :cond_13
    return v0
.end method

.method public blacklist set_volume(D)I
    .registers 8
    .param p1, "value"    # D

    .line 438
    sget-boolean v0, Lcom/samsung/audio/Smps;->SMPS_LOADLIBRARY:Z

    if-nez v0, :cond_6

    .line 439
    const/4 v0, -0x3

    return v0

    .line 441
    :cond_6
    const/4 v0, -0x3

    .line 442
    .local v0, "ret":I
    iget-wide v1, p0, Lcom/samsung/audio/Smps;->SMPS_ID:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_13

    .line 443
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/samsung/audio/Smps;->set_volume(JD)I

    move-result v0

    .line 445
    :cond_13
    return v0
.end method

.method public blacklist start_fasttrack()V
    .registers 5

    .line 472
    sget-boolean v0, Lcom/samsung/audio/Smps;->SMPS_LOADLIBRARY:Z

    if-nez v0, :cond_5

    .line 473
    return-void

    .line 474
    :cond_5
    iget-wide v0, p0, Lcom/samsung/audio/Smps;->SMPS_ID:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_16

    .line 475
    invoke-direct {p0, v0, v1}, Lcom/samsung/audio/Smps;->start_fasttrack(J)V

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/audio/Smps;->mIsAudiotrackRunning:Z

    .line 477
    invoke-direct {p0}, Lcom/samsung/audio/Smps;->startTimer()V

    .line 479
    :cond_16
    return-void
.end method

.method public blacklist stop_fasttrack()V
    .registers 5

    .line 457
    sget-boolean v0, Lcom/samsung/audio/Smps;->SMPS_LOADLIBRARY:Z

    if-nez v0, :cond_5

    .line 458
    return-void

    .line 459
    :cond_5
    iget-wide v0, p0, Lcom/samsung/audio/Smps;->SMPS_ID:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_16

    .line 460
    invoke-direct {p0, v0, v1}, Lcom/samsung/audio/Smps;->stop_fasttrack(J)V

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/audio/Smps;->mIsAudiotrackRunning:Z

    .line 462
    invoke-direct {p0}, Lcom/samsung/audio/Smps;->stopTimer()V

    .line 464
    :cond_16
    return-void
.end method
