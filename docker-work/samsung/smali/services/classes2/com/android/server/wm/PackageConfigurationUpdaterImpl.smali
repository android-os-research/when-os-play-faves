.class public final Lcom/android/server/wm/PackageConfigurationUpdaterImpl;
.super Ljava/lang/Object;
.source "PackageConfigurationUpdaterImpl.java"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;


# static fields
.field public static final TAG:Ljava/lang/String; = "PackageConfigurationUpdaterImpl"


# instance fields
.field public mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mLocales:Landroid/os/LocaleList;

.field public mNightMode:Ljava/lang/Integer;

.field public mPackageName:Ljava/lang/String;

.field public final mPid:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mUserId:I


# direct methods
.method public constructor <init>(ILcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPid:Ljava/util/Optional;

    .line 42
    iput-object p2, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    .line 48
    iput p2, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    .line 49
    iput-object p3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 50
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPid:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public commit()Z
    .registers 10

    .line 72
    monitor-enter p0

    .line 73
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_b4

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 74
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_ae

    .line 77
    :try_start_d
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPid:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5a

    .line 78
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    iget-object v5, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPid:Ljava/util/Optional;

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    if-nez v3, :cond_4d

    const-string v3, "PackageConfigurationUpdaterImpl"

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "commit: Override application configuration failed: cannot find pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPid:Ljava/util/Optional;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_d .. :try_end_44} :catchall_a9

    .line 101
    :try_start_44
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_ae

    :try_start_48
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_b4

    return v4

    .line 84
    :cond_4d
    :try_start_4d
    iget v4, v3, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 85
    iget v5, v3, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    iput v5, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    .line 86
    iget-object v3, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    goto :goto_8f

    .line 88
    :cond_5a
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    const-wide/32 v6, 0x20000

    iget v8, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    if-gez v3, :cond_8e

    const-string v3, "PackageConfigurationUpdaterImpl"

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "commit: update of application configuration failed: userId or packageName not valid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_4d .. :try_end_85} :catchall_a9

    .line 101
    :try_start_85
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_ae

    :try_start_89
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    monitor-exit p0
    :try_end_8d
    .catchall {:try_start_89 .. :try_end_8d} :catchall_b4

    return v4

    :cond_8e
    move v4, v3

    .line 96
    :goto_8f
    :try_start_8f
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->updateConfig(ILjava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    iget-object v4, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    .line 98
    invoke-virtual {v3, v4, v5, p0}, Lcom/android/server/wm/PackageConfigPersister;->updateFromImpl(Ljava/lang/String;ILcom/android/server/wm/PackageConfigurationUpdaterImpl;)Z

    move-result v3
    :try_end_a0
    .catchall {:try_start_8f .. :try_end_a0} :catchall_a9

    .line 101
    :try_start_a0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_a0 .. :try_end_a4} :catchall_ae

    :try_start_a4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    monitor-exit p0
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_b4

    return v3

    :catchall_a9
    move-exception v3

    :try_start_aa
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    throw v3

    :catchall_ae
    move-exception v1

    .line 103
    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_aa .. :try_end_b0} :catchall_ae

    :try_start_b0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :catchall_b4
    move-exception v0

    .line 104
    monitor-exit p0
    :try_end_b6
    .catchall {:try_start_b0 .. :try_end_b6} :catchall_b4

    throw v0
.end method

.method public getLocales()Landroid/os/LocaleList;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mLocales:Landroid/os/LocaleList;

    return-object p0
.end method

.method public getNightMode()Ljava/lang/Integer;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mNightMode:Ljava/lang/Integer;

    return-object p0
.end method

.method public setLocales(Landroid/os/LocaleList;)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;
    .registers 2

    .line 64
    monitor-enter p0

    .line 65
    :try_start_1
    iput-object p1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mLocales:Landroid/os/LocaleList;

    .line 66
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public setNightMode(I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;
    .registers 2

    .line 55
    monitor-enter p0

    .line 56
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mNightMode:Ljava/lang/Integer;

    .line 57
    monitor-exit p0

    return-object p0

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public final updateConfig(ILjava/lang/String;)V
    .registers 7

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcesses(I)Landroid/util/ArraySet;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 109
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_46

    .line 110
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mLocales:Landroid/os/LocaleList;

    iget-object v1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 111
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 110
    invoke-static {v0, v1}, Lcom/android/server/wm/LocaleOverlayHelper;->combineLocalesIfOverlayExists(Landroid/os/LocaleList;Landroid/os/LocaleList;)Landroid/os/LocaleList;

    move-result-object v0

    .line 112
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_27
    if-ltz v1, :cond_46

    .line 113
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowProcessController;

    .line 114
    iget-object v3, v2, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 115
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mNightMode:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/ConfigurationContainer;->applyAppSpecificConfig(Ljava/lang/Integer;Landroid/os/LocaleList;)Z

    .line 119
    :cond_3e
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mNightMode:Ljava/lang/Integer;

    invoke-virtual {v2, p2, v3, v0}, Lcom/android/server/wm/WindowProcessController;->updateAppSpecificSettingsForAllActivitiesInPackage(Ljava/lang/String;Ljava/lang/Integer;Landroid/os/LocaleList;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    :cond_46
    :goto_46
    return-void
.end method
