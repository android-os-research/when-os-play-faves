.class public Lcom/sec/android/sdhmssdk/SdhmsSDK;
.super Ljava/lang/Object;
.source "SdhmsSDK.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final THERMAL_CONTROL_5G:I = 0x8

.field public static final THERMAL_CONTROL_BRIGHTNESS:I = 0x2

.field public static final THERMAL_CONTROL_HRR:I = 0x4

.field public static final THERMAL_CONTROL_SPEED:I = 0x1

.field private static final VERSION:Ljava/lang/String; = "1.3.0"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;


# direct methods
.method static bridge synthetic -$$Nest$fputmService(Lcom/sec/android/sdhmssdk/SdhmsSDK;Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lcom/sec/android/sdhmssdk/SdhmsSDK;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private declared-synchronized getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .registers 4

    monitor-enter p0

    .line 38
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-nez v0, :cond_23

    .line 39
    const-string v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 40
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_23

    .line 41
    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_27

    .line 42
    if-eqz v1, :cond_23

    .line 44
    :try_start_15
    new-instance v1, Lcom/sec/android/sdhmssdk/SdhmsSDK$1;

    invoke-direct {v1, p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK$1;-><init>(Lcom/sec/android/sdhmssdk/SdhmsSDK;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1f
    .catchall {:try_start_15 .. :try_end_1e} :catchall_27

    .line 52
    goto :goto_23

    .line 50
    .end local p0    # "this":Lcom/sec/android/sdhmssdk/SdhmsSDK;
    :catch_1f
    move-exception v1

    .line 51
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_20
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 56
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_27

    monitor-exit p0

    return-object v0

    .line 37
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .line 34
    const-string v0, "1.3.0"

    return-object v0
.end method


# virtual methods
.method public addHeavyLoadApps(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 281
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 282
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_f

    .line 284
    :try_start_6
    invoke-interface {v0, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->addHeavyLoadApps(Ljava/util/List;)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v1

    .line 285
    :catch_b
    move-exception v1

    .line 286
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 289
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public addLowModeApps(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 323
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 324
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_f

    .line 326
    :try_start_6
    invoke-interface {v0, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->addLowModeApps(Ljava/util/List;)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v1

    .line 327
    :catch_b
    move-exception v1

    .line 328
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 331
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public addLowRefreshRateApps(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 365
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 366
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_f

    .line 368
    :try_start_6
    invoke-interface {v0, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->addLowRefreshRateApps(Ljava/util/List;)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v1

    .line 369
    :catch_b
    move-exception v1

    .line 370
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 373
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public getHeavyLoadApps()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 302
    invoke-direct {p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 303
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_f

    .line 305
    :try_start_6
    invoke-interface {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getHeavyLoadApps()Ljava/util/List;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v1

    .line 306
    :catch_b
    move-exception v1

    .line 307
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 310
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLowModeApps()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 344
    invoke-direct {p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 345
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_f

    .line 347
    :try_start_6
    invoke-interface {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getLowModeApps()Ljava/util/List;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v1

    .line 348
    :catch_b
    move-exception v1

    .line 349
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 352
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLowRefreshRateApps()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 386
    invoke-direct {p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 387
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_f

    .line 389
    :try_start_6
    invoke-interface {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getLowRefreshRateApps()Ljava/util/List;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v1

    .line 390
    :catch_b
    move-exception v1

    .line 391
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 394
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public getOverheatEventHistory(JJ)Ljava/util/List;
    .registers 33
    .param p1, "startTimestamp"    # J
    .param p3, "endTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/sec/android/sdhmssdk/SemOverheatHistory;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v1

    .line 73
    .local v1, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v1, :cond_29b

    .line 75
    :try_start_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatHistory;>;"
    nop

    .line 77
    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getOverheatReason(JJ)Ljava/util/List;

    move-result-object v7

    .line 78
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhms/OverheatReasonInternal;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_18
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_292

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/sdhms/OverheatReasonInternal;

    .line 79
    .local v9, "info":Lcom/sec/android/sdhms/OverheatReasonInternal;
    const/4 v10, 0x0

    .line 80
    .local v10, "type":I
    const/4 v11, 0x0

    .local v11, "chargerType":I
    const/4 v12, 0x0

    .line 81
    .local v12, "environment":I
    const/4 v13, 0x0

    .local v13, "camera":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    const/4 v14, 0x0

    .local v14, "game":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    const/4 v15, 0x0

    .line 82
    .local v15, "navigation":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    const/16 v16, 0x0

    .line 83
    .local v16, "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    const/16 v17, 0x0

    .line 85
    .local v17, "process":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;>;"
    invoke-virtual {v9}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getChargerType()I

    move-result v18
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_32} :catch_293

    if-lez v18, :cond_42

    .line 86
    or-int/lit8 v10, v10, 0x1

    .line 87
    :try_start_36
    invoke-virtual {v9}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getChargerType()I

    move-result v18
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3a} :catch_3d

    move/from16 v11, v18

    goto :goto_42

    .line 182
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatHistory;>;"
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhms/OverheatReasonInternal;>;"
    .end local v9    # "info":Lcom/sec/android/sdhms/OverheatReasonInternal;
    .end local v10    # "type":I
    .end local v11    # "chargerType":I
    .end local v12    # "environment":I
    .end local v13    # "camera":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    .end local v14    # "game":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    .end local v15    # "navigation":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    .end local v16    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    .end local v17    # "process":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;>;"
    :catch_3d
    move-exception v0

    move-object/from16 v19, v1

    goto/16 :goto_296

    .line 90
    .restart local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatHistory;>;"
    .restart local v7    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhms/OverheatReasonInternal;>;"
    .restart local v9    # "info":Lcom/sec/android/sdhms/OverheatReasonInternal;
    .restart local v10    # "type":I
    .restart local v11    # "chargerType":I
    .restart local v12    # "environment":I
    .restart local v13    # "camera":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    .restart local v14    # "game":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    .restart local v15    # "navigation":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    .restart local v16    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    .restart local v17    # "process":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;>;"
    :cond_42
    :goto_42
    :try_start_42
    invoke-virtual {v9}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getCameraApp()Ljava/lang/String;

    move-result-object v18
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_46} :catch_293

    const-string v2, "%%%"

    move-object/from16 v19, v1

    .end local v1    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .local v19, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    const-string v1, "###"

    const/16 v20, 0x1

    if-eqz v18, :cond_a1

    .line 91
    const/high16 v18, 0x10000

    or-int v10, v10, v18

    .line 93
    :try_start_54
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v13, v18

    .line 94
    invoke-virtual {v9}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getCameraApp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "appList":[Ljava/lang/String;
    array-length v3, v4

    const/4 v5, 0x0

    :goto_65
    if-ge v5, v3, :cond_9f

    aget-object v6, v4, v5

    .line 96
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v23, v22

    .line 97
    .local v23, "app":[Ljava/lang/String;
    move/from16 v22, v3

    move-object/from16 v3, v23

    move-object/from16 v23, v4

    .end local v4    # "appList":[Ljava/lang/String;
    .local v3, "app":[Ljava/lang/String;
    .local v23, "appList":[Ljava/lang/String;
    array-length v4, v3

    move-object/from16 v24, v6

    const/4 v6, 0x2

    .end local v6    # "s":Ljava/lang/String;
    .local v24, "s":Ljava/lang/String;
    if-ne v4, v6, :cond_98

    .line 98
    new-instance v4, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;

    invoke-direct {v4}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;-><init>()V

    const/4 v6, 0x0

    aget-object v25, v3, v6

    .line 99
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;->uid(I)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;

    move-result-object v4

    aget-object v6, v3, v20

    .line 100
    invoke-virtual {v4, v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;->packageName(Ljava/lang/String;)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;->build()Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;

    move-result-object v4

    .line 98
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v3    # "app":[Ljava/lang/String;
    .end local v24    # "s":Ljava/lang/String;
    :cond_98
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v22

    move-object/from16 v4, v23

    goto :goto_65

    .end local v23    # "appList":[Ljava/lang/String;
    .restart local v4    # "appList":[Ljava/lang/String;
    :cond_9f
    move-object/from16 v23, v4

    .line 105
    .end local v4    # "appList":[Ljava/lang/String;
    :cond_a1
    invoke-virtual {v9}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getGameApp()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f6

    .line 106
    const/high16 v3, 0x20000

    or-int/2addr v10, v3

    .line 108
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v3

    .line 109
    invoke-virtual {v9}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getGameApp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "appList":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_ba
    if-ge v5, v4, :cond_f4

    aget-object v6, v3, v5

    .line 111
    .restart local v6    # "s":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v23, v22

    .line 112
    .local v23, "app":[Ljava/lang/String;
    move-object/from16 v22, v3

    move-object/from16 v3, v23

    move/from16 v23, v4

    .end local v23    # "app":[Ljava/lang/String;
    .local v3, "app":[Ljava/lang/String;
    .local v22, "appList":[Ljava/lang/String;
    array-length v4, v3

    move-object/from16 v24, v6

    const/4 v6, 0x2

    .end local v6    # "s":Ljava/lang/String;
    .restart local v24    # "s":Ljava/lang/String;
    if-ne v4, v6, :cond_ed

    .line 113
    new-instance v4, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;

    invoke-direct {v4}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;-><init>()V

    const/4 v6, 0x0

    aget-object v25, v3, v6

    .line 114
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;->uid(I)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;

    move-result-object v4

    aget-object v6, v3, v20

    .line 115
    invoke-virtual {v4, v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;->packageName(Ljava/lang/String;)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;->build()Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;

    move-result-object v4

    .line 113
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v3    # "app":[Ljava/lang/String;
    .end local v24    # "s":Ljava/lang/String;
    :cond_ed
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v22

    move/from16 v4, v23

    goto :goto_ba

    .end local v22    # "appList":[Ljava/lang/String;
    .local v3, "appList":[Ljava/lang/String;
    :cond_f4
    move-object/from16 v22, v3

    .line 120
    .end local v3    # "appList":[Ljava/lang/String;
    :cond_f6
    invoke-virtual {v9}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getNavigationApp()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14b

    .line 121
    const/high16 v3, 0x40000

    or-int/2addr v10, v3

    .line 123
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v3

    .line 124
    invoke-virtual {v9}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getNavigationApp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 125
    .restart local v3    # "appList":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_10f
    if-ge v5, v4, :cond_149

    aget-object v6, v3, v5

    .line 126
    .restart local v6    # "s":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v23, v22

    .line 127
    .restart local v23    # "app":[Ljava/lang/String;
    move-object/from16 v22, v3

    move-object/from16 v3, v23

    move/from16 v23, v4

    .end local v23    # "app":[Ljava/lang/String;
    .local v3, "app":[Ljava/lang/String;
    .restart local v22    # "appList":[Ljava/lang/String;
    array-length v4, v3

    move-object/from16 v24, v6

    const/4 v6, 0x2

    .end local v6    # "s":Ljava/lang/String;
    .restart local v24    # "s":Ljava/lang/String;
    if-ne v4, v6, :cond_142

    .line 128
    new-instance v4, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;

    invoke-direct {v4}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;-><init>()V

    const/4 v6, 0x0

    aget-object v25, v3, v6

    .line 129
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;->uid(I)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;

    move-result-object v4

    aget-object v6, v3, v20

    .line 130
    invoke-virtual {v4, v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;->packageName(Ljava/lang/String;)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;->build()Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;

    move-result-object v4

    .line 128
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v3    # "app":[Ljava/lang/String;
    .end local v24    # "s":Ljava/lang/String;
    :cond_142
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v22

    move/from16 v4, v23

    goto :goto_10f

    .end local v22    # "appList":[Ljava/lang/String;
    .local v3, "appList":[Ljava/lang/String;
    :cond_149
    move-object/from16 v22, v3

    .line 135
    .end local v3    # "appList":[Ljava/lang/String;
    :cond_14b
    invoke-virtual {v9}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getNetworkApp()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1bd

    .line 136
    or-int/lit8 v10, v10, 0x2

    .line 138
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .end local v16    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    .local v3, "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    invoke-virtual {v9}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getNetworkApp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "appList":[Ljava/lang/String;
    array-length v6, v5

    const/4 v4, 0x0

    :goto_162
    if-ge v4, v6, :cond_1b6

    aget-object v16, v5, v4

    move-object/from16 v23, v16

    .line 141
    .local v23, "s":Ljava/lang/String;
    move-object/from16 v16, v5

    move-object/from16 v5, v23

    .end local v23    # "s":Ljava/lang/String;
    .local v5, "s":Ljava/lang/String;
    .local v16, "appList":[Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v23

    .line 142
    .local v24, "app":[Ljava/lang/String;
    move-object/from16 v23, v5

    move-object/from16 v5, v24

    move/from16 v24, v6

    .end local v24    # "app":[Ljava/lang/String;
    .local v5, "app":[Ljava/lang/String;
    .restart local v23    # "s":Ljava/lang/String;
    array-length v6, v5

    move-object/from16 v25, v7

    const/4 v7, 0x3

    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhms/OverheatReasonInternal;>;"
    .local v25, "results":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhms/OverheatReasonInternal;>;"
    if-ne v6, v7, :cond_1a9

    .line 143
    new-instance v6, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;

    invoke-direct {v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;-><init>()V

    const/4 v7, 0x0

    aget-object v26, v5, v7

    .line 144
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;->uid(I)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;

    move-result-object v6

    aget-object v7, v5, v20

    .line 145
    invoke-virtual {v6, v7}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;->packageName(Ljava/lang/String;)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v26, v5, v7

    .line 146
    move-object/from16 v27, v8

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;->usage(J)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;->build()Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;

    move-result-object v6

    .line 143
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1ab

    .line 142
    :cond_1a9
    move-object/from16 v27, v8

    .line 140
    .end local v5    # "app":[Ljava/lang/String;
    .end local v23    # "s":Ljava/lang/String;
    :goto_1ab
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, v16

    move/from16 v6, v24

    move-object/from16 v7, v25

    move-object/from16 v8, v27

    goto :goto_162

    .end local v16    # "appList":[Ljava/lang/String;
    .end local v25    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhms/OverheatReasonInternal;>;"
    .local v5, "appList":[Ljava/lang/String;
    .restart local v7    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhms/OverheatReasonInternal;>;"
    :cond_1b6
    move-object/from16 v16, v5

    move-object/from16 v25, v7

    move-object/from16 v27, v8

    .end local v5    # "appList":[Ljava/lang/String;
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhms/OverheatReasonInternal;>;"
    .restart local v16    # "appList":[Ljava/lang/String;
    .restart local v25    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhms/OverheatReasonInternal;>;"
    goto :goto_1c3

    .line 135
    .end local v3    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    .end local v25    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhms/OverheatReasonInternal;>;"
    .restart local v7    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhms/OverheatReasonInternal;>;"
    .local v16, "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    :cond_1bd
    move-object/from16 v25, v7

    move-object/from16 v27, v8

    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhms/OverheatReasonInternal;>;"
    .restart local v25    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhms/OverheatReasonInternal;>;"
    move-object/from16 v3, v16

    .line 151
    .end local v16    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    .restart local v3    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    :goto_1c3
    invoke-virtual {v9}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getProcessApp()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_228

    .line 152
    or-int/lit8 v10, v10, 0x4

    .line 154
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .end local v17    # "process":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;>;"
    .local v4, "process":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;>;"
    invoke-virtual {v9}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getProcessApp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "appList":[Ljava/lang/String;
    array-length v5, v1

    const/4 v6, 0x0

    :goto_1da
    if-ge v6, v5, :cond_223

    aget-object v7, v1, v6

    .line 157
    .local v7, "s":Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 158
    .local v8, "app":[Ljava/lang/String;
    move-object/from16 v16, v1

    .end local v1    # "appList":[Ljava/lang/String;
    .local v16, "appList":[Ljava/lang/String;
    array-length v1, v8

    move-object/from16 v23, v2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_216

    .line 159
    new-instance v1, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;

    invoke-direct {v1}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;-><init>()V

    const/16 v17, 0x0

    aget-object v18, v8, v17

    .line 160
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;->uid(I)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;

    move-result-object v1

    aget-object v2, v8, v20

    .line 161
    invoke-virtual {v1, v2}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;->processName(Ljava/lang/String;)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v18, v8, v2

    .line 162
    move-object/from16 v21, v3

    .end local v3    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    .local v21, "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;->usage(D)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;->build()Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;

    move-result-object v1

    .line 159
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21a

    .line 158
    .end local v21    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    .restart local v3    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    :cond_216
    move-object/from16 v21, v3

    const/16 v17, 0x0

    .line 156
    .end local v3    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "app":[Ljava/lang/String;
    .restart local v21    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    :goto_21a
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v16

    move-object/from16 v3, v21

    move-object/from16 v2, v23

    goto :goto_1da

    .end local v16    # "appList":[Ljava/lang/String;
    .end local v21    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    .restart local v1    # "appList":[Ljava/lang/String;
    .restart local v3    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    :cond_223
    move-object/from16 v16, v1

    move-object/from16 v21, v3

    .end local v1    # "appList":[Ljava/lang/String;
    .end local v3    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    .restart local v16    # "appList":[Ljava/lang/String;
    .restart local v21    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    goto :goto_22c

    .line 151
    .end local v4    # "process":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;>;"
    .end local v16    # "appList":[Ljava/lang/String;
    .end local v21    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    .restart local v3    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    .restart local v17    # "process":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;>;"
    :cond_228
    move-object/from16 v21, v3

    .end local v3    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    .restart local v21    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    move-object/from16 v4, v17

    .line 167
    .end local v17    # "process":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;>;"
    .restart local v4    # "process":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;>;"
    :goto_22c
    invoke-virtual {v9}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getEnvironmentType()I

    move-result v1

    if-lez v1, :cond_239

    .line 168
    or-int/lit8 v10, v10, 0x8

    .line 169
    invoke-virtual {v9}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getEnvironmentType()I

    move-result v1

    move v12, v1

    .line 172
    :cond_239
    new-instance v1, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;

    invoke-direct {v1}, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;-><init>()V

    invoke-virtual {v9}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getBeginTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;->beginTime(J)Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;

    move-result-object v1

    .line 173
    invoke-virtual {v9}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getEndTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;->endTime(J)Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;->overheatType(I)Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;

    invoke-direct {v2}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;-><init>()V

    .line 175
    invoke-virtual {v2, v11}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->chargerType(I)Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->cameraAppList(Ljava/util/List;)Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;

    move-result-object v2

    .line 176
    invoke-virtual {v2, v14}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->gameAppList(Ljava/util/List;)Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->navigationAppList(Ljava/util/List;)Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;

    move-result-object v2

    .line 177
    move-object/from16 v3, v21

    .end local v21    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    .restart local v3    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    invoke-virtual {v2, v3}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->networkAppList(Ljava/util/List;)Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->processAppList(Ljava/util/List;)Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;

    move-result-object v2

    .line 178
    invoke-virtual {v2, v12}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->environmentType(I)Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->build()Lcom/sec/android/sdhmssdk/SemOverheatReason;

    move-result-object v2

    .line 174
    invoke-virtual {v1, v2}, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;->semOverheatReason(Lcom/sec/android/sdhmssdk/SemOverheatReason;)Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;->build()Lcom/sec/android/sdhmssdk/SemOverheatHistory;

    move-result-object v1

    .line 172
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_284
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_284} :catch_290

    .line 180
    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-object/from16 v1, v19

    move-object/from16 v7, v25

    move-object/from16 v8, v27

    .end local v3    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    .end local v4    # "process":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;>;"
    .end local v9    # "info":Lcom/sec/android/sdhms/OverheatReasonInternal;
    .end local v10    # "type":I
    .end local v11    # "chargerType":I
    .end local v12    # "environment":I
    .end local v13    # "camera":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    .end local v14    # "game":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    .end local v15    # "navigation":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    goto/16 :goto_18

    .line 182
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatHistory;>;"
    .end local v25    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhms/OverheatReasonInternal;>;"
    :catch_290
    move-exception v0

    goto :goto_296

    .line 181
    .end local v19    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .restart local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatHistory;>;"
    .local v1, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhms/OverheatReasonInternal;>;"
    :cond_292
    return-object v0

    .line 182
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatHistory;>;"
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhms/OverheatReasonInternal;>;"
    :catch_293
    move-exception v0

    move-object/from16 v19, v1

    .line 183
    .end local v1    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v19    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :goto_296
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 184
    const/4 v1, 0x0

    return-object v1

    .line 187
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v19    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .restart local v1    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :cond_29b
    move-object/from16 v19, v1

    const/4 v1, 0x0

    .end local v1    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .restart local v19    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    return-object v1
.end method

.method public getSupportedReasonTypes()I
    .registers 3

    .line 201
    invoke-direct {p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 202
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_a

    .line 203
    const v1, 0x7000f

    return v1

    .line 208
    :cond_a
    const/4 v1, 0x0

    return v1
.end method

.method public getThermalControlFlag()I
    .registers 3

    .line 260
    invoke-direct {p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 261
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_f

    .line 263
    :try_start_6
    invoke-interface {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getThermalControlFlag()I

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v1

    .line 264
    :catch_b
    move-exception v1

    .line 265
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 268
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_f
    const/4 v1, -0x1

    return v1
.end method

.method public setThermalControlFlag(I)Z
    .registers 4
    .param p1, "flag"    # I

    .line 238
    invoke-direct {p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 239
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_f

    .line 241
    :try_start_6
    invoke-interface {v0, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->setThermalControlFlag(I)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v1

    .line 242
    :catch_b
    move-exception v1

    .line 243
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 246
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_f
    const/4 v1, 0x0

    return v1
.end method
