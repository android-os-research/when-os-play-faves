.class public Lcom/android/server/ssrm/TopCpuUsageTracker;
.super Ljava/lang/Object;
.source "TopCpuUsageTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final PROCESS_FULL_STATS_FORMAT:[I

.field static final PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field static final PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field static final PROCESS_FULL_STAT_STIME:I = 0x4

.field static final PROCESS_FULL_STAT_UTIME:I = 0x3

.field static final PROCESS_FULL_STAT_VSIZE:I = 0x5

.field private static final PROCESS_STATS_FORMAT:[I

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2

.field private static final SYSTEM_CPU_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "CfmsTopCpuUsageTracker"

.field private static final localLOGV:Z = false

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mBuffer:[B

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private final mJiffyMillis:J

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessFullStatsData:[J

.field private final mProcessFullStatsStringData:[Ljava/lang/String;

.field private final mProcessStatsData:[J

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelStatsAreGood:Z

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private final mSinglePidStatsData:[J

.field private final mSystemCpuData:[J

.field private final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z

.field private final mWorkingThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingThreadsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/android/server/ssrm/TopCpuUsageTracker;->PROCESS_STATS_FORMAT:[I

    .line 75
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_46

    sput-object v0, Lcom/android/server/ssrm/TopCpuUsageTracker;->PROCESS_FULL_STATS_FORMAT:[I

    .line 105
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_78

    sput-object v0, Lcom/android/server/ssrm/TopCpuUsageTracker;->SYSTEM_CPU_FORMAT:[I

    .line 278
    new-instance v0, Lcom/android/server/ssrm/TopCpuUsageTracker$1;

    invoke-direct {v0}, Lcom/android/server/ssrm/TopCpuUsageTracker$1;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/TopCpuUsageTracker;->sLoadComparator:Ljava/util/Comparator;

    return-void

    nop

    :array_24
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

    :array_46
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
        0x20
        0x2020
    .end array-data

    :array_78
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
.end method

.method public constructor <init>(Z)V
    .registers 6
    .param p1, "includeThreads"    # Z

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x4

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcessStatsData:[J

    .line 73
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mSinglePidStatsData:[J

    .line 101
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 103
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcessFullStatsData:[J

    .line 117
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mSystemCpuData:[J

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcStats:Ljava/util/ArrayList;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingProcs:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingThreads:Ljava/util/ArrayList;

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mFirst:Z

    .line 171
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBuffer:[B

    .line 297
    iput-boolean p1, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mIncludeThreads:Z

    .line 298
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    .line 299
    .local v0, "jiffyHz":J
    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mJiffyMillis:J

    .line 300
    return-void
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I
    .registers 38
    .param p1, "statsFile"    # Ljava/lang/String;
    .param p2, "parentPid"    # I
    .param p3, "first"    # Z
    .param p4, "curPids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 402
    .local p5, "allProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;>;"
    .local p6, "tarPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v7, p0

    move/from16 v8, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    if-nez v10, :cond_14

    .line 403
    move-object/from16 v11, p1

    move-object/from16 v12, p4

    invoke-static {v11, v12}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v0

    move-object v13, v0

    .local v0, "pids":[I
    goto :goto_32

    .line 405
    .end local v0    # "pids":[I
    :cond_14
    move-object/from16 v11, p1

    move-object/from16 v12, p4

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 406
    .restart local v0    # "pids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    array-length v2, v0

    if-ge v1, v2, :cond_31

    .line 407
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_31
    move-object v13, v0

    .line 411
    .end local v0    # "pids":[I
    .end local v1    # "i":I
    .local v13, "pids":[I
    :goto_32
    const/4 v14, 0x0

    if-nez v13, :cond_37

    move v0, v14

    goto :goto_38

    :cond_37
    array-length v0, v13

    :goto_38
    move v15, v0

    .line 412
    .local v15, "NP":I
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 413
    .local v0, "NS":I
    const/4 v1, 0x0

    .line 414
    .local v1, "curStatsIndex":I
    const/4 v2, 0x0

    move v6, v0

    move v5, v2

    .end local v0    # "NS":I
    .local v5, "i":I
    .local v6, "NS":I
    :goto_41
    if-ge v5, v15, :cond_277

    .line 415
    aget v3, v13, v5

    .line 416
    .local v3, "pid":I
    if-gez v3, :cond_4d

    .line 417
    move v15, v3

    .line 418
    move v12, v8

    move-object/from16 v18, v13

    goto/16 :goto_27f

    .line 420
    :cond_4d
    const/4 v0, 0x0

    if-ge v1, v6, :cond_57

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;

    goto :goto_58

    :cond_57
    move-object v2, v0

    .line 422
    .local v2, "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    :goto_58
    const/16 v16, 0x3

    const/16 v17, 0x2

    if-eqz v2, :cond_179

    iget v4, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->pid:I

    if-ne v4, v3, :cond_179

    .line 424
    iput-boolean v14, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->added:Z

    .line 425
    iput-boolean v14, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->working:Z

    .line 426
    add-int/lit8 v19, v1, 0x1

    .line 431
    .end local v1    # "curStatsIndex":I
    .local v19, "curStatsIndex":I
    iget-boolean v1, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->interesting:Z

    if-eqz v1, :cond_163

    .line 432
    move/from16 v20, v15

    .end local v15    # "NP":I
    .local v20, "NP":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 434
    .local v14, "uptime":J
    iget-object v4, v7, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcessStatsData:[J

    .line 435
    .local v4, "procStats":[J
    iget-object v1, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    move/from16 v21, v5

    .end local v5    # "i":I
    .local v21, "i":I
    sget-object v5, Lcom/android/server/ssrm/TopCpuUsageTracker;->PROCESS_STATS_FORMAT:[I

    invoke-static {v1, v5, v0, v4, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 437
    move/from16 v22, v6

    move-object v6, v7

    move-object/from16 v18, v13

    move/from16 v10, v21

    const/4 v0, 0x1

    goto/16 :goto_16f

    .line 440
    :cond_8e
    move/from16 v22, v6

    const/4 v0, 0x0

    .end local v6    # "NS":I
    .local v22, "NS":I
    aget-wide v6, v4, v0

    .line 441
    .local v6, "minfaults":J
    move-wide/from16 v23, v6

    const/4 v0, 0x1

    .end local v6    # "minfaults":J
    .local v23, "minfaults":J
    aget-wide v6, v4, v0

    .line 442
    .local v6, "majfaults":J
    aget-wide v0, v4, v17

    move-object/from16 v5, p0

    move-wide/from16 v25, v23

    move-wide/from16 v23, v6

    .end local v6    # "majfaults":J
    .local v23, "majfaults":J
    .local v25, "minfaults":J
    iget-wide v6, v5, Lcom/android/server/ssrm/TopCpuUsageTracker;->mJiffyMillis:J

    mul-long/2addr v0, v6

    .line 443
    .local v0, "utime":J
    aget-wide v16, v4, v16

    mul-long v6, v6, v16

    .line 445
    .local v6, "stime":J
    iget-wide v10, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_utime:J

    cmp-long v10, v0, v10

    if-nez v10, :cond_d2

    iget-wide v10, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_stime:J

    cmp-long v10, v6, v10

    if-nez v10, :cond_d2

    .line 446
    const/4 v10, 0x0

    iput v10, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_utime:I

    .line 447
    iput v10, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_stime:I

    .line 448
    iput v10, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_minfaults:I

    .line 449
    iput v10, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_majfaults:I

    .line 450
    iget-boolean v11, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->active:Z

    if-eqz v11, :cond_ca

    .line 451
    iput-boolean v10, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->active:Z

    move-object v6, v5

    move-object/from16 v18, v13

    move/from16 v10, v21

    const/4 v0, 0x1

    goto/16 :goto_16f

    .line 450
    :cond_ca
    move-object v6, v5

    move-object/from16 v18, v13

    move/from16 v10, v21

    const/4 v0, 0x1

    goto/16 :goto_16f

    .line 456
    :cond_d2
    iget-boolean v10, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->active:Z

    if-nez v10, :cond_da

    .line 457
    const/4 v10, 0x1

    iput-boolean v10, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->active:Z

    goto :goto_db

    .line 456
    :cond_da
    const/4 v10, 0x1

    .line 460
    :goto_db
    if-gez v8, :cond_120

    .line 461
    iget-object v11, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v5, v2, v11}, Lcom/android/server/ssrm/TopCpuUsageTracker;->getName(Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;Ljava/lang/String;)V

    .line 462
    iget-object v11, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v11, :cond_110

    .line 463
    iget-object v11, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadsDir:Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v10, v5, Lcom/android/server/ssrm/TopCpuUsageTracker;->mCurThreadPids:[I

    iget-object v5, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    const/16 v17, 0x0

    move-wide/from16 v27, v0

    .end local v0    # "utime":J
    .local v27, "utime":J
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v11, v2

    .end local v2    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .local v11, "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    move v2, v3

    move/from16 v29, v3

    .end local v3    # "pid":I
    .local v29, "pid":I
    move/from16 v3, v16

    move-object/from16 v16, v4

    .end local v4    # "procStats":[J
    .local v16, "procStats":[J
    move-object v4, v10

    move/from16 v10, v21

    .end local v21    # "i":I
    .local v10, "i":I
    move-wide v7, v6

    move-object/from16 v18, v13

    move-wide/from16 v12, v23

    .end local v6    # "stime":J
    .end local v13    # "pids":[I
    .end local v23    # "majfaults":J
    .local v7, "stime":J
    .local v12, "majfaults":J
    .local v18, "pids":[I
    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ssrm/TopCpuUsageTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I

    move-result-object v0

    move-object/from16 v6, p0

    iput-object v0, v6, Lcom/android/server/ssrm/TopCpuUsageTracker;->mCurThreadPids:[I

    goto :goto_12f

    .line 462
    .end local v7    # "stime":J
    .end local v10    # "i":I
    .end local v11    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .end local v12    # "majfaults":J
    .end local v16    # "procStats":[J
    .end local v18    # "pids":[I
    .end local v27    # "utime":J
    .end local v29    # "pid":I
    .restart local v0    # "utime":J
    .restart local v2    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .restart local v3    # "pid":I
    .restart local v4    # "procStats":[J
    .restart local v6    # "stime":J
    .restart local v13    # "pids":[I
    .restart local v21    # "i":I
    .restart local v23    # "majfaults":J
    :cond_110
    move-wide/from16 v27, v0

    move-object v11, v2

    move/from16 v29, v3

    move-object/from16 v16, v4

    move-wide v7, v6

    move-object/from16 v18, v13

    move/from16 v10, v21

    move-wide/from16 v12, v23

    move-object v6, v5

    .end local v0    # "utime":J
    .end local v2    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .end local v3    # "pid":I
    .end local v4    # "procStats":[J
    .end local v6    # "stime":J
    .end local v13    # "pids":[I
    .end local v21    # "i":I
    .end local v23    # "majfaults":J
    .restart local v7    # "stime":J
    .restart local v10    # "i":I
    .restart local v11    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .restart local v12    # "majfaults":J
    .restart local v16    # "procStats":[J
    .restart local v18    # "pids":[I
    .restart local v27    # "utime":J
    .restart local v29    # "pid":I
    goto :goto_12f

    .line 460
    .end local v7    # "stime":J
    .end local v10    # "i":I
    .end local v11    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .end local v12    # "majfaults":J
    .end local v16    # "procStats":[J
    .end local v18    # "pids":[I
    .end local v27    # "utime":J
    .end local v29    # "pid":I
    .restart local v0    # "utime":J
    .restart local v2    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .restart local v3    # "pid":I
    .restart local v4    # "procStats":[J
    .restart local v6    # "stime":J
    .restart local v13    # "pids":[I
    .restart local v21    # "i":I
    .restart local v23    # "majfaults":J
    :cond_120
    move-wide/from16 v27, v0

    move-object v11, v2

    move/from16 v29, v3

    move-object/from16 v16, v4

    move-wide v7, v6

    move-object/from16 v18, v13

    move/from16 v10, v21

    move-wide/from16 v12, v23

    move-object v6, v5

    .line 476
    .end local v0    # "utime":J
    .end local v2    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .end local v3    # "pid":I
    .end local v4    # "procStats":[J
    .end local v6    # "stime":J
    .end local v13    # "pids":[I
    .end local v21    # "i":I
    .end local v23    # "majfaults":J
    .restart local v7    # "stime":J
    .restart local v10    # "i":I
    .restart local v11    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .restart local v12    # "majfaults":J
    .restart local v16    # "procStats":[J
    .restart local v18    # "pids":[I
    .restart local v27    # "utime":J
    .restart local v29    # "pid":I
    :goto_12f
    iget-wide v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_uptime:J

    sub-long v0, v14, v0

    iput-wide v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_uptime:J

    .line 477
    iput-wide v14, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_uptime:J

    .line 478
    iget-wide v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_utime:J

    move-wide/from16 v2, v27

    .end local v27    # "utime":J
    .local v2, "utime":J
    sub-long v0, v2, v0

    long-to-int v0, v0

    iput v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_utime:I

    .line 479
    iget-wide v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_stime:J

    sub-long v0, v7, v0

    long-to-int v0, v0

    iput v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_stime:I

    .line 480
    iput-wide v2, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_utime:J

    .line 481
    iput-wide v7, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_stime:J

    .line 482
    iget-wide v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_minfaults:J

    move-wide/from16 v4, v25

    .end local v25    # "minfaults":J
    .local v4, "minfaults":J
    sub-long v0, v4, v0

    long-to-int v0, v0

    iput v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_minfaults:I

    .line 483
    iget-wide v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_majfaults:J

    sub-long v0, v12, v0

    long-to-int v0, v0

    iput v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_majfaults:I

    .line 484
    iput-wide v4, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_minfaults:J

    .line 485
    iput-wide v12, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_majfaults:J

    .line 486
    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->working:Z

    .line 487
    .end local v2    # "utime":J
    .end local v4    # "minfaults":J
    .end local v7    # "stime":J
    .end local v12    # "majfaults":J
    .end local v14    # "uptime":J
    .end local v16    # "procStats":[J
    goto :goto_16f

    .line 431
    .end local v10    # "i":I
    .end local v11    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .end local v18    # "pids":[I
    .end local v20    # "NP":I
    .end local v22    # "NS":I
    .end local v29    # "pid":I
    .local v2, "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .restart local v3    # "pid":I
    .restart local v5    # "i":I
    .local v6, "NS":I
    .restart local v13    # "pids":[I
    .restart local v15    # "NP":I
    :cond_163
    move-object v11, v2

    move/from16 v29, v3

    move v10, v5

    move/from16 v22, v6

    move-object v6, v7

    move-object/from16 v18, v13

    move/from16 v20, v15

    const/4 v0, 0x1

    .line 414
    .end local v2    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .end local v3    # "pid":I
    .end local v5    # "i":I
    .end local v6    # "NS":I
    .end local v13    # "pids":[I
    .end local v15    # "NP":I
    .restart local v10    # "i":I
    .restart local v18    # "pids":[I
    .restart local v20    # "NP":I
    .restart local v22    # "NS":I
    :goto_16f
    move/from16 v12, p2

    move-object v7, v6

    move v5, v10

    move/from16 v1, v19

    move/from16 v6, v22

    goto/16 :goto_268

    .line 422
    .end local v10    # "i":I
    .end local v18    # "pids":[I
    .end local v19    # "curStatsIndex":I
    .end local v20    # "NP":I
    .end local v22    # "NS":I
    .restart local v1    # "curStatsIndex":I
    .restart local v2    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .restart local v3    # "pid":I
    .restart local v5    # "i":I
    .restart local v6    # "NS":I
    .restart local v13    # "pids":[I
    .restart local v15    # "NP":I
    :cond_179
    move-object v11, v2

    move/from16 v29, v3

    move v10, v5

    move/from16 v22, v6

    move-object v6, v7

    move-object/from16 v18, v13

    move/from16 v20, v15

    const/4 v7, 0x1

    .line 492
    .end local v2    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .end local v3    # "pid":I
    .end local v5    # "i":I
    .end local v6    # "NS":I
    .end local v13    # "pids":[I
    .end local v15    # "NP":I
    .restart local v10    # "i":I
    .restart local v11    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .restart local v18    # "pids":[I
    .restart local v20    # "NP":I
    .restart local v22    # "NS":I
    .restart local v29    # "pid":I
    if-eqz v11, :cond_1ac

    iget v2, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->pid:I

    move/from16 v8, v29

    .end local v29    # "pid":I
    .local v8, "pid":I
    if-le v2, v8, :cond_18e

    goto :goto_1ae

    .line 558
    :cond_18e
    const/4 v0, 0x0

    iput v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_utime:I

    .line 559
    iput v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_stime:I

    .line 560
    iput v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_minfaults:I

    .line 561
    iput v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_majfaults:I

    .line 562
    iput-boolean v7, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->removed:Z

    .line 563
    iput-boolean v7, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->working:Z

    .line 564
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 565
    add-int/lit8 v0, v22, -0x1

    .line 571
    .end local v22    # "NS":I
    .local v0, "NS":I
    add-int/lit8 v5, v10, -0x1

    .line 572
    .end local v10    # "i":I
    .restart local v5    # "i":I
    move/from16 v12, p2

    move-object/from16 v30, v6

    move v6, v0

    move v0, v7

    move-object/from16 v7, v30

    goto/16 :goto_268

    .line 492
    .end local v0    # "NS":I
    .end local v5    # "i":I
    .end local v8    # "pid":I
    .restart local v10    # "i":I
    .restart local v22    # "NS":I
    .restart local v29    # "pid":I
    :cond_1ac
    move/from16 v8, v29

    .line 494
    .end local v29    # "pid":I
    .restart local v8    # "pid":I
    :goto_1ae
    new-instance v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;

    iget-boolean v3, v6, Lcom/android/server/ssrm/TopCpuUsageTracker;->mIncludeThreads:Z

    move/from16 v12, p2

    invoke-direct {v2, v8, v12, v3}, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;-><init>(IIZ)V

    move-object v11, v2

    .line 495
    invoke-virtual {v9, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 496
    add-int/lit8 v13, v1, 0x1

    .line 497
    .end local v1    # "curStatsIndex":I
    .local v13, "curStatsIndex":I
    add-int/lit8 v14, v22, 0x1

    .line 502
    .end local v22    # "NS":I
    .local v14, "NS":I
    iget-object v15, v6, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 503
    .local v15, "procStatsString":[Ljava/lang/String;
    iget-object v5, v6, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcessFullStatsData:[J

    .line 504
    .local v5, "procStats":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_uptime:J

    .line 505
    iget-object v1, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 507
    .local v4, "path":Ljava/lang/String;
    sget-object v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->PROCESS_FULL_STATS_FORMAT:[I

    invoke-static {v4, v1, v15, v5, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-eqz v0, :cond_1fb

    .line 513
    const/4 v0, 0x5

    aget-wide v0, v5, v0

    iput-wide v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->vsize:J

    .line 515
    iput-boolean v7, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->interesting:Z

    .line 516
    const/4 v0, 0x0

    aget-object v1, v15, v0

    iput-object v1, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->baseName:Ljava/lang/String;

    .line 517
    aget-wide v0, v5, v7

    iput-wide v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_minfaults:J

    .line 518
    aget-wide v0, v5, v17

    iput-wide v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_majfaults:J

    .line 519
    aget-wide v0, v5, v16

    iget-wide v2, v6, Lcom/android/server/ssrm/TopCpuUsageTracker;->mJiffyMillis:J

    mul-long/2addr v0, v2

    iput-wide v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_utime:J

    .line 520
    const/4 v0, 0x4

    aget-wide v0, v5, v0

    iget-wide v2, v6, Lcom/android/server/ssrm/TopCpuUsageTracker;->mJiffyMillis:J

    mul-long/2addr v0, v2

    iput-wide v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_stime:J

    goto :goto_209

    .line 524
    :cond_1fb
    const-string v0, "<unknown>"

    iput-object v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->baseName:Ljava/lang/String;

    .line 525
    const-wide/16 v0, 0x0

    iput-wide v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_stime:J

    iput-wide v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_utime:J

    .line 526
    iput-wide v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_majfaults:J

    iput-wide v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_minfaults:J

    .line 529
    :goto_209
    if-gez v12, :cond_23c

    .line 530
    iget-object v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v6, v11, v0}, Lcom/android/server/ssrm/TopCpuUsageTracker;->getName(Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;Ljava/lang/String;)V

    .line 531
    iget-object v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v0, :cond_236

    .line 532
    iget-object v1, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadsDir:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v2, v6, Lcom/android/server/ssrm/TopCpuUsageTracker;->mCurThreadPids:[I

    iget-object v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v19, v2

    move v2, v8

    move-object/from16 v21, v4

    .end local v4    # "path":Ljava/lang/String;
    .local v21, "path":Ljava/lang/String;
    move-object/from16 v4, v19

    move-object/from16 v19, v5

    .end local v5    # "procStats":[J
    .local v19, "procStats":[J
    move-object/from16 v5, v17

    move-object v7, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ssrm/TopCpuUsageTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/ssrm/TopCpuUsageTracker;->mCurThreadPids:[I

    goto :goto_251

    .line 531
    .end local v19    # "procStats":[J
    .end local v21    # "path":Ljava/lang/String;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v5    # "procStats":[J
    :cond_236
    move-object/from16 v21, v4

    move-object/from16 v19, v5

    move-object v7, v6

    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "procStats":[J
    .restart local v19    # "procStats":[J
    .restart local v21    # "path":Ljava/lang/String;
    goto :goto_251

    .line 535
    .end local v19    # "procStats":[J
    .end local v21    # "path":Ljava/lang/String;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v5    # "procStats":[J
    :cond_23c
    move-object/from16 v21, v4

    move-object/from16 v19, v5

    move-object v7, v6

    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "procStats":[J
    .restart local v19    # "procStats":[J
    .restart local v21    # "path":Ljava/lang/String;
    iget-boolean v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->interesting:Z

    if-eqz v0, :cond_251

    .line 536
    iget-object v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->baseName:Ljava/lang/String;

    iput-object v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->name:Ljava/lang/String;

    .line 537
    iget-object v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/android/server/ssrm/TopCpuUsageTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v0

    iput v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->nameWidth:I

    .line 546
    :cond_251
    :goto_251
    const/4 v0, 0x0

    iput v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_utime:I

    .line 547
    iput v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_stime:I

    .line 548
    iput v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_minfaults:I

    .line 549
    iput v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_majfaults:I

    .line 550
    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->added:Z

    .line 551
    if-nez p3, :cond_265

    iget-boolean v1, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->interesting:Z

    if-eqz v1, :cond_265

    .line 552
    iput-boolean v0, v11, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->working:Z

    .line 414
    .end local v8    # "pid":I
    .end local v11    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .end local v15    # "procStatsString":[Ljava/lang/String;
    .end local v19    # "procStats":[J
    .end local v21    # "path":Ljava/lang/String;
    :cond_265
    move v5, v10

    move v1, v13

    move v6, v14

    .end local v10    # "i":I
    .end local v13    # "curStatsIndex":I
    .end local v14    # "NS":I
    .restart local v1    # "curStatsIndex":I
    .local v5, "i":I
    .restart local v6    # "NS":I
    :goto_268
    add-int/2addr v5, v0

    move-object/from16 v11, p1

    move-object/from16 v10, p6

    move v8, v12

    move-object/from16 v13, v18

    move/from16 v15, v20

    const/4 v14, 0x0

    move-object/from16 v12, p4

    goto/16 :goto_41

    .end local v18    # "pids":[I
    .end local v20    # "NP":I
    .local v13, "pids":[I
    .local v15, "NP":I
    :cond_277
    move v10, v5

    move/from16 v22, v6

    move v12, v8

    move-object/from16 v18, v13

    move/from16 v20, v15

    .line 575
    .end local v5    # "i":I
    .end local v13    # "pids":[I
    .restart local v18    # "pids":[I
    :goto_27f
    if-ge v1, v6, :cond_29c

    .line 577
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;

    .line 578
    .local v0, "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_utime:I

    .line 579
    iput v2, v0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_stime:I

    .line 580
    iput v2, v0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_minfaults:I

    .line 581
    iput v2, v0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_majfaults:I

    .line 582
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->removed:Z

    .line 583
    iput-boolean v3, v0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->working:Z

    .line 584
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 585
    nop

    .end local v0    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    add-int/lit8 v6, v6, -0x1

    .line 588
    goto :goto_27f

    .line 590
    :cond_29c
    return-object v18
.end method

.method private getName(Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;Ljava/lang/String;)V
    .registers 8
    .param p1, "st"    # Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .param p2, "cmdlineFile"    # Ljava/lang/String;

    .line 777
    iget-object v0, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->name:Ljava/lang/String;

    .line 778
    .local v0, "newName":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_1a

    iget-object v1, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->name:Ljava/lang/String;

    const-string v2, "app_process"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->name:Ljava/lang/String;

    .line 779
    const-string v2, "<pre-initialized>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 780
    :cond_1a
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/ssrm/TopCpuUsageTracker;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, "cmdName":Ljava/lang/String;
    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3e

    .line 782
    move-object v0, v1

    .line 783
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 784
    .local v2, "i":I
    if-lez v2, :cond_3e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_3e

    .line 785
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 788
    .end local v2    # "i":I
    :cond_3e
    if-nez v0, :cond_42

    .line 789
    iget-object v0, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->baseName:Ljava/lang/String;

    .line 792
    .end local v1    # "cmdName":Ljava/lang/String;
    :cond_42
    iget-object v1, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_4e

    iget-object v1, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 793
    :cond_4e
    iput-object v0, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->name:Ljava/lang/String;

    .line 794
    iget-object v1, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/TopCpuUsageTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->nameWidth:I

    .line 796
    :cond_58
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .registers 10
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "endChar"    # C

    .line 751
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 752
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    .line 754
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 755
    iget-object v2, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBuffer:[B

    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .line 756
    .local v2, "len":I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 758
    if-lez v2, :cond_32

    .line 760
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v2, :cond_23

    .line 761
    iget-object v4, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBuffer:[B

    aget-byte v4, v4, v3

    if-ne v4, p2, :cond_20

    .line 762
    goto :goto_23

    .line 760
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 765
    :cond_23
    :goto_23
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBuffer:[B

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_2b} :catch_3d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2b} :catch_3b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_33

    .line 770
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 771
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 765
    return-object v4

    .line 758
    .end local v2    # "len":I
    .end local v3    # "i":I
    :cond_32
    goto :goto_3e

    .line 770
    :catchall_33
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 771
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 772
    throw v2

    .line 768
    :catch_3b
    move-exception v2

    goto :goto_3e

    .line 767
    :catch_3d
    move-exception v2

    .line 770
    :goto_3e
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 771
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 772
    nop

    .line 773
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method final buildWorkingProcs()V
    .registers 8

    .line 671
    iget-boolean v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingProcsSorted:Z

    if-nez v0, :cond_65

    .line 672
    iget-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 673
    iget-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 674
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    const/4 v2, 0x1

    if-ge v1, v0, :cond_5c

    .line 675
    iget-object v3, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;

    .line 676
    .local v3, "stats":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    iget-boolean v4, v3, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->working:Z

    if-eqz v4, :cond_59

    .line 677
    iget-object v4, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    iget-object v4, v3, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v4, :cond_59

    iget-object v4, v3, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v2, :cond_59

    .line 679
    iget-object v2, v3, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 680
    iget-object v2, v3, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 681
    .local v2, "M":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3c
    if-ge v4, v2, :cond_52

    .line 682
    iget-object v5, v3, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;

    .line 683
    .local v5, "tstats":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    iget-boolean v6, v5, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->working:Z

    if-eqz v6, :cond_4f

    .line 684
    iget-object v6, v3, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    .end local v5    # "tstats":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 687
    .end local v4    # "j":I
    :cond_52
    iget-object v4, v3, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/ssrm/TopCpuUsageTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 674
    .end local v2    # "M":I
    .end local v3    # "stats":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 691
    .end local v1    # "i":I
    :cond_5c
    iget-object v1, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/ssrm/TopCpuUsageTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 692
    iput-boolean v2, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingProcsSorted:Z

    .line 694
    .end local v0    # "N":I
    :cond_65
    return-void
.end method

.method final buildWorkingThreads()V
    .registers 8

    .line 697
    iget-boolean v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingThreadsSorted:Z

    if-nez v0, :cond_65

    .line 698
    iget-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 699
    iget-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 700
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_5b

    .line 701
    iget-object v2, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;

    .line 702
    .local v2, "stats":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    iget-boolean v3, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->working:Z

    if-eqz v3, :cond_58

    .line 703
    iget-object v3, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v3, :cond_58

    iget-object v3, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_58

    .line 704
    iget-object v3, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 705
    iget-object v3, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 706
    .local v3, "M":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_36
    if-ge v4, v3, :cond_51

    .line 707
    iget-object v5, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;

    .line 708
    .local v5, "tstats":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    iget-boolean v6, v5, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->working:Z

    if-eqz v6, :cond_4e

    .line 709
    iget-object v6, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    iget-object v6, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    .end local v5    # "tstats":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 713
    .end local v4    # "j":I
    :cond_51
    iget-object v4, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/ssrm/TopCpuUsageTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 700
    .end local v2    # "stats":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .end local v3    # "M":I
    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 717
    .end local v1    # "i":I
    :cond_5b
    iget-object v1, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingThreads:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/ssrm/TopCpuUsageTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 718
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingThreadsSorted:Z

    .line 720
    .end local v0    # "N":I
    :cond_65
    return-void
.end method

.method public final countStats()I
    .registers 2

    .line 723
    iget-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final countWorkingStats(Z)I
    .registers 3
    .param p1, "includeThreads"    # Z

    .line 731
    if-eqz p1, :cond_c

    .line 732
    invoke-virtual {p0}, Lcom/android/server/ssrm/TopCpuUsageTracker;->buildWorkingThreads()V

    .line 733
    iget-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 735
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/ssrm/TopCpuUsageTracker;->buildWorkingProcs()V

    .line 736
    iget-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCpuTimeForPid(I)J
    .registers 9
    .param p1, "pid"    # I

    .line 598
    iget-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mSinglePidStatsData:[J

    monitor-enter v0

    .line 599
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/stat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, "statFile":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mSinglePidStatsData:[J

    .line 601
    .local v2, "statsData":[J
    sget-object v3, Lcom/android/server/ssrm/TopCpuUsageTracker;->PROCESS_STATS_FORMAT:[I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 602
    const/4 v3, 0x2

    aget-wide v3, v2, v3

    const/4 v5, 0x3

    aget-wide v5, v2, v5

    add-long/2addr v3, v5

    .line 603
    .local v3, "time":J
    iget-wide v5, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mJiffyMillis:J

    mul-long/2addr v5, v3

    monitor-exit v0

    return-wide v5

    .line 605
    .end local v3    # "time":J
    :cond_33
    const-wide/16 v3, 0x0

    monitor-exit v0

    return-wide v3

    .line 606
    .end local v1    # "statFile":Ljava/lang/String;
    .end local v2    # "statsData":[J
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public final getLastIdleTime()I
    .registers 2

    .line 648
    iget v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelIdleTime:I

    return v0
.end method

.method public final getLastIoWaitTime()I
    .registers 2

    .line 627
    iget v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelIoWaitTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .registers 2

    .line 634
    iget v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelIrqTime:I

    return v0
.end method

.method public final getLastSampleTime()J
    .registers 3

    .line 655
    iget-wide v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mCurrentSampleTime:J

    return-wide v0
.end method

.method public final getLastSoftIrqTime()I
    .registers 2

    .line 641
    iget v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelSoftIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .registers 2

    .line 620
    iget v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .registers 2

    .line 613
    iget v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelUserTime:I

    return v0
.end method

.method public final getStats(I)Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .registers 3
    .param p1, "index"    # I

    .line 727
    iget-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;

    return-object v0
.end method

.method public final getTotalCpuPercent()F
    .registers 6

    .line 663
    iget v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelUserTime:I

    iget v1, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelSystemTime:I

    add-int v2, v0, v1

    iget v3, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelIrqTime:I

    add-int/2addr v2, v3

    iget v4, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelIdleTime:I

    add-int/2addr v2, v4

    .line 664
    .local v2, "denom":I
    if-gtz v2, :cond_10

    .line 665
    const/4 v0, 0x0

    return v0

    .line 667
    :cond_10
    add-int/2addr v0, v1

    add-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public final getWorkingStats(IZ)Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .registers 4
    .param p1, "index"    # I
    .param p2, "includeThreads"    # Z

    .line 741
    if-eqz p2, :cond_b

    .line 742
    iget-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;

    return-object v0

    .line 744
    :cond_b
    iget-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;

    return-object v0
.end method

.method public final hasGoodLastStats()Z
    .registers 2

    .line 659
    iget-boolean v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelStatsAreGood:Z

    return v0
.end method

.method public init(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 309
    .local p1, "tarPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mFirst:Z

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/TopCpuUsageTracker;->update(Ljava/util/ArrayList;)V

    .line 311
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public update(Ljava/util/ArrayList;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 317
    .local p1, "tarPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v8, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 319
    .local v9, "nowUptime":J
    iget-object v11, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mSystemCpuData:[J

    .line 320
    .local v11, "sysCpu":[J
    sget-object v0, Lcom/android/server/ssrm/TopCpuUsageTracker;->SYSTEM_CPU_FORMAT:[I

    const-string v1, "/proc/stat"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v11, v2}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_76

    .line 322
    aget-wide v0, v11, v12

    const/4 v2, 0x1

    aget-wide v3, v11, v2

    add-long/2addr v0, v3

    iget-wide v3, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mJiffyMillis:J

    mul-long/2addr v0, v3

    .line 324
    .local v0, "usertime":J
    const/4 v5, 0x2

    aget-wide v5, v11, v5

    mul-long/2addr v5, v3

    .line 326
    .local v5, "systemtime":J
    const/4 v7, 0x3

    aget-wide v13, v11, v7

    mul-long/2addr v13, v3

    .line 328
    .local v13, "idletime":J
    const/4 v7, 0x4

    aget-wide v15, v11, v7

    move-wide/from16 v17, v13

    .end local v13    # "idletime":J
    .local v17, "idletime":J
    mul-long v12, v15, v3

    .line 329
    .local v12, "iowaittime":J
    const/4 v7, 0x5

    aget-wide v14, v11, v7

    mul-long/2addr v14, v3

    .line 330
    .local v14, "irqtime":J
    const/4 v7, 0x6

    aget-wide v19, v11, v7

    mul-long v3, v3, v19

    .line 339
    .local v3, "softirqtime":J
    move-wide/from16 v19, v3

    .end local v3    # "softirqtime":J
    .local v19, "softirqtime":J
    iget-wide v2, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseUserTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    iput v2, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelUserTime:I

    .line 340
    iget-wide v2, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseSystemTime:J

    sub-long v2, v5, v2

    long-to-int v2, v2

    iput v2, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelSystemTime:I

    .line 341
    iget-wide v2, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseIoWaitTime:J

    sub-long v2, v12, v2

    long-to-int v2, v2

    iput v2, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelIoWaitTime:I

    .line 342
    iget-wide v2, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseIrqTime:J

    sub-long v2, v14, v2

    long-to-int v2, v2

    iput v2, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelIrqTime:I

    .line 343
    iget-wide v2, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseSoftIrqTime:J

    sub-long v3, v19, v2

    long-to-int v2, v3

    iput v2, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelSoftIrqTime:I

    .line 344
    iget-wide v2, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseIdleTime:J

    sub-long v2, v17, v2

    long-to-int v2, v2

    iput v2, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelIdleTime:I

    .line 345
    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelStatsAreGood:Z

    .line 357
    iput-wide v0, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseUserTime:J

    .line 358
    iput-wide v5, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseSystemTime:J

    .line 359
    iput-wide v12, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseIoWaitTime:J

    .line 360
    iput-wide v14, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseIrqTime:J

    .line 361
    move-wide/from16 v2, v19

    .end local v19    # "softirqtime":J
    .local v2, "softirqtime":J
    iput-wide v2, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseSoftIrqTime:J

    .line 362
    move-wide/from16 v19, v0

    move-wide/from16 v0, v17

    .end local v17    # "idletime":J
    .local v0, "idletime":J
    .local v19, "usertime":J
    iput-wide v0, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseIdleTime:J

    .line 377
    .end local v0    # "idletime":J
    .end local v2    # "softirqtime":J
    .end local v5    # "systemtime":J
    .end local v12    # "iowaittime":J
    .end local v14    # "irqtime":J
    .end local v19    # "usertime":J
    :cond_76
    iput-wide v9, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mCurrentSampleTime:J

    .line 379
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v12

    .line 381
    .local v12, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_7c
    const-string v2, "/proc"

    const/4 v3, -0x1

    iget-boolean v4, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mFirst:Z

    iget-object v5, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mCurPids:[I

    iget-object v6, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcStats:Ljava/util/ArrayList;

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/ssrm/TopCpuUsageTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mCurPids:[I
    :try_end_8f
    .catchall {:try_start_7c .. :try_end_8f} :catchall_9f

    .line 383
    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 384
    nop

    .line 390
    if-nez p1, :cond_99

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingProcsSorted:Z

    goto :goto_9c

    .line 393
    :cond_99
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingThreadsSorted:Z

    .line 395
    :goto_9c
    iput-boolean v0, v8, Lcom/android/server/ssrm/TopCpuUsageTracker;->mFirst:Z

    .line 396
    return-void

    .line 383
    :catchall_9f
    move-exception v0

    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 384
    throw v0
.end method
