.class public final Lcom/android/server/apphibernation/AppHibernationService;
.super Lcom/android/server/SystemService;
.source "AppHibernationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;,
        Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;,
        Lcom/android/server/apphibernation/AppHibernationService$Injector;,
        Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;,
        Lcom/android/server/apphibernation/AppHibernationService$LocalService;
    }
.end annotation


# static fields
.field public static final PACKAGE_MATCH_FLAGS:I = 0x200ca200

.field public static final TAG:Ljava/lang/String; = "AppHibernationService"

.field public static sIsServiceEnabled:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mContext:Landroid/content/Context;

.field public final mGlobalHibernationStates:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/apphibernation/GlobalLevelState;",
            ">;"
        }
    .end annotation
.end field

.field public final mGlobalLevelHibernationDiskStore:Lcom/android/server/apphibernation/HibernationStateDiskStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/apphibernation/HibernationStateDiskStore<",
            "Lcom/android/server/apphibernation/GlobalLevelState;",
            ">;"
        }
    .end annotation
.end field

.field public final mIActivityManager:Landroid/app/IActivityManager;

.field public final mIPackageManager:Landroid/content/pm/IPackageManager;

.field public final mInjector:Lcom/android/server/apphibernation/AppHibernationService$Injector;

.field public final mLocalService:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mOatArtifactDeletionEnabled:Z

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mServiceStub:Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;

.field public final mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

.field public final mUsageEventListener:Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

.field public final mUserDiskStores:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/apphibernation/HibernationStateDiskStore<",
            "Lcom/android/server/apphibernation/UserLevelState;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserStates:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/apphibernation/UserLevelState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4IW_SnBZdZYxEU8rMJaUPJ94PaQ(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;ILcom/android/server/apphibernation/UserLevelState;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/apphibernation/AppHibernationService;->lambda$setHibernatingForUser$1(Ljava/lang/String;ILcom/android/server/apphibernation/UserLevelState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AoxqWvjaHVvCpq9_3XSBupw8Ahw(Lcom/android/server/apphibernation/UserLevelState;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/apphibernation/AppHibernationService;->lambda$setHibernatingForUser$3(Lcom/android/server/apphibernation/UserLevelState;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PYZuZQSSTjdPIvhr5hm0CJ1rLtA(Lcom/android/server/apphibernation/AppHibernationService;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/AppHibernationService;->onDeviceConfigChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$afpG3bIxlB47iMVNi9B40VH92Ck(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;Lcom/android/server/apphibernation/GlobalLevelState;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->lambda$setHibernatingGlobally$4(Ljava/lang/String;Lcom/android/server/apphibernation/GlobalLevelState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gwinunzkZsgmbv4MvqtBF9yd8xg(Lcom/android/server/apphibernation/AppHibernationService;ILandroid/app/usage/UsageEvents$Event;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->lambda$new$6(ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lv99c9XgPyJCzmy9d4rOS-jvxak(Lcom/android/server/apphibernation/AppHibernationService;Lcom/android/server/apphibernation/HibernationStateDiskStore;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->lambda$onUserUnlocking$5(Lcom/android/server/apphibernation/HibernationStateDiskStore;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$u5eYJkDguoJUPvQCziEqE_9Rv-0(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->lambda$setHibernatingForUser$2(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xV4J3FSRZPgap2aLPf8nsTdT740(Lcom/android/server/apphibernation/AppHibernationService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/apphibernation/AppHibernationService;->lambda$onBootPhase$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmGlobalHibernationStates(Lcom/android/server/apphibernation/AppHibernationService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/apphibernation/AppHibernationService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/apphibernation/AppHibernationService;)Landroid/os/UserManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/apphibernation/AppHibernationService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/AppHibernationService;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misOatArtifactDeletionEnabled(Lcom/android/server/apphibernation/AppHibernationService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationService;->isOatArtifactDeletionEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monPackageAdded(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->onPackageAdded(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageRemoved(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->onPackageRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageRemovedForAllUsers(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/AppHibernationService;->onPackageRemovedForAllUsers(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 143
    new-instance v0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;

    invoke-direct {v0, p1}, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/apphibernation/AppHibernationService;-><init>(Lcom/android/server/apphibernation/AppHibernationService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/apphibernation/AppHibernationService$Injector;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 148
    invoke-interface {p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    .line 119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    .line 121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserDiskStores:Landroid/util/SparseArray;

    .line 123
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    .line 801
    new-instance v0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/apphibernation/AppHibernationService$LocalService;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    iput-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLocalService:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    .line 836
    new-instance v1, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;

    invoke-direct {v1, p0}, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    iput-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mServiceStub:Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;

    .line 893
    new-instance v1, Lcom/android/server/apphibernation/AppHibernationService$1;

    invoke-direct {v1, p0}, Lcom/android/server/apphibernation/AppHibernationService$1;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    iput-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 921
    new-instance v2, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    iput-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUsageEventListener:Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

    .line 149
    invoke-interface {p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mContext:Landroid/content/Context;

    .line 150
    invoke-interface {p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 151
    invoke-interface {p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 152
    invoke-interface {p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;

    .line 153
    invoke-interface {p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserManager:Landroid/os/UserManager;

    .line 154
    invoke-interface {p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->getStorageStatsManager()Landroid/app/usage/StorageStatsManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    .line 155
    invoke-interface {p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->getGlobalLevelDiskStore()Lcom/android/server/apphibernation/HibernationStateDiskStore;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalLevelHibernationDiskStore:Lcom/android/server/apphibernation/HibernationStateDiskStore;

    .line 156
    invoke-interface {p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 157
    invoke-interface {p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->isOatArtifactDeletionEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mOatArtifactDeletionEnabled:Z

    .line 158
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mInjector:Lcom/android/server/apphibernation/AppHibernationService$Injector;

    .line 160
    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 162
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    .line 163
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    .line 164
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "package"

    .line 165
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    const-class p0, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 168
    invoke-interface {p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->getUsageStatsManagerInternal()Landroid/app/usage/UsageStatsManagerInternal;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    return-void
.end method

.method public static isAppHibernationEnabled()Z
    .registers 1

    .line 941
    sget-boolean v0, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    return v0
.end method

.method public static isDeviceConfigAppHibernationEnabled()Z
    .registers 3

    const-string v0, "app_hibernation"

    const-string v1, "app_hibernation_enabled"

    const/4 v2, 0x1

    .line 945
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$new$6(ILandroid/app/usage/UsageEvents$Event;)V
    .registers 5

    .line 922
    invoke-static {}, Lcom/android/server/apphibernation/AppHibernationService;->isAppHibernationEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 925
    :cond_7
    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_13

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1c

    .line 929
    :cond_13
    iget-object p2, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/4 v0, 0x0

    .line 930
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingForUser(Ljava/lang/String;IZ)V

    .line 931
    invoke-virtual {p0, p2, v0}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingGlobally(Ljava/lang/String;Z)V

    :cond_1c
    return-void
.end method

.method private synthetic lambda$onBootPhase$0()V
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalLevelHibernationDiskStore:Lcom/android/server/apphibernation/HibernationStateDiskStore;

    .line 181
    invoke-virtual {v0}, Lcom/android/server/apphibernation/HibernationStateDiskStore;->readHibernationStates()Ljava/util/List;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_9
    invoke-virtual {p0, v0}, Lcom/android/server/apphibernation/AppHibernationService;->initializeGlobalHibernationStates(Ljava/util/List;)V

    .line 184
    monitor-exit v1

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$onUserUnlocking$5(Lcom/android/server/apphibernation/HibernationStateDiskStore;I)V
    .registers 6

    .line 655
    invoke-virtual {p1}, Lcom/android/server/apphibernation/HibernationStateDiskStore;->readHibernationStates()Ljava/util/List;

    move-result-object p1

    .line 656
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 658
    :try_start_7
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 659
    invoke-virtual {p0, p2, p1}, Lcom/android/server/apphibernation/AppHibernationService;->initializeUserHibernationStates(ILjava/util/List;)V

    .line 662
    iget-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_22
    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/apphibernation/UserLevelState;

    .line 663
    iget-object v1, p2, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 664
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 665
    iget-boolean v2, v2, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    if-eqz v2, :cond_22

    iget-boolean p2, p2, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    if-nez p2, :cond_22

    const/4 p2, 0x0

    .line 666
    invoke-virtual {p0, v1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingGlobally(Ljava/lang/String;Z)V

    goto :goto_22

    .line 670
    :cond_45
    monitor-exit v0

    return-void

    :catchall_47
    move-exception p0

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_47

    throw p0
.end method

.method private synthetic lambda$setHibernatingForUser$1(Ljava/lang/String;ILcom/android/server/apphibernation/UserLevelState;)V
    .registers 4

    .line 312
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/apphibernation/AppHibernationService;->hibernatePackageForUser(Ljava/lang/String;ILcom/android/server/apphibernation/UserLevelState;)V

    return-void
.end method

.method private synthetic lambda$setHibernatingForUser$2(Ljava/lang/String;I)V
    .registers 3

    .line 315
    invoke-virtual {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->unhibernatePackageForUser(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$setHibernatingForUser$3(Lcom/android/server/apphibernation/UserLevelState;I)V
    .registers 4

    .line 322
    iget-object v0, p0, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    const/16 v1, 0x172

    invoke-static {v1, v0, p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IZ)V

    return-void
.end method

.method private synthetic lambda$setHibernatingGlobally$4(Ljava/lang/String;Lcom/android/server/apphibernation/GlobalLevelState;)V
    .registers 3

    .line 359
    invoke-virtual {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->hibernatePackageGlobally(Ljava/lang/String;Lcom/android/server/apphibernation/GlobalLevelState;)V

    return-void
.end method


# virtual methods
.method public final checkUserStatesExist(ILjava/lang/String;Z)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    const-string v1, "AppHibernationService"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_23

    if-eqz p3, :cond_22

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p2, p0, v3

    .line 756
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "Attempt to call %s on stopped or nonexistent user %d"

    .line 754
    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return v3

    .line 760
    :cond_23
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    if-nez p0, :cond_3b

    if-eqz p3, :cond_3a

    new-array p0, v2, [Ljava/lang/Object;

    aput-object p2, p0, v3

    const-string p1, "Attempt to call %s before states have been read from disk"

    .line 762
    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return v3

    :cond_3b
    return v2
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 8

    .line 772
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AppHibernationService"

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 774
    :cond_d
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 776
    iget-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 777
    :try_start_17
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_64

    .line 779
    iget-object v3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    const-string v4, "User Level Hibernation States, "

    .line 780
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "user"

    .line 781
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 782
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 783
    iget-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 784
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 785
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/apphibernation/UserLevelState;

    .line 786
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 787
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_4b

    .line 789
    :cond_5e
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 791
    :cond_64
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v1, "Global Level Hibernation States"

    .line 792
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 793
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 794
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_79
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 795
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 796
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_79

    .line 798
    :cond_8c
    monitor-exit p1

    return-void

    :catchall_8e
    move-exception p0

    monitor-exit p1
    :try_end_90
    .catchall {:try_start_17 .. :try_end_90} :catchall_8e

    throw p0
.end method

.method public getHibernatingPackagesForUser(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "getHibernatingPackagesForUser"

    .line 377
    sget-boolean v2, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    if-nez v2, :cond_c

    return-object v0

    .line 380
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.MANAGE_APP_HIBERNATION"

    const-string v4, "Caller does not have MANAGE_APP_HIBERNATION permission."

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0, p1, v1}, Lcom/android/server/apphibernation/AppHibernationService;->handleIncomingUser(ILjava/lang/String;)I

    move-result p1

    .line 384
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    .line 385
    :try_start_1f
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/apphibernation/AppHibernationService;->checkUserStatesExist(ILjava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_27

    .line 386
    monitor-exit v2

    return-object v0

    .line 388
    :cond_27
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 389
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_37
    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/apphibernation/UserLevelState;

    .line 390
    iget-object v3, v1, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 391
    iget-object v4, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 392
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 391
    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_52

    goto :goto_37

    .line 396
    :cond_52
    iget-boolean v3, v1, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    if-eqz v3, :cond_37

    .line 397
    iget-object v1, v1, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 400
    :cond_5c
    monitor-exit v2

    return-object v0

    :catchall_5e
    move-exception p0

    .line 401
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_1f .. :try_end_60} :catchall_5e

    throw p0
.end method

.method public getHibernationStatsForUser(Ljava/util/Set;I)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/apphibernation/HibernationStats;",
            ">;"
        }
    .end annotation

    .line 412
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "getHibernationStatsForUser"

    .line 414
    sget-boolean v2, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    if-nez v2, :cond_c

    return-object v0

    .line 417
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.MANAGE_APP_HIBERNATION"

    const-string v4, "Caller does not have MANAGE_APP_HIBERNATION permission."

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0, p2, v1}, Lcom/android/server/apphibernation/AppHibernationService;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    .line 421
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    .line 422
    :try_start_1f
    invoke-virtual {p0, p2, v1, v3}, Lcom/android/server/apphibernation/AppHibernationService;->checkUserStatesExist(ILjava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_27

    .line 423
    monitor-exit v2

    return-object v0

    .line 425
    :cond_27
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz p1, :cond_32

    goto :goto_36

    .line 426
    :cond_32
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 427
    :goto_36
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 428
    iget-object v5, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_53

    goto :goto_3a

    .line 432
    :cond_53
    iget-object v5, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 433
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_62

    goto :goto_7e

    .line 439
    :cond_62
    iget-object v5, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/apphibernation/GlobalLevelState;

    iget-wide v5, v5, Lcom/android/server/apphibernation/GlobalLevelState;->savedByte:J

    .line 440
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/apphibernation/UserLevelState;

    iget-wide v7, v7, Lcom/android/server/apphibernation/UserLevelState;->savedByte:J

    add-long/2addr v5, v7

    .line 441
    new-instance v7, Landroid/apphibernation/HibernationStats;

    invoke-direct {v7, v5, v6}, Landroid/apphibernation/HibernationStats;-><init>(J)V

    .line 442
    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    :cond_7e
    :goto_7e
    const-string v5, "AppHibernationService"

    const-string v6, "No hibernation state associated with package %s user %d. Maybethe package was uninstalled? "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    .line 436
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    .line 434
    invoke-static {v6, v7}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 444
    :cond_96
    monitor-exit v2

    return-object v0

    :catchall_98
    move-exception p0

    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_1f .. :try_end_9a} :catchall_98

    throw p0
.end method

.method public final handleIncomingUser(ILjava/lang/String;)I
    .registers 11

    .line 733
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 735
    :try_start_4
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move v3, p1

    move-object v6, p2

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_14

    return p0

    :catch_14
    move-exception p0

    .line 738
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final hibernatePackageForUser(Ljava/lang/String;ILcom/android/server/apphibernation/UserLevelState;)V
    .registers 11

    const-string/jumbo v0, "hibernatePackage"

    const-wide/32 v1, 0x80000

    .line 454
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 455
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 457
    :try_start_d
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v5, 0x200ca200

    invoke-interface {v0, p1, v5, v6, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 459
    iget-object v5, p0, Lcom/android/server/apphibernation/AppHibernationService;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v0, p1, v6}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v0

    .line 461
    iget-object v5, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v5, p1, p2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 462
    iget-object v5, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v6, 0x0

    invoke-interface {v5, p1, p2, v6}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    .line 464
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_31} :catch_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_31} :catch_47
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_31} :catch_3e
    .catchall {:try_start_d .. :try_end_31} :catchall_3c

    .line 465
    :try_start_31
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide p1

    iput-wide p1, p3, Lcom/android/server/apphibernation/UserLevelState;->savedByte:J

    .line 466
    monitor-exit p0

    goto :goto_4f

    :catchall_39
    move-exception p1

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_39

    :try_start_3b
    throw p1
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3c} :catch_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3b .. :try_end_3c} :catch_47
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3c} :catch_3e
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    goto :goto_5f

    :catch_3e
    move-exception p0

    :try_start_3f
    const-string p1, "AppHibernationService"

    const-string p2, "Storage device not found"

    .line 473
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f

    :catch_47
    move-exception p0

    const-string p1, "AppHibernationService"

    const-string p2, "Package name not found when querying storage stats"

    .line 471
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_3f .. :try_end_4f} :catchall_3c

    .line 475
    :goto_4f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 476
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catch_56
    move-exception p0

    .line 468
    :try_start_57
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to hibernate due to manager not being available"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_3c

    .line 475
    :goto_5f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 476
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 477
    throw p0
.end method

.method public final hibernatePackageGlobally(Ljava/lang/String;Lcom/android/server/apphibernation/GlobalLevelState;)V
    .registers 10

    const-string/jumbo v0, "hibernatePackageGlobally"

    const-wide/32 v1, 0x80000

    .line 542
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 544
    iget-boolean v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mOatArtifactDeletionEnabled:Z

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_19

    .line 545
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 546
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->deleteOatArtifactsOfPackage(Ljava/lang/String;)J

    move-result-wide v5

    .line 545
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 549
    :cond_19
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 550
    :try_start_1c
    iput-wide v3, p2, Lcom/android/server/apphibernation/GlobalLevelState;->savedByte:J

    .line 551
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_23

    .line 552
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_23
    move-exception p1

    .line 551
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public final initializeGlobalHibernationStates(Ljava/util/List;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/apphibernation/GlobalLevelState;",
            ">;)V"
        }
    .end annotation

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v1, 0x204ca200

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 619
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_7b

    .line 624
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v3

    :goto_13
    if-ge v2, v1, :cond_2c

    .line 625
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 626
    new-instance v5, Lcom/android/server/apphibernation/GlobalLevelState;

    invoke-direct {v5}, Lcom/android/server/apphibernation/GlobalLevelState;-><init>()V

    .line 627
    iput-object v4, v5, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    .line 628
    iget-object v6, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2c
    if-eqz p1, :cond_7a

    .line 631
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 632
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v4, v3

    :goto_38
    if-ge v4, v2, :cond_48

    .line 633
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 635
    :cond_48
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v3

    :goto_4d
    if-ge v2, v0, :cond_7a

    .line 636
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 637
    iget-object v5, v4, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_70

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 638
    iget-object v4, v4, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    aput-object v4, v5, v3

    const-string v4, "No hibernation state associated with package %s. Maybe the package was uninstalled? "

    invoke-static {v4, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AppHibernationService"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 643
    :cond_70
    iget-object v5, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    iget-object v6, v4, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    :cond_7a
    return-void

    :catch_7b
    move-exception p0

    .line 621
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Package manager not available"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final initializeUserHibernationStates(ILjava/util/List;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/server/apphibernation/UserLevelState;",
            ">;)V"
        }
    .end annotation

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v1, 0x200ca200

    invoke-interface {v0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_ab

    .line 571
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 573
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_18
    if-ge v4, v2, :cond_2f

    .line 574
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 575
    new-instance v6, Lcom/android/server/apphibernation/UserLevelState;

    invoke-direct {v6}, Lcom/android/server/apphibernation/UserLevelState;-><init>()V

    .line 576
    iput-object v5, v6, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 577
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_2f
    if-eqz p2, :cond_a5

    .line 581
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 582
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v5, v3

    :goto_3b
    if-ge v5, v4, :cond_51

    .line 583
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 585
    :cond_51
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    move v4, v3

    :goto_56
    if-ge v4, v0, :cond_a5

    .line 586
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/apphibernation/UserLevelState;

    iget-object v5, v5, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 587
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 588
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/apphibernation/UserLevelState;

    if-nez v6, :cond_86

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v3

    .line 592
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v6, v7

    const-string v5, "No hibernation state associated with package %s user %d. Maybethe package was uninstalled? "

    .line 590
    invoke-static {v5, v6}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "AppHibernationService"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a2

    .line 595
    :cond_86
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_9f

    iget v8, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x200000

    and-int/2addr v8, v9

    iput v8, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    if-nez v8, :cond_9f

    iget-boolean v6, v7, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    if-eqz v6, :cond_9f

    .line 600
    iput-boolean v3, v7, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    .line 601
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/apphibernation/UserLevelState;->lastUnhibernatedMs:J

    .line 603
    :cond_9f
    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a2
    add-int/lit8 v4, v4, 0x1

    goto :goto_56

    .line 606
    :cond_a5
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :catch_ab
    move-exception p0

    .line 568
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Package manager not available"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public isHibernatingForUser(Ljava/lang/String;I)Z
    .registers 9

    const-string/jumbo v0, "isHibernatingForUser"

    .line 225
    sget-boolean v1, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_9

    return v2

    .line 228
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.MANAGE_APP_HIBERNATION"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caller did not have permission while calling "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0, p2, v0}, Lcom/android/server/apphibernation/AppHibernationService;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    .line 232
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_2a
    invoke-virtual {p0, p2, v0, v2}, Lcom/android/server/apphibernation/AppHibernationService;->checkUserStatesExist(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_32

    .line 236
    monitor-exit v1

    return v2

    .line 238
    :cond_32
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 239
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/apphibernation/UserLevelState;

    if-eqz p2, :cond_53

    .line 240
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 242
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 241
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4f

    goto :goto_53

    .line 245
    :cond_4f
    iget-boolean p0, p2, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    monitor-exit v1

    return p0

    .line 243
    :cond_53
    :goto_53
    monitor-exit v1

    return v2

    :catchall_55
    move-exception p0

    .line 246
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_2a .. :try_end_57} :catchall_55

    throw p0
.end method

.method public isHibernatingGlobally(Ljava/lang/String;)Z
    .registers 6

    .line 256
    sget-boolean v0, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 259
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_APP_HIBERNATION"

    const-string v3, "Caller does not have MANAGE_APP_HIBERNATION permission."

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_14
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/apphibernation/GlobalLevelState;

    if-eqz v2, :cond_2f

    .line 264
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 266
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 265
    invoke-virtual {p0, v3, p1}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_2f

    .line 271
    :cond_2b
    iget-boolean p0, v2, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    monitor-exit v0

    return p0

    .line 269
    :cond_2f
    :goto_2f
    monitor-exit v0

    return v1

    :catchall_31
    move-exception p0

    .line 272
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public final isOatArtifactDeletionEnabled()Z
    .registers 1

    .line 213
    iget-boolean p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mOatArtifactDeletionEnabled:Z

    return p0
.end method

.method public onBootPhase(I)V
    .registers 6

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_e

    .line 179
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_e
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_4a

    .line 188
    invoke-static {}, Lcom/android/server/apphibernation/AppHibernationService;->isDeviceConfigAppHibernationEnabled()Z

    move-result p1

    sput-boolean p1, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    .line 191
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    const-string v1, "app_hibernation"

    .line 189
    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/app/StatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatsManager;

    .line 194
    new-instance v0, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/apphibernation/AppHibernationService;Lcom/android/server/apphibernation/AppHibernationService$StatsPullAtomCallbackImpl-IA;)V

    const/16 v2, 0x277b

    .line 195
    iget-object v3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    const/16 v2, 0x277d

    .line 200
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v2, v1, p0, v0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    :cond_4a
    return-void
.end method

.method public final onDeviceConfigChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    .line 716
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "app_hibernation_enabled"

    .line 717
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 718
    invoke-static {}, Lcom/android/server/apphibernation/AppHibernationService;->isDeviceConfigAppHibernationEnabled()Z

    move-result p0

    sput-boolean p0, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    .line 719
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "App hibernation changed to enabled="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppHibernationService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return-void
.end method

.method public final onPackageAdded(Ljava/lang/String;I)V
    .registers 6

    .line 685
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 686
    :try_start_3
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 687
    monitor-exit v0

    return-void

    .line 689
    :cond_d
    new-instance v1, Lcom/android/server/apphibernation/UserLevelState;

    invoke-direct {v1}, Lcom/android/server/apphibernation/UserLevelState;-><init>()V

    .line 690
    iput-object p1, v1, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 691
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    iget-object p2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_33

    .line 693
    new-instance p2, Lcom/android/server/apphibernation/GlobalLevelState;

    invoke-direct {p2}, Lcom/android/server/apphibernation/GlobalLevelState;-><init>()V

    .line 694
    iput-object p1, p2, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    .line 695
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    :cond_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .registers 5

    .line 701
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    :try_start_3
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 703
    monitor-exit v0

    return-void

    .line 705
    :cond_d
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public final onPackageRemovedForAllUsers(Ljava/lang/String;)V
    .registers 3

    .line 710
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 711
    :try_start_3
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onStart()V
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mServiceStub:Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;

    const-string v1, "app_hibernation"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 676
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 678
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 679
    :try_start_7
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserDiskStores:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 680
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 681
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    .line 650
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 651
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mInjector:Lcom/android/server/apphibernation/AppHibernationService$Injector;

    .line 652
    invoke-interface {v0, p1}, Lcom/android/server/apphibernation/AppHibernationService$Injector;->getUserLevelDiskStore(I)Lcom/android/server/apphibernation/HibernationStateDiskStore;

    move-result-object v0

    .line 653
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserDiskStores:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 654
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/apphibernation/AppHibernationService;Lcom/android/server/apphibernation/HibernationStateDiskStore;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHibernatingForUser(Ljava/lang/String;IZ)V
    .registers 9

    const-string/jumbo v0, "setHibernatingForUser"

    .line 284
    sget-boolean v1, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    if-nez v1, :cond_8

    return-void

    .line 287
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.MANAGE_APP_HIBERNATION"

    const-string v3, "Caller does not have MANAGE_APP_HIBERNATION permission."

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0, p2, v0}, Lcom/android/server/apphibernation/AppHibernationService;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    .line 291
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 292
    :try_start_1b
    invoke-virtual {p0, p2, v0, v2}, Lcom/android/server/apphibernation/AppHibernationService;->checkUserStatesExist(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_23

    .line 293
    monitor-exit v1

    return-void

    .line 295
    :cond_23
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 296
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/apphibernation/UserLevelState;

    if-eqz v0, :cond_92

    .line 297
    iget-object v3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 299
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 298
    invoke-virtual {v3, v4, p1}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_40

    goto :goto_92

    .line 305
    :cond_40
    iget-boolean v2, v0, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    if-ne v2, p3, :cond_46

    .line 306
    monitor-exit v1

    return-void

    .line 309
    :cond_46
    iput-boolean p3, v0, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    if-eqz p3, :cond_55

    .line 311
    iget-object p3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;ILcom/android/server/apphibernation/UserLevelState;)V

    invoke-interface {p3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_65

    .line 314
    :cond_55
    iget-object p3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;I)V

    invoke-interface {p3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/apphibernation/UserLevelState;->lastUnhibernatedMs:J

    .line 319
    :goto_65
    new-instance p1, Lcom/android/server/apphibernation/UserLevelState;

    invoke-direct {p1, v0}, Lcom/android/server/apphibernation/UserLevelState;-><init>(Lcom/android/server/apphibernation/UserLevelState;)V

    .line 321
    iget-object p3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/apphibernation/UserLevelState;I)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 328
    new-instance p1, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 329
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mUserDiskStores:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;

    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/HibernationStateDiskStore;->scheduleWriteHibernationStates(Ljava/util/List;)V

    .line 330
    monitor-exit v1

    return-void

    :cond_92
    :goto_92
    const-string p0, "AppHibernationService"

    const-string p3, "Package %s is not installed for user %s"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    .line 301
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    .line 300
    invoke-static {p3, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    monitor-exit v1

    return-void

    :catchall_ab
    move-exception p0

    .line 330
    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_1b .. :try_end_ad} :catchall_ab

    throw p0
.end method

.method public setHibernatingGlobally(Ljava/lang/String;Z)V
    .registers 7

    .line 341
    sget-boolean v0, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 344
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_APP_HIBERNATION"

    const-string v2, "Caller does not have MANAGE_APP_HIBERNATION permission."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_13
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/apphibernation/GlobalLevelState;

    if-eqz v1, :cond_59

    .line 349
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 351
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 350
    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_59

    .line 356
    :cond_2a
    iget-boolean v2, v1, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    if-eq v2, p2, :cond_57

    .line 357
    iput-boolean p2, v1, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    if-eqz p2, :cond_3d

    .line 359
    iget-object p2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;Lcom/android/server/apphibernation/GlobalLevelState;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_47

    :cond_3d
    const-wide/16 p1, 0x0

    .line 361
    iput-wide p1, v1, Lcom/android/server/apphibernation/GlobalLevelState;->savedByte:J

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v1, Lcom/android/server/apphibernation/GlobalLevelState;->lastUnhibernatedMs:J

    .line 364
    :goto_47
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 365
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalLevelHibernationDiskStore:Lcom/android/server/apphibernation/HibernationStateDiskStore;

    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/HibernationStateDiskStore;->scheduleWriteHibernationStates(Ljava/util/List;)V

    .line 367
    :cond_57
    monitor-exit v0

    return-void

    :cond_59
    :goto_59
    const-string p0, "AppHibernationService"

    const-string p2, "Package %s is not installed for any user"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 352
    invoke-static {p2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    monitor-exit v0

    return-void

    :catchall_6c
    move-exception p0

    .line 367
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_13 .. :try_end_6e} :catchall_6c

    throw p0
.end method

.method public final unhibernatePackageForUser(Ljava/lang/String;I)V
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/32 v2, 0x80000

    const-string/jumbo v4, "unhibernatePackage"

    .line 485
    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 486
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 490
    :try_start_11
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    const-string v6, "android.permission.RECEIVE_BOOT_COMPLETED"

    .line 492
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    .line 493
    iget-object v8, v0, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v6

    move/from16 v24, p2

    invoke-interface/range {v8 .. v24}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 511
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    .line 512
    iget-object v12, v0, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, v6

    move/from16 v28, p2

    invoke-interface/range {v12 .. v28}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_6b} :catch_74
    .catchall {:try_start_11 .. :try_end_6b} :catchall_72

    .line 532
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 533
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_72
    move-exception v0

    goto :goto_7a

    :catch_74
    move-exception v0

    .line 530
    :try_start_75
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_7a
    .catchall {:try_start_75 .. :try_end_7a} :catchall_72

    .line 532
    :goto_7a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 533
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 534
    throw v0
.end method
