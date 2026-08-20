.class public final Lcom/android/server/stats/pull/ProcfsMemoryUtil;
.super Ljava/lang/Object;
.source "ProcfsMemoryUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/pull/ProcfsMemoryUtil$VmStat;,
        Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    }
.end annotation


# static fields
.field public static final CMDLINE_OUT:[I

.field public static final STATUS_KEYS:[Ljava/lang/String;

.field public static final VMSTAT_KEYS:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1000

    aput v2, v0, v1

    .line 25
    sput-object v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->CMDLINE_OUT:[I

    const-string v0, "Uid:"

    const-string v1, "VmHWM:"

    const-string v2, "VmRSS:"

    const-string v3, "RssAnon:"

    const-string v4, "VmSwap:"

    .line 26
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->STATUS_KEYS:[Ljava/lang/String;

    const-string/jumbo v0, "oom_kill"

    .line 33
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->VMSTAT_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProcessCmdlines()Landroid/util/SparseArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [I

    const-string v1, "/proc"

    .line 82
    invoke-static {v1, v0}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v0

    .line 84
    new-instance v1, Landroid/util/SparseArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 85
    array-length v2, v0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_2a

    aget v4, v0, v3

    if-gez v4, :cond_19

    goto :goto_2a

    .line 89
    :cond_19
    invoke-static {v4}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_24

    goto :goto_27

    .line 93
    :cond_24
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_2a
    :goto_2a
    return-object v1
.end method

.method public static readCmdlineFromProcfs(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/cmdline"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->CMDLINE_OUT:[I

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, v2}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result p0

    if-nez p0, :cond_25

    const-string p0, ""

    return-object p0

    :cond_25
    const/4 p0, 0x0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    .registers 10

    .line 45
    sget-object v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->STATUS_KEYS:[Ljava/lang/String;

    array-length v1, v0

    new-array v1, v1, [J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    .line 46
    aput-wide v3, v1, v2

    const/4 v5, 0x3

    .line 47
    aput-wide v3, v1, v5

    const/4 v6, 0x4

    .line 48
    aput-wide v3, v1, v6

    .line 49
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/proc/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/status"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 50
    aget-wide v7, v1, v2

    cmp-long p0, v7, v3

    if-eqz p0, :cond_5d

    aget-wide v7, v1, v5

    cmp-long p0, v7, v3

    if-eqz p0, :cond_5d

    aget-wide v7, v1, v6

    cmp-long p0, v7, v3

    if-nez p0, :cond_3c

    goto :goto_5d

    .line 54
    :cond_3c
    new-instance p0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    invoke-direct {p0}, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;-><init>()V

    .line 55
    aget-wide v2, v1, v2

    long-to-int v0, v2

    iput v0, p0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->uid:I

    const/4 v0, 0x1

    .line 56
    aget-wide v2, v1, v0

    long-to-int v0, v2

    iput v0, p0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    const/4 v0, 0x2

    .line 57
    aget-wide v2, v1, v0

    long-to-int v0, v2

    iput v0, p0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    .line 58
    aget-wide v2, v1, v5

    long-to-int v0, v2

    iput v0, p0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    .line 59
    aget-wide v0, v1, v6

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    return-object p0

    :cond_5d
    :goto_5d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static readVmStat()Lcom/android/server/stats/pull/ProcfsMemoryUtil$VmStat;
    .registers 7

    .line 109
    sget-object v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->VMSTAT_KEYS:[Ljava/lang/String;

    array-length v1, v0

    new-array v1, v1, [J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    .line 110
    aput-wide v3, v1, v2

    const-string v5, "/proc/vmstat"

    .line 111
    invoke-static {v5, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 112
    aget-wide v5, v1, v2

    cmp-long v0, v5, v3

    if-nez v0, :cond_17

    const/4 v0, 0x0

    return-object v0

    .line 115
    :cond_17
    new-instance v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$VmStat;

    invoke-direct {v0}, Lcom/android/server/stats/pull/ProcfsMemoryUtil$VmStat;-><init>()V

    .line 116
    aget-wide v1, v1, v2

    long-to-int v1, v1

    iput v1, v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$VmStat;->oomKillCount:I

    return-object v0
.end method
