.class public Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;
.super Ljava/lang/Object;
.source "CoreUsageChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$Singleton;,
        Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$ThreadGetLoad;,
        Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;
    }
.end annotation


# static fields
.field private static final CPU_CURRENT_FREQ:Ljava/lang/String; = "scaling_cur_freq"

.field private static final CPU_FREQ_PATH_PREFIX:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq"

.field private static final CPU_FREQ_TABLE:Ljava/lang/String; = "scaling_available_frequencies"

.field private static final CPU_RELATED_CPUS:Ljava/lang/String; = "related_cpus"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCpuPolicyInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCpuUsage:D

.field private mCurCSTime_CPULOAD:J

.field private mCurCUTime_CPULOAD:J

.field private mCurSTime_CPULOAD:J

.field private mCurTime_CPULOAD:J

.field private mCurUTime_CPULOAD:J

.field private final mLock:Ljava/lang/Object;

.field private mMaxFreqSum:I

.field private mNumOfCores:I

.field private mPid:I

.field private mPolicyCount:I

.field private mPrevCSTime_CPULOAD:J

.field private mPrevCUTime_CPULOAD:J

.field private mPrevSTime_CPULOAD:J

.field private mPrevTime_CPULOAD:J

.field private mPrevUTime_CPULOAD:J

.field private volatile mSkipUpdate:Z

.field private volatile mStopThread:Z

.field private mThread:Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$ThreadGetLoad;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "GameSDK@CoreUsageChecker"

    iput-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mThread:Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$ThreadGetLoad;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mStopThread:Z

    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mSkipUpdate:Z

    .line 20
    const-wide v1, -0x3f70c80000000000L    # -999.0

    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuUsage:D

    .line 21
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPid:I

    .line 23
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mLock:Ljava/lang/Object;

    .line 26
    iput v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPolicyCount:I

    .line 27
    const-wide/16 v1, -0x3e7

    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPrevTime_CPULOAD:J

    .line 28
    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPrevUTime_CPULOAD:J

    .line 29
    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPrevSTime_CPULOAD:J

    .line 30
    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPrevCUTime_CPULOAD:J

    .line 31
    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPrevCSTime_CPULOAD:J

    .line 32
    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurTime_CPULOAD:J

    .line 33
    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurUTime_CPULOAD:J

    .line 34
    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurSTime_CPULOAD:J

    .line 35
    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurCUTime_CPULOAD:J

    .line 36
    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurCSTime_CPULOAD:J

    .line 37
    iput v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mMaxFreqSum:I

    .line 38
    iput v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mNumOfCores:I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuPolicyInfos:Ljava/util/ArrayList;

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->initCpuFreqInfo()V

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$1;

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;-><init>()V

    return-void
.end method

.method private SLOGD(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 56
    sget-boolean v0, Lcom/samsung/android/gamesdk/Const;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 57
    const-string v0, "GameSDK@CoreUsageChecker"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_9
    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;

    .line 15
    iget-boolean v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mStopThread:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;

    .line 15
    iget-boolean v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mSkipUpdate:Z

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->updateCpuUsage()V

    return-void
.end method

.method private findMaxVarInSysFs(Ljava/lang/String;)I
    .registers 11
    .param p1, "path"    # Ljava/lang/String;

    .line 90
    const-string v0, "GameSDK@CoreUsageChecker"

    const/16 v1, -0x3e7

    :try_start_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v2, "file_cpufreqtable":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_10

    .line 92
    return v1

    .line 94
    :cond_10
    invoke-static {v0, p1}, Lcom/samsung/android/gamesdk/util/IO;->readSysFs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "freqtable":Ljava/lang/String;
    if-eqz v3, :cond_39

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 96
    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "array":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 98
    .local v5, "maxFreq":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_26
    array-length v7, v4

    if-ge v6, v7, :cond_38

    .line 99
    aget-object v7, v4, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2f} :catch_3a

    .line 100
    .local v7, "temp":I
    if-le v5, v7, :cond_33

    move v8, v5

    goto :goto_34

    :cond_33
    move v8, v7

    :goto_34
    move v5, v8

    .line 98
    .end local v7    # "temp":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 102
    .end local v6    # "i":I
    :cond_38
    return v5

    .line 107
    .end local v2    # "file_cpufreqtable":Ljava/io/File;
    .end local v3    # "freqtable":Ljava/lang/String;
    .end local v4    # "array":[Ljava/lang/String;
    .end local v5    # "maxFreq":I
    :cond_39
    goto :goto_59

    .line 105
    :catch_3a
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findMaxVarInSysFs(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_59
    return v1
.end method

.method public static getInstance()Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;
    .registers 1

    .line 377
    # getter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$Singleton;->instance:Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$Singleton;->access$1000()Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;

    move-result-object v0

    return-object v0
.end method

.method private initCpuFreqInfo()V
    .registers 13

    .line 135
    const-string v0, "/"

    const-string v1, "/sys/devices/system/cpu/cpufreq/"

    const-string v2, "initCpuFreqInfo(): mCpuPolicyInfos["

    const-string v3, "GameSDK@CoreUsageChecker"

    const/4 v4, 0x0

    iput v4, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPolicyCount:I

    .line 136
    iput v4, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mMaxFreqSum:I

    .line 137
    iput v4, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mNumOfCores:I

    .line 140
    :try_start_f
    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/devices/system/cpu/cpufreq"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v5, "cpu_freq_path_prefix":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_26

    .line 142
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const-string v1, "initCpuFreqInfo(): CPU PATH is not existed"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void

    .line 146
    :cond_26
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 148
    .local v6, "cpuPathFiles":[Ljava/io/File;
    if-nez v6, :cond_2d

    .line 149
    return-void

    .line 152
    :cond_2d
    array-length v7, v6

    :goto_2e
    if-ge v4, v7, :cond_ce

    aget-object v8, v6, v4

    .line 153
    .local v8, "info":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_ca

    .line 154
    new-instance v9, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;-><init>(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$1;)V

    .line 155
    .local v9, "cpuPolicyInfos":Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "policy"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_ca

    .line 156
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    # setter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->name:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->access$302(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    # getter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->name:Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->access$300(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "scaling_available_frequencies"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->findMaxVarInSysFs(Ljava/lang/String;)I

    move-result v10

    # setter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->maximum:I
    invoke-static {v9, v10}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->access$402(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;I)I

    .line 158
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    # getter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->name:Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->access$300(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "related_cpus"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->readNumberOfVarFromPath(Ljava/lang/String;)I

    move-result v10

    # setter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->count:I
    invoke-static {v9, v10}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->access$102(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;I)I

    .line 159
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    # getter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->name:Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->access$300(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "scaling_cur_freq"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # setter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->cur_path:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->access$002(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    iget-object v10, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuPolicyInfos:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget v10, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPolicyCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPolicyCount:I

    .line 152
    .end local v8    # "info":Ljava/io/File;
    .end local v9    # "cpuPolicyInfos":Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;
    :cond_ca
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2e

    .line 166
    :cond_ce
    iget-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuPolicyInfos:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$1;-><init>(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d9
    iget-object v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuPolicyInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1cc

    .line 175
    iget v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mMaxFreqSum:I

    iget-object v4, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuPolicyInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;

    # getter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->count:I
    invoke-static {v4}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->access$100(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)I

    move-result v4

    iget-object v7, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuPolicyInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;

    # getter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->maximum:I
    invoke-static {v7}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->access$400(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)I

    move-result v7

    mul-int/2addr v4, v7

    add-int/2addr v1, v4

    iput v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mMaxFreqSum:I

    .line 176
    iget v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mNumOfCores:I

    iget-object v4, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuPolicyInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;

    # getter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->count:I
    invoke-static {v4}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->access$100(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mNumOfCores:I

    .line 177
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "].name: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuPolicyInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;

    # getter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->name:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->access$300(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "].maximum: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuPolicyInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;

    # getter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->maximum:I
    invoke-static {v7}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->access$400(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "].count: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuPolicyInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;

    # getter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->count:I
    invoke-static {v7}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->access$100(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "].cur_path: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuPolicyInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;

    # getter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->cur_path:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->access$000(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGV(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c8
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1c8} :catch_1cd

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d9

    .line 184
    .end local v0    # "i":I
    .end local v5    # "cpu_freq_path_prefix":Ljava/io/File;
    .end local v6    # "cpuPathFiles":[Ljava/io/File;
    :cond_1cc
    goto :goto_1ec

    .line 182
    :catch_1cd
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initCpuFreqInfo(): msg: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1ec
    return-void
.end method

.method private isAvailable()Z
    .registers 2

    .line 246
    iget-boolean v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mStopThread:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mThread:Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$ThreadGetLoad;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private readNumberOfVarFromPath(Ljava/lang/String;)I
    .registers 10
    .param p1, "path"    # Ljava/lang/String;

    .line 113
    const-string v0, "GameSDK@CoreUsageChecker"

    const/16 v1, -0x3e7

    :try_start_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v2, "file_numberOfVar":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_10

    .line 115
    return v1

    .line 117
    :cond_10
    invoke-static {v0, p1}, Lcom/samsung/android/gamesdk/util/IO;->readSysFs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "numberOvVar":Ljava/lang/String;
    if-eqz v3, :cond_36

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 119
    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "array":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 121
    .local v5, "num":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_26
    array-length v7, v4

    if-ge v6, v7, :cond_35

    .line 122
    aget-object v7, v4, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2f} :catch_37

    .line 123
    .local v7, "temp":I
    nop

    .end local v7    # "temp":I
    add-int/lit8 v5, v5, 0x1

    .line 121
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 125
    .end local v6    # "i":I
    :cond_35
    return v5

    .line 130
    .end local v2    # "file_numberOfVar":Ljava/io/File;
    .end local v3    # "numberOvVar":Ljava/lang/String;
    .end local v4    # "array":[Ljava/lang/String;
    .end local v5    # "num":I
    :cond_36
    goto :goto_56

    .line 128
    :catch_37
    move-exception v2

    .line 129
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readNumberOfVarFromPath(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_56
    return v1
.end method

.method private sumCpuFreqStats()I
    .registers 9

    .line 67
    const-string v0, "GameSDK@CoreUsageChecker"

    const/4 v1, 0x0

    .line 70
    .local v1, "sumofcurfreq":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    :try_start_4
    iget v3, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPolicyCount:I

    if-ge v2, v3, :cond_52

    .line 71
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuPolicyInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;

    # getter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->cur_path:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->access$000(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v3, "file_currentFreq":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_21

    .line 73
    const/4 v0, 0x0

    return v0

    .line 75
    :cond_21
    iget-object v4, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuPolicyInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;

    # getter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->cur_path:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->access$000(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/gamesdk/util/IO;->readSysFs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "currentFreq":Ljava/lang/String;
    if-eqz v4, :cond_4f

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 77
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 78
    .local v5, "curFreq":I
    div-int/lit16 v6, v5, 0x3e8

    iget-object v7, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuPolicyInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;

    # getter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->count:I
    invoke-static {v7}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->access$100(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)I

    move-result v7
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4d} :catch_53

    mul-int/2addr v6, v7

    add-int/2addr v1, v6

    .line 70
    .end local v3    # "file_currentFreq":Ljava/io/File;
    .end local v4    # "currentFreq":Ljava/lang/String;
    .end local v5    # "curFreq":I
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 84
    .end local v2    # "i":I
    :cond_52
    goto :goto_72

    .line 82
    :catch_53
    move-exception v2

    .line 83
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sumCpuFreqStats(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_72
    return v1
.end method

.method private updateCpuUsage()V
    .registers 10

    .line 306
    iget-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_3
    iget-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurUTime_CPULOAD:J

    const-wide/16 v3, -0x3e7

    cmp-long v5, v1, v3

    if-eqz v5, :cond_21

    iget-wide v5, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurSTime_CPULOAD:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_21

    .line 308
    iget-wide v7, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurTime_CPULOAD:J

    iput-wide v7, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPrevTime_CPULOAD:J

    .line 309
    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPrevUTime_CPULOAD:J

    .line 310
    iput-wide v5, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPrevSTime_CPULOAD:J

    .line 311
    iget-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurCUTime_CPULOAD:J

    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPrevCUTime_CPULOAD:J

    .line 312
    iget-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurCSTime_CPULOAD:J

    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPrevCSTime_CPULOAD:J
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_a9

    .line 316
    :cond_21
    :try_start_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurTime_CPULOAD:J

    .line 317
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "proc/%d/stat"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "mPathCPULoad":Ljava/lang/String;
    const-string v2, "GameSDK@CoreUsageChecker"

    invoke-static {v2, v1}, Lcom/samsung/android/gamesdk/util/IO;->readSysFs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "sysFsCpuUsage":Ljava/lang/String;
    if-eqz v2, :cond_72

    .line 322
    const-string v5, "\\s+"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, "mCPUStat":[Ljava/lang/String;
    const/16 v6, 0xd

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurUTime_CPULOAD:J

    .line 324
    const/16 v6, 0xe

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurSTime_CPULOAD:J

    .line 325
    const/16 v6, 0xf

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurCUTime_CPULOAD:J

    .line 326
    const/16 v6, 0x10

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurCSTime_CPULOAD:J

    .line 327
    .end local v5    # "mCPUStat":[Ljava/lang/String;
    goto :goto_7d

    .line 328
    :cond_72
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v5

    const-string v6, "GameSDK@CoreUsageChecker"

    const-string v8, "[FAIL] updateCpuUsage(): Failed to read CPU load sysfs"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_7d} :catch_7e
    .catchall {:try_start_21 .. :try_end_7d} :catchall_a9

    .line 336
    .end local v1    # "mPathCPULoad":Ljava/lang/String;
    .end local v2    # "sysFsCpuUsage":Ljava/lang/String;
    :goto_7d
    goto :goto_a7

    .line 330
    :catch_7e
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7f
    iput-wide v3, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurUTime_CPULOAD:J

    .line 332
    iput-wide v3, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurSTime_CPULOAD:J

    .line 333
    iput-wide v3, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurCUTime_CPULOAD:J

    .line 334
    iput-wide v3, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurCSTime_CPULOAD:J

    .line 335
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    const-string v3, "GameSDK@CoreUsageChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FAIL] updateCpuUsage(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_a7
    monitor-exit v0

    .line 338
    return-void

    .line 337
    :catchall_a9
    move-exception v1

    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_7f .. :try_end_ab} :catchall_a9

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 362
    const-string v0, "----------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    const-string v1, "GameSDK@CoreUsageChecker:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mThread:Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$ThreadGetLoad;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", stop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mStopThread:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    sget-boolean v1, Lcom/samsung/android/gamesdk/Const;->DEBUG:Z

    if-eqz v1, :cond_50

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last cpu usage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuUsage:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    :cond_50
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public getClusterInfo()I
    .registers 9

    .line 188
    const-string v0, "GameSDK@CoreUsageChecker"

    const/4 v1, 0x0

    .line 190
    .local v1, "numberOfClusters":I
    :try_start_3
    iget v2, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPolicyCount:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2d

    .line 191
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget-object v3, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuPolicyInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 192
    iget-object v3, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuPolicyInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;

    # getter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->count:I
    invoke-static {v3}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->access$100(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)I

    move-result v3

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    rsub-int/lit8 v6, v2, 0x2

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .end local v2    # "i":I
    :cond_2c
    goto :goto_7f

    .line 194
    :cond_2d
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_4f

    .line 195
    iget-object v2, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuPolicyInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;

    # getter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->count:I
    invoke-static {v2}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->access$100(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    iget-object v3, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuPolicyInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;

    # getter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->count:I
    invoke-static {v3}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->access$100(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .end local v1    # "numberOfClusters":I
    .local v2, "numberOfClusters":I
    goto :goto_7f

    .line 196
    .end local v2    # "numberOfClusters":I
    .restart local v1    # "numberOfClusters":I
    :cond_4f
    if-ne v2, v5, :cond_61

    .line 197
    iget-object v2, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuPolicyInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;

    # getter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->count:I
    invoke-static {v2}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;->access$100(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$CPUPolicyInfo;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    move v1, v2

    .end local v1    # "numberOfClusters":I
    .restart local v2    # "numberOfClusters":I
    goto :goto_7f

    .line 199
    .end local v2    # "numberOfClusters":I
    .restart local v1    # "numberOfClusters":I
    :cond_61
    const/16 v1, -0x3e7

    .line 200
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FAIL] getClustInfo(): Invalid  mPolicyCount: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPolicyCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v4, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 202
    :goto_7f
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getClustInfo(): numberOfClusters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGV(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_99} :catch_9a

    .line 203
    return v1

    .line 204
    :catch_9a
    move-exception v2

    .line 205
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getClustInfo(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/16 v0, -0x3e7

    return v0
.end method

.method public getCpuUsage()D
    .registers 19

    move-object/from16 v1, p0

    .line 251
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->isAvailable()Z

    move-result v0

    const-wide v2, -0x3f70c80000000000L    # -999.0

    const/4 v4, 0x0

    if-nez v0, :cond_1a

    .line 252
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const-string v5, "GameSDK@CoreUsageChecker"

    const-string v6, "[FAIL] getCpuLoad(): CoreUsageChecker is NOT available"

    invoke-virtual {v0, v5, v4, v6}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 253
    return-wide v2

    .line 255
    :cond_1a
    iget-object v5, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_c3

    .line 256
    const/4 v0, 0x1

    :try_start_1e
    iput-boolean v0, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mSkipUpdate:Z

    .line 257
    iget-wide v6, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurUTime_CPULOAD:J

    const-wide/16 v8, -0x3e7

    cmp-long v0, v6, v8

    if-eqz v0, :cond_a8

    iget-wide v6, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurSTime_CPULOAD:J

    cmp-long v0, v6, v8

    if-eqz v0, :cond_a8

    iget-wide v6, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurCUTime_CPULOAD:J

    cmp-long v0, v6, v8

    if-eqz v0, :cond_a8

    iget-wide v6, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurCSTime_CPULOAD:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_3d

    move-object/from16 v16, v5

    goto :goto_aa

    .line 262
    :cond_3d
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->sumCpuFreqStats()I

    move-result v0

    int-to-long v2, v0

    .line 263
    .local v2, "sumOfCurFreq":J
    iget-wide v6, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurTime_CPULOAD:J

    iget-wide v8, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPrevTime_CPULOAD:J

    sub-long/2addr v6, v8

    .line 264
    .local v6, "upTimeDiff":J
    iget-wide v8, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurUTime_CPULOAD:J

    iget-wide v10, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurSTime_CPULOAD:J

    add-long/2addr v8, v10

    iget-wide v10, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurCUTime_CPULOAD:J

    add-long/2addr v8, v10

    iget-wide v10, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurCSTime_CPULOAD:J

    add-long/2addr v8, v10

    iget-wide v10, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPrevUTime_CPULOAD:J

    iget-wide v12, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPrevSTime_CPULOAD:J

    add-long/2addr v10, v12

    iget-wide v12, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPrevCUTime_CPULOAD:J

    add-long/2addr v10, v12

    iget-wide v12, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPrevCSTime_CPULOAD:J

    add-long/2addr v10, v12

    sub-long/2addr v8, v10

    .line 266
    .local v8, "totalTimeDiff":J
    long-to-double v10, v8

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    long-to-double v14, v6

    div-double/2addr v10, v14

    div-double/2addr v10, v12

    .line 269
    .local v10, "cpuUsage":D
    iget v0, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mMaxFreqSum:I

    if-lez v0, :cond_7d

    iget v14, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mNumOfCores:I

    if-lez v14, :cond_7d

    .line 270
    long-to-double v12, v2

    int-to-double v14, v0

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v16

    div-double/2addr v12, v14

    mul-double/2addr v12, v10

    iput-wide v12, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuUsage:D
    :try_end_7a
    .catchall {:try_start_1e .. :try_end_7a} :catchall_bc

    move-object/from16 v16, v5

    goto :goto_88

    .line 272
    :cond_7d
    long-to-double v14, v8

    mul-double/2addr v14, v12

    move-object/from16 v16, v5

    long-to-double v4, v6

    div-double/2addr v14, v4

    :try_start_83
    iput-wide v14, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuUsage:D

    .line 273
    div-double/2addr v14, v12

    iput-wide v14, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuUsage:D

    .line 276
    :goto_88
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v4

    const-string v5, "GameSDK@CoreUsageChecker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getCpuUsage(): cpu usage: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuUsage:D

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v5, v12}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_b8

    .line 257
    .end local v2    # "sumOfCurFreq":J
    .end local v6    # "upTimeDiff":J
    .end local v8    # "totalTimeDiff":J
    .end local v10    # "cpuUsage":D
    :cond_a8
    move-object/from16 v16, v5

    .line 259
    :goto_aa
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v4

    const-string v5, "GameSDK@CoreUsageChecker"

    const-string v6, "[FAIL] getCpuUsage(): Invalid UT/ST/CUT/CST"

    const/4 v0, 0x0

    invoke-virtual {v4, v5, v0, v6}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 260
    iput-wide v2, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuUsage:D

    .line 278
    :goto_b8
    iput-boolean v0, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mSkipUpdate:Z

    .line 279
    monitor-exit v16

    .line 282
    goto :goto_e4

    .line 279
    :catchall_bc
    move-exception v0

    move-object/from16 v16, v5

    :goto_bf
    monitor-exit v16
    :try_end_c0
    .catchall {:try_start_83 .. :try_end_c0} :catchall_c1

    .end local p0    # "this":Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;
    :try_start_c0
    throw v0
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c1} :catch_c3

    .restart local p0    # "this":Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;
    :catchall_c1
    move-exception v0

    goto :goto_bf

    .line 280
    :catch_c3
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    const-string v3, "GameSDK@CoreUsageChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCpuUsage(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e4
    iget-wide v2, v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCpuUsage:D

    return-wide v2
.end method

.method public getGpuUsage()D
    .registers 9

    .line 287
    const-string v0, ""

    const-string v1, "GameSDK@CoreUsageChecker"

    const-wide v2, -0x3f70c80000000000L    # -999.0

    .line 289
    .local v2, "gpuUsage":D
    :try_start_9
    const-string v4, "/sys/kernel/gpu/gpu_busy"

    invoke-static {v1, v4}, Lcom/samsung/android/gamesdk/util/IO;->readSysFs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, "sysFsGpuUsage":Ljava/lang/String;
    if-eqz v4, :cond_34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    .line 292
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 293
    .local v5, "load":Ljava/lang/String;
    if-eqz v5, :cond_34

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 294
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_30} :catch_35

    move-wide v2, v6

    .line 295
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v6

    .line 300
    .end local v4    # "sysFsGpuUsage":Ljava/lang/String;
    .end local v5    # "load":Ljava/lang/String;
    :cond_34
    goto :goto_54

    .line 298
    :catch_35
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getGpuUsage(): msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_54
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getGpuUsage(): gpuUsage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-wide v2
.end method

.method public start(I)V
    .registers 5
    .param p1, "pid"    # I

    .line 211
    iget-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mThread:Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$ThreadGetLoad;

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mStopThread:Z

    if-nez v1, :cond_d

    .line 213
    monitor-exit v0

    return-void

    .line 216
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[START] CoreUsageChecker, pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->SLOGD(Ljava/lang/String;)V

    .line 217
    iput p1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPid:I

    .line 218
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mStopThread:Z

    .line 219
    new-instance v1, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$ThreadGetLoad;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$ThreadGetLoad;-><init>(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$1;)V

    iput-object v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mThread:Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$ThreadGetLoad;

    .line 220
    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$ThreadGetLoad;->start()V

    .line 221
    monitor-exit v0

    .line 222
    return-void

    .line 221
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public stop()V
    .registers 4

    .line 225
    iget-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    const-wide/16 v1, -0x3e7

    :try_start_5
    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPrevTime_CPULOAD:J

    .line 227
    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPrevUTime_CPULOAD:J

    .line 228
    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPrevSTime_CPULOAD:J

    .line 229
    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPrevCUTime_CPULOAD:J

    .line 230
    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mPrevCSTime_CPULOAD:J

    .line 231
    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurTime_CPULOAD:J

    .line 232
    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurUTime_CPULOAD:J

    .line 233
    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurSTime_CPULOAD:J

    .line 234
    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurCUTime_CPULOAD:J

    .line 235
    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mCurCSTime_CPULOAD:J

    .line 236
    const-string v1, "[STOP] CoreUsageChecker"

    invoke-direct {p0, v1}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->SLOGD(Ljava/lang/String;)V

    .line 237
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mStopThread:Z

    .line 238
    iget-object v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mThread:Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$ThreadGetLoad;

    if-eqz v1, :cond_28

    .line 239
    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$ThreadGetLoad;->interrupt()V

    .line 241
    :cond_28
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mThread:Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$ThreadGetLoad;

    .line 242
    monitor-exit v0

    .line 243
    return-void

    .line 242
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_2d

    throw v1
.end method
