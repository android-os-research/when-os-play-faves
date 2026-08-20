.class public Lcom/android/server/chimera/ConservativePolicyHandler;
.super Lcom/android/server/chimera/PolicyHandler;
.source "ConservativePolicyHandler.java"


# static fields
.field public static final QUICK_RECLAIM_TARGET:J = 0x4b000L

.field public static final TAG:Ljava/lang/String; = "ConservativePolicyHandler"


# instance fields
.field public mKillAllOnHomeTrigger:Z

.field public mPkgKillIntervalDefault:I

.field public mReclaimOnHomeTrigger:Z

.field public mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;


# direct methods
.method public static synthetic $r8$lambda$tbUskSz_lFHcs_XVDNxY5Phvm_I(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraAppInfo;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/chimera/ConservativePolicyHandler;->lambda$killTopProfit$1(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraAppInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vsRAeGu-3SKVeW8t0ossr0WWuKE(Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)J
    .registers 3

    invoke-static {p0}, Lcom/android/server/chimera/ConservativePolicyHandler;->lambda$calculateKillGain$0(Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;)V
    .registers 5

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/chimera/PolicyHandler;-><init>(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mKillAllOnHomeTrigger:Z

    .line 18
    iput-boolean p1, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mReclaimOnHomeTrigger:Z

    .line 19
    sget-object p1, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    iput-object p1, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    const p1, 0x1b7740

    .line 21
    iput p1, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mPkgKillIntervalDefault:I

    return-void
.end method

.method public static synthetic lambda$calculateKillGain$0(Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)J
    .registers 5

    .line 229
    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->avgPss:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_9

    goto :goto_b

    :cond_9
    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->initialIdlePss:J

    :goto_b
    return-wide v0
.end method

.method public static synthetic lambda$killTopProfit$1(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraAppInfo;)I
    .registers 2

    .line 247
    iget p1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->finalScore:F

    iget p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->finalScore:F

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method


# virtual methods
.method public calculateKillGain(Lcom/android/server/chimera/ChimeraAppInfo;)V
    .registers 8

    .line 226
    iget-wide v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    iput-wide v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    .line 227
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {p1, v0}, Lcom/android/server/chimera/ChimeraAppInfo;->hasRestartService(Lcom/android/server/chimera/SystemRepository;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Lcom/android/server/chimera/ChimeraAppInfo;->hasActivity()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 228
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/chimera/ConservativePolicyHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/chimera/ConservativePolicyHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 229
    invoke-interface {v0}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2e

    .line 231
    iput-wide v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    goto :goto_3c

    .line 233
    :cond_2e
    iget-wide v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    long-to-double v2, v2

    long-to-double v0, v0

    const-wide v4, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v0, v4

    sub-double/2addr v2, v0

    double-to-long v0, v2

    iput-wide v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    .line 237
    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PSS gain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", hasRestartService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 238
    invoke-virtual {p1, p0}, Lcom/android/server/chimera/ChimeraAppInfo;->hasRestartService(Lcom/android/server/chimera/SystemRepository;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ConservativePolicyHandler"

    .line 237
    invoke-interface {v0, p1, p0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    .line 29
    aget-object v1, p2, v0

    const-string v2, "-a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpCommonInfo(Ljava/io/PrintWriter;)V

    .line 31
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, "************** adjinfo ****************"

    .line 32
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAdjInfo(Ljava/io/PrintWriter;)V

    .line 34
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, "************** appinfo ****************"

    .line 35
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAppInfo(Ljava/io/PrintWriter;)V

    .line 37
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, "************** kill history ****************"

    .line 38
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpHistoryBuffer(Ljava/io/PrintWriter;)V

    goto :goto_6b

    .line 40
    :cond_30
    array-length v1, p2

    if-lez v1, :cond_6b

    .line 41
    aget-object p2, p2, v0

    const-string/jumbo v0, "info"

    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpCommonInfo(Ljava/io/PrintWriter;)V

    goto :goto_6b

    :cond_42
    const-string v0, "appinfo"

    .line 44
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAppInfo(Ljava/io/PrintWriter;)V

    goto :goto_6b

    :cond_4e
    const-string v0, "adjinfo"

    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAdjInfo(Ljava/io/PrintWriter;)V

    goto :goto_6b

    :cond_5a
    const-string/jumbo v0, "history"

    .line 48
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6b

    const-string p2, "Chimera Kill History:"

    .line 49
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpHistoryBuffer(Ljava/io/PrintWriter;)V

    :cond_6b
    :goto_6b
    return-void
.end method

.method public executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I
    .registers 6

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->prepareForTrigger(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 58
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string p1, "ConservativePolicyHandler"

    const-string p2, "executePolicy() - prepareForTrigger fails"

    invoke-interface {p0, p1, p2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 62
    :cond_11
    iput-object p1, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 64
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    const/4 v2, 0x1

    if-ne p1, v0, :cond_20

    if-le p2, v2, :cond_1c

    .line 66
    iput-boolean v2, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mKillAllOnHomeTrigger:Z

    .line 69
    :cond_1c
    invoke-virtual {p0, v1, p1}, Lcom/android/server/chimera/ConservativePolicyHandler;->executePolicyInternal(ZLcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    goto :goto_3d

    .line 70
    :cond_20
    sget-object p2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    if-ne p1, p2, :cond_3d

    .line 71
    iget-boolean p2, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mKillAllOnHomeTrigger:Z

    if-eqz p2, :cond_2e

    .line 72
    invoke-virtual {p0, v2, p1}, Lcom/android/server/chimera/ConservativePolicyHandler;->executePolicyInternal(ZLcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 73
    iput-boolean v1, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mKillAllOnHomeTrigger:Z

    goto :goto_3d

    .line 74
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->isGcReclaimEnabled()Z

    move-result p1

    if-eqz p1, :cond_3d

    iget-boolean p1, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mReclaimOnHomeTrigger:Z

    if-eqz p1, :cond_3d

    .line 75
    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->performGcAndReclaim()V

    .line 76
    iput-boolean v1, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mReclaimOnHomeTrigger:Z

    :cond_3d
    :goto_3d
    return v1
.end method

.method public executePolicyInternal(ZLcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V
    .registers 13

    .line 83
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executePolicy() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", killAll : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConservativePolicyHandler"

    invoke-interface {v0, v2, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    invoke-virtual {v0}, Lcom/android/server/chimera/SkipReasonLogger;->clear()V

    .line 87
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 88
    invoke-virtual {v3}, Lcom/android/server/chimera/ChimeraStrategy;->getProtectedCountOnHomeTrigger()I

    move-result v3

    .line 87
    invoke-virtual {v0, v1, v3, p2}, Lcom/android/server/chimera/ChimeraAppManager;->getAppsToKill(Lcom/android/server/chimera/SkipReasonLogger;ILcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_3f

    .line 92
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string p1, "executePolicy() - getAppsToKill return null"

    invoke-interface {p0, v2, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_3f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    .line 99
    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    iget-object v4, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v5, v1, v4

    add-int/2addr v5, v3

    aput v5, v1, v4

    .line 101
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5b
    :goto_5b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 102
    iget v4, v1, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    if-ge v4, v3, :cond_73

    .line 103
    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v4, "Invalid app group id"

    invoke-interface {v1, v2, v4}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    :cond_73
    const/4 v5, 0x4

    if-lt v4, v5, :cond_80

    .line 108
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v1, "killing stopped to group 4"

    invoke-interface {p2, v2, v1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19f

    .line 112
    :cond_80
    iget-object v4, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {v1, v4}, Lcom/android/server/chimera/ProcessStatsAndOomScores;->create(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SystemRepository;)Lcom/android/server/chimera/ProcessStatsAndOomScores;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    if-eqz v4, :cond_5b

    .line 114
    invoke-virtual {v4}, Lcom/android/server/chimera/ProcessStatsAndOomScores;->hasCachedProcess()Z

    move-result v4

    if-eqz v4, :cond_91

    goto :goto_5b

    .line 118
    :cond_91
    iget-object v4, p0, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    iget-object v5, v1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v5, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 119
    iget-object v5, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v5}, Lcom/android/server/chimera/SystemRepository;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v8, v4

    .line 121
    iget v4, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mPkgKillIntervalDefault:I

    int-to-long v4, v4

    cmp-long v4, v8, v4

    if-gez v4, :cond_de

    .line 122
    sget-object v4, Lcom/android/server/chimera/SkipReasonLogger$Reason;->INTERVAL:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " elapsed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/chimera/PolicyHandler;->toHHmmss(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", interval: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mPkgKillIntervalDefault:I

    int-to-long v6, v6

    .line 123
    invoke-virtual {p0, v6, v7}, Lcom/android/server/chimera/PolicyHandler;->toHHmmss(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-virtual {p0, v1, v4, v5}, Lcom/android/server/chimera/PolicyHandler;->markSkipReason(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;Ljava/lang/String;)V

    goto/16 :goto_5b

    .line 127
    :cond_de
    iget-object v4, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v5, v1, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v4, v5}, Lcom/android/server/chimera/SystemRepository;->isOnScreenWindow(I)Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 128
    sget-object v4, Lcom/android/server/chimera/SkipReasonLogger$Reason;->VISIBLE_SCREEN:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {p0, v1, v4}, Lcom/android/server/chimera/PolicyHandler;->markSkipReason(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    goto/16 :goto_5b

    .line 132
    :cond_ef
    iget-object v4, p0, Lcom/android/server/chimera/PolicyHandler;->mWakeLockManager:Lcom/android/server/chimera/WakeLockManager;

    iget-object v5, v1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/chimera/WakeLockManager;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_100

    .line 133
    sget-object v4, Lcom/android/server/chimera/SkipReasonLogger$Reason;->WAKELOCK:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {p0, v1, v4}, Lcom/android/server/chimera/PolicyHandler;->markSkipReason(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    goto/16 :goto_5b

    .line 137
    :cond_100
    iget v4, v1, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    const/high16 v5, 0x20000

    and-int/2addr v4, v5

    if-eqz v4, :cond_131

    .line 138
    invoke-virtual {p0, v1}, Lcom/android/server/chimera/ConservativePolicyHandler;->hasProtectedServices(Lcom/android/server/chimera/ChimeraAppInfo;)I

    move-result v4

    .line 139
    invoke-static {}, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->values()[Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    move-result-object v5

    aget-object v4, v5, v4

    .line 140
    sget-object v5, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->NONE:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    if-eq v4, v5, :cond_131

    sget-object v5, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->ACTIVITY_TIME:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    if-eq v4, v5, :cond_131

    .line 141
    sget-object v5, Lcom/android/server/chimera/SkipReasonLogger$Reason;->SERVICE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v5, v4}, Lcom/android/server/chimera/PolicyHandler;->markSkipReason(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;Ljava/lang/String;)V

    goto/16 :goto_5b

    .line 146
    :cond_131
    invoke-virtual {p0, v1}, Lcom/android/server/chimera/PolicyHandler;->hasImportantAdjWithSystemUid(Lcom/android/server/chimera/ChimeraAppInfo;)Z

    move-result v4

    if-eqz v4, :cond_13e

    .line 147
    sget-object v4, Lcom/android/server/chimera/SkipReasonLogger$Reason;->UID:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {p0, v1, v4}, Lcom/android/server/chimera/PolicyHandler;->markSkipReason(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    goto/16 :goto_5b

    .line 151
    :cond_13e
    invoke-virtual {p0, v1}, Lcom/android/server/chimera/PolicyHandler;->isReusedPid(Lcom/android/server/chimera/ChimeraAppInfo;)Z

    move-result v4

    if-eqz v4, :cond_15e

    .line 152
    iget-object v4, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipped by Thread Group Leader condition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v2, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5b

    .line 156
    :cond_15e
    invoke-virtual {p0, v1}, Lcom/android/server/chimera/PolicyHandler;->isSystemPid(Lcom/android/server/chimera/ChimeraAppInfo;)Z

    move-result v4

    if-eqz v4, :cond_16d

    .line 157
    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v4, "Skipped by system server process id"

    invoke-interface {v1, v2, v4}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5b

    .line 161
    :cond_16d
    invoke-virtual {p0, v1}, Lcom/android/server/chimera/ConservativePolicyHandler;->hasProtectedAdjOrProcState(Lcom/android/server/chimera/ChimeraAppInfo;)Z

    move-result v4

    if-eqz v4, :cond_175

    goto/16 :goto_5b

    .line 165
    :cond_175
    invoke-virtual {v1}, Lcom/android/server/chimera/ChimeraAppInfo;->hasActivity()Z

    move-result v4

    if-eqz v4, :cond_185

    iget-object v4, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v1, v4}, Lcom/android/server/chimera/ChimeraAppInfo;->hasRestartService(Lcom/android/server/chimera/SystemRepository;)Z

    move-result v4

    if-nez v4, :cond_185

    goto/16 :goto_5b

    .line 170
    :cond_185
    iget-object v4, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v5, v1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/android/server/chimera/SystemRepository;->isLockTaskPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_191

    goto/16 :goto_5b

    .line 174
    :cond_191
    invoke-virtual {p0, v1}, Lcom/android/server/chimera/ConservativePolicyHandler;->calculateKillGain(Lcom/android/server/chimera/ChimeraAppInfo;)V

    .line 175
    iget-wide v4, v1, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_5b

    .line 176
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5b

    .line 180
    :cond_19f
    :goto_19f
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    invoke-virtual {p2, v2}, Lcom/android/server/chimera/SkipReasonLogger;->printLog(Ljava/lang/String;)V

    .line 182
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1b9

    if-eqz p1, :cond_1b0

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/ConservativePolicyHandler;->killAll(Ljava/util/List;)V

    goto :goto_1b3

    .line 186
    :cond_1b0
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/ConservativePolicyHandler;->killTopProfit(Ljava/util/List;)V

    .line 188
    :goto_1b3
    iget-object p1, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->updateActionStatistics(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    goto :goto_1db

    .line 190
    :cond_1b9
    iget p1, p0, Lcom/android/server/chimera/PolicyHandler;->mNoActionCnt:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/android/server/chimera/PolicyHandler;->mNoActionCnt:I

    .line 191
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo p2, "killTargetList is empty"

    invoke-interface {p1, v2, p2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->isGcReclaimEnabled()Z

    move-result p1

    if-eqz p1, :cond_1db

    .line 194
    iget-object p1, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    sget-object p2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    if-ne p1, p2, :cond_1d5

    .line 195
    iput-boolean v3, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mReclaimOnHomeTrigger:Z

    goto :goto_1db

    .line 197
    :cond_1d5
    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->performGcAndReclaim()V

    const/4 p1, 0x0

    .line 198
    iput-boolean p1, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mReclaimOnHomeTrigger:Z

    :cond_1db
    :goto_1db
    return-void
.end method

.method public getQuickReclaimReleaseTarget(J)J
    .registers 5

    .line 207
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/ChimeraStrategy;->getFreeMemTarget(J)J

    move-result-wide p0

    const-wide/32 v0, 0x4b000

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public hasProtectedAdjOrProcState(Lcom/android/server/chimera/ChimeraAppInfo;)Z
    .registers 12

    .line 288
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    const/4 v4, 0x5

    const/4 v5, 0x1

    if-ge v3, v1, :cond_45

    aget v6, v0, v3

    const/16 v7, 0xc8

    if-ge v6, v7, :cond_12

    return v5

    :cond_12
    const/16 v8, 0x12c

    if-ge v6, v8, :cond_35

    if-ne v6, v7, :cond_27

    .line 292
    iget v7, p1, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    const/16 v9, 0xa

    if-ne v7, v9, :cond_27

    iget-object v7, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 294
    invoke-virtual {p1, v7}, Lcom/android/server/chimera/ChimeraAppInfo;->hasRestartService(Lcom/android/server/chimera/SystemRepository;)Z

    move-result v7

    if-nez v7, :cond_27

    return v5

    .line 298
    :cond_27
    iget v7, p1, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    if-ne v7, v4, :cond_2c

    return v5

    .line 302
    :cond_2c
    iget-object v4, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/chimera/PolicyHandler;->isPowerWhitelistedApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    return v5

    :cond_35
    const/16 v4, 0x33e

    if-ne v6, v4, :cond_3a

    return v5

    :cond_3a
    const/16 v4, 0x2bc

    if-ne v6, v4, :cond_3f

    return v5

    :cond_3f
    if-ne v6, v8, :cond_42

    return v5

    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 320
    :cond_45
    iget-object p0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object p0, p0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    array-length p1, p0

    move v0, v2

    :goto_4b
    if-ge v0, p1, :cond_59

    aget v1, p0, v0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_58

    if-ne v1, v4, :cond_55

    goto :goto_58

    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_58
    :goto_58
    return v5

    :cond_59
    return v2
.end method

.method public hasProtectedServices(Lcom/android/server/chimera/ChimeraAppInfo;)I
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_33

    .line 211
    iget-object v1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    if-eqz v1, :cond_33

    move v1, v0

    .line 212
    :goto_8
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v3, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    array-length v3, v3

    if-ge v1, v3, :cond_33

    .line 213
    iget-object v2, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v2, v2, v1

    const/16 v3, 0x352

    if-gt v2, v3, :cond_30

    const/16 v3, -0x3e8

    if-lt v2, v3, :cond_30

    .line 215
    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v3, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget-object v3, v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v2, v3, v4}, Lcom/android/server/chimera/SystemRepository;->hasChimeraProtectedProc(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_30

    return v2

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_33
    return v0
.end method

.method public killAll(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v1, "ConservativePolicyHandler"

    const-string/jumbo v2, "killAll"

    invoke-interface {v0, v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SystemRepository;->isUserShipBuild()Z

    move-result v0

    if-nez v0, :cond_15

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->printAllAppInfo(Ljava/util/List;)V

    .line 265
    :cond_15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/ChimeraAppInfo;

    const-string v1, "LMKD CRI"

    .line 266
    invoke-virtual {p0, v0, v1}, Lcom/android/server/chimera/ConservativePolicyHandler;->killApp(Lcom/android/server/chimera/ChimeraAppInfo;Ljava/lang/String;)V

    goto :goto_19

    :cond_2b
    return-void
.end method

.method public killApp(Lcom/android/server/chimera/ChimeraAppInfo;Ljava/lang/String;)V
    .registers 9

    .line 272
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {p1, v0}, Lcom/android/server/chimera/ProcessStatsAndOomScores;->create(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SystemRepository;)Lcom/android/server/chimera/ProcessStatsAndOomScores;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    if-eqz v0, :cond_7d

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ConservativePolicyHandler;->hasProtectedAdjOrProcState(Lcom/android/server/chimera/ChimeraAppInfo;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_7d

    .line 277
    :cond_11
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kill : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Pss : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConservativePolicyHandler"

    invoke-interface {v0, v2, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/android/server/chimera/ConservativePolicyHandler;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/chimera/PolicyHandler;->updateKillStatistics(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 279
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/PolicyHandler;->addRescheduleExceptionPackage(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v2}, Lcom/android/server/chimera/SystemRepository;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 283
    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v1, v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Chimera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v3, v4}, Lcom/android/server/chimera/SystemRepository;->killProcessForChimera(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_56

    :cond_7d
    :goto_7d
    return-void
.end method

.method public killTopProfit(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v1, "ConservativePolicyHandler"

    const-string/jumbo v2, "killTopProfit"

    invoke-interface {v0, v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->calcAppScores(Ljava/util/List;)V

    .line 247
    new-instance v0, Lcom/android/server/chimera/ConservativePolicyHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/chimera/ConservativePolicyHandler$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 249
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SystemRepository;->isUserShipBuild()Z

    move-result v0

    if-nez v0, :cond_27

    .line 250
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v2, "after sorting:"

    invoke-interface {v0, v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->printAllAppInfo(Ljava/util/List;)V

    .line 254
    :cond_27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_39

    const/4 v0, 0x0

    .line 255
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/chimera/ChimeraAppInfo;

    const-string v0, "LMKD MED"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/chimera/ConservativePolicyHandler;->killApp(Lcom/android/server/chimera/ChimeraAppInfo;Ljava/lang/String;)V

    :cond_39
    return-void
.end method
