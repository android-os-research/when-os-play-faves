.class public Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;
.super Lcom/android/internal/os/KernelCpuUidTimeReader;
.source "KernelCpuUidTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuUidTimeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelCpuUidClusterTimeReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelCpuUidTimeReader<",
        "[J>;"
    }
.end annotation


# instance fields
.field private blacklist mBuffer:[J

.field private blacklist mCoresOnClusters:[I

.field private blacklist mCurTime:[J

.field private blacklist mDeltaTime:[J

.field private blacklist mNumClusters:I

.field private blacklist mNumCores:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/KernelCpuProcStringReader;Lcom/android/internal/os/KernelCpuUidBpfMapReader;Z)V
    .registers 5
    .param p1, "reader"    # Lcom/android/internal/os/KernelCpuProcStringReader;
    .param p2, "bpfReader"    # Lcom/android/internal/os/KernelCpuUidBpfMapReader;
    .param p3, "throttle"    # Z

    .line 940
    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;Lcom/android/internal/os/KernelCpuUidBpfMapReader;ZLcom/android/internal/os/Clock;)V

    .line 941
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "throttle"    # Z

    .line 929
    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;-><init>(ZLcom/android/internal/os/Clock;)V

    .line 930
    return-void
.end method

.method public constructor blacklist <init>(ZLcom/android/internal/os/Clock;)V
    .registers 5
    .param p1, "throttle"    # Z
    .param p2, "clock"    # Lcom/android/internal/os/Clock;

    .line 933
    invoke-static {}, Lcom/android/internal/os/KernelCpuProcStringReader;->getClusterTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcStringReader;

    move-result-object v0

    .line 934
    invoke-static {}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->getClusterTimeReaderInstance()Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    move-result-object v1

    .line 933
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/os/KernelCpuUidTimeReader;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;Lcom/android/internal/os/KernelCpuUidBpfMapReader;ZLcom/android/internal/os/Clock;)V

    .line 935
    return-void
.end method

.method private blacklist checkPrecondition(Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;)Z
    .registers 13
    .param p1, "iter"    # Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    .line 1067
    const/4 v0, 0x0

    if-eqz p1, :cond_a5

    invoke-virtual {p1}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->hasNextLine()Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_a5

    .line 1071
    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v1

    .line 1072
    .local v1, "line":Ljava/nio/CharBuffer;
    iget v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumClusters:I

    const/4 v3, 0x1

    if-lez v2, :cond_15

    .line 1073
    return v3

    .line 1075
    :cond_15
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1076
    .local v2, "lineStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1077
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mTag:Ljava/lang/String;

    const-string v4, "Empty uid_concurrent_policy_time"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    return v0

    .line 1081
    :cond_2b
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1082
    .local v4, "lineArray":[Ljava/lang/String;
    array-length v5, v4

    rem-int/lit8 v5, v5, 0x2

    const-string v6, "Malformed uid_concurrent_policy_time line: "

    if-eqz v5, :cond_4f

    .line 1083
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    return v0

    .line 1086
    :cond_4f
    array-length v5, v4

    div-int/lit8 v5, v5, 0x2

    new-array v5, v5, [I

    .line 1087
    .local v5, "clusters":[I
    const/4 v7, 0x0

    .line 1088
    .local v7, "cores":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_56
    array-length v9, v5

    if-ge v8, v9, :cond_8f

    .line 1089
    mul-int/lit8 v9, v8, 0x2

    aget-object v9, v4, v9

    const-string v10, "policy"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7c

    .line 1090
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    return v0

    .line 1093
    :cond_7c
    mul-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v3

    aget-object v9, v4, v9

    const/16 v10, 0xa

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    aput v9, v5, v8

    .line 1094
    aget v9, v5, v8

    add-int/2addr v7, v9

    .line 1088
    add-int/lit8 v8, v8, 0x1

    goto :goto_56

    .line 1096
    .end local v8    # "i":I
    :cond_8f
    array-length v0, v5

    iput v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumClusters:I

    .line 1097
    iput v7, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumCores:I

    .line 1098
    iput-object v5, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mCoresOnClusters:[I

    .line 1099
    add-int/lit8 v6, v7, 0x1

    new-array v6, v6, [J

    iput-object v6, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBuffer:[J

    .line 1100
    new-array v6, v0, [J

    iput-object v6, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mCurTime:[J

    .line 1101
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mDeltaTime:[J

    .line 1102
    return v3

    .line 1069
    .end local v1    # "line":Ljava/nio/CharBuffer;
    .end local v2    # "lineStr":Ljava/lang/String;
    .end local v4    # "lineArray":[Ljava/lang/String;
    .end local v5    # "clusters":[I
    .end local v7    # "cores":I
    :cond_a5
    :goto_a5
    return v0
.end method

.method private blacklist checkPrecondition(Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;)Z
    .registers 9
    .param p1, "iter"    # Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;

    .line 1040
    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 1041
    iput-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBpfTimesAvailable:Z

    .line 1042
    return v0

    .line 1044
    :cond_6
    iget v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumClusters:I

    const/4 v2, 0x1

    if-lez v1, :cond_c

    .line 1045
    return v2

    .line 1047
    :cond_c
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBpfReader:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->getDataDimensions()[J

    move-result-object v1

    .line 1048
    .local v1, "coresOnClusters":[J
    if-eqz v1, :cond_41

    array-length v3, v1

    if-ge v3, v2, :cond_18

    goto :goto_41

    .line 1052
    :cond_18
    array-length v0, v1

    iput v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumClusters:I

    .line 1053
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mCoresOnClusters:[I

    .line 1054
    const/4 v0, 0x0

    .line 1055
    .local v0, "cores":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    iget v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumClusters:I

    if-ge v3, v4, :cond_30

    .line 1056
    iget-object v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mCoresOnClusters:[I

    aget-wide v5, v1, v3

    long-to-int v5, v5

    aput v5, v4, v3

    .line 1057
    add-int/2addr v0, v5

    .line 1055
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 1059
    .end local v3    # "i":I
    :cond_30
    iput v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumCores:I

    .line 1060
    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBuffer:[J

    .line 1061
    new-array v3, v4, [J

    iput-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mCurTime:[J

    .line 1062
    new-array v3, v4, [J

    iput-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mDeltaTime:[J

    .line 1063
    return v2

    .line 1049
    .end local v0    # "cores":I
    :cond_41
    :goto_41
    iput-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBpfTimesAvailable:Z

    .line 1050
    return v0
.end method

.method private blacklist sumClusterTime()V
    .registers 14

    .line 1027
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBpfTimesAvailable:Z

    if-eqz v0, :cond_7

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_9

    :cond_7
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 1029
    .local v0, "factor":D
    :goto_9
    const/4 v2, 0x1

    .line 1030
    .local v2, "core":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    iget v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumClusters:I

    if-ge v3, v4, :cond_2f

    .line 1031
    const-wide/16 v4, 0x0

    .line 1032
    .local v4, "sum":D
    const/4 v6, 0x1

    .local v6, "j":I
    :goto_12
    iget-object v7, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mCoresOnClusters:[I

    aget v7, v7, v3

    if-gt v6, v7, :cond_27

    .line 1033
    iget-object v7, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBuffer:[J

    add-int/lit8 v8, v2, 0x1

    .end local v2    # "core":I
    .local v8, "core":I
    aget-wide v9, v7, v2

    long-to-double v9, v9

    mul-double/2addr v9, v0

    int-to-double v11, v6

    div-double/2addr v9, v11

    add-double/2addr v4, v9

    .line 1032
    add-int/lit8 v6, v6, 0x1

    move v2, v8

    goto :goto_12

    .line 1035
    .end local v6    # "j":I
    .end local v8    # "core":I
    .restart local v2    # "core":I
    :cond_27
    iget-object v6, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mCurTime:[J

    double-to-long v7, v4

    aput-wide v7, v6, v3

    .line 1030
    .end local v4    # "sum":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1037
    .end local v3    # "i":I
    :cond_2f
    return-void
.end method


# virtual methods
.method blacklist processUidDelta(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "[J>;)V"
        }
    .end annotation

    .line 944
    .local p1, "cb":Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;, "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<[J>;"
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBuffer:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    long-to-int v0, v2

    .line 945
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mLastTimes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 946
    .local v2, "lastTimes":[J
    if-nez v2, :cond_19

    .line 947
    iget v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumClusters:I

    new-array v2, v3, [J

    .line 948
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mLastTimes:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 950
    :cond_19
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->sumClusterTime()V

    .line 951
    const/4 v3, 0x1

    .line 952
    .local v3, "valid":Z
    const/4 v4, 0x0

    .line 953
    .local v4, "notify":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1f
    iget v6, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumClusters:I

    if-ge v5, v6, :cond_66

    .line 954
    iget-object v6, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mDeltaTime:[J

    iget-object v7, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mCurTime:[J

    aget-wide v7, v7, v5

    aget-wide v9, v2, v5

    sub-long/2addr v7, v9

    aput-wide v7, v6, v5

    .line 955
    const-wide/16 v9, 0x0

    cmp-long v6, v7, v9

    if-gez v6, :cond_5b

    .line 956
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Negative delta from cluster time for uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", delta: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mDeltaTime:[J

    aget-wide v7, v7, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    return-void

    .line 960
    :cond_5b
    cmp-long v6, v7, v9

    if-lez v6, :cond_61

    const/4 v6, 0x1

    goto :goto_62

    :cond_61
    move v6, v1

    :goto_62
    or-int/2addr v4, v6

    .line 953
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 962
    .end local v5    # "i":I
    :cond_66
    if-eqz v4, :cond_74

    .line 963
    iget-object v5, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mCurTime:[J

    invoke-static {v5, v1, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 964
    if-eqz p1, :cond_74

    .line 965
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mDeltaTime:[J

    invoke-interface {p1, v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;->onUidCpuTime(ILjava/lang/Object;)V

    .line 968
    :cond_74
    return-void
.end method

.method blacklist readAbsoluteImpl(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "[J>;)V"
        }
    .end annotation

    .line 999
    .local p1, "cb":Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;, "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<[J>;"
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBpfTimesAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    .line 1000
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBpfReader:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    iget-boolean v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mThrottle:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->open(Z)Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;

    move-result-object v0

    .line 1001
    .local v0, "iter":Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;
    :try_start_f
    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->checkPrecondition(Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1002
    :goto_15
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBuffer:[J

    invoke-virtual {v0, v2}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->getNextUid([J)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1003
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->sumClusterTime()V

    .line 1004
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBuffer:[J

    aget-wide v2, v2, v1

    long-to-int v2, v2

    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mCurTime:[J

    invoke-interface {p1, v2, v3}, Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;->onUidCpuTime(ILjava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_37

    goto :goto_15

    .line 1008
    :cond_2b
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V

    .line 1006
    :cond_30
    return-void

    .line 1008
    :cond_31
    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V

    goto :goto_43

    .line 1000
    :catchall_37
    move-exception v1

    if-eqz v0, :cond_42

    :try_start_3a
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_42
    :goto_42
    throw v1

    .line 1010
    .end local v0    # "iter":Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mReader:Lcom/android/internal/os/KernelCpuProcStringReader;

    iget-boolean v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mThrottle:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/os/KernelCpuProcStringReader;->open(Z)Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    move-result-object v0

    .line 1011
    .local v0, "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    :try_start_4d
    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->checkPrecondition(Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;)Z

    move-result v2
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_9c

    if-nez v2, :cond_59

    .line 1023
    if-eqz v0, :cond_58

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 1012
    :cond_58
    return-void

    .line 1015
    :cond_59
    :goto_59
    :try_start_59
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v2

    move-object v3, v2

    .local v3, "buf":Ljava/nio/CharBuffer;
    if-eqz v2, :cond_96

    .line 1016
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBuffer:[J

    invoke-static {v3, v2}, Lcom/android/internal/os/KernelCpuProcStringReader;->asLongs(Ljava/nio/CharBuffer;[J)I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBuffer:[J

    array-length v4, v4

    if-eq v2, v4, :cond_88

    .line 1017
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    goto :goto_59

    .line 1020
    :cond_88
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->sumClusterTime()V

    .line 1021
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBuffer:[J

    aget-wide v4, v2, v1

    long-to-int v2, v4

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mCurTime:[J

    invoke-interface {p1, v2, v4}, Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;->onUidCpuTime(ILjava/lang/Object;)V
    :try_end_95
    .catchall {:try_start_59 .. :try_end_95} :catchall_9c

    goto :goto_59

    .line 1023
    .end local v3    # "buf":Ljava/nio/CharBuffer;
    :cond_96
    if-eqz v0, :cond_9b

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 1024
    .end local v0    # "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    :cond_9b
    return-void

    .line 1010
    .restart local v0    # "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    :catchall_9c
    move-exception v1

    if-eqz v0, :cond_a7

    :try_start_9f
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_a3

    goto :goto_a7

    :catchall_a3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a7
    :goto_a7
    throw v1
.end method

.method blacklist readDeltaImpl(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;Z)V
    .registers 8
    .param p2, "forceRead"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "[J>;Z)V"
        }
    .end annotation

    .line 972
    .local p1, "cb":Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;, "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<[J>;"
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBpfTimesAvailable:Z

    if-eqz v0, :cond_38

    .line 973
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBpfReader:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    iget-boolean v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mThrottle:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->open(Z)Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;

    move-result-object v0

    .line 974
    .local v0, "iter":Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;
    :try_start_e
    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->checkPrecondition(Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 975
    :goto_14
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBuffer:[J

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->getNextUid([J)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 976
    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->processUidDelta(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_2c

    goto :goto_14

    .line 980
    :cond_20
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V

    .line 978
    :cond_25
    return-void

    .line 980
    :cond_26
    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V

    goto :goto_38

    .line 973
    :catchall_2c
    move-exception v1

    if-eqz v0, :cond_37

    :try_start_2f
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_37
    :goto_37
    throw v1

    .line 982
    .end local v0    # "iter":Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;
    :cond_38
    :goto_38
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mReader:Lcom/android/internal/os/KernelCpuProcStringReader;

    iget-boolean v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mThrottle:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;->open(Z)Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    move-result-object v0

    .line 983
    .local v0, "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    :try_start_42
    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->checkPrecondition(Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;)Z

    move-result v1
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_87

    if-nez v1, :cond_4e

    .line 994
    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 984
    :cond_4d
    return-void

    .line 987
    :cond_4e
    :goto_4e
    :try_start_4e
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v1

    move-object v2, v1

    .local v2, "buf":Ljava/nio/CharBuffer;
    if-eqz v1, :cond_81

    .line 988
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBuffer:[J

    invoke-static {v2, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;->asLongs(Ljava/nio/CharBuffer;[J)I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBuffer:[J

    array-length v3, v3

    if-eq v1, v3, :cond_7d

    .line 989
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    goto :goto_4e

    .line 992
    :cond_7d
    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->processUidDelta(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    :try_end_80
    .catchall {:try_start_4e .. :try_end_80} :catchall_87

    goto :goto_4e

    .line 994
    .end local v2    # "buf":Ljava/nio/CharBuffer;
    :cond_81
    if-eqz v0, :cond_86

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 995
    .end local v0    # "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    :cond_86
    return-void

    .line 982
    .restart local v0    # "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    :catchall_87
    move-exception v1

    if-eqz v0, :cond_92

    :try_start_8a
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8e

    goto :goto_92

    :catchall_8e
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_92
    :goto_92
    throw v1
.end method
