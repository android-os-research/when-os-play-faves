.class public Lcom/android/server/chimera/ChimeraAppInfo;
.super Ljava/lang/Object;
.source "ChimeraAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/chimera/ChimeraAppInfo$AppType;,
        Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;
    }
.end annotation


# static fields
.field public static final MAX_GROUP_NUMBER:I = 0x4

.field public static final RESTART_SERVICE_EXIST:I = 0x1

.field public static final RESTART_SERVICE_NOT_EXIST:I = 0x0

.field public static final RESTART_SERVICE_NO_CHECKED:I = -0x1

.field public static final TAG:Ljava/lang/String; = "ChimeraAppInfo"


# instance fields
.field public appType:I

.field public cacStandbyBucket:I

.field public curStandbyBucket:I

.field public finalScore:F

.field public group:I

.field public idleKillAdj:I

.field public lruIdx:I

.field public packageName:Ljava/lang/String;

.field public procList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field public pss:J

.field public reclaimGain:J

.field public restartService:I

.field public score:F

.field public statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

.field public swapPss:J

.field public uid:I


# direct methods
.method public static synthetic $r8$lambda$KNWbo_v3odjCgmnc1TrxHO6yUC4(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/chimera/ChimeraAppInfo;->lambda$hasRestartService$0(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 6

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 17
    iput v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    .line 18
    iput v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    const-wide/16 v1, 0x0

    .line 19
    iput-wide v1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    .line 20
    iput-wide v1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    .line 21
    iput v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 33
    iput v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->restartService:I

    .line 109
    iput-object p2, p0, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 110
    iput p1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    return-void
.end method

.method public static appType2group(I)I
    .registers 6

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 97
    fill-array-data v1, :array_16

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v0, :cond_14

    .line 100
    aget v4, v1, v3

    and-int/2addr v4, p0

    if-lez v4, :cond_11

    sub-int/2addr v0, v3

    return v0

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_14
    return v2

    nop

    :array_16
    .array-data 4
        0xb57030
        0xec0
        0x2800c
        0x3
    .end array-data
.end method

.method private synthetic lambda$hasRestartService$0(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)Z
    .registers 3

    .line 194
    iget-object p2, p2, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {p1, p2, p0}, Lcom/android/server/chimera/SystemRepository;->hasRestartService(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addProcess(ILjava/lang/String;JJJJ)V
    .registers 23

    move-object v0, p0

    .line 115
    iget-object v1, v0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    new-instance v11, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    move-object v2, v11

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;-><init>(ILjava/lang/String;JJJ)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-wide v1, v0, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    add-long/2addr v1, p3

    iput-wide v1, v0, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    .line 117
    iget-wide v1, v0, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    add-long v1, v1, p9

    iput-wide v1, v0, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    return-void
.end method

.method public getPidList()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 122
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 123
    iget v1, v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_21
    return-object v0
.end method

.method public hasActivity()Z
    .registers 2

    .line 202
    iget p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    const/high16 v0, 0x1000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public hasRestartService(Lcom/android/server/chimera/SystemRepository;)Z
    .registers 4

    .line 191
    iget v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->restartService:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    if-eqz v0, :cond_18

    .line 193
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/chimera/ChimeraAppInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/chimera/ChimeraAppInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SystemRepository;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    .line 195
    iput p1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->restartService:I

    .line 198
    :cond_18
    iget p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->restartService:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method public isInDeviceIdleKillProtectedGroup()Z
    .registers 3

    .line 138
    iget v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_f

    iget p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    const/4 v0, 0x3

    if-lt p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public isInPMMCriticalProtectedGroup()Z
    .registers 3

    .line 133
    iget v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-gtz v1, :cond_14

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-gtz v0, :cond_12

    iget p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    const/4 v0, 0x3

    if-lt p0, v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method

.method public isInProtectedGroup()Z
    .registers 2

    .line 129
    iget p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isInProtectedStandbyBucket()Z
    .registers 2

    .line 142
    iget p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isInfoNotFeteched()Z
    .registers 5

    .line 147
    iget v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    if-ltz v0, :cond_17

    iget v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    if-ltz v0, :cond_17

    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    iget p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    if-gez p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public toBriefString()Ljava/lang/String;
    .registers 7

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 180
    iget v4, v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/2addr v3, v5

    .line 182
    iget-object v4, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_d

    const-string v4, ","

    .line 183
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_2e
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 187
    iget-object v3, p0, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    iget v2, p0, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p0

    const-string p0, "%s %xH %d %d %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/ChimeraAppInfo;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Z)Ljava/lang/String;
    .registers 8

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 160
    iget v4, v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/2addr v3, v5

    .line 162
    iget-object v4, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_12

    const-string v4, ","

    .line 163
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_33
    const-string v1, "]"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4e

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_50

    :cond_4e
    const-string p1, ""

    .line 169
    :goto_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    const/4 v0, 0x2

    iget v2, p0, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    const/4 v0, 0x3

    iget v2, p0, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    const/4 v0, 0x4

    iget v2, p0, Lcom/android/server/chimera/ChimeraAppInfo;->score:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, p1, v0

    const/4 v0, 0x5

    iget v2, p0, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    const/4 v0, 0x6

    iget v2, p0, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    const/4 v0, 0x7

    iget v2, p0, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    const/16 v0, 0x8

    iget-wide v2, p0, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "%d%s:G%d(0x%x) score=%3.1f(%d %d/%d %d)"

    .line 169
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
