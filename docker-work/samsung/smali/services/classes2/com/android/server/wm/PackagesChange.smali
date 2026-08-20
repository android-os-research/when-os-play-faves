.class public abstract Lcom/android/server/wm/PackagesChange;
.super Ljava/lang/Object;
.source "PackagesChange.java"


# static fields
.field public static final EXCLUDED_PACKAGE_PREFIX:[Ljava/lang/String;

.field public static final LOCAL_DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "PackageSettingsManager"


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mControllerName:Ljava/lang/String;

.field public mUserChanges:[Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;


# direct methods
.method public static synthetic $r8$lambda$7PJKb1pOLUggfl3rkTMlab9j2uo(ILjava/lang/String;Lcom/android/server/wm/Task;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/PackagesChange;->lambda$removeTaskWithoutRemoveFromRecents$0(ILjava/lang/String;Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "com.samsung."

    const-string v1, "com.sec."

    .line 51
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/PackagesChange;->EXCLUDED_PACKAGE_PREFIX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/PackagesChange;->mControllerName:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 60
    invoke-static {}, Lcom/android/server/wm/PackageSettingsManager;->getInstance()Lcom/android/server/wm/PackageSettingsManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/PackageSettingsManager;->addPackagesChange(Lcom/android/server/wm/PackagesChange;)V

    return-void
.end method

.method public static getAdjustedUserIdIfNeeded(Ljava/lang/String;I)I
    .registers 2

    return p1
.end method

.method public static synthetic lambda$removeTaskWithoutRemoveFromRecents$0(ILjava/lang/String;Lcom/android/server/wm/Task;)Z
    .registers 4

    .line 154
    iget v0, p2, Lcom/android/server/wm/Task;->mUserId:I

    if-ne p0, v0, :cond_14

    iget-object p0, p2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_14

    .line 155
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static removeTaskWithoutRemoveFromRecents(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    .line 152
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 153
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/PackagesChange$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, p1}, Lcom/android/server/wm/PackagesChange$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_18

    .line 157
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 159
    :cond_18
    :try_start_18
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 p2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    .line 160
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_24
    move-exception p0

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final dumpUserChanges(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mUserChanges:[Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    if-eqz v0, :cond_16

    array-length v1, v0

    if-nez v1, :cond_8

    goto :goto_16

    .line 130
    :cond_8
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 131
    iget-object v4, p0, Lcom/android/server/wm/PackagesChange;->mControllerName:Ljava/lang/String;

    invoke-virtual {v3, p1, v4, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    :goto_16
    return-void
.end method

.method public executeShellCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public getLauncherActivities(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 118
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 119
    iget-object p0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0xc0000

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isExcludedPackage(Ljava/lang/String;)Z
    .registers 6

    .line 79
    sget-object p0, Lcom/android/server/wm/PackagesChange;->EXCLUDED_PACKAGE_PREFIX:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_14

    aget-object v3, p0, v2

    .line 80
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    return v1
.end method

.method public declared-synchronized isHomeActivity(Ljava/lang/String;I)Z
    .registers 9

    monitor-enter p0

    .line 89
    :try_start_1
    invoke-static {}, Lcom/android/server/wm/PackageSettingsManager;->getInstance()Lcom/android/server/wm/PackageSettingsManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/PackageSettingsManager;->mCachedHomeActivities:Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 91
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 92
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_94

    monitor-exit p0

    return p1

    .line 94
    :cond_1f
    :try_start_1f
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_94

    if-eqz v1, :cond_4b

    const/4 v1, 0x0

    .line 99
    :try_start_2b
    invoke-virtual {p0, v1, p2}, Lcom/android/server/wm/PackagesChange;->getLauncherActivities(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 100
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 103
    :cond_4b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iget-object v4, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4, v1, p2}, Landroid/content/pm/PackageManagerInternal;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    .line 105
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 106
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_74} :catch_7b
    .catchall {:try_start_2b .. :try_end_74} :catchall_79

    goto :goto_5d

    .line 111
    :cond_75
    :goto_75
    :try_start_75
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_94

    goto :goto_84

    :catchall_79
    move-exception p1

    goto :goto_90

    :catch_7b
    move-exception p2

    :try_start_7c
    const-string v1, "PackageSettingsManager"

    const-string v4, "Fail to cache home activities"

    .line 109
    invoke-static {v1, v4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_83
    .catchall {:try_start_7c .. :try_end_83} :catchall_79

    goto :goto_75

    .line 113
    :goto_84
    :try_start_84
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_8e
    .catchall {:try_start_84 .. :try_end_8e} :catchall_94

    monitor-exit p0

    return p1

    .line 111
    :goto_90
    :try_start_90
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 112
    throw p1
    :try_end_94
    .catchall {:try_start_90 .. :try_end_94} :catchall_94

    :catchall_94
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final resetIfNeeded(II)V
    .registers 8

    .line 68
    iget-object p0, p0, Lcom/android/server/wm/PackagesChange;->mUserChanges:[Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    if-nez p0, :cond_5

    return-void

    .line 71
    :cond_5
    array-length v0, p0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1c

    aget-object v2, p0, v1

    .line 72
    invoke-virtual {v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getIdentityFlag()I

    move-result v3

    and-int/2addr v3, p2

    invoke-virtual {v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getIdentityFlag()I

    move-result v4

    if-ne v3, v4, :cond_19

    .line 73
    invoke-virtual {v2, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->reset(I)V

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    return-void
.end method

.method public final varargs setUserChanges([Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/android/server/wm/PackagesChange;->mUserChanges:[Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    return-void
.end method

.method public supportsSizeChanges(Ljava/lang/String;)Z
    .registers 3

    .line 143
    iget-object p0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    const-string v0, "android.supports_size_changes"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->hasMetaData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
