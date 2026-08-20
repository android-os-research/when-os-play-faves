.class public Lcom/android/server/chimera/ChimeraAppManager;
.super Ljava/lang/Object;
.source "ChimeraAppManager.java"


# static fields
.field public static final CEM_PKG_PROTECTED_INTERVAL_DEFAULT:Ljava/lang/String;

.field public static final MSG_REMOVE_APP:I = 0x5

.field public static final PERCEPTIBLE_APP_ADJ:I = 0xc8

.field public static final PERSISTENT_PROC_ADJ:I = -0x320

.field public static final PERSISTENT_SERVICE_ADJ:I = -0x2bc

.field public static final SERVICE_B_ADJ:I = 0x320

.field public static final SYSTEM_PROPERTY_CHIMERA_CEM_PKG_PROTECTED_INTERVAL:Ljava/lang/String; = "persist.sys.chimera_cem_pkg_protected_interval_ms"

.field public static final TAG:Ljava/lang/String; = "ChimeraAppManager"


# instance fields
.field public MAX_PSS_FOR_LESS_12GB:J

.field public MAX_PSS_FOR_LESS_6GB:J

.field public MAX_PSS_FOR_MORE_12GB:J

.field public mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

.field public mCemPkgProtectedIntervalMs:I

.field public mDeviceIdleKillAllowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDeviceIdleKillProtectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mForegroundG3ProcList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mGcApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mReclaimApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mStandbyInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const v0, 0xea60

    .line 32
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/ChimeraAppManager;->CEM_PKG_PROTECTED_INTERVAL_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .registers 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    .line 27
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mReclaimApps:Ljava/util/Map;

    .line 35
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mGcApps:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    const-wide/32 v0, 0x64000

    .line 46
    iput-wide v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->MAX_PSS_FOR_LESS_6GB:J

    const-wide/32 v0, 0x96000

    .line 47
    iput-wide v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->MAX_PSS_FOR_LESS_12GB:J

    const-wide/32 v0, 0x100000

    .line 48
    iput-wide v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->MAX_PSS_FOR_MORE_12GB:J

    .line 50
    new-instance v0, Lcom/android/server/chimera/ChimeraAppManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/ChimeraAppManager$1;-><init>(Lcom/android/server/chimera/ChimeraAppManager;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mDeviceIdleKillAllowList:Ljava/util/List;

    .line 55
    new-instance v0, Lcom/android/server/chimera/ChimeraAppManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/ChimeraAppManager$2;-><init>(Lcom/android/server/chimera/ChimeraAppManager;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mDeviceIdleKillProtectedList:Ljava/util/List;

    .line 60
    new-instance v0, Lcom/android/server/chimera/ChimeraAppClassifier;

    invoke-direct {v0, p1}, Lcom/android/server/chimera/ChimeraAppClassifier;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    .line 61
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 63
    sget-object v0, Lcom/android/server/chimera/ChimeraAppManager;->CEM_PKG_PROTECTED_INTERVAL_DEFAULT:Ljava/lang/String;

    const-string/jumbo v1, "persist.sys.chimera_cem_pkg_protected_interval_ms"

    .line 64
    invoke-interface {p1, v1, v0}, Lcom/android/server/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/chimera/ChimeraAppManager;->mCemPkgProtectedIntervalMs:I

    .line 66
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraAppManager;->collectStandbyBucketList()V

    return-void
.end method


# virtual methods
.method public final abnormalPss(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)Z
    .registers 4

    .line 556
    iget-wide v0, p1, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraAppManager;->getMaxPssThreshold()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public addToGcAppList(Ljava/lang/String;II)V
    .registers 16

    .line 79
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mGcApps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/ChimeraAppInfo;

    if-nez v0, :cond_14

    .line 81
    new-instance v0, Lcom/android/server/chimera/ChimeraAppInfo;

    invoke-direct {v0, p2, p1}, Lcom/android/server/chimera/ChimeraAppInfo;-><init>(ILjava/lang/String;)V

    .line 82
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mGcApps:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    move-object v1, v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move v2, p3

    .line 84
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/chimera/ChimeraAppInfo;->addProcess(ILjava/lang/String;JJJJ)V

    return-void
.end method

.method public addToReclaimAppList(Ljava/lang/String;II)V
    .registers 16

    .line 70
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mReclaimApps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/ChimeraAppInfo;

    if-nez v0, :cond_14

    .line 72
    new-instance v0, Lcom/android/server/chimera/ChimeraAppInfo;

    invoke-direct {v0, p2, p1}, Lcom/android/server/chimera/ChimeraAppInfo;-><init>(ILjava/lang/String;)V

    .line 73
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mReclaimApps:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    move-object v1, v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move v2, p3

    .line 75
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/chimera/ChimeraAppInfo;->addProcess(ILjava/lang/String;JJJJ)V

    return-void
.end method

.method public addToReclaimGcAppList(Ljava/lang/String;Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)V
    .registers 5

    .line 88
    invoke-static {}, Lcom/android/server/chimera/RepositoryFactory;->getInstance()Lcom/android/server/chimera/RepositoryFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/RepositoryFactory;->getSettingRepository(Lcom/android/server/chimera/SystemRepository;)Lcom/android/server/chimera/SettingRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isGcEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 89
    iget v0, p2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    iget v1, p2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/chimera/ChimeraAppManager;->addToGcAppList(Ljava/lang/String;II)V

    .line 91
    :cond_17
    invoke-static {}, Lcom/android/server/chimera/RepositoryFactory;->getInstance()Lcom/android/server/chimera/RepositoryFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/RepositoryFactory;->getSettingRepository(Lcom/android/server/chimera/SystemRepository;)Lcom/android/server/chimera/SettingRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isReclaimPageCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 92
    iget v0, p2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    iget p2, p2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/chimera/ChimeraAppManager;->addToReclaimAppList(Ljava/lang/String;II)V

    :cond_2e
    return-void
.end method

.method public collectStandbyBucketList()V
    .registers 2

    .line 593
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SystemRepository;->getAppStandbyBuckets()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    return-void
.end method

.method public dumpStandbyBucket()Ljava/lang/String;
    .registers 6

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " apps in mStandbyInfoMap: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 602
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    iget-object v3, p0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 604
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 606
    :cond_58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppStandbyBucket(Ljava/lang/String;I)I
    .registers 5

    .line 574
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0, p2}, Lcom/android/server/chimera/SystemRepository;->getUserId(I)I

    move-result p2

    .line 575
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 576
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 575
    invoke-interface {p0, p1, p2, v0, v1}, Lcom/android/server/chimera/SystemRepository;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result p0

    return p0
.end method

.method public getAppStandbyBucket(Lcom/android/server/chimera/ChimeraAppInfo;)V
    .registers 7

    .line 580
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_13

    .line 582
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    goto :goto_34

    .line 584
    :cond_13
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v0, v1}, Lcom/android/server/chimera/SystemRepository;->getUserId(I)I

    move-result v0

    .line 585
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 586
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 585
    invoke-interface {v1, v2, v0, v3, v4}, Lcom/android/server/chimera/SystemRepository;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    .line 587
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_34
    return-void
.end method

.method public getAppsForPMMCritical()Landroid/util/Pair;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 292
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 293
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 294
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v3}, Lcom/android/server/chimera/SystemRepository;->getAccessibilityServicePackages()Ljava/util/List;

    move-result-object v3

    .line 295
    iget-object v4, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v4}, Lcom/android/server/chimera/SystemRepository;->getCurrentHomePackageName()Ljava/lang/String;

    move-result-object v4

    .line 297
    iget-object v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v5}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "ChimeraAppManager"

    if-eqz v6, :cond_fc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 299
    iget v8, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    const/16 v9, 0x11

    if-ne v8, v9, :cond_37

    goto :goto_22

    .line 303
    :cond_37
    iget-object v8, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v8, :cond_f0

    array-length v9, v8

    if-lez v9, :cond_f0

    const/4 v9, 0x0

    .line 304
    aget-object v8, v8, v9

    .line 305
    invoke-static {v8, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_48

    goto :goto_22

    .line 309
    :cond_48
    iget-object v9, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v10, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-interface {v9, v10}, Lcom/android/server/chimera/SystemRepository;->isApp(I)Z

    move-result v9

    if-nez v9, :cond_6c

    .line 310
    iget-object v8, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handlePMMCritical() - Skipped by uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v7, v6}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 315
    :cond_6c
    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_73

    goto :goto_22

    .line 319
    :cond_73
    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/chimera/ChimeraAppInfo;

    if-nez v9, :cond_ac

    .line 321
    new-instance v9, Lcom/android/server/chimera/ChimeraAppInfo;

    iget v10, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-direct {v9, v10, v8}, Lcom/android/server/chimera/ChimeraAppInfo;-><init>(ILjava/lang/String;)V

    .line 322
    invoke-virtual {v1, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v10, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v11, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-interface {v10, v11}, Lcom/android/server/chimera/SystemRepository;->getUserId(I)I

    move-result v10

    .line 324
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ac
    move-object v10, v9

    .line 327
    iget-wide v8, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    const-wide/16 v11, 0x0

    cmp-long v11, v8, v11

    if-gtz v11, :cond_d7

    .line 329
    iget-object v8, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v10, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": proc.lastPss <= 0, fetching right now"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v7, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v8, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v7, v8}, Lcom/android/server/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/chimera/SystemRepository;I)J

    move-result-wide v7

    move-wide v13, v7

    goto :goto_d8

    :cond_d7
    move-wide v13, v8

    .line 333
    :goto_d8
    iget v11, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    iget-object v12, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-wide v7, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->initialIdlePss:J

    move-object v9, v3

    move-object/from16 v21, v4

    iget-wide v3, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->avgPss:J

    move-object/from16 v22, v5

    iget-wide v5, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastSwapPss:J

    move-wide v15, v7

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    invoke-virtual/range {v10 .. v20}, Lcom/android/server/chimera/ChimeraAppInfo;->addProcess(ILjava/lang/String;JJJJ)V

    goto :goto_f5

    :cond_f0
    move-object v9, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    :goto_f5
    move-object v3, v9

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    goto/16 :goto_22

    .line 337
    :cond_fc
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_17f

    .line 340
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_PMM_CRITICAL:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v3, v4}, Lcom/android/server/chimera/ChimeraAppClassifier;->prepare(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 341
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    invoke-virtual {v3, v2}, Lcom/android/server/chimera/ChimeraAppClassifier;->updatePackagesType(Ljava/util/List;)V

    .line 344
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 345
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 346
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_120
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_179

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 347
    iget-object v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v6, v4, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v5, v6}, Lcom/android/server/chimera/SystemRepository;->getUserId(I)I

    move-result v5

    .line 348
    iget-object v6, v0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    iget-object v8, v4, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    move-result-object v9

    iget v10, v4, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-virtual {v6, v8, v5, v9, v10}, Lcom/android/server/chimera/ChimeraAppClassifier;->getPackageType(Ljava/lang/String;ILjava/util/Set;I)I

    move-result v5

    iput v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 349
    invoke-static {v5}, Lcom/android/server/chimera/ChimeraAppInfo;->appType2group(I)I

    move-result v5

    iput v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 351
    invoke-virtual {v4}, Lcom/android/server/chimera/ChimeraAppInfo;->isInPMMCriticalProtectedGroup()Z

    move-result v5

    if-eqz v5, :cond_16a

    .line 352
    iget-object v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handlePMMCritical() - Skipped by protected app: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v7, v4}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_120

    .line 356
    :cond_16a
    iget v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    const/high16 v6, 0x800000

    and-int/2addr v5, v6

    if-lez v5, :cond_175

    .line 357
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_120

    .line 359
    :cond_175
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_120

    .line 363
    :cond_179
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_17f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppsToDeviceIdle()Ljava/util/List;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 457
    iget-object v1, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v2, "ChimeraAppManager"

    const-string v3, "getAppsToDeviceIdle()"

    invoke-interface {v1, v2, v3}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 459
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 463
    iget-object v4, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v4}, Lcom/android/server/chimera/SystemRepository;->getSystemPid()I

    move-result v4

    .line 465
    iget-object v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v5}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, -0x1

    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_fc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    const/4 v8, 0x1

    add-int/2addr v6, v8

    .line 467
    iget-object v9, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v9, :cond_f2

    array-length v10, v9

    if-gtz v10, :cond_3d

    goto/16 :goto_f2

    .line 471
    :cond_3d
    iget v10, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    if-ne v4, v10, :cond_43

    goto/16 :goto_f2

    :cond_43
    const/4 v10, 0x0

    .line 475
    aget-object v9, v9, v10

    .line 477
    iget-object v11, v0, Lcom/android/server/chimera/ChimeraAppManager;->mDeviceIdleKillProtectedList:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_50

    goto/16 :goto_f2

    .line 481
    :cond_50
    iget-wide v11, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_f2

    iget-wide v11, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->initialIdlePss:J

    cmp-long v11, v11, v13

    if-nez v11, :cond_60

    goto/16 :goto_f2

    :cond_60
    new-array v8, v8, [I

    .line 486
    iget v11, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    aput v11, v8, v10

    .line 488
    iget-object v11, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v11, v8}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    move-result-object v8

    if-nez v8, :cond_70

    goto/16 :goto_f2

    .line 492
    :cond_70
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, [I

    aget v8, v8, v10

    .line 494
    invoke-virtual {v0, v9}, Lcom/android/server/chimera/ChimeraAppManager;->samsungApp(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_82

    invoke-virtual {v0, v8}, Lcom/android/server/chimera/ChimeraAppManager;->persistentApp(I)Z

    move-result v10

    if-eqz v10, :cond_f2

    .line 495
    :cond_82
    invoke-virtual {v0, v7}, Lcom/android/server/chimera/ChimeraAppManager;->abnormalPss(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)Z

    move-result v10

    if-eqz v10, :cond_f2

    .line 496
    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/chimera/ChimeraAppInfo;

    if-nez v10, :cond_c3

    .line 498
    new-instance v10, Lcom/android/server/chimera/ChimeraAppInfo;

    iget v11, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-direct {v10, v11, v9}, Lcom/android/server/chimera/ChimeraAppInfo;-><init>(ILjava/lang/String;)V

    .line 499
    iput v6, v10, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    .line 500
    invoke-virtual {v1, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-object v11, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v12, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-interface {v11, v12}, Lcom/android/server/chimera/SystemRepository;->getUserId(I)I

    move-result v11

    .line 502
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_c3
    iget-wide v11, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    cmp-long v9, v11, v13

    if-gtz v9, :cond_d1

    .line 507
    iget-object v9, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v11, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v9, v11}, Lcom/android/server/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/chimera/SystemRepository;I)J

    move-result-wide v11

    :cond_d1
    move-wide/from16 v18, v11

    .line 510
    iget v9, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    iget-object v11, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-wide v12, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->initialIdlePss:J

    iget-wide v14, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->avgPss:J

    move/from16 v26, v4

    move-object/from16 v27, v5

    iget-wide v4, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastSwapPss:J

    move-wide/from16 v22, v14

    move-object v15, v10

    move/from16 v16, v9

    move-object/from16 v17, v11

    move-wide/from16 v20, v12

    move-wide/from16 v24, v4

    invoke-virtual/range {v15 .. v25}, Lcom/android/server/chimera/ChimeraAppInfo;->addProcess(ILjava/lang/String;JJJJ)V

    .line 511
    iput v8, v10, Lcom/android/server/chimera/ChimeraAppInfo;->idleKillAdj:I

    goto :goto_f6

    :cond_f2
    :goto_f2
    move/from16 v26, v4

    move-object/from16 v27, v5

    :goto_f6
    move/from16 v4, v26

    move-object/from16 v5, v27

    goto/16 :goto_26

    .line 516
    :cond_fc
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-lez v4, :cond_17a

    .line 518
    iget-object v4, v0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    invoke-virtual {v4, v3}, Lcom/android/server/chimera/ChimeraAppClassifier;->updatePackagesType(Ljava/util/List;)V

    .line 520
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 521
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_114
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 522
    iget-wide v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    iget-wide v7, v4, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    sub-long/2addr v5, v7

    iput-wide v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    .line 523
    iget-object v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v6, v4, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v5, v6}, Lcom/android/server/chimera/SystemRepository;->getUserId(I)I

    move-result v5

    .line 525
    iget-object v6, v4, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/android/server/chimera/ChimeraAppManager;->samsungApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_176

    .line 526
    iget-object v6, v0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    iget-object v7, v4, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    move-result-object v8

    iget v9, v4, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-virtual {v6, v7, v5, v8, v9}, Lcom/android/server/chimera/ChimeraAppClassifier;->getPackageType(Ljava/lang/String;ILjava/util/Set;I)I

    move-result v5

    iput v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 527
    invoke-static {v5}, Lcom/android/server/chimera/ChimeraAppInfo;->appType2group(I)I

    move-result v5

    iput v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 528
    invoke-virtual {v4}, Lcom/android/server/chimera/ChimeraAppInfo;->isInDeviceIdleKillProtectedGroup()Z

    move-result v5

    if-eqz v5, :cond_176

    iget-object v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mDeviceIdleKillAllowList:Ljava/util/List;

    iget-object v6, v4, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_176

    .line 529
    iget-object v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deviceIdleCritical() - Skipped by protected app: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v2, v4}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_114

    .line 534
    :cond_176
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_114

    :cond_17a
    const/4 v3, 0x0

    :cond_17b
    return-object v3
.end method

.method public getAppsToGc()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mGcApps:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 108
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppsToGc(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChimeraAppManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_37
    return-object v0
.end method

.method public getAppsToKill(Lcom/android/server/chimera/SkipReasonLogger;ILcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Ljava/util/List;
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/chimera/SkipReasonLogger;",
            "I",
            "Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 116
    iget-object v2, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppsToKill() - protectedLruCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ChimeraAppManager"

    invoke-interface {v2, v5, v3}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 118
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 119
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 121
    iget-object v7, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v7}, Lcom/android/server/chimera/SystemRepository;->getAccessibilityServicePackages()Ljava/util/List;

    move-result-object v7

    .line 124
    iget-object v8, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {v8}, Lcom/android/server/chimera/ChimeraCommonUtil;->isBubEnabled(Lcom/android/server/chimera/SystemRepository;)Z

    move-result v8

    .line 125
    iget-object v9, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v9}, Lcom/android/server/chimera/SystemRepository;->getCurrentHomePackageName()Ljava/lang/String;

    move-result-object v9

    .line 127
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 128
    iget-object v11, v0, Lcom/android/server/chimera/ChimeraAppManager;->mReclaimApps:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 129
    iget-object v11, v0, Lcom/android/server/chimera/ChimeraAppManager;->mGcApps:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 131
    iget-object v11, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v11}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, -0x1

    :goto_59
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const/4 v15, 0x1

    if-eqz v13, :cond_25e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    add-int/2addr v12, v15

    .line 133
    iget v15, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v15, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v15, :cond_23e

    array-length v14, v15

    if-gtz v14, :cond_79

    goto/16 :goto_23e

    :cond_79
    const/4 v14, 0x0

    .line 139
    aget-object v14, v15, v14

    .line 142
    iget v15, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    move-object/from16 v16, v11

    const/16 v11, 0x11

    if-ne v15, v11, :cond_99

    .line 143
    iget v11, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    sget-object v13, Lcom/android/server/chimera/SkipReasonLogger$Reason;->CACC:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v11, v13}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    :goto_8b
    move-object/from16 v31, v3

    move/from16 p2, v4

    move-object/from16 v18, v7

    move/from16 v17, v8

    move-object/from16 v30, v9

    move-object/from16 v32, v10

    goto/16 :goto_24c

    .line 148
    :cond_99
    invoke-static {v14, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a0

    :goto_9f
    goto :goto_8b

    .line 153
    :cond_a0
    invoke-interface {v7, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a7

    goto :goto_9f

    .line 158
    :cond_a7
    iget v11, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    const/16 v15, 0x13

    if-ne v11, v15, :cond_d7

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-object v11, v9

    move-object v15, v10

    iget-wide v9, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    sub-long v17, v17, v9

    iget v9, v0, Lcom/android/server/chimera/ChimeraAppManager;->mCemPkgProtectedIntervalMs:I

    int-to-long v9, v9

    cmp-long v9, v17, v9

    if-gez v9, :cond_d9

    .line 160
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    iget v9, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    sget-object v10, Lcom/android/server/chimera/SkipReasonLogger$Reason;->CACHED_EMPTY:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v9, v10}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    move-object/from16 v31, v3

    move/from16 p2, v4

    move-object v9, v6

    move-object/from16 v18, v7

    move/from16 v17, v8

    move-object/from16 v30, v11

    move-object/from16 v32, v15

    goto/16 :goto_24d

    :cond_d7
    move-object v11, v9

    move-object v15, v10

    .line 166
    :cond_d9
    iget v9, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    const/16 v10, 0xa

    if-ne v9, v10, :cond_fc

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    iget-wide v6, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    sub-long/2addr v9, v6

    iget v6, v0, Lcom/android/server/chimera/ChimeraAppManager;->mCemPkgProtectedIntervalMs:I

    int-to-long v6, v6

    cmp-long v6, v9, v6

    if-gez v6, :cond_100

    .line 168
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    iget v6, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    sget-object v7, Lcom/android/server/chimera/SkipReasonLogger$Reason;->SERVICE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v6, v7}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    goto :goto_109

    :cond_fc
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .line 173
    :cond_100
    invoke-interface {v3, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_117

    .line 174
    invoke-virtual {v0, v14, v13}, Lcom/android/server/chimera/ChimeraAppManager;->addToReclaimGcAppList(Ljava/lang/String;Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)V

    :goto_109
    move-object/from16 v31, v3

    move/from16 p2, v4

    move-object/from16 v30, v11

    move-object/from16 v32, v15

    move-object/from16 v9, v17

    move/from16 v17, v8

    goto/16 :goto_24d

    .line 178
    :cond_117
    iget v6, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-gtz v6, :cond_123

    iget v6, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    const/16 v7, 0x12

    if-ne v6, v7, :cond_154

    .line 180
    :cond_123
    invoke-virtual {v0, v14, v13}, Lcom/android/server/chimera/ChimeraAppManager;->addToReclaimGcAppList(Ljava/lang/String;Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)V

    if-lez v4, :cond_154

    .line 183
    iget-object v6, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAppsToKill() - Protected by LRU : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, -0x1

    .line 185
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    iget v6, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    sget-object v7, Lcom/android/server/chimera/SkipReasonLogger$Reason;->LRU:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v6, v7}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    move-object v9, v11

    move-object v10, v15

    move-object/from16 v11, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    goto/16 :goto_59

    .line 191
    :cond_154
    iget v6, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    const/4 v7, 0x1

    if-gt v6, v7, :cond_164

    .line 192
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    iget v6, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    sget-object v7, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PERSISTENT_OR_PROTECTED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v6, v7}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    goto :goto_109

    :cond_164
    if-nez v8, :cond_18c

    .line 197
    iget-boolean v6, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->isProtectedInPicked:Z

    if-eqz v6, :cond_18c

    .line 198
    iget-object v6, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAppsToKill() - Protected by Picked "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    iget v6, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    sget-object v7, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PICKED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v6, v7}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    goto/16 :goto_109

    .line 204
    :cond_18c
    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/chimera/ChimeraAppInfo;

    if-nez v6, :cond_1d5

    .line 206
    new-instance v6, Lcom/android/server/chimera/ChimeraAppInfo;

    iget v7, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-direct {v6, v7, v14}, Lcom/android/server/chimera/ChimeraAppInfo;-><init>(ILjava/lang/String;)V

    .line 207
    iput v12, v6, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    .line 208
    invoke-virtual {v0, v6}, Lcom/android/server/chimera/ChimeraAppManager;->getAppStandbyBucket(Lcom/android/server/chimera/ChimeraAppInfo;)V

    .line 209
    iget v7, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-virtual {v0, v14, v7}, Lcom/android/server/chimera/ChimeraAppManager;->getAppStandbyBucket(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    .line 210
    invoke-virtual {v2, v14, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v7, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v9, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-interface {v7, v9}, Lcom/android/server/chimera/SystemRepository;->getUserId(I)I

    move-result v7

    .line 212
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v9, v17

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d7

    :cond_1d5
    move-object/from16 v9, v17

    :goto_1d7
    move-object v10, v3

    move/from16 p2, v4

    .line 215
    iget-wide v3, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    const-wide/16 v19, 0x0

    cmp-long v7, v3, v19

    if-gtz v7, :cond_202

    .line 217
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v6, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": proc.lastPss <= 0, fetching right now"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v4, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v3, v4}, Lcom/android/server/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/chimera/SystemRepository;I)J

    move-result-wide v3

    :cond_202
    move-wide/from16 v22, v3

    .line 222
    iget v3, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    iget-object v4, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move/from16 v17, v8

    iget-wide v7, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->initialIdlePss:J

    move-object/from16 v31, v10

    move-object/from16 v30, v11

    iget-wide v10, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->avgPss:J

    move-object/from16 v32, v15

    iget-wide v14, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastSwapPss:J

    move-object/from16 v19, v6

    move/from16 v20, v3

    move-object/from16 v21, v4

    move-wide/from16 v24, v7

    move-wide/from16 v26, v10

    move-wide/from16 v28, v14

    invoke-virtual/range {v19 .. v29}, Lcom/android/server/chimera/ChimeraAppInfo;->addProcess(ILjava/lang/String;JJJJ)V

    .line 224
    iget v3, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->flags:I

    and-int/lit8 v4, v3, 0x8

    if-lez v4, :cond_232

    .line 225
    iget v4, v6, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    const/high16 v7, 0x20000

    or-int/2addr v4, v7

    iput v4, v6, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    :cond_232
    and-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_24d

    .line 229
    iget v3, v6, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    iput v3, v6, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    goto :goto_24d

    :cond_23e
    :goto_23e
    move-object/from16 v31, v3

    move/from16 p2, v4

    move-object/from16 v18, v7

    move/from16 v17, v8

    move-object/from16 v30, v9

    move-object/from16 v32, v10

    move-object/from16 v16, v11

    :goto_24c
    move-object v9, v6

    :cond_24d
    :goto_24d
    move/from16 v4, p2

    move-object v6, v9

    move-object/from16 v11, v16

    move/from16 v8, v17

    move-object/from16 v7, v18

    move-object/from16 v9, v30

    move-object/from16 v3, v31

    move-object/from16 v10, v32

    goto/16 :goto_59

    :cond_25e
    move-object v9, v6

    move-object/from16 v32, v10

    move v7, v15

    const/4 v14, 0x0

    .line 233
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_33f

    .line 235
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Lcom/android/server/chimera/ChimeraAppClassifier;->prepare(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 236
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    invoke-virtual {v3, v9}, Lcom/android/server/chimera/ChimeraAppClassifier;->updatePackagesType(Ljava/util/List;)V

    .line 238
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 239
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_282
    :goto_282
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_340

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 240
    iget-wide v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    iput-wide v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    .line 241
    iget-object v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v6, v4, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v5, v6}, Lcom/android/server/chimera/SystemRepository;->getUserId(I)I

    move-result v5

    .line 242
    iget v6, v4, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    iget-object v8, v0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    iget-object v9, v4, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    move-result-object v10

    iget v11, v4, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-virtual {v8, v9, v5, v10, v11}, Lcom/android/server/chimera/ChimeraAppClassifier;->getPackageType(Ljava/lang/String;ILjava/util/Set;I)I

    move-result v5

    or-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 243
    invoke-static {v5}, Lcom/android/server/chimera/ChimeraAppInfo;->appType2group(I)I

    move-result v5

    iput v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2e7

    .line 246
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v5

    iget v6, v4, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/MARsPolicyManager;->isForegroundServicePkg(I)Z

    move-result v5

    if-eqz v5, :cond_2e7

    .line 248
    iget-object v4, v4, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2c8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_282

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 249
    iget v6, v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    sget-object v8, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PERSISTENT_OR_PROTECTED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v6, v8}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 250
    iget-object v6, v0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    iget v5, v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2c8

    .line 256
    :cond_2e7
    invoke-virtual {v4}, Lcom/android/server/chimera/ChimeraAppInfo;->isInfoNotFeteched()Z

    move-result v5

    if-nez v5, :cond_325

    invoke-virtual {v4}, Lcom/android/server/chimera/ChimeraAppInfo;->isInProtectedGroup()Z

    move-result v5

    if-eqz v5, :cond_2f4

    goto :goto_325

    .line 264
    :cond_2f4
    iget-object v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2fa
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_31d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 265
    iget-object v8, v0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    iget v9, v6, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2fa

    .line 266
    iget v5, v6, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    sget-object v6, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PERSISTENT_OR_PROTECTED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v5, v6}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    move v5, v7

    goto :goto_31e

    :cond_31d
    move v5, v14

    :goto_31e
    if-nez v5, :cond_282

    .line 273
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_282

    .line 257
    :cond_325
    :goto_325
    iget-object v4, v4, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_32b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_282

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 258
    iget v5, v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    sget-object v6, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PERSISTENT_OR_PROTECTED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v5, v6}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    goto :goto_32b

    :cond_33f
    const/4 v3, 0x0

    .line 278
    :cond_340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 280
    iget-object v2, v0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_34b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_371

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 281
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, v32

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36e

    .line 282
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_36e
    move-object/from16 v32, v6

    goto :goto_34b

    .line 286
    :cond_371
    iget-object v0, v0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object v3
.end method

.method public getAppsToReclaim()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mReclaimApps:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppsToReclaim(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChimeraAppManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_37
    return-object v0
.end method

.method public getAppsToSwap(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Ljava/util/List;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 370
    iget-object v1, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v2, "ChimeraAppManager"

    const-string v3, "getAppsToSwap()"

    invoke-interface {v1, v2, v3}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 372
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v3}, Lcom/android/server/chimera/SystemRepository;->getCurrentHomePackageName()Ljava/lang/String;

    move-result-object v3

    .line 373
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 378
    iget-object v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v5}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    move v8, v6

    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    const/4 v10, 0x1

    add-int/2addr v7, v10

    .line 380
    iget-object v11, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v11, :cond_e1

    array-length v12, v11

    if-gtz v12, :cond_3f

    goto/16 :goto_e1

    .line 384
    :cond_3f
    aget-object v11, v11, v6

    .line 387
    invoke-static {v11, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_49

    goto/16 :goto_e1

    :cond_49
    new-array v10, v10, [I

    .line 392
    iget v12, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    aput v12, v10, v6

    .line 394
    iget-object v12, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v12, v10}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    move-result-object v10

    if-nez v10, :cond_59

    goto/16 :goto_e1

    .line 398
    :cond_59
    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, [I

    aget v10, v10, v6

    const/16 v12, 0xc8

    if-gt v10, v12, :cond_65

    goto/16 :goto_e1

    .line 404
    :cond_65
    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/chimera/ChimeraAppInfo;

    if-nez v10, :cond_ab

    .line 406
    new-instance v10, Lcom/android/server/chimera/ChimeraAppInfo;

    iget v12, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-direct {v10, v12, v11}, Lcom/android/server/chimera/ChimeraAppInfo;-><init>(ILjava/lang/String;)V

    .line 407
    iput v7, v10, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    .line 408
    invoke-virtual {v0, v10}, Lcom/android/server/chimera/ChimeraAppManager;->getAppStandbyBucket(Lcom/android/server/chimera/ChimeraAppInfo;)V

    .line 409
    iget v12, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-virtual {v0, v11, v12}, Lcom/android/server/chimera/ChimeraAppManager;->getAppStandbyBucket(Ljava/lang/String;I)I

    move-result v12

    iput v12, v10, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    .line 410
    invoke-virtual {v1, v11, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v12, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v13, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-interface {v12, v13}, Lcom/android/server/chimera/SystemRepository;->getUserId(I)I

    move-result v12

    .line 412
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ab
    move-object v12, v10

    .line 415
    iget-wide v10, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    const-wide/16 v13, 0x0

    cmp-long v15, v10, v13

    if-gtz v15, :cond_bc

    .line 418
    iget-object v10, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v11, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v10, v11}, Lcom/android/server/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/chimera/SystemRepository;I)J

    move-result-wide v10

    :cond_bc
    move-wide v15, v10

    .line 421
    iget-wide v10, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastSwapPss:J

    cmp-long v13, v10, v13

    if-gtz v13, :cond_cb

    .line 424
    iget-object v10, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v11, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v10, v11}, Lcom/android/server/chimera/ChimeraCommonUtil;->getProcSwapPss(Lcom/android/server/chimera/SystemRepository;I)J

    move-result-wide v10

    :cond_cb
    move-wide/from16 v21, v10

    .line 427
    iget v13, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    iget-object v14, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-wide v10, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->initialIdlePss:J

    move/from16 v23, v7

    iget-wide v6, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->avgPss:J

    move-wide/from16 v17, v10

    move-wide/from16 v19, v6

    invoke-virtual/range {v12 .. v22}, Lcom/android/server/chimera/ChimeraAppInfo;->addProcess(ILjava/lang/String;JJJJ)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_e3

    :cond_e1
    :goto_e1
    move/from16 v23, v7

    :goto_e3
    move/from16 v7, v23

    const/4 v6, 0x0

    goto/16 :goto_28

    .line 432
    :cond_e8
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_146

    .line 434
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    move-object/from16 v5, p1

    invoke-virtual {v3, v5}, Lcom/android/server/chimera/ChimeraAppClassifier;->prepare(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 435
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    invoke-virtual {v3, v4}, Lcom/android/server/chimera/ChimeraAppClassifier;->updatePackagesType(Ljava/util/List;)V

    .line 437
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 438
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_107
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_147

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 439
    iget-wide v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    iget-wide v9, v4, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    sub-long/2addr v5, v9

    iput-wide v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    .line 440
    iget-object v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v6, v4, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v5, v6}, Lcom/android/server/chimera/SystemRepository;->getUserId(I)I

    move-result v5

    .line 441
    iget v6, v4, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    iget-object v7, v0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    iget-object v9, v4, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    move-result-object v10

    iget v11, v4, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-virtual {v7, v9, v5, v10, v11}, Lcom/android/server/chimera/ChimeraAppClassifier;->getPackageType(Ljava/lang/String;ILjava/util/Set;I)I

    move-result v5

    or-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 442
    invoke-static {v5}, Lcom/android/server/chimera/ChimeraAppInfo;->appType2group(I)I

    move-result v5

    iput v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 444
    invoke-virtual {v4}, Lcom/android/server/chimera/ChimeraAppInfo;->isInfoNotFeteched()Z

    move-result v5

    if-eqz v5, :cond_142

    goto :goto_107

    .line 448
    :cond_142
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_107

    :cond_146
    const/4 v3, 0x0

    .line 451
    :cond_147
    iget-object v0, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appToSwapCount: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public final getMaxPssThreshold()J
    .registers 3

    .line 563
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_a

    .line 565
    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->MAX_PSS_FOR_LESS_6GB:J

    return-wide v0

    :cond_a
    const/16 v1, 0xc

    if-ge v0, v1, :cond_11

    .line 567
    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->MAX_PSS_FOR_LESS_12GB:J

    return-wide v0

    .line 569
    :cond_11
    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->MAX_PSS_FOR_MORE_12GB:J

    return-wide v0
.end method

.method public final persistentApp(I)Z
    .registers 2

    const/16 p0, -0x2bc

    if-eq p1, p0, :cond_b

    const/16 p0, -0x320

    if-ne p1, p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public final samsungApp(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "com.sec"

    .line 542
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_13

    const-string p0, "com.samsung"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method
