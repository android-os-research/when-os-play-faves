.class public Lcom/android/server/chimera/AppListBuilder;
.super Ljava/lang/Object;
.source "AppListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/chimera/AppListBuilder$ImportantAdjWithSystemUidCriteria;,
        Lcom/android/server/chimera/AppListBuilder$CachedProcessCriteria;,
        Lcom/android/server/chimera/AppListBuilder$RecycledPidCriteria;,
        Lcom/android/server/chimera/AppListBuilder$OnScreenWindowCriteria;,
        Lcom/android/server/chimera/AppListBuilder$HasActivityCriteria;,
        Lcom/android/server/chimera/AppListBuilder$NoHomePackageCriteria;,
        Lcom/android/server/chimera/AppListBuilder$ProcessStateHomeCachedCriteria;,
        Lcom/android/server/chimera/AppListBuilder$ProcessStateNoHomeCachedCriteria;,
        Lcom/android/server/chimera/AppListBuilder$NoPersistentCriteria;,
        Lcom/android/server/chimera/AppListBuilder$PreconditionCriteria;,
        Lcom/android/server/chimera/AppListBuilder$ChimeraAppInfoCriteria;,
        Lcom/android/server/chimera/AppListBuilder$RunningAppProcessInfoCriteria;
    }
.end annotation


# static fields
.field public static final DEFAULT_WEIGHT_LRU:F = 0.3f

.field public static final DEFAULT_WEIGHT_MEM:F = 0.4f

.field public static final DEFAULT_WEIGHT_STANDBY_BUCKET:F = 0.3f

.field public static final TAG:Ljava/lang/String; = "AppListBuilder"


# instance fields
.field public mChimeraAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

.field public mChimeraAppInfoCriteriaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/chimera/AppListBuilder$ChimeraAppInfoCriteria;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public mChimeraAppManager:Lcom/android/server/chimera/ChimeraAppManager;

.field public mRunningAppProcessInfoCriteriaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/chimera/AppListBuilder$RunningAppProcessInfoCriteria;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public mSystemRepository:Lcom/android/server/chimera/SystemRepository;

.field public mWeightLru:F

.field public mWeightMem:F

.field public mWeightStandbyBucket:F


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/ChimeraAppClassifier;Lcom/android/server/chimera/ChimeraAppManager;)V
    .registers 5

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/AppListBuilder;->mRunningAppProcessInfoCriteriaList:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/AppListBuilder;->mChimeraAppInfoCriteriaList:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/android/server/chimera/AppListBuilder;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 37
    iput-object p2, p0, Lcom/android/server/chimera/AppListBuilder;->mChimeraAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    .line 38
    iput-object p3, p0, Lcom/android/server/chimera/AppListBuilder;->mChimeraAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    const p1, 0x3e99999a    # 0.3f

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/AppListBuilder;->setWeightLru(F)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/AppListBuilder;->setWeightStandbyBucket(F)V

    const p1, 0x3ecccccd    # 0.4f

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/AppListBuilder;->setWeightMem(F)V

    .line 44
    new-instance p1, Lcom/android/server/chimera/AppListBuilder$PreconditionCriteria;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/server/chimera/AppListBuilder$PreconditionCriteria;-><init>(Lcom/android/server/chimera/AppListBuilder$PreconditionCriteria-IA;)V

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/AppListBuilder;->addCriteria(Lcom/android/server/chimera/AppListBuilder$RunningAppProcessInfoCriteria;)Lcom/android/server/chimera/AppListBuilder;

    return-void
.end method


# virtual methods
.method public addCriteria(Lcom/android/server/chimera/AppListBuilder$ChimeraAppInfoCriteria;)Lcom/android/server/chimera/AppListBuilder;
    .registers 5

    .line 189
    iget-object v0, p0, Lcom/android/server/chimera/AppListBuilder;->mChimeraAppInfoCriteriaList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addCriteria(Lcom/android/server/chimera/AppListBuilder$ChimeraAppInfoCriteria;Z)Lcom/android/server/chimera/AppListBuilder;
    .registers 5

    .line 194
    iget-object v0, p0, Lcom/android/server/chimera/AppListBuilder;->mChimeraAppInfoCriteriaList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addCriteria(Lcom/android/server/chimera/AppListBuilder$RunningAppProcessInfoCriteria;)Lcom/android/server/chimera/AppListBuilder;
    .registers 5

    .line 179
    iget-object v0, p0, Lcom/android/server/chimera/AppListBuilder;->mRunningAppProcessInfoCriteriaList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addCriteria(Lcom/android/server/chimera/AppListBuilder$RunningAppProcessInfoCriteria;Z)Lcom/android/server/chimera/AppListBuilder;
    .registers 5

    .line 184
    iget-object v0, p0, Lcom/android/server/chimera/AppListBuilder;->mRunningAppProcessInfoCriteriaList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final applyChimeraAppInfoCriteria(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 76
    iget-object v3, p0, Lcom/android/server/chimera/AppListBuilder;->mChimeraAppInfoCriteriaList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 77
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/chimera/AppListBuilder$ChimeraAppInfoCriteria;

    invoke-interface {v5, v2}, Lcom/android/server/chimera/AppListBuilder$ChimeraAppInfoCriteria;->check(Lcom/android/server/chimera/ChimeraAppInfo;)Z

    move-result v5

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v5, v4, :cond_1b

    .line 78
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 83
    :cond_3d
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final applyRunningAppProcessInfoCriteria(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;",
            ">;)V"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 168
    iget-object v3, p0, Lcom/android/server/chimera/AppListBuilder;->mRunningAppProcessInfoCriteriaList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 169
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/chimera/AppListBuilder$RunningAppProcessInfoCriteria;

    invoke-interface {v5, v2}, Lcom/android/server/chimera/AppListBuilder$RunningAppProcessInfoCriteria;->check(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)Z

    move-result v5

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v5, v4, :cond_1b

    .line 170
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 175
    :cond_3d
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public build()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/android/server/chimera/AppListBuilder;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/AppListBuilder;->applyRunningAppProcessInfoCriteria(Ljava/util/List;)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/AppListBuilder;->buildChimeraAppInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/AppListBuilder;->calcAppScores(Ljava/util/List;)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/AppListBuilder;->applyChimeraAppInfoCriteria(Ljava/util/List;)V

    return-object v0
.end method

.method public final buildChimeraAppInfoList(Ljava/util/List;)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 90
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 91
    iget-object v5, v4, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    .line 92
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/chimera/ChimeraAppInfo;

    if-nez v6, :cond_46

    .line 94
    new-instance v6, Lcom/android/server/chimera/ChimeraAppInfo;

    iget v7, v4, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-direct {v6, v7, v5}, Lcom/android/server/chimera/ChimeraAppInfo;-><init>(ILjava/lang/String;)V

    .line 95
    iget v7, v4, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lru:I

    iput v7, v6, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    .line 96
    iget-object v7, v0, Lcom/android/server/chimera/AppListBuilder;->mChimeraAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    invoke-virtual {v7, v6}, Lcom/android/server/chimera/ChimeraAppManager;->getAppStandbyBucket(Lcom/android/server/chimera/ChimeraAppInfo;)V

    .line 97
    iget-object v7, v0, Lcom/android/server/chimera/AppListBuilder;->mChimeraAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    iget v8, v4, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-virtual {v7, v5, v8}, Lcom/android/server/chimera/ChimeraAppManager;->getAppStandbyBucket(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    .line 98
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_46
    iget-wide v7, v4, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-gtz v5, :cond_56

    .line 103
    iget-object v5, v0, Lcom/android/server/chimera/AppListBuilder;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v7, v4, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v5, v7}, Lcom/android/server/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/chimera/SystemRepository;I)J

    move-result-wide v7

    :cond_56
    move-wide v11, v7

    .line 105
    iget v9, v4, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    iget-object v10, v4, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-wide v13, v4, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->initialIdlePss:J

    iget-wide v7, v4, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->avgPss:J

    const-wide/16 v17, 0x0

    move-wide v15, v7

    move-object v8, v6

    invoke-virtual/range {v8 .. v18}, Lcom/android/server/chimera/ChimeraAppInfo;->addProcess(ILjava/lang/String;JJJJ)V

    .line 108
    iget v4, v4, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->flags:I

    and-int/lit8 v5, v4, 0x8

    if-lez v5, :cond_73

    .line 109
    iget v5, v6, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    const/high16 v7, 0x20000

    or-int/2addr v5, v7

    iput v5, v6, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    :cond_73
    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_10

    .line 113
    iget v4, v6, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    const/high16 v5, 0x1000000

    or-int/2addr v4, v5

    iput v4, v6, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    goto :goto_10

    .line 117
    :cond_7f
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_87
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/chimera/ChimeraAppInfo;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 121
    :cond_9d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_dc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 123
    iget-object v5, v0, Lcom/android/server/chimera/AppListBuilder;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v6, v4, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v5, v6}, Lcom/android/server/chimera/SystemRepository;->getUserId(I)I

    move-result v5

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    .line 127
    :cond_dc
    iget-object v3, v0, Lcom/android/server/chimera/AppListBuilder;->mChimeraAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v3, v4}, Lcom/android/server/chimera/ChimeraAppClassifier;->prepare(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 128
    iget-object v3, v0, Lcom/android/server/chimera/AppListBuilder;->mChimeraAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    invoke-virtual {v3, v2}, Lcom/android/server/chimera/ChimeraAppClassifier;->updatePackagesType(Ljava/util/List;)V

    .line 130
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ec
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 131
    iget-object v4, v0, Lcom/android/server/chimera/AppListBuilder;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v5, v3, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v4, v5}, Lcom/android/server/chimera/SystemRepository;->getUserId(I)I

    move-result v4

    .line 132
    iget v5, v3, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    iget-object v6, v0, Lcom/android/server/chimera/AppListBuilder;->mChimeraAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    iget-object v7, v3, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 133
    invoke-virtual {v3}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    move-result-object v8

    iget v9, v3, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 132
    invoke-virtual {v6, v7, v4, v8, v9}, Lcom/android/server/chimera/ChimeraAppClassifier;->getPackageType(Ljava/lang/String;ILjava/util/Set;I)I

    move-result v4

    or-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 134
    invoke-static {v4}, Lcom/android/server/chimera/ChimeraAppInfo;->appType2group(I)I

    move-result v4

    iput v4, v3, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    goto :goto_ec

    :cond_11a
    return-object v1
.end method

.method public final calcAppScores(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 146
    iget-wide v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    cmp-long v7, v5, v1

    if-lez v7, :cond_1a

    move-wide v1, v5

    .line 150
    :cond_1a
    iget v4, v4, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    if-le v4, v3, :cond_7

    move v3, v4

    goto :goto_7

    .line 155
    :cond_20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 157
    iget v4, p0, Lcom/android/server/chimera/AppListBuilder;->mWeightLru:F

    iget v5, v0, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    int-to-float v5, v3

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/chimera/AppListBuilder;->mWeightStandbyBucket:F

    iget v6, v0, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x42480000    # 50.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/chimera/AppListBuilder;->mWeightMem:F

    iget-wide v6, v0, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    long-to-float v6, v6

    mul-float/2addr v5, v6

    long-to-float v6, v1

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    iput v4, v0, Lcom/android/server/chimera/ChimeraAppInfo;->score:F

    .line 160
    iget v6, v0, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    rsub-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    mul-float/2addr v6, v5

    add-float/2addr v6, v4

    iput v6, v0, Lcom/android/server/chimera/ChimeraAppInfo;->finalScore:F

    goto :goto_24

    :cond_5a
    return-void
.end method

.method public setWeightLru(F)V
    .registers 2

    .line 48
    iput p1, p0, Lcom/android/server/chimera/AppListBuilder;->mWeightLru:F

    return-void
.end method

.method public setWeightMem(F)V
    .registers 2

    .line 56
    iput p1, p0, Lcom/android/server/chimera/AppListBuilder;->mWeightMem:F

    return-void
.end method

.method public setWeightStandbyBucket(F)V
    .registers 2

    .line 52
    iput p1, p0, Lcom/android/server/chimera/AppListBuilder;->mWeightStandbyBucket:F

    return-void
.end method
