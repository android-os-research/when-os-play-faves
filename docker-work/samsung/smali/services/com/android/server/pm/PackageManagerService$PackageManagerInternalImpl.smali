.class public Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;
.super Lcom/android/server/pm/PackageManagerInternalBase;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageManagerInternalImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public static synthetic $r8$lambda$Dftq-VBEFvfSL7aPF0XKsxZ2YkQ(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->lambda$removeAllNonSystemPackageSuspensions$1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$j8dy1r4nXP-k-9lUJ-yRKQ2aSj8(Ljava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->lambda$getPackageList$0(Ljava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kOXYRzrqi7u4CnhreGu40PCCei0(Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->lambda$onPackageProcessKilledForUninstall$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sGq7vxRw-S_R7vwotyPxpyoC7vw(Ljava/util/List;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->lambda$getTargetPackageNames$2(Ljava/util/List;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    .line 7755
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 7756
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerInternalBase;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method

.method public static synthetic lambda$getPackageList$0(Ljava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 2

    .line 7898
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 7900
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public static synthetic lambda$getTargetPackageNames$2(Ljava/util/List;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 3

    .line 8047
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 8048
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isOverlay()Z

    move-result v0

    if-nez v0, :cond_13

    .line 8049
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method private synthetic lambda$onPackageProcessKilledForUninstall$3(Ljava/lang/String;)V
    .registers 3

    .line 8265
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$removeAllNonSystemPackageSuspensions$1(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "android"

    .line 7942
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public addIsolatedUid(II)V
    .registers 4

    .line 8065
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 8066
    :try_start_5
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseIntArray;->put(II)V

    .line 8067
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public clearBlockUninstallForUser(I)V
    .registers 4

    .line 8208
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 8209
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->clearBlockUninstallLPw(I)V

    .line 8210
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 8211
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public compileLayouts(Ljava/lang/String;)Z
    .registers 4

    .line 8090
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 8091
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez p1, :cond_14

    const/4 p0, 0x0

    .line 8093
    monitor-exit v0

    return p0

    .line 8095
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1e

    .line 8096
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/ArtManagerService;->compileLayouts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result p0

    return p0

    :catchall_1e
    move-exception p0

    .line 8095
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public final executeOnBackgroundThread(Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;)V
    .registers 3

    if-eqz p1, :cond_6

    .line 8287
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_e

    .line 8289
    :cond_6
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :goto_e
    return-void
.end method

.method public flushPackageRestrictions(I)V
    .registers 3

    .line 7948
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 7949
    :try_start_5
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mflushPackageRestrictionsAsUserInternalLocked(Lcom/android/server/pm/PackageManagerService;I)V

    .line 7950
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getApexManager()Lcom/android/server/pm/ApexManager;
    .registers 1

    .line 7822
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    return-object p0
.end method

.method public getAppDataHelper()Lcom/android/server/pm/AppDataHelper;
    .registers 1

    .line 7774
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAppDataHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppDataHelper;

    move-result-object p0

    return-object p0
.end method

.method public getCeDataInode(Ljava/lang/String;I)J
    .registers 3

    .line 7929
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_d

    const-wide/16 p0, 0x0

    return-wide p0

    .line 7933
    :cond_d
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide p0

    return-wide p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 7762
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDexManager()Lcom/android/server/pm/dex/DexManager;
    .registers 1

    .line 7840
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDexManager(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DexManager;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledSystemPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 7913
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_d

    move-object p0, p1

    goto :goto_11

    .line 7916
    :cond_d
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    :goto_11
    if-nez p0, :cond_14

    goto :goto_18

    .line 7917
    :cond_14
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :goto_18
    return-object p1
.end method

.method public getDistractingPackageHelper()Lcom/android/server/pm/DistractingPackageHelper;
    .registers 1

    .line 7798
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDistractingPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DistractingPackageHelper;

    move-result-object p0

    return-object p0
.end method

.method public getIncrementalStatesInfo(Ljava/lang/String;II)Landroid/content/pm/IncrementalStatesInfo;
    .registers 5

    .line 8240
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 8241
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mfilterPackageStateForInstalledAndFiltered(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 8246
    :cond_10
    new-instance p1, Landroid/content/pm/IncrementalStatesInfo;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->isLoading()Z

    move-result p2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLoadingProgress()F

    move-result p0

    invoke-direct {p1, p2, p0}, Landroid/content/pm/IncrementalStatesInfo;-><init>(ZF)V

    return-object p1
.end method

.method public getInstantAppRegistry()Lcom/android/server/pm/InstantAppRegistry;
    .registers 1

    .line 7816
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    return-object p0
.end method

.method public getOverlayPackages(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 8025
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 8026
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8028
    invoke-interface {p0}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v2, 0x0

    .line 8029
    :goto_10
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_36

    .line 8030
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 8031
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 8032
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_33

    const-wide/16 v4, 0x0

    .line 8033
    invoke-interface {p0, v3, v4, v5, p1}, Lcom/android/server/pm/Computer;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 8035
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_36
    return-object v0
.end method

.method public getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;
    .registers 6

    .line 7896
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7897
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    .line 7903
    new-instance v1, Lcom/android/server/pm/PackageList;

    invoke-direct {v1, v0, p1}, Lcom/android/server/pm/PackageList;-><init>(Ljava/util/List;Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V

    if-eqz p1, :cond_23

    .line 7905
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPackageObserverHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageObserverHelper;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageObserverHelper;->addObserver(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V

    :cond_23
    return-object v1
.end method

.method public getPackageMap()Lcom/android/server/utils/WatchedArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation

    .line 7828
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public getPackageObserverHelper()Lcom/android/server/pm/PackageObserverHelper;
    .registers 1

    .line 7780
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPackageObserverHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageObserverHelper;

    move-result-object p0

    return-object p0
.end method

.method public getPermissionManager()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .registers 1

    .line 7768
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object p0
.end method

.method public getProtectedPackages()Lcom/android/server/pm/ProtectedPackages;
    .registers 1

    .line 7804
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    return-object p0
.end method

.method public getResolveIntentHelper()Lcom/android/server/pm/ResolveIntentHelper;
    .registers 1

    .line 7786
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmResolveIntentHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ResolveIntentHelper;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungThemeTargetPackageNames(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8272
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8273
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 8274
    :try_start_a
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 8275
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 8276
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 8279
    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_a .. :try_end_37} :catchall_3d

    .line 8280
    sget-object p0, Landroid/content/om/SamsungThemeConstants;->changeableApps:Ljava/util/HashSet;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1

    :catchall_3d
    move-exception p0

    .line 8279
    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public getSuspendPackageHelper()Lcom/android/server/pm/SuspendPackageHelper;
    .registers 1

    .line 7792
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSuspendPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object p0

    return-object p0
.end method

.method public getTargetPackageNames(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8045
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8046
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    new-instance v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    return-object p1
.end method

.method public getUserNeedsBadging()Lcom/android/server/pm/UserNeedsBadgingCache;
    .registers 1

    .line 7810
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    return-object p0
.end method

.method public hasSignatureCapability(III)Z
    .registers 4
    .param p3    # I
        .annotation build Landroid/content/pm/SigningDetails$CertCapabilities;
        .end annotation
    .end param

    .line 7887
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 7888
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getSigningDetails(I)Landroid/content/pm/SigningDetails;

    move-result-object p1

    .line 7889
    invoke-interface {p0, p2}, Lcom/android/server/pm/Computer;->getSigningDetails(I)Landroid/content/pm/SigningDetails;

    move-result-object p0

    .line 7890
    invoke-virtual {p1, p0, p3}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p2

    if-nez p2, :cond_1b

    .line 7891
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public isAppLockEnabled()Z
    .registers 1

    .line 8613
    invoke-static {}, Lcom/android/server/pm/SProtect;->isAppLockEnabled()Z

    move-result p0

    return p0
.end method

.method public isDataRestoreSafe(Landroid/content/pm/Signature;Ljava/lang/String;)Z
    .registers 3

    .line 7875
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 7876
    invoke-interface {p0, p2}, Lcom/android/server/pm/Computer;->getSigningDetails(Ljava/lang/String;)Landroid/content/pm/SigningDetails;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const/4 p2, 0x1

    .line 7880
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/SigningDetails;->hasCertificate(Landroid/content/pm/Signature;I)Z

    move-result p0

    return p0
.end method

.method public isDataRestoreSafe([BLjava/lang/String;)Z
    .registers 3

    .line 7864
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 7865
    invoke-interface {p0, p2}, Lcom/android/server/pm/Computer;->getSigningDetails(Ljava/lang/String;)Landroid/content/pm/SigningDetails;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const/4 p2, 0x1

    .line 7869
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([BI)Z

    move-result p0

    return p0
.end method

.method public isHiddenBySprotect(Ljava/lang/String;)Z
    .registers 2

    .line 8609
    invoke-static {p1}, Lcom/android/server/pm/SProtect;->isHiddenBySprotect(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPackagePersistent(Ljava/lang/String;)Z
    .registers 3

    .line 8014
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_c

    return p1

    .line 8019
    :cond_c
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 8020
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isPersistent()Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p1, 0x1

    :cond_1f
    return p1
.end method

.method public isPermissionUpgradeNeeded(I)Z
    .registers 2

    .line 8185
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->isPermissionUpgradeNeeded(I)Z

    move-result p0

    return p0
.end method

.method public isPlatformSigned(Ljava/lang/String;)Z
    .registers 4

    .line 7852
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_c

    return v0

    .line 7856
    :cond_c
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    .line 7857
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPlatformPackage(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v1

    if-nez v1, :cond_31

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPlatformPackage(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    .line 7858
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p0

    if-eqz p0, :cond_32

    :cond_31
    const/4 v0, 0x1

    :cond_32
    return v0
.end method

.method public isResolveActivityComponent(Landroid/content/pm/ComponentInfo;)Z
    .registers 4

    .line 7922
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmResolveActivity(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmResolveActivity(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 7923
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method public isSameApp(Ljava/lang/String;II)Z
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 8255
    :cond_4
    invoke-static {p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 8256
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmRequiredSdkSandboxPackage(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 8258
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 8259
    invoke-interface {p0, p1, v0, v1, p3}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    .line 8260
    invoke-static {p0, p2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    return p0
.end method

.method public migrateLegacyObbData()V
    .registers 2

    .line 8156
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->migrateLegacyObbData()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception p0

    const-string v0, "PackageManager"

    .line 8158
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public notifyPackageUse(Ljava/lang/String;I)V
    .registers 4

    .line 8079
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 8080
    :try_start_5
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mnotifyPackageUseInternal(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V

    .line 8081
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onPackageProcessKilledForUninstall(Ljava/lang/String;)V
    .registers 4

    .line 8265
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public parseSamsungThemeOverlayPackages(Ljava/io/File;Ljava/util/List;Ljava/util/List;ILandroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p3

    move/from16 v9, p4

    .line 8297
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/overlays/current_locale_apks/files"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_15

    if-eqz v9, :cond_15

    return-void

    :cond_15
    if-nez p2, :cond_1e

    .line 8304
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v1

    goto :goto_20

    :cond_1e
    move-object/from16 v11, p2

    .line 8308
    :goto_20
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$smmakeExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v12

    .line 8315
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const-string v2, "PackageManager"

    .line 8319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enablePackageNamesList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " disablePackageNamesList "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_5d

    const-string v0, "PackageManager"

    const-string v2, "enablePackageNamesList is null, re-init"

    .line 8322
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_5d
    move-object v14, v0

    if-eqz v1, :cond_2a3

    .line 8325
    array-length v0, v1

    if-nez v0, :cond_65

    goto/16 :goto_2a3

    .line 8334
    :cond_65
    new-instance v0, Lcom/android/server/pm/parsing/PackageParser2;

    iget-object v2, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSeparateProcesses(Lcom/android/server/pm/PackageManagerService;)[Ljava/lang/String;

    move-result-object v3

    iget-object v2, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmOnlyCore(Lcom/android/server/pm/PackageManagerService;)Z

    move-result v4

    iget-object v2, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v2, Lcom/android/server/pm/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmCacheDir(Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;

    move-result-object v6

    iget-object v2, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v2, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/parsing/PackageParser2$Callback;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;ZLandroid/util/DisplayMetrics;Ljava/io/File;Lcom/android/server/pm/parsing/PackageParser2$Callback;)V

    .line 8336
    invoke-static {}, Lcom/android/server/pm/ParallelPackageParser;->makeExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 8337
    new-instance v15, Lcom/android/server/pm/ParallelPackageParser;

    invoke-direct {v15, v0, v2}, Lcom/android/server/pm/ParallelPackageParser;-><init>(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 8342
    array-length v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_90
    if-ge v3, v0, :cond_da

    aget-object v5, v1, v3

    .line 8343
    invoke-static {v5}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_a0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 8344
    :cond_a0
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/pm/PackageInstallerService;->isStageName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_ac

    const/4 v6, 0x1

    goto :goto_ad

    :cond_ac
    move v6, v2

    :goto_ad
    if-nez v6, :cond_b0

    goto :goto_d7

    .line 8349
    :cond_b0
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 8350
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v13, v6, -0x4

    invoke-virtual {v7, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x4

    if-lt v6, v13, :cond_d7

    .line 8352
    invoke-interface {v14, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_cc

    goto :goto_d7

    .line 8356
    :cond_cc
    iget-object v6, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDefParseFlags(Lcom/android/server/pm/PackageManagerService;)I

    move-result v6

    invoke-virtual {v15, v5, v6}, Lcom/android/server/pm/ParallelPackageParser;->submit(Ljava/io/File;I)V

    add-int/lit8 v4, v4, 0x1

    :cond_d7
    :goto_d7
    add-int/lit8 v3, v3, 0x1

    goto :goto_90

    .line 8360
    :cond_da
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v13

    .line 8361
    :try_start_df
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v7
    :try_end_e4
    .catchall {:try_start_df .. :try_end_e4} :catchall_2a0

    move/from16 v16, v4

    :goto_e6
    if-lez v16, :cond_298

    .line 8364
    :try_start_e8
    invoke-virtual {v15}, Lcom/android/server/pm/ParallelPackageParser;->take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    move-result-object v6

    .line 8365
    iget-object v0, v6, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_1f4

    .line 8371
    iget-object v0, v6, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isStaticSharedLibrary()Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 8372
    iget-object v0, v6, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->renameStaticSharedLibraryPackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V
    :try_end_fd
    .catchall {:try_start_e8 .. :try_end_fd} :catchall_294

    .line 8375
    :cond_fd
    :try_start_fd
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmInstallPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstallPackageHelper;

    move-result-object v0

    iget-object v1, v6, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    iget-object v2, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDefParseFlags(Lcom/android/server/pm/PackageManagerService;)I

    move-result v2
    :try_end_10b
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_fd .. :try_end_10b} :catch_157
    .catchall {:try_start_fd .. :try_end_10b} :catchall_294

    const-wide/16 v4, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xa05

    move/from16 v3, v18

    move-object/from16 p1, v7

    move-object v7, v6

    move-object/from16 v6, v17

    :try_start_118
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InstallPackageHelper;->addSamsungOverlayForInitLI(Lcom/android/server/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 8377
    iget-object v0, v7, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_149

    .line 8378
    new-instance v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;

    iget-object v1, v7, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 8379
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v7, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 8380
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object v4
    :try_end_131
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_118 .. :try_end_131} :catch_152
    .catchall {:try_start_118 .. :try_end_131} :catchall_14d

    const/16 v17, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v5, p5

    move/from16 v6, p4

    move-object/from16 v19, p1

    move-object v9, v7

    move/from16 v7, v17

    :try_start_13f
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;-><init>(Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;IZ)V

    .line 8378
    invoke-virtual {v8, v12, v0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->executeOnBackgroundThread(Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;)V
    :try_end_145
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_13f .. :try_end_145} :catch_147
    .catchall {:try_start_13f .. :try_end_145} :catchall_29d

    goto/16 :goto_273

    :catch_147
    move-exception v0

    goto :goto_15d

    :cond_149
    move-object/from16 v19, p1

    goto/16 :goto_273

    :catchall_14d
    move-exception v0

    move-object/from16 v19, p1

    goto/16 :goto_29e

    :catch_152
    move-exception v0

    move-object/from16 v19, p1

    move-object v9, v7

    goto :goto_15d

    :catch_157
    move-exception v0

    move-object v9, v6

    move-object/from16 v19, v7

    const/16 v18, 0xa05

    .line 8385
    :goto_15d
    :try_start_15d
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 v2, -0x5

    if-ne v1, v2, :cond_1cf

    const-string v1, "PackageManager"

    .line 8387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate scan "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8388
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8387
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8391
    iget-object v0, v9, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1ac

    .line 8392
    new-instance v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;

    iget-object v1, v9, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 8393
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v9, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 8394
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v5, p5

    move/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;-><init>(Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;IZ)V

    .line 8392
    invoke-virtual {v8, v12, v0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->executeOnBackgroundThread(Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;)V

    goto/16 :goto_273

    :cond_1ac
    const-string v0, "PackageManager"

    .line 8397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overlay package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 8398
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is being skipped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8397
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_273

    :cond_1cf
    const-string v2, "PackageManager"

    .line 8402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to scan "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_225

    :cond_1f4
    move-object v9, v6

    move-object/from16 v19, v7

    const/16 v18, 0xa05

    .line 8404
    instance-of v1, v0, Landroid/content/pm/PackageParser$PackageParserException;

    if-eqz v1, :cond_27b

    .line 8405
    check-cast v0, Landroid/content/pm/PackageParser$PackageParserException;

    .line 8407
    iget v1, v0, Landroid/content/pm/PackageParser$PackageParserException;->error:I

    const-string v2, "PackageManager"

    .line 8408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$PackageParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_225
    const/4 v0, -0x2

    if-ne v1, v0, :cond_262

    const-string v0, "PackageManager"

    .line 8416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting invalid package at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 8417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting invalid package at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 8419
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmRemovePackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/RemovePackageHelper;

    move-result-object v0

    iget-object v1, v9, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePathLI(Ljava/io/File;)V

    .line 8421
    :cond_262
    iget-object v0, v9, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_273
    add-int/lit8 v16, v16, -0x1

    move/from16 v9, p4

    move-object/from16 v7, v19

    goto/16 :goto_e6

    .line 8410
    :cond_27b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected exception occurred while parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_294
    move-exception v0

    move-object/from16 v19, v7

    goto :goto_29e

    :cond_298
    move-object/from16 v19, v7

    .line 8423
    monitor-exit v19
    :try_end_29b
    .catchall {:try_start_15d .. :try_end_29b} :catchall_29d

    .line 8424
    :try_start_29b
    monitor-exit v13
    :try_end_29c
    .catchall {:try_start_29b .. :try_end_29c} :catchall_2a0

    goto :goto_2af

    :catchall_29d
    move-exception v0

    .line 8423
    :goto_29e
    :try_start_29e
    monitor-exit v19
    :try_end_29f
    .catchall {:try_start_29e .. :try_end_29f} :catchall_29d

    :try_start_29f
    throw v0

    :catchall_2a0
    move-exception v0

    .line 8424
    monitor-exit v13
    :try_end_2a2
    .catchall {:try_start_29f .. :try_end_2a2} :catchall_2a0

    throw v0

    :cond_2a3
    :goto_2a3
    const-string v0, "PackageManager"

    const-string v1, "No files in overlay dir to parse"

    .line 8326
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8327
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :goto_2af
    const-string v0, "PackageManager"

    .line 8426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseSamsungThemeOverlayPackages checking for enablePackageNamesList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PackageManager"

    .line 8428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseSamsungThemeOverlayPackages checking for disablePackageNamesList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8431
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 8432
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e9
    :goto_2e9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    const-string v1, "PackageManager"

    .line 8433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseSamsungThemeOverlayPackages checking for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_2e9

    .line 8434
    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result v1

    if-eqz v1, :cond_2e9

    const-string v1, "PackageManager"

    .line 8435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseSamsungThemeOverlayPackages checking for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8436
    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result v3

    if-eqz v3, :cond_333

    const-string v3, " open theme "

    goto :goto_335

    :cond_333
    const-string v3, " config res "

    :goto_335
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " overlay for target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8437
    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8435
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8439
    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_359

    .line 8440
    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e9

    .line 8443
    :cond_359
    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_396

    if-nez v10, :cond_396

    .line 8445
    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_396

    const-string v1, "PackageManager"

    .line 8447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseSamsungThemeOverlayPackages: adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to invalidAndDisabledPackages"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8448
    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8450
    :cond_396
    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e9

    .line 8451
    new-instance v13, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;

    .line 8452
    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    move-object v1, v13

    move-object/from16 v2, p0

    move-object/from16 v5, p5

    move/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;-><init>(Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;IZ)V

    .line 8451
    invoke-virtual {v8, v12, v13}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->executeOnBackgroundThread(Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;)V

    .line 8454
    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2e9

    .line 8459
    :cond_3c1
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3fb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const-string v1, "PackageManager"

    .line 8460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseSamsungThemeOverlayPackages disabling package  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8461
    new-instance v9, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v5, p5

    move/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;-><init>(Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;IZ)V

    invoke-virtual {v8, v12, v9}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->executeOnBackgroundThread(Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$OMSCallbackRunnable;)V

    goto :goto_3c5

    :cond_3fb
    return-void
.end method

.method public pruneCachedApksInApex(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 7986
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmCacheDir(Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 7990
    :cond_9
    new-instance v0, Lcom/android/server/pm/parsing/PackageCacher;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmCacheDir(Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/pm/parsing/PackageCacher;-><init>(Ljava/io/File;)V

    .line 7991
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 7992
    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 7993
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_23
    if-ge v5, v3, :cond_58

    .line 7994
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 7995
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 7996
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v8, v4

    :goto_3a
    if-ge v8, v7, :cond_55

    .line 7997
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v2, v9}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v9

    .line 7998
    new-instance v10, Ljava/io/File;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/android/server/pm/parsing/PackageCacher;->cleanCachedResult(Ljava/io/File;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    :cond_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 8001
    :cond_58
    monitor-exit v1

    return-void

    :catchall_5a
    move-exception p0

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_19 .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method public registerInstalledLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;I)Z
    .registers 7

    .line 8217
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 8218
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 8219
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 8218
    invoke-static {v1, v0, p1, v2, p3}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mfilterPackageStateForInstalledAndFiltered(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_14

    return p3

    .line 8223
    :cond_14
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->isLoading()Z

    move-result v0

    const-string v1, "PackageManager"

    if-nez v0, :cond_22

    const-string p0, "Failed registering loading progress callback. Package is fully loaded."

    .line 8224
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    .line 8228
    :cond_22
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-nez p0, :cond_2e

    const-string p0, "Failed registering loading progress callback. Incremental is not enabled"

    .line 8229
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    .line 8233
    :cond_2e
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPathString()Ljava/lang/String;

    move-result-object p1

    .line 8234
    invoke-virtual {p2}, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    check-cast p2, Landroid/content/pm/IPackageLoadingProgressCallback;

    .line 8233
    invoke-virtual {p0, p1, p2}, Landroid/os/incremental/IncrementalManager;->registerLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/IPackageLoadingProgressCallback;)Z

    move-result p0

    return p0
.end method

.method public removeAllNonSystemPackageSuspensions(I)V
    .registers 5

    .line 7939
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 7940
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getAllAvailablePackageNames()[Ljava/lang/String;

    move-result-object v1

    .line 7941
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSuspendPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object p0

    new-instance v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/pm/SuspendPackageHelper;->removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V

    return-void
.end method

.method public removeIsolatedUid(I)V
    .registers 3

    .line 8072
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 8073
    :try_start_5
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseIntArray;->delete(I)V

    .line 8074
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public removeLegacyDefaultBrowserPackageName(I)Ljava/lang/String;
    .registers 3

    .line 8102
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 8103
    :try_start_5
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeDefaultBrowserPackageNameLPw(I)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 8104
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7957
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/ProtectedPackages;->setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V

    .line 7959
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    if-eqz p2, :cond_15

    .line 7961
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 7963
    :cond_15
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_1a
    if-ge p2, p1, :cond_2c

    .line 7965
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 7966
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->removeAllNonSystemPackageSuspensions(I)V

    :cond_29
    add-int/lit8 p2, p2, 0x1

    goto :goto_1a

    :cond_2c
    return-void
.end method

.method public setEnabledOverlayPackages(ILjava/lang/String;Landroid/content/pm/overlay/OverlayPaths;Ljava/util/Set;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 8059
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$msetEnabledOverlayPackages(Lcom/android/server/pm/PackageManagerService;ILjava/lang/String;Landroid/content/pm/overlay/OverlayPaths;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V
    .registers 2

    if-eqz p1, :cond_6

    .line 8007
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    :cond_6
    return-void
.end method

.method public setIntegrityVerificationResult(II)V
    .registers 5

    .line 8190
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 8191
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 8192
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8193
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setVisibilityLogging(Ljava/lang/String;Z)V
    .registers 4

    .line 8199
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 8203
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilterImpl;->getFeatureConfig()Lcom/android/server/pm/FeatureConfig;

    move-result-object p0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/FeatureConfig;->enableLogging(IZ)V

    return-void

    .line 8201
    :cond_1a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No package found for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public uninstallApex(Ljava/lang/String;JILandroid/content/IntentSender;I)V
    .registers 14

    .line 8110
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_13

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_b

    goto :goto_13

    .line 8112
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Not allowed to uninstall apexes"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8114
    :cond_13
    :goto_13
    new-instance v6, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v2, p5

    move-object v3, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V

    and-int/lit8 p4, p6, 0x2

    const/4 p5, -0x5

    if-nez p4, :cond_2c

    const-string p0, "Can\'t uninstall an apex for a single user"

    .line 8119
    invoke-virtual {v6, p1, p5, p0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 8123
    :cond_2c
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    const/4 p4, 0x1

    .line 8124
    invoke-virtual {p0, p1, p4}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p6

    if-nez p6, :cond_4c

    .line 8127
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not an apex package"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p1, p5, p0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_4c
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_80

    .line 8132
    invoke-virtual {p6}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-eqz v0, :cond_80

    .line 8133
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Active version "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8134
    invoke-virtual {p6}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " is not equal to "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8133
    invoke-virtual {v6, p1, p5, p0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 8138
    :cond_80
    iget-object p2, p6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ApexManager;->uninstallApex(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_9f

    .line 8139
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to uninstall apex "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p1, p5, p0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_a3

    :cond_9f
    const/4 p0, 0x0

    .line 8142
    invoke-virtual {v6, p1, p4, p0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    :goto_a3
    return-void
.end method

.method public updateExternalMediaStatus(ZZ)V
    .registers 3

    .line 7846
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAsecInstallHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AsecInstallHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/AsecInstallHelper;->updateExternalMediaStatus(ZZ)V

    return-void
.end method

.method public updateRuntimePermissionsFingerprint(I)V
    .registers 2

    .line 8150
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->updateRuntimePermissionsFingerprint(I)V

    return-void
.end method

.method public wasPackageStopped(Ljava/lang/String;I)Z
    .registers 3

    .line 7974
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 7975
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    .line 7979
    :cond_e
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 7980
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result p0

    return p0
.end method

.method public writePermissionSettings([IZ)V
    .registers 10

    .line 8175
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 8176
    :try_start_5
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_1b

    aget v4, p1, v3

    .line 8177
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    if-nez p2, :cond_14

    const/4 v6, 0x1

    goto :goto_15

    :cond_14
    move v6, v2

    :goto_15
    invoke-virtual {v5, v4, v6}, Lcom/android/server/pm/Settings;->writePermissionStateForUserLPr(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 8179
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public writeRuntimePermissionsForUserLPrForMDM(IZ)V
    .registers 3

    .line 7833
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->writePermissionStateForUserLPr(IZ)V

    return-void
.end method

.method public writeSettings(Z)V
    .registers 3

    .line 8164
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    if-eqz p1, :cond_d

    .line 8166
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    goto :goto_12

    .line 8168
    :cond_d
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 8170
    :goto_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0
.end method
