.class public Lcom/android/server/ssrm/ProcessCpuUsage;
.super Ljava/lang/Object;
.source "ProcessCpuUsage.java"


# static fields
.field static final LOG_LEVEL_PROP:Ljava/lang/String; = "ro.boot.debug_level"

.field static final LOG_LEVEL_PROP_LOW:Ljava/lang/String; = "0x4f4c"

.field static sIsDebugLevelLow:Z


# instance fields
.field private final MIN_CPU_USAGE_TIME:J

.field private mCpuTrackerInfo:Landroid/os/CpuTrackerInfo;

.field private mProcessTracker:Lcom/android/server/ssrm/CustomProcessCpuTracker;

.field private mThreadTracker:Lcom/android/server/ssrm/CustomProcessCpuTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    nop

    .line 24
    const-string v0, "ro.boot.debug_level"

    const-string v1, "0x4f4c"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/ProcessCpuUsage;->sIsDebugLevelLow:Z

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mProcessTracker:Lcom/android/server/ssrm/CustomProcessCpuTracker;

    .line 28
    iput-object v0, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mThreadTracker:Lcom/android/server/ssrm/CustomProcessCpuTracker;

    .line 32
    const-wide/16 v1, 0x3e8

    iput-wide v1, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->MIN_CPU_USAGE_TIME:J

    .line 35
    new-instance v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/ssrm/CustomProcessCpuTracker;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mProcessTracker:Lcom/android/server/ssrm/CustomProcessCpuTracker;

    .line 36
    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->init(Ljava/util/ArrayList;)V

    .line 38
    new-instance v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mThreadTracker:Lcom/android/server/ssrm/CustomProcessCpuTracker;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v0, "tarPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mThreadTracker:Lcom/android/server/ssrm/CustomProcessCpuTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->init(Ljava/util/ArrayList;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getProcessCpuTracker(Z)Lcom/android/server/ssrm/CustomProcessCpuTracker;
    .registers 3
    .param p1, "includeThreads"    # Z

    .line 44
    if-nez p1, :cond_5

    .line 45
    iget-object v0, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mProcessTracker:Lcom/android/server/ssrm/CustomProcessCpuTracker;

    return-object v0

    .line 47
    :cond_5
    iget-object v0, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mThreadTracker:Lcom/android/server/ssrm/CustomProcessCpuTracker;

    return-object v0
.end method

.method public refresh(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;)Landroid/os/CpuTrackerInfo;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/os/CpuTrackerInfo;"
        }
    .end annotation

    .line 52
    .local p1, "tarPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "uidMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    const/4 v0, 0x1

    .line 53
    .local v0, "includeThreads":Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/ProcessCpuUsage;->getProcessCpuTracker(Z)Lcom/android/server/ssrm/CustomProcessCpuTracker;

    move-result-object v1

    .line 55
    .local v1, "mLocalTracker":Lcom/android/server/ssrm/CustomProcessCpuTracker;
    invoke-virtual {v1, p1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->update(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 56
    const/4 v2, 0x0

    return-object v2

    .line 58
    :cond_11
    new-instance v2, Landroid/os/CpuTrackerInfo;

    invoke-direct {v2}, Landroid/os/CpuTrackerInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuTrackerInfo:Landroid/os/CpuTrackerInfo;

    .line 60
    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->getBaseSampleTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/CpuTrackerInfo;->baseSampleTime:J

    .line 61
    iget-object v2, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuTrackerInfo:Landroid/os/CpuTrackerInfo;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->getLastSampleTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/CpuTrackerInfo;->lastSampleTime:J

    .line 63
    iget-object v2, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuTrackerInfo:Landroid/os/CpuTrackerInfo;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->getLastUserTime()I

    move-result v3

    .line 64
    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->getLastSystemTime()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->getLastIoWaitTime()I

    move-result v4

    add-int/2addr v3, v4

    .line 65
    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->getLastIrqTime()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->getLastSoftIrqTime()I

    move-result v4

    add-int/2addr v3, v4

    .line 66
    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->getLastIdleTime()I

    move-result v4

    add-int/2addr v3, v4

    int-to-long v3, v3

    iput-wide v3, v2, Landroid/os/CpuTrackerInfo;->totalCpuTime:J

    .line 68
    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->countWorkingStats(Z)I

    move-result v2

    .line 69
    .local v2, "size":I
    iget-object v3, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuTrackerInfo:Landroid/os/CpuTrackerInfo;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/os/CpuTrackerInfo;->curCpuStatsList:Ljava/util/ArrayList;

    .line 71
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_56
    if-ge v3, v2, :cond_f4

    .line 72
    invoke-virtual {v1, v3, v0}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->getWorkingStats(IZ)Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    move-result-object v4

    .line 73
    .local v4, "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    iget v5, v4, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_utime:I

    iget v6, v4, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v5, v6

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    cmp-long v5, v5, v7

    if-gez v5, :cond_6a

    .line 74
    goto/16 :goto_f0

    .line 76
    :cond_6a
    new-instance v5, Landroid/os/CpuStatsInfo;

    invoke-direct {v5}, Landroid/os/CpuStatsInfo;-><init>()V

    .line 77
    .local v5, "cpuStats":Landroid/os/CpuStatsInfo;
    iget-object v6, v4, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iput-object v6, v5, Landroid/os/CpuStatsInfo;->name:Ljava/lang/String;

    .line 78
    iget v6, v4, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_92

    .line 79
    iget v6, v4, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Landroid/os/CpuStatsInfo;->uid:I

    goto :goto_96

    .line 81
    :cond_92
    iget v6, v4, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->uid:I

    iput v6, v5, Landroid/os/CpuStatsInfo;->uid:I

    .line 83
    :goto_96
    iget v6, v4, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_utime:I

    int-to-long v6, v6

    iput-wide v6, v5, Landroid/os/CpuStatsInfo;->rel_utime:J

    .line 84
    iget v6, v4, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_stime:I

    int-to-long v6, v6

    iput-wide v6, v5, Landroid/os/CpuStatsInfo;->rel_stime:J

    .line 86
    const/4 v6, -0x1

    if-nez v0, :cond_aa

    .line 87
    iput v6, v5, Landroid/os/CpuStatsInfo;->tid:I

    .line 88
    iget v6, v4, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->pid:I

    iput v6, v5, Landroid/os/CpuStatsInfo;->pid:I

    goto :goto_c6

    .line 90
    :cond_aa
    iget v7, v4, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->pid:I

    iput v7, v5, Landroid/os/CpuStatsInfo;->tid:I

    .line 92
    :try_start_ae
    iget-object v7, v4, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, "tmp":[Ljava/lang/String;
    const/4 v8, 0x2

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v5, Landroid/os/CpuStatsInfo;->pid:I
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_bf} :catch_c0

    .line 97
    .end local v7    # "tmp":[Ljava/lang/String;
    goto :goto_c6

    .line 94
    :catch_c0
    move-exception v7

    .line 95
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    iput v6, v5, Landroid/os/CpuStatsInfo;->pid:I

    .line 100
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_c6
    iget-object v6, v5, Landroid/os/CpuStatsInfo;->name:Ljava/lang/String;

    const-string v7, "system_server"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e9

    .line 101
    iget-wide v6, v5, Landroid/os/CpuStatsInfo;->rel_utime:J

    iget-wide v8, v5, Landroid/os/CpuStatsInfo;->rel_stime:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    iget-object v8, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuTrackerInfo:Landroid/os/CpuTrackerInfo;

    iget-wide v8, v8, Landroid/os/CpuTrackerInfo;->totalCpuTime:J

    div-long/2addr v6, v8

    long-to-int v6, v6

    .line 103
    .local v6, "usage":I
    const-class v7, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 104
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 105
    .local v7, "binderStatsService":Lcom/android/server/BinderCallsStatsService$Internal;
    invoke-virtual {v7, v6}, Lcom/android/server/BinderCallsStatsService$Internal;->reportCpuUsage(I)V

    .line 107
    .end local v6    # "usage":I
    .end local v7    # "binderStatsService":Lcom/android/server/BinderCallsStatsService$Internal;
    :cond_e9
    iget-object v6, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuTrackerInfo:Landroid/os/CpuTrackerInfo;

    iget-object v6, v6, Landroid/os/CpuTrackerInfo;->curCpuStatsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v4    # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .end local v5    # "cpuStats":Landroid/os/CpuStatsInfo;
    :goto_f0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_56

    .line 110
    .end local v3    # "i":I
    :cond_f4
    iget-object v3, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuTrackerInfo:Landroid/os/CpuTrackerInfo;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/os/CpuTrackerInfo;->curCcuStatsList:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->getCcuStats()Ljava/util/ArrayList;

    move-result-object v3

    .line 112
    .local v3, "CcuStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_105
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;

    .line 113
    .local v5, "ccu":Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;
    new-instance v6, Landroid/os/CcuStatsInfo;

    invoke-direct {v6}, Landroid/os/CcuStatsInfo;-><init>()V

    .line 114
    .local v6, "ccuStatsInfo":Landroid/os/CcuStatsInfo;
    iget v7, v5, Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_135

    .line 115
    iget v7, v5, Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Landroid/os/CcuStatsInfo;->uid:I

    goto :goto_139

    .line 117
    :cond_135
    iget v7, v5, Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;->uid:I

    iput v7, v6, Landroid/os/CcuStatsInfo;->uid:I

    .line 119
    :goto_139
    iget-object v7, v5, Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;->cpuFreqTimeMs:[J

    iget-object v8, v5, Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;->cpuFreqTimeMs:[J

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    iput-object v7, v6, Landroid/os/CcuStatsInfo;->cpuFreqTimeMs:[J

    .line 120
    iget-object v7, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuTrackerInfo:Landroid/os/CpuTrackerInfo;

    iget-object v7, v7, Landroid/os/CpuTrackerInfo;->curCcuStatsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v5    # "ccu":Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;
    .end local v6    # "ccuStatsInfo":Landroid/os/CcuStatsInfo;
    goto :goto_105

    .line 123
    :cond_14c
    iget-object v4, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuTrackerInfo:Landroid/os/CpuTrackerInfo;

    return-object v4
.end method
