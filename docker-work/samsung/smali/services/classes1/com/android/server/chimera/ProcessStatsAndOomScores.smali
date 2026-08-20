.class public Lcom/android/server/chimera/ProcessStatsAndOomScores;
.super Ljava/lang/Object;
.source "ProcessStatsAndOomScores.java"


# instance fields
.field public mPids:[I

.field public mScores:[I

.field public mStates:[I


# direct methods
.method public static synthetic $r8$lambda$k0tO76VJ7wVYbq4_J0M8GtavSDU(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/chimera/ProcessStatsAndOomScores;->lambda$hasCachedProcess$0(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    .line 11
    iput-object v0, p0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    .line 12
    iput-object v0, p0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    return-void
.end method

.method public static create(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SystemRepository;)Lcom/android/server/chimera/ProcessStatsAndOomScores;
    .registers 8

    if-eqz p0, :cond_4f

    if-nez p1, :cond_5

    goto :goto_4f

    .line 22
    :cond_5
    new-instance v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;

    invoke-direct {v0}, Lcom/android/server/chimera/ProcessStatsAndOomScores;-><init>()V

    .line 23
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 24
    new-array v2, v1, [I

    iput-object v2, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    const/4 v2, 0x0

    .line 27
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 28
    iget-object v4, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    add-int/lit8 v5, v2, 0x1

    iget v3, v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    aput v3, v4, v2

    move v2, v5

    goto :goto_1b

    .line 31
    :cond_31
    iget-object p0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    invoke-interface {p1, p0}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_46

    .line 33
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, [I

    iput-object p1, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    .line 34
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, [I

    iput-object p0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    goto :goto_4e

    .line 36
    :cond_46
    new-array p0, v1, [I

    iput-object p0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    .line 37
    new-array p0, v1, [I

    iput-object p0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    :goto_4e
    return-object v0

    :cond_4f
    :goto_4f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$hasCachedProcess$0(I)Z
    .registers 2

    const/16 v0, 0x352

    if-lt p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method


# virtual methods
.method public hasCachedProcess()Z
    .registers 2

    .line 44
    iget-object p0, p0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 48
    :cond_6
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lcom/android/server/chimera/ProcessStatsAndOomScores$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/chimera/ProcessStatsAndOomScores$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    return p0
.end method

.method public isAllCachedEmptyProcess()Z
    .registers 6

    .line 52
    iget-object p0, p0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 56
    :cond_6
    array-length v1, p0

    move v2, v0

    :goto_8
    if-ge v2, v1, :cond_14

    aget v3, p0, v2

    const/16 v4, 0x13

    if-ge v3, v4, :cond_11

    return v0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pids: "

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    .line 70
    :goto_d
    iget-object v3, p0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    array-length v4, v3

    const-string v5, " "

    if-ge v2, v4, :cond_1f

    .line 71
    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1f
    const-string v2, "/ stats: "

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    .line 76
    :goto_25
    iget-object v3, p0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    array-length v4, v3

    if-ge v2, v4, :cond_35

    .line 77
    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_35
    const-string v2, "/ adjs: "

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :goto_3a
    iget-object v2, p0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    array-length v3, v2

    if-ge v1, v3, :cond_4a

    .line 83
    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 87
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
