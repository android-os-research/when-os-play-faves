.class public abstract Lcom/android/server/pm/PackageManagerInternalBase;
.super Landroid/content/pm/PackageManagerInternal;
.source "PackageManagerInternalBase.java"


# instance fields
.field public final mService:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public static synthetic $r8$lambda$eLsUjZnqGhAPqs0Vxt9exeEjOYo(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->lambda$removeNonSystemPackageSuspensions$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    .line 81
    invoke-direct {p0}, Landroid/content/pm/PackageManagerInternal;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method

.method public static synthetic lambda$removeNonSystemPackageSuspensions$0(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "android"

    .line 249
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final canAccessComponent(ILandroid/content/ComponentName;I)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 521
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method

.method public final canAccessInstantApps(II)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 514
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    move-result p0

    return p0
.end method

.method public final canQueryPackage(ILjava/lang/String;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->canQueryPackage(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/pkg/mutate/PackageStateMutator;",
            ">;)",
            "Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 755
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object p0

    return-object p0
.end method

.method public final deleteOatArtifactsOfPackage(Ljava/lang/String;)J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 715
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->deleteOatArtifactsOfPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final filterAppAccess(II)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->filterAppAccess(II)Z

    move-result p0

    return p0
.end method

.method public final filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result p0

    return p0
.end method

.method public final filterAppAccess(Ljava/lang/String;II)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final finishPackageInstall(IZ)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 647
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->finishPackageInstall(IZ)V

    return-void
.end method

.method public final forEachInstalledPackage(Ljava/util/function/Consumer;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->forEachInstalledPackage(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;I)V

    return-void
.end method

.method public final forEachPackage(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->forEachPackage(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final forEachPackageSetting(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 577
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->forEachPackageSetting(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final forEachPackageState(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final freeAllAppCacheAboveQuota(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 571
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->freeAllAppCacheAboveQuota(Ljava/lang/String;)V

    return-void
.end method

.method public final freeStorage(Ljava/lang/String;JI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 565
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JI)V

    return-void
.end method

.method public final getActivityInfo(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 308
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->getActivityInfoInternal(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getAndroidPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackageApi;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    return-object p0
.end method

.method public abstract getApexManager()Lcom/android/server/pm/ApexManager;
.end method

.method public final getApksInApex(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 659
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getApexManager()Lcom/android/server/pm/ApexManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract getAppDataHelper()Lcom/android/server/pm/AppDataHelper;
.end method

.method public final getApplicationEnabledState(Ljava/lang/String;I)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 623
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 627
    :cond_8
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result p0

    return p0
.end method

.method public final getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 301
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->getApplicationInfoInternal(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getAppsWithSharedUserIds()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 533
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/Computer;->getAppsWithSharedUserIds()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public final getComponentEnabledSetting(Landroid/content/ComponentName;II)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 634
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->getComponentEnabledSettingInternal(Landroid/content/ComponentName;II)I

    move-result p0

    return p0
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public final getDefaultHomeActivity(I)Landroid/content/ComponentName;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 356
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public abstract getDexManager()Lcom/android/server/pm/dex/DexManager;
.end method

.method public final getDisabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 612
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_c

    .line 614
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0

    .line 616
    :cond_c
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getDisabledComponents()Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public final getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    return-object p0
.end method

.method public abstract getDistractingPackageHelper()Lcom/android/server/pm/DistractingPackageHelper;
.end method

.method public final getDistractingPackageRestrictions(Ljava/lang/String;I)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_10

    .line 287
    :cond_8
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result p0

    :goto_10
    return p0
.end method

.method public final getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 767
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/dex/DexManager;->getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;

    move-result-object p0

    return-object p0
.end method

.method public final getEnabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 602
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_c

    .line 604
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0

    .line 606
    :cond_c
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledComponents()Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public final getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 350
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getInstalledApplications(JII)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getInstalledApplications(JII)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getInstantAppPackageName(I)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getInstantAppRegistry()Lcom/android/server/pm/InstantAppRegistry;
.end method

.method public final getKnownPackageNames(II)[Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getKnownPackageNamesInternal(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMimeGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getMimeGroupInternal(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getNameForUid(I)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 419
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    return-object p0
.end method

.method public final getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    const-wide/16 v2, -0x1

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/Computer;->getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public abstract getPackageObserverHelper()Lcom/android/server/pm/PackageObserverHelper;
.end method

.method public final getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageStates()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageTargetSdkVersion(Ljava/lang/String;)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 504
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 505
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 506
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result p0

    return p0

    :cond_15
    const/16 p0, 0x2710

    return p0
.end method

.method public final getPackageUid(Ljava/lang/String;JI)I
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 294
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/16 v5, 0x3e8

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->getPackageUidInternal(Ljava/lang/String;JII)I

    move-result p0

    return p0
.end method

.method public final getPackagesForAppId(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackagesForAppId(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getPermissionGids(Ljava/lang/String;I)[I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 552
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getPermissionManager()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getPermissionGids(Ljava/lang/String;I)[I

    move-result-object p0

    return-object p0
.end method

.method public abstract getPermissionManager()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
.end method

.method public final getProcessesForUid(I)Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 546
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getProcessesForUid(I)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public abstract getProtectedPackages()Lcom/android/server/pm/ProtectedPackages;
.end method

.method public abstract getResolveIntentHelper()Lcom/android/server/pm/ResolveIntentHelper;
.end method

.method public final getSetupWizardPackageName()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 466
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getSharedUserApi(I)Lcom/android/server/pm/pkg/SharedUserApi;
    .registers 2

    .line 734
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getSharedUser(I)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object p0

    return-object p0
.end method

.method public getSharedUserPackages(I)Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 728
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getSharedUserPackages(I)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public final getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 540
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getSuspendPackageHelper()Lcom/android/server/pm/SuspendPackageHelper;
.end method

.method public final getSuspendedDialogInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/SuspendDialogInfo;
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 278
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getSuspendPackageHelper()Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 279
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 278
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendedDialogInfo(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/SuspendDialogInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getSuspendedPackageLauncherExtras(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 233
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getSuspendPackageHelper()Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 234
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 233
    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendedPackageLauncherExtras(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 270
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getSuspendPackageHelper()Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 271
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 270
    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSystemUiServiceComponent()Landroid/content/ComponentName;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 362
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10403a1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getUidTargetSdkVersion(I)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 498
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getUidTargetSdkVersion(I)I

    move-result p0

    return p0
.end method

.method public abstract getUserNeedsBadging()Lcom/android/server/pm/UserNeedsBadgingCache;
.end method

.method public final getVisibilityAllowList(Ljava/lang/String;I)[I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->getVisibilityAllowList(Ljava/lang/String;I)[I

    move-result-object p0

    return-object p0
.end method

.method public final grantImplicitAccess(ILandroid/content/Intent;IIZ)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 437
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerInternalBase;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    return-void
.end method

.method public final grantImplicitAccess(ILandroid/content/Intent;IIZZ)V
    .registers 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->grantImplicitAccess(Lcom/android/server/pm/Computer;ILandroid/content/Intent;IIZZ)V

    return-void
.end method

.method public final hasInstantApplicationMetadata(Ljava/lang/String;I)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 527
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getInstantAppRegistry()Lcom/android/server/pm/InstantAppRegistry;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->hasInstantApplicationMetadata(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isApexPackage(Ljava/lang/String;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 653
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getApexManager()Lcom/android/server/pm/ApexManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ApexManager;->isApexPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 665
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result p0

    return p0
.end method

.method public final isEnabledAndMatches(Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 407
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    .line 406
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result p0

    return p0
.end method

.method public final isInstantApp(Ljava/lang/String;I)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->isInstantApp(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 452
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_12

    .line 454
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final isOnlyCoreApps()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 558
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isOnlyCoreApps()Z

    move-result p0

    return p0
.end method

.method public final isPackageDataProtected(ILjava/lang/String;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 376
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getProtectedPackages()Lcom/android/server/pm/ProtectedPackages;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->isPackageDataProtected(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isPackageEphemeral(ILjava/lang/String;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 388
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 390
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final isPackageFrozen(Ljava/lang/String;II)Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 708
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getSafeMode()Z

    move-result p0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->getPackageStartability(ZLjava/lang/String;II)I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public final isPackageStateProtected(Ljava/lang/String;I)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 382
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getProtectedPackages()Lcom/android/server/pm/ProtectedPackages;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isPackageSuspended(Ljava/lang/String;I)Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getSuspendPackageHelper()Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 241
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 240
    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/android/server/pm/SuspendPackageHelper;->isPackageSuspended(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final isPermissionsReviewRequired(Ljava/lang/String;I)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getPermissionManager()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isSuspendingAnyPackages(Ljava/lang/String;I)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 689
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->isSuspendingAnyPackages(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isSystemPackage(Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 677
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isUidPrivileged(I)Z
    .registers 2

    .line 739
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->isUidPrivileged(I)Z

    move-result p0

    return p0
.end method

.method public final pruneInstantApps()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 460
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getInstantAppRegistry()Lcom/android/server/pm/InstantAppRegistry;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps(Lcom/android/server/pm/Computer;)V

    return-void
.end method

.method public final queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JII)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 317
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p0

    .line 319
    sget-boolean p1, Lcom/samsung/android/rune/PMRune;->PM_SPROTECT_HIDE:Z

    if-eqz p1, :cond_1f

    invoke-static {}, Lcom/android/server/pm/SProtect;->isAppLockEnabled()Z

    move-result p1

    if-eqz p1, :cond_1f

    if-nez p6, :cond_1f

    if-eqz p0, :cond_1f

    .line 320
    invoke-static {p0}, Lcom/android/server/pm/SProtect;->filterSprotectHiddenList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :cond_1f
    return-object p0
.end method

.method public final queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JIIZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 332
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getResolveIntentHelper()Lcom/android/server/pm/ResolveIntentHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p6

    move v7, p5

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final queryIntentServices(Landroid/content/Intent;JII)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "JII)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 341
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 342
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    const/4 v8, 0x0

    move-object v2, p1

    move-wide v4, p2

    move v6, p5

    move v7, p4

    invoke-interface/range {v1 .. v8}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final reconcileAppsData(IIZ)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 722
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getAppDataHelper()Lcom/android/server/pm/AppDataHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsData(IIZ)V

    return-void
.end method

.method public final recordInitialState()Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 746
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->recordInitialState()Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;

    move-result-object p0

    return-object p0
.end method

.method public final removeAllDistractingPackageRestrictions(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->removeAllDistractingPackageRestrictions(Lcom/android/server/pm/Computer;I)V

    return-void
.end method

.method public final removeDistractingPackageRestrictions(Ljava/lang/String;I)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getDistractingPackageHelper()Lcom/android/server/pm/DistractingPackageHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1, p2}, Lcom/android/server/pm/DistractingPackageHelper;->removeDistractingPackageRestrictions(Lcom/android/server/pm/Computer;[Ljava/lang/String;I)V

    return-void
.end method

.method public final removeNonSystemPackageSuspensions(Ljava/lang/String;I)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getSuspendPackageHelper()Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance p1, Lcom/android/server/pm/PackageManagerInternalBase$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/pm/PackageManagerInternalBase$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/android/server/pm/SuspendPackageHelper;->removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V

    return-void
.end method

.method public final removePackageListObserver(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 195
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageObserverHelper()Lcom/android/server/pm/PackageObserverHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageObserverHelper;->removeObserver(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V

    return-void
.end method

.method public final requestChecksums(Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;ILjava/util/concurrent/Executor;Landroid/os/Handler;)V
    .registers 21
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    .line 699
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v2

    move-object v0, v1

    move-object v1, v2

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/PackageManagerService;->requestChecksumsInternal(Lcom/android/server/pm/Computer;Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;ILjava/util/concurrent/Executor;Landroid/os/Handler;)V

    return-void
.end method

.method public final requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .registers 18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    .line 428
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageManagerService;->requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;I)V

    return-void
.end method

.method public final resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 492
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public final resolveIntent(Landroid/content/Intent;Ljava/lang/String;JJIZI)Landroid/content/pm/ResolveInfo;
    .registers 21
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 475
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getResolveIntentHelper()Lcom/android/server/pm/ResolveIntentHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ResolveIntentHelper;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public final resolveService(Landroid/content/Intent;Ljava/lang/String;JII)Landroid/content/pm/ResolveInfo;
    .registers 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 484
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getResolveIntentHelper()Lcom/android/server/pm/ResolveIntentHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ResolveIntentHelper;->resolveServiceInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public final setEnableRollbackCode(II)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 641
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->setEnableRollbackCode(II)V

    return-void
.end method

.method public final setKeepUninstalledPackages(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->setKeepUninstalledPackagesInternal(Lcom/android/server/pm/Computer;Ljava/util/List;)V

    return-void
.end method

.method public final setOwnerProtectedPackages(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 370
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getProtectedPackages()Lcom/android/server/pm/ProtectedPackages;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->setOwnerProtectedPackages(ILjava/util/List;)V

    return-void
.end method

.method public final shutdown()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 761
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    return-void
.end method

.method public final snapshot()Lcom/android/server/pm/Computer;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic snapshot()Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .registers 1

    .line 76
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    return-object p0
.end method

.method public final unsuspendForSuspendingPackage(Ljava/lang/String;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 683
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerInternalBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    return-void
.end method

.method public final userNeedsBadging(I)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 413
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->getUserNeedsBadging()Lcom/android/server/pm/UserNeedsBadgingCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserNeedsBadgingCache;->get(I)Z

    move-result p0

    return p0
.end method

.method public final wasPackageEverLaunched(Ljava/lang/String;I)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerInternalBase;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 400
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 398
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
