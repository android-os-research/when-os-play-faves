.class public Lcom/android/server/wm/CustomAspectRatioLegacyController;
.super Ljava/lang/Object;
.source "CustomAspectRatioLegacyController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PackageSettingsManager"


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mFinished:Z

.field public final mLegacy:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 6

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->CONVENTIONAL_MODE_DIRECTORY:Ljava/lang/String;

    const/16 v2, 0x200

    const-string v3, "PackageMap"

    invoke-direct {v0, v2, v1, v3}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/CustomAspectRatioLegacyController;->mLegacy:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 60
    iput-object p1, p0, Lcom/android/server/wm/CustomAspectRatioLegacyController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 61
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCustomAspectRatioController:Lcom/android/server/wm/CustomAspectRatioController;

    iput-object p0, v0, Lcom/android/server/wm/CustomAspectRatioController;->mLegacyController:Lcom/android/server/wm/CustomAspectRatioLegacyController;

    .line 62
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mDisplayCutoutController:Lcom/android/server/wm/DisplayCutoutController;

    iput-object p0, p1, Lcom/android/server/wm/DisplayCutoutController;->mLegacyController:Lcom/android/server/wm/CustomAspectRatioLegacyController;

    return-void
.end method


# virtual methods
.method public final migrate(I)V
    .registers 13

    .line 85
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string v1, "PackageSettingsManager"

    if-eqz v0, :cond_1a

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migrate userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/CustomAspectRatioLegacyController;->mLegacy:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_107

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 90
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v10, 0x1

    if-eq v2, v10, :cond_8b

    .line 91
    iget-object v2, p0, Lcom/android/server/wm/CustomAspectRatioLegacyController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mDefaultFullScreenPackagesFromScpm:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 92
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DefaultFullScreenPackage, packageName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v2, p0, Lcom/android/server/wm/CustomAspectRatioLegacyController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCustomAspectRatioController:Lcom/android/server/wm/CustomAspectRatioController;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/CustomAspectRatioController;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    const/4 v4, 0x0

    .line 95
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 94
    invoke-virtual {v2, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v2, p0, Lcom/android/server/wm/CustomAspectRatioLegacyController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mDisplayCutoutController:Lcom/android/server/wm/DisplayCutoutController;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/DisplayCutoutController;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    .line 97
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 96
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 101
    :cond_8b
    iget-object v2, p0, Lcom/android/server/wm/CustomAspectRatioLegacyController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v6, 0x80

    const/16 v8, 0x3e8

    move-object v5, v3

    move v9, p1

    .line 102
    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const-string v4, "MigrationPackage packageName="

    if-nez v2, :cond_b8

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", appInfo is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 107
    :cond_b8
    iget-object v5, p0, Lcom/android/server/wm/CustomAspectRatioLegacyController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCustomAspectRatioController:Lcom/android/server/wm/CustomAspectRatioController;

    const/4 v6, 0x0

    .line 108
    invoke-virtual {v5, p1, v2, v6}, Lcom/android/server/wm/CustomAspectRatioController;->isUnchangeableFullScreenMode(ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    .line 109
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v5, :cond_e1

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isUnchangeable="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e1
    if-nez v2, :cond_f4

    .line 114
    iget-object v2, p0, Lcom/android/server/wm/CustomAspectRatioLegacyController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCustomAspectRatioController:Lcom/android/server/wm/CustomAspectRatioController;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/CustomAspectRatioController;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    .line 115
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_f4
    iget-object v2, p0, Lcom/android/server/wm/CustomAspectRatioLegacyController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mDisplayCutoutController:Lcom/android/server/wm/DisplayCutoutController;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/DisplayCutoutController;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    .line 118
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_28

    .line 120
    :cond_107
    invoke-static {}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->getInstance()Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->requestToSave(II)V

    .line 122
    iget-object p0, p0, Lcom/android/server/wm/CustomAspectRatioLegacyController;->mLegacy:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->reset(I)V

    return-void
.end method

.method public declared-synchronized migrateIfNeeded()V
    .registers 4

    monitor-enter p0

    .line 66
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/wm/CustomAspectRatioLegacyController;->mFinished:Z

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/wm/CustomAspectRatioLegacyController;->mLegacy:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getUserIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_6a

    if-eqz v0, :cond_12

    goto :goto_4c

    :cond_12
    :try_start_12
    const-string v0, "PackageSettingsManager"

    const-string v1, "Started full screen apps migration."

    .line 73
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/CustomAspectRatioLegacyController;->mLegacy:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getUserIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 75
    invoke-virtual {p0, v1}, Lcom/android/server/wm/CustomAspectRatioLegacyController;->migrate(I)V

    goto :goto_23

    :cond_37
    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/android/server/wm/CustomAspectRatioLegacyController;->mFinished:Z

    const-string v0, "PackageSettingsManager"

    const-string v1, "Finished full screen apps migration."

    .line 78
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_41} :catch_42
    .catchall {:try_start_12 .. :try_end_41} :catchall_6a

    goto :goto_4a

    :catch_42
    move-exception v0

    :try_start_43
    const-string v1, "PackageSettingsManager"

    const-string v2, "Failed to migrate full screen apps."

    .line 80
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_6a

    .line 82
    :goto_4a
    monitor-exit p0

    return-void

    .line 67
    :cond_4c
    :goto_4c
    :try_start_4c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_68

    const-string v0, "PackageSettingsManager"

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MigrationPackages are empty. Finished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/CustomAspectRatioLegacyController;->mFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_4c .. :try_end_68} :catchall_6a

    .line 70
    :cond_68
    monitor-exit p0

    return-void

    :catchall_6a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
