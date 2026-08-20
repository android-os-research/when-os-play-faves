.class public Lcom/android/server/enterprise/application/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/application/ProcessStats$Stats;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final LOAD_AVERAGE_FORMAT:[I

.field public static final PROCESS_FULL_STATS_FORMAT:[I

.field public static final PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field public static final PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field public static final PROCESS_FULL_STAT_STIME:I = 0x4

.field public static final PROCESS_FULL_STAT_UTIME:I = 0x3

.field public static final PROCESS_FULL_STAT_VSIZE:I = 0x5

.field public static final PROCESS_STATS_FORMAT:[I

.field public static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field public static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field public static final PROCESS_STAT_STIME:I = 0x3

.field public static final PROCESS_STAT_UTIME:I = 0x2

.field public static final SYSTEM_CPU_FORMAT:[I

.field public static final TAG:Ljava/lang/String; = "ProcessStats"

.field public static final localLOGV:Z = true

.field public static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBaseIdleTime:J

.field public mBaseIoWaitTime:J

.field public mBaseIrqTime:J

.field public mBaseSoftIrqTime:J

.field public mBaseSystemTime:J

.field public mBaseUserTime:J

.field public mBuffer:[B

.field public mCpuSpeedTimes:[J

.field public mCpuSpeeds:[J

.field public mCurPids:[I

.field public mCurThreadPids:[I

.field public mCurrentSampleRealTime:J

.field public mCurrentSampleTime:J

.field public mFirst:Z

.field public final mIncludeThreads:Z

.field public mLastSampleRealTime:J

.field public mLastSampleTime:J

.field public mLoad1:F

.field public mLoad15:F

.field public mLoad5:F

.field public final mLoadAverageData:[F

.field public final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field public final mProcessFullStatsData:[J

.field public final mProcessFullStatsStringData:[Ljava/lang/String;

.field public final mProcessStatsData:[J

.field public mRelCpuSpeedTimes:[J

.field public mRelIdleTime:I

.field public mRelIoWaitTime:I

.field public mRelIrqTime:I

.field public mRelSoftIrqTime:I

.field public mRelSystemTime:I

.field public mRelUserTime:I

.field public final mSinglePidStatsData:[J

.field public final mSystemCpuData:[J

.field public final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field public final mWorkingProcsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field public mWorkingProcsSorted:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xf

    new-array v0, v0, [I

    .line 40
    fill-array-data v0, :array_2c

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_STATS_FORMAT:[I

    const/16 v0, 0x16

    new-array v0, v0, [I

    .line 68
    fill-array-data v0, :array_4e

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 102
    fill-array-data v0, :array_7e

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 115
    fill-array-data v0, :array_92

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    .line 236
    new-instance v0, Lcom/android/server/enterprise/application/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/server/enterprise/application/ProcessStats$1;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    return-void

    nop

    :array_2c
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    :array_4e
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data

    :array_7e
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data

    :array_92
    .array-data 4
        0x4020
        0x4020
        0x4020
    .end array-data
.end method

.method public constructor <init>(Z)V
    .registers 4

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [J

    .line 64
    iput-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessStatsData:[J

    new-array v0, v0, [J

    .line 66
    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mSinglePidStatsData:[J

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    new-array v0, v0, [J

    .line 100
    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsData:[J

    const/4 v0, 0x7

    new-array v0, v0, [J

    .line 113
    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mSystemCpuData:[J

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 121
    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoadAverageData:[F

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    .line 126
    iput v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    .line 127
    iput v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 157
    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mBuffer:[B

    .line 959
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsMap:Landroid/util/SparseArray;

    .line 260
    iput-boolean p1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mIncludeThreads:Z

    return-void
.end method


# virtual methods
.method public final buildWorkingProcs()V
    .registers 9

    .line 692
    iget-boolean v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    if-nez v0, :cond_64

    .line 693
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 694
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_11
    const/4 v3, 0x1

    if-ge v2, v0, :cond_5b

    .line 697
    iget-object v4, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 699
    iget-boolean v5, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    if-eqz v5, :cond_58

    .line 700
    iget-object v5, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    iget-object v5, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v5, :cond_58

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v3, :cond_58

    .line 703
    iget-object v3, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 704
    iget-object v3, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v1

    :goto_3b
    if-ge v5, v3, :cond_51

    .line 707
    iget-object v6, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 709
    iget-boolean v7, v6, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    if-eqz v7, :cond_4e

    .line 710
    iget-object v7, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4e
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 714
    :cond_51
    iget-object v3, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/server/enterprise/application/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 719
    :cond_5b
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/enterprise/application/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 720
    iput-boolean v3, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    :cond_64
    return-void
.end method

.method public final buildWorkingProcsMap()V
    .registers 5

    .line 962
    iget-boolean v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    if-nez v0, :cond_2e

    .line 963
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ProcessStats;->buildWorkingProcs()V

    .line 964
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 966
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 967
    iget-object v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsMap:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_12

    :cond_2e
    return-void
.end method

.method public final collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .registers 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
            ">;)[I"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p2

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v8, p5

    .line 356
    invoke-static {v0, v1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v9

    if-nez v9, :cond_12

    const/4 v11, 0x0

    goto :goto_14

    .line 358
    :cond_12
    array-length v0, v9

    move v11, v0

    .line 359
    :goto_14
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v12, v0

    const/4 v0, 0x0

    const/4 v13, 0x0

    :goto_1b
    const-string v1, ": "

    const-string v2, "ProcessStats"

    if-ge v13, v11, :cond_338

    .line 363
    aget v3, v9, v13

    if-gez v3, :cond_27

    goto/16 :goto_338

    :cond_27
    if-ge v0, v12, :cond_31

    .line 370
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    move-object v15, v5

    goto :goto_32

    :cond_31
    const/4 v15, 0x0

    :goto_32
    const-string v5, " majfaults="

    const-string v14, " minfaults="

    const-string v4, " stime="

    const-string v10, " utime="

    move/from16 v16, v11

    const-string v11, " pid="

    move-object/from16 v17, v9

    const-string v9, "Load"

    const/16 v18, 0x3

    const/16 v19, 0x2

    move-object/from16 v20, v4

    const-string v4, " pid "

    const-string/jumbo v21, "process"

    const-string/jumbo v22, "thread"

    if-eqz v15, :cond_1bc

    move-object/from16 v23, v5

    .line 372
    iget v5, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    if-ne v5, v3, :cond_1b2

    const/4 v5, 0x0

    .line 374
    iput-boolean v5, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    .line 375
    iput-boolean v5, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    add-int/lit8 v24, v0, 0x1

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Existing "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v7, :cond_6e

    move-object/from16 v5, v21

    goto :goto_70

    :cond_6e
    move-object/from16 v5, v22

    .line 379
    :goto_70
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-boolean v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    if-eqz v0, :cond_1a3

    .line 383
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 384
    iget-object v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mProcessStatsData:[J

    .line 386
    iget-object v1, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_STATS_FORMAT:[I

    move-wide/from16 v21, v4

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v0, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-nez v1, :cond_a3

    goto/16 :goto_1a3

    :cond_a3
    const/4 v1, 0x0

    .line 391
    aget-wide v4, v0, v1

    move/from16 v25, v12

    move/from16 v26, v13

    const/4 v2, 0x1

    .line 392
    aget-wide v12, v0, v2

    .line 393
    aget-wide v1, v0, v19

    move-object/from16 v27, v9

    .line 394
    aget-wide v8, v0, v18

    move-wide/from16 v28, v4

    .line 396
    iget-wide v4, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    cmp-long v0, v1, v4

    if-nez v0, :cond_d2

    iget-wide v4, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    cmp-long v0, v8, v4

    if-nez v0, :cond_d2

    const/4 v0, 0x0

    .line 397
    iput v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    .line 398
    iput v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    .line 399
    iput v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    .line 400
    iput v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    .line 402
    iget-boolean v1, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    if-eqz v1, :cond_1a7

    .line 403
    iput-boolean v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    goto/16 :goto_1a7

    .line 409
    :cond_d2
    iget-boolean v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    if-nez v0, :cond_d9

    const/4 v0, 0x1

    .line 410
    iput-boolean v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    :cond_d9
    if-gez v7, :cond_106

    .line 414
    iget-object v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-virtual {v6, v15, v0}, Lcom/android/server/enterprise/application/ProcessStats;->getName(Lcom/android/server/enterprise/application/ProcessStats$Stats;Ljava/lang/String;)V

    .line 416
    iget-object v5, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v5, :cond_106

    .line 417
    iget-object v4, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    const/16 v18, 0x0

    iget-object v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-wide/from16 v30, v12

    move-wide v12, v1

    move-object v1, v4

    move v2, v3

    move/from16 v3, v18

    move-object/from16 v36, v20

    move-wide/from16 v32, v21

    move-wide/from16 v34, v28

    move-object/from16 v4, v19

    move-object/from16 v7, v23

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    goto :goto_111

    :cond_106
    move-wide/from16 v30, v12

    move-object/from16 v36, v20

    move-wide/from16 v32, v21

    move-object/from16 v7, v23

    move-wide/from16 v34, v28

    move-wide v12, v1

    .line 422
    :goto_111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stats changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v5, v36

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v34

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v30

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-wide v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_uptime:J

    move-wide/from16 v10, v32

    sub-long v0, v10, v0

    iput-wide v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_uptime:J

    .line 429
    iput-wide v10, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_uptime:J

    .line 430
    iget-wide v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    sub-long v0, v12, v0

    long-to-int v0, v0

    iput v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    .line 431
    iget-wide v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    sub-long v0, v8, v0

    long-to-int v0, v0

    iput v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    .line 432
    iput-wide v12, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    .line 433
    iput-wide v8, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    .line 434
    iget-wide v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    sub-long v0, v2, v0

    long-to-int v0, v0

    iput v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    .line 435
    iget-wide v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    sub-long v12, v4, v0

    long-to-int v0, v12

    iput v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    .line 436
    iput-wide v2, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    .line 437
    iput-wide v4, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    const/4 v0, 0x1

    .line 438
    iput-boolean v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    goto :goto_1a7

    :cond_1a3
    :goto_1a3
    move/from16 v25, v12

    move/from16 v26, v13

    :cond_1a7
    :goto_1a7
    move/from16 v9, p2

    move/from16 v0, v24

    move/from16 v12, v25

    move/from16 v13, v26

    :goto_1af
    const/4 v3, 0x1

    goto/16 :goto_32e

    :cond_1b2
    move-object v8, v9

    move/from16 v25, v12

    move/from16 v26, v13

    move-object/from16 v5, v20

    move-object/from16 v7, v23

    goto :goto_1c4

    :cond_1bc
    move-object v7, v5

    move-object v8, v9

    move/from16 v25, v12

    move/from16 v26, v13

    move-object/from16 v5, v20

    :goto_1c4
    if-eqz v15, :cond_20c

    .line 444
    iget v9, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    if-le v9, v3, :cond_1cb

    goto :goto_20c

    :cond_1cb
    const/4 v9, 0x0

    .line 515
    iput v9, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    .line 516
    iput v9, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    .line 517
    iput v9, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    .line 518
    iput v9, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    const/4 v5, 0x1

    .line 519
    iput-boolean v5, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    .line 520
    iput-boolean v5, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    move-object/from16 v7, p5

    .line 521
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v12, v25, -0x1

    .line 524
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p2

    if-gez v9, :cond_1f1

    move-object/from16 v8, v21

    goto :goto_1f3

    :cond_1f1
    move-object/from16 v8, v22

    .line 525
    :goto_1f3
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v13, v26, -0x1

    goto :goto_1af

    :cond_20c
    :goto_20c
    move/from16 v9, p2

    move-object v12, v7

    move-object/from16 v7, p5

    .line 446
    new-instance v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    iget-boolean v15, v6, Lcom/android/server/enterprise/application/ProcessStats;->mIncludeThreads:Z

    invoke-direct {v13, v3, v9, v15}, Lcom/android/server/enterprise/application/ProcessStats$Stats;-><init>(IIZ)V

    .line 447
    invoke-virtual {v7, v0, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v15, v0, 0x1

    add-int/lit8 v20, v25, 0x1

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v36, v5

    const-string v5, "New "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v9, :cond_230

    move-object/from16 v5, v21

    goto :goto_232

    :cond_230
    move-object/from16 v5, v22

    .line 452
    :goto_232
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 456
    iget-object v1, v6, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsData:[J

    .line 457
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_uptime:J

    .line 459
    iget-object v4, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    move/from16 v21, v15

    const/4 v15, 0x0

    invoke-static {v4, v5, v0, v1, v15}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_27f

    const/4 v4, 0x1

    .line 467
    iput-boolean v4, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    const/4 v2, 0x0

    .line 468
    aget-object v0, v0, v2

    iput-object v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    move-object/from16 v27, v8

    .line 469
    aget-wide v7, v1, v4

    iput-wide v7, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    .line 470
    aget-wide v4, v1, v19

    iput-wide v4, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    .line 471
    aget-wide v4, v1, v18

    iput-wide v4, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    const/4 v0, 0x4

    .line 472
    aget-wide v0, v1, v0

    iput-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    goto :goto_2a3

    :cond_27f
    move-object/from16 v27, v8

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping unknown process pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "<unknown>"

    .line 480
    iput-object v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 481
    iput-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    iput-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    .line 482
    iput-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    iput-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    :goto_2a3
    if-gez v9, :cond_2c4

    .line 486
    iget-object v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-virtual {v6, v13, v0}, Lcom/android/server/enterprise/application/ProcessStats;->getName(Lcom/android/server/enterprise/application/ProcessStats$Stats;Ljava/lang/String;)V

    .line 488
    iget-object v5, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v5, :cond_2c1

    .line 489
    iget-object v1, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v7, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    move-object/from16 v0, p0

    move v2, v3

    move v3, v4

    move-object v4, v7

    move-object/from16 v7, v36

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    goto :goto_2d4

    :cond_2c1
    move-object/from16 v7, v36

    goto :goto_2d4

    :cond_2c4
    move-object/from16 v7, v36

    .line 492
    iget-boolean v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    if-eqz v0, :cond_2d4

    .line 493
    iget-object v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    iput-object v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 494
    invoke-virtual {v6, v0}, Lcom/android/server/enterprise/application/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v0

    iput v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->nameWidth:I

    .line 497
    :cond_2d4
    :goto_2d4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stats added "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 501
    iput v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    .line 502
    iput v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    .line 503
    iput v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    .line 504
    iput v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    const/4 v3, 0x1

    .line 505
    iput-boolean v3, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    if-nez p3, :cond_328

    .line 507
    iget-boolean v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    if-eqz v0, :cond_328

    .line 508
    iput-boolean v3, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    :cond_328
    move/from16 v12, v20

    move/from16 v0, v21

    move/from16 v13, v26

    :goto_32e
    add-int/2addr v13, v3

    move-object/from16 v8, p5

    move v7, v9

    move/from16 v11, v16

    move-object/from16 v9, v17

    goto/16 :goto_1b

    :cond_338
    :goto_338
    move-object/from16 v17, v9

    move/from16 v25, v12

    const/4 v3, 0x1

    move/from16 v12, v25

    :goto_33f
    if-ge v0, v12, :cond_378

    move-object/from16 v4, p5

    .line 536
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    const/4 v6, 0x0

    .line 537
    iput v6, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    .line 538
    iput v6, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    .line 539
    iput v6, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    .line 540
    iput v6, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    .line 541
    iput-boolean v3, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    .line 542
    iput-boolean v3, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    .line 543
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v12, v12, -0x1

    .line 547
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed pid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33f

    :cond_378
    return-object v17
.end method

.method public final countStats()I
    .registers 1

    .line 725
    iget-object p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final countWorkingStats()I
    .registers 1

    .line 734
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ProcessStats;->buildWorkingProcs()V

    .line 735
    iget-object p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getCpuSpeedTimes([J)[J
    .registers 14

    const-string v0, "ProcessStats"

    .line 596
    iget-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeeds:[J

    const/16 v2, 0x3c

    if-nez p1, :cond_10

    new-array v1, v2, [J

    new-array v3, v2, [J

    move-object v11, v3

    move-object v3, v1

    move-object v1, v11

    goto :goto_11

    :cond_10
    move-object v3, p1

    .line 605
    :goto_11
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/bus/cpu/devices/cpu0/cpufreq/stats/time_in_state"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 608
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_24

    .line 609
    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/application/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    goto :goto_2a

    :cond_24
    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    .line 611
    invoke-virtual {p0, v4, v6}, Lcom/android/server/enterprise/application/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    :goto_2a
    if-eqz v4, :cond_7e

    .line 616
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, "\n "

    invoke-direct {v5, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 618
    :cond_34
    :goto_34
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 619
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 622
    :try_start_3e
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 623
    aput-wide v7, v1, v4

    .line 624
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 625
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 626
    aput-wide v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v2, :cond_53

    goto :goto_7f

    :cond_53
    if-nez p1, :cond_34

    .line 634
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "First time : Speed/Time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v4, -0x1

    aget-wide v9, v1, v8

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "\t"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v8, v3, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_77} :catch_78

    goto :goto_34

    :catch_78
    const-string v7, "Unable to parse time_in_state"

    .line 638
    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :cond_7e
    move v4, v6

    :cond_7f
    :goto_7f
    if-nez p1, :cond_8d

    .line 644
    new-array p1, v4, [J

    .line 645
    new-array v0, v4, [J

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeeds:[J

    .line 646
    invoke-static {v1, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 647
    invoke-static {v3, v6, p1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8d
    return-object p1
.end method

.method public getCpuTimeForPid(I)J
    .registers 4

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/stat"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 556
    iget-object p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mSinglePidStatsData:[J

    .line 558
    sget-object v0, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_STATS_FORMAT:[I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p0, v1}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result p1

    if-eqz p1, :cond_29

    const/4 p1, 0x2

    .line 560
    aget-wide v0, p0, p1

    const/4 p1, 0x3

    aget-wide p0, p0, p1

    add-long/2addr v0, p0

    return-wide v0

    :cond_29
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getLastCpuSpeedTimes()[J
    .registers 8

    .line 574
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeedTimes:[J

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    .line 575
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ProcessStats;->getCpuSpeedTimes([J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeedTimes:[J

    .line 576
    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelCpuSpeedTimes:[J

    .line 578
    :goto_11
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeedTimes:[J

    array-length v0, v0

    if-ge v1, v0, :cond_38

    .line 579
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelCpuSpeedTimes:[J

    const-wide/16 v2, 0x1

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 582
    :cond_1f
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelCpuSpeedTimes:[J

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ProcessStats;->getCpuSpeedTimes([J)[J

    .line 584
    :goto_24
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeedTimes:[J

    array-length v2, v0

    if-ge v1, v2, :cond_38

    .line 585
    iget-object v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelCpuSpeedTimes:[J

    aget-wide v3, v2, v1

    .line 586
    aget-wide v5, v0, v1

    sub-long v5, v3, v5

    aput-wide v5, v2, v1

    .line 587
    aput-wide v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 591
    :cond_38
    iget-object p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelCpuSpeedTimes:[J

    return-object p0
.end method

.method public final getLastIdleTime()I
    .registers 1

    .line 678
    iget p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    return p0
.end method

.method public final getLastIoWaitTime()I
    .registers 1

    .line 664
    iget p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIoWaitTime:I

    return p0
.end method

.method public final getLastIrqTime()I
    .registers 1

    .line 669
    iget p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    return p0
.end method

.method public final getLastSoftIrqTime()I
    .registers 1

    .line 673
    iget p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelSoftIrqTime:I

    return p0
.end method

.method public final getLastSystemTime()I
    .registers 1

    .line 660
    iget p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    return p0
.end method

.method public final getLastUserTime()I
    .registers 1

    .line 655
    iget p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    return p0
.end method

.method public final getName(Lcom/android/server/enterprise/application/ProcessStats$Stats;Ljava/lang/String;)V
    .registers 6

    .line 932
    iget-object v0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz v0, :cond_16

    const-string v1, "app_process"

    .line 934
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    const-string v2, "<pre-initialized>"

    .line 935
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    :cond_16
    const/4 v1, 0x0

    .line 936
    invoke-virtual {p0, p2, v1}, Lcom/android/server/enterprise/application/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_39

    .line 938
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_39

    const-string v0, "/"

    .line 940
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_38

    .line 942
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_38

    add-int/2addr v0, v2

    .line 943
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_38
    move-object v0, p2

    :cond_39
    if-nez v0, :cond_3d

    .line 948
    iget-object v0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 952
    :cond_3d
    iget-object p2, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz p2, :cond_47

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4f

    .line 953
    :cond_47
    iput-object v0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 954
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->nameWidth:I

    :cond_4f
    return-void
.end method

.method public final getStats(I)Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .registers 2

    .line 729
    iget-object p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    return-object p0
.end method

.method public final getTotalCpuPercent()F
    .registers 5

    .line 682
    iget v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    iget v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    add-int v2, v0, v1

    iget v3, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    add-int/2addr v2, v3

    iget p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    add-int/2addr v2, p0

    if-gtz v2, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    add-int/2addr v0, v1

    add-int/2addr v0, v3

    int-to-float p0, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    int-to-float v0, v2

    div-float/2addr p0, v0

    return p0
.end method

.method public final getWorkingStatByPid(I)Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .registers 2

    .line 973
    iget-object p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    return-object p0
.end method

.method public final getWorkingStats(I)Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .registers 2

    .line 740
    iget-object p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    return-object p0
.end method

.method public init()V
    .registers 3

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Init: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessStats"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    .line 277
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ProcessStats;->update()V

    return-void
.end method

.method public onLoadChanged(FFF)V
    .registers 4

    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final printCurrentLoad()Ljava/lang/String;
    .registers 5

    .line 744
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 745
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "Load: "

    .line 746
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 747
    iget v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string v2, " / "

    .line 748
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 749
    iget v3, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 750
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 751
    iget p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(F)V

    .line 752
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final printCurrentState(J)Ljava/lang/String;
    .registers 29

    move-object/from16 v13, p0

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/application/ProcessStats;->buildWorkingProcs()V

    .line 757
    new-instance v14, Ljava/io/StringWriter;

    invoke-direct {v14}, Ljava/io/StringWriter;-><init>()V

    .line 758
    new-instance v15, Ljava/io/PrintWriter;

    invoke-direct {v15, v14}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "CPU usage from "

    .line 759
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 761
    iget-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleTime:J

    cmp-long v2, p1, v0

    const-string/jumbo v3, "ms to "

    if-lez v2, :cond_33

    sub-long v0, p1, v0

    .line 762
    invoke-virtual {v15, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 763
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 764
    iget-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    sub-long v0, p1, v0

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, "ms ago"

    .line 765
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_48

    :cond_33
    sub-long v0, v0, p1

    .line 767
    invoke-virtual {v15, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 768
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 769
    iget-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    sub-long v0, v0, p1

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, "ms later"

    .line 770
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 773
    :goto_48
    iget-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    iget-wide v2, v13, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleTime:J

    sub-long/2addr v0, v2

    .line 774
    iget-wide v2, v13, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleRealTime:J

    iget-wide v4, v13, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleRealTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const-wide/16 v7, 0x64

    if-lez v6, :cond_5d

    mul-long/2addr v0, v7

    .line 775
    div-long v4, v0, v2

    :cond_5d
    cmp-long v0, v4, v7

    if-eqz v0, :cond_6e

    const-string v0, " with "

    .line 778
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v15, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "% awake"

    .line 780
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6e
    const-string v0, ":"

    .line 783
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 784
    iget v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    iget v1, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelIoWaitTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelSoftIrqTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    add-int v12, v0, v1

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "totalTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " over sample time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v13, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    iget-wide v3, v13, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessStats"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/16 v16, 0x0

    move/from16 v10, v16

    :goto_b3
    if-ge v10, v11, :cond_168

    .line 793
    iget-object v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 794
    iget-boolean v0, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    if-eqz v0, :cond_c6

    const-string v0, " +"

    :goto_c4
    move-object v2, v0

    goto :goto_d0

    :cond_c6
    iget-boolean v0, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    if-eqz v0, :cond_cd

    const-string v0, " -"

    goto :goto_c4

    :cond_cd
    const-string v0, "  "

    goto :goto_c4

    :goto_d0
    iget v3, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    iget-object v4, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    iget-wide v0, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_uptime:J

    const-wide/16 v17, 0x5

    add-long v0, v0, v17

    long-to-int v0, v0

    div-int/lit8 v5, v0, 0xa

    iget v6, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iget v7, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    const/4 v8, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget v1, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    iget v0, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v22, v1

    move-object v1, v15

    move-object/from16 v23, v9

    move/from16 v9, v19

    move/from16 v19, v10

    move/from16 v10, v20

    move/from16 v20, v11

    move/from16 v11, v22

    move/from16 v22, v12

    move/from16 v12, v21

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/enterprise/application/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    move-object/from16 v12, v23

    .line 798
    iget-boolean v0, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    if-nez v0, :cond_160

    iget-object v0, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v0, :cond_160

    .line 799
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    move/from16 v10, v16

    :goto_114
    if-ge v10, v11, :cond_160

    .line 802
    iget-object v0, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 804
    iget-boolean v1, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    if-eqz v1, :cond_126

    const-string v1, "   +"

    :goto_124
    move-object v2, v1

    goto :goto_130

    :cond_126
    iget-boolean v1, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    if-eqz v1, :cond_12d

    const-string v1, "   -"

    goto :goto_124

    :cond_12d
    const-string v1, "    "

    goto :goto_124

    :goto_130
    iget v3, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    iget-object v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    iget-wide v5, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_uptime:J

    add-long v5, v5, v17

    long-to-int v1, v5

    div-int/lit8 v5, v1, 0xa

    iget v6, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iget v7, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v25, v10

    move/from16 v10, v21

    move/from16 v21, v11

    move/from16 v11, v23

    move-object/from16 v23, v12

    move/from16 v12, v24

    .line 803
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/enterprise/application/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    add-int/lit8 v10, v25, 0x1

    move/from16 v11, v21

    move-object/from16 v12, v23

    goto :goto_114

    :cond_160
    add-int/lit8 v10, v19, 0x1

    move/from16 v11, v20

    move/from16 v12, v22

    goto/16 :goto_b3

    :cond_168
    move/from16 v22, v12

    const/4 v3, -0x1

    .line 811
    iget v6, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    iget v7, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    iget v8, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelIoWaitTime:I

    iget v9, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    iget v10, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelSoftIrqTime:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v2, ""

    const-string v4, "TOTAL"

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v5, v22

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/enterprise/application/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 813
    invoke-virtual {v14}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .registers 30

    move-object/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    .line 834
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p5, :cond_19

    const/4 v0, 0x1

    goto :goto_1b

    :cond_19
    move/from16 v0, p5

    :goto_1b
    add-int v1, v8, v9

    add-int/2addr v1, v10

    add-int/2addr v1, v11

    add-int/2addr v1, v12

    int-to-long v2, v1

    int-to-long v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v15, v4

    .line 840
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v0, "% "

    .line 841
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-ltz v7, :cond_39

    .line 844
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "/"

    .line 845
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_39
    move-object/from16 v0, p4

    .line 848
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ": "

    .line 849
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-long v2, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v4, v15

    .line 850
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v0, "% user + "

    .line 851
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-long v0, v9

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-wide/from16 p4, v0

    move-wide/from16 p6, v15

    .line 852
    invoke-virtual/range {p2 .. p7}, Lcom/android/server/enterprise/application/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v0, "% kernel"

    .line 853
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " + "

    if-lez v10, :cond_7a

    .line 856
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-long v1, v10

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-wide/from16 p4, v1

    move-wide/from16 p6, v15

    .line 857
    invoke-virtual/range {p2 .. p7}, Lcom/android/server/enterprise/application/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v1, "% iowait"

    .line 858
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7a
    if-lez v11, :cond_90

    .line 862
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-long v1, v11

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-wide/from16 p4, v1

    move-wide/from16 p6, v15

    .line 863
    invoke-virtual/range {p2 .. p7}, Lcom/android/server/enterprise/application/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v1, "% irq"

    .line 864
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_90
    if-lez v12, :cond_a6

    .line 868
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-long v0, v12

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-wide/from16 p4, v0

    move-wide/from16 p6, v15

    .line 869
    invoke-virtual/range {p2 .. p7}, Lcom/android/server/enterprise/application/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v0, "% softirq"

    .line 870
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_a6
    if-gtz v13, :cond_aa

    if-lez v14, :cond_cb

    :cond_aa
    const-string v0, " / faults:"

    .line 874
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " "

    if-lez v13, :cond_be

    .line 877
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 878
    invoke-virtual {v6, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " minor"

    .line 879
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_be
    if-lez v14, :cond_cb

    .line 883
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 884
    invoke-virtual {v6, v14}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " major"

    .line 885
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 889
    :cond_cb
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final printRatio(Ljava/io/PrintWriter;JJ)V
    .registers 8

    const-wide/16 v0, 0x3e8

    mul-long/2addr p2, v0

    .line 817
    div-long/2addr p2, p4

    const-wide/16 p4, 0xa

    .line 818
    div-long v0, p2, p4

    .line 819
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    cmp-long p0, v0, p4

    if-gez p0, :cond_1f

    mul-long/2addr v0, p4

    sub-long/2addr p2, v0

    const-wide/16 p4, 0x0

    cmp-long p0, p2, p4

    if-eqz p0, :cond_1f

    const/16 p0, 0x2e

    .line 825
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    .line 826
    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    :cond_1f
    return-void
.end method

.method public final readFile(Ljava/lang/String;C)Ljava/lang/String;
    .registers 9

    .line 896
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/4 v1, 0x0

    .line 900
    :try_start_5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_a} :catch_42
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_3e
    .catchall {:try_start_5 .. :try_end_a} :catchall_34

    .line 901
    :try_start_a
    iget-object p1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mBuffer:[B

    invoke-virtual {v2, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    .line 902
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    if-lez p1, :cond_45

    const/4 v3, 0x0

    move v4, v3

    :goto_17
    if-ge v4, p1, :cond_23

    .line 908
    iget-object v5, p0, Lcom/android/server/enterprise/application/ProcessStats;->mBuffer:[B

    aget-byte v5, v5, v4

    if-ne v5, p2, :cond_20

    goto :goto_23

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 913
    :cond_23
    :goto_23
    new-instance p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mBuffer:[B

    invoke-direct {p1, p0, v3, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_2a} :catch_43
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2a} :catch_3f
    .catchall {:try_start_a .. :try_end_2a} :catchall_31

    .line 920
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2d

    .line 925
    :catch_2d
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p1

    :catchall_31
    move-exception p0

    move-object v1, v2

    goto :goto_35

    :catchall_34
    move-exception p0

    :goto_35
    if-eqz v1, :cond_3a

    .line 920
    :try_start_37
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3a

    .line 925
    :catch_3a
    :cond_3a
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 926
    throw p0

    :catch_3e
    move-object v2, v1

    :catch_3f
    if-eqz v2, :cond_48

    goto :goto_45

    :catch_42
    move-object v2, v1

    :catch_43
    if-eqz v2, :cond_48

    .line 920
    :cond_45
    :goto_45
    :try_start_45
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_48

    .line 925
    :catch_48
    :cond_48
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1
.end method

.method public update()V
    .registers 23

    move-object/from16 v6, p0

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "ProcessStats"

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    iput-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleTime:J

    .line 287
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    .line 288
    iget-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleRealTime:J

    iput-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleRealTime:J

    .line 289
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleRealTime:J

    .line 290
    iget-object v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mSystemCpuData:[J

    .line 292
    sget-object v1, Lcom/android/server/enterprise/application/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    const-string v2, "/proc/stat"

    const/4 v8, 0x0

    invoke-static {v2, v1, v8, v0, v8}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_11a

    .line 295
    aget-wide v1, v0, v11

    aget-wide v3, v0, v10

    add-long/2addr v1, v3

    .line 297
    aget-wide v3, v0, v9

    const/4 v5, 0x3

    .line 299
    aget-wide v12, v0, v5

    const/4 v14, 0x4

    .line 301
    aget-wide v8, v0, v14

    const/16 v16, 0x5

    .line 302
    aget-wide v14, v0, v16

    const/16 v17, 0x6

    .line 303
    aget-wide v10, v0, v17

    move-wide/from16 v18, v12

    .line 304
    iget-wide v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseUserTime:J

    sub-long v12, v1, v12

    long-to-int v12, v12

    iput v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    .line 305
    iget-wide v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseSystemTime:J

    sub-long v12, v3, v12

    long-to-int v12, v12

    iput v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    .line 306
    iget-wide v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIoWaitTime:J

    sub-long v12, v8, v12

    long-to-int v12, v12

    iput v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelIoWaitTime:I

    .line 307
    iget-wide v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIrqTime:J

    sub-long v12, v14, v12

    long-to-int v12, v12

    iput v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    .line 308
    iget-wide v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseSoftIrqTime:J

    sub-long v12, v10, v12

    long-to-int v12, v12

    iput v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelSoftIrqTime:I

    .line 309
    iget-wide v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIdleTime:J

    sub-long v12, v18, v12

    long-to-int v12, v12

    iput v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    .line 312
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Total U:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    aget-wide v5, v0, v13

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " N:"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v13, v7

    const/4 v5, 0x1

    aget-wide v6, v0, v5

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " S:"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v20, v10

    const/4 v6, 0x2

    aget-wide v10, v0, v6

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " I:"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    aget-wide v10, v0, v7

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " W:"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x4

    aget-wide v10, v0, v7

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " Q:"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v0, v16

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " O:"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v0, v17

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "Load"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Rel U:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p0

    iget v12, v11, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v11, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v11, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v11, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iput-wide v1, v11, Lcom/android/server/enterprise/application/ProcessStats;->mBaseUserTime:J

    .line 321
    iput-wide v3, v11, Lcom/android/server/enterprise/application/ProcessStats;->mBaseSystemTime:J

    .line 322
    iput-wide v8, v11, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIoWaitTime:J

    .line 323
    iput-wide v14, v11, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIrqTime:J

    move-wide/from16 v0, v20

    .line 324
    iput-wide v0, v11, Lcom/android/server/enterprise/application/ProcessStats;->mBaseSoftIrqTime:J

    move-wide/from16 v0, v18

    .line 325
    iput-wide v0, v11, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIdleTime:J

    goto :goto_11c

    :cond_11a
    move-object v11, v6

    move-object v13, v7

    :goto_11c
    const/4 v2, -0x1

    .line 328
    iget-boolean v3, v11, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    iget-object v4, v11, Lcom/android/server/enterprise/application/ProcessStats;->mCurPids:[I

    iget-object v5, v11, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    const-string v1, "/proc"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/enterprise/application/ProcessStats;->mCurPids:[I

    .line 329
    iget-object v0, v11, Lcom/android/server/enterprise/application/ProcessStats;->mLoadAverageData:[F

    .line 331
    sget-object v1, Lcom/android/server/enterprise/application/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    const-string v2, "/proc/loadavg"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-eqz v1, :cond_15e

    const/4 v1, 0x0

    .line 333
    aget v2, v0, v1

    const/4 v1, 0x1

    .line 334
    aget v1, v0, v1

    const/4 v3, 0x2

    .line 335
    aget v0, v0, v3

    .line 337
    iget v3, v11, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_155

    iget v3, v11, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    cmpl-float v3, v1, v3

    if-nez v3, :cond_155

    iget v3, v11, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_15e

    .line 338
    :cond_155
    iput v2, v11, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    .line 339
    iput v1, v11, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    .line 340
    iput v0, v11, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    .line 341
    invoke-virtual {v11, v2, v1, v0}, Lcom/android/server/enterprise/application/ProcessStats;->onLoadChanged(FFF)V

    .line 345
    :cond_15e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** TIME TO COLLECT STATS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v11, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 348
    iput-boolean v0, v11, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    .line 349
    iput-boolean v0, v11, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    return-void
.end method
