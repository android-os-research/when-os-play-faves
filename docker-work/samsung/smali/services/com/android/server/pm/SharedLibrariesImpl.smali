.class public final Lcom/android/server/pm/SharedLibrariesImpl;
.super Ljava/lang/Object;
.source "SharedLibrariesImpl.java"

# interfaces
.implements Lcom/android/server/pm/SharedLibrariesRead;
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# static fields
.field public static final DEBUG_SHARED_LIBRARIES:Z = false

.field public static final ENFORCE_NATIVE_SHARED_LIBRARY_DEPENDENCIES:J = 0x879a9f0L


# instance fields
.field public mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mObserver:Lcom/android/server/utils/Watcher;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mSharedLibrariesSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/SharedLibrariesImpl;",
            ">;"
        }
    .end annotation
.end field

.field public final mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mStaticLibsByDeclaringPackageSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final mWatchable:Lcom/android/server/utils/WatchableImpl;


# direct methods
.method public static synthetic $r8$lambda$fpnWoz9zAXPoOCmaucjbsg964so(Landroid/content/pm/SharedLibraryInfo;Landroid/content/pm/SharedLibraryInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/SharedLibrariesImpl;->lambda$executeSharedLibrariesUpdateLPw$0(Landroid/content/pm/SharedLibraryInfo;Landroid/content/pm/SharedLibraryInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmWatchable(Lcom/android/server/pm/SharedLibrariesImpl;)Lcom/android/server/utils/WatchableImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)V
    .registers 5

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 127
    new-instance v0, Lcom/android/server/pm/SharedLibrariesImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/SharedLibrariesImpl$1;-><init>(Lcom/android/server/pm/SharedLibrariesImpl;)V

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mObserver:Lcom/android/server/utils/Watcher;

    .line 151
    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 152
    iput-object p2, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 154
    new-instance p1, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 155
    new-instance p2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v1, "SharedLibrariesImpl.mSharedLibraries"

    invoke-direct {p2, p1, p1, v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibrariesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 157
    new-instance p1, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    .line 158
    new-instance p2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v1, "SharedLibrariesImpl.mStaticLibsByDeclaringPackage"

    invoke-direct {p2, p1, p1, v1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 162
    invoke-virtual {p0}, Lcom/android/server/pm/SharedLibrariesImpl;->registerObservers()V

    .line 163
    invoke-static {p0, v0}, Lcom/android/server/utils/Watchable;->verifyWatchedAttributes(Ljava/lang/Object;Lcom/android/server/utils/Watcher;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/server/pm/SharedLibrariesImpl;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/SharedLibrariesImpl;)V
    .registers 3

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 127
    new-instance v0, Lcom/android/server/pm/SharedLibrariesImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/SharedLibrariesImpl$1;-><init>(Lcom/android/server/pm/SharedLibrariesImpl;)V

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mObserver:Lcom/android/server/utils/Watcher;

    .line 183
    iget-object v0, p1, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 184
    iget-object v0, p1, Lcom/android/server/pm/SharedLibrariesImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 186
    iget-object v0, p1, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibrariesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedArrayMap;

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 187
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibrariesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 188
    iget-object p1, p1, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/utils/WatchedArrayMap;

    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    .line 189
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 192
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/SharedLibrariesImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/SharedLibrariesImpl;-><init>(Lcom/android/server/pm/SharedLibrariesImpl;)V

    return-void
.end method

.method public static hasString(Ljava/util/List;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2c

    if-nez p1, :cond_6

    goto :goto_2c

    .line 603
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_c
    if-ltz v1, :cond_2c

    .line 604
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_13
    if-ltz v3, :cond_29

    .line 605
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    return v2

    :cond_26
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_2c
    :goto_2c
    return v0
.end method

.method public static synthetic lambda$executeSharedLibrariesUpdateLPw$0(Landroid/content/pm/SharedLibraryInfo;Landroid/content/pm/SharedLibraryInfo;)V
    .registers 2

    .line 557
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->clearDependencies()V

    return-void
.end method


# virtual methods
.method public addBuiltInSharedLibraryLPw(Lcom/android/server/SystemConfig$SharedLibraryEntry;)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    .line 697
    iget-object v0, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->name:Ljava/lang/String;

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    return-void

    .line 701
    :cond_b
    new-instance v0, Landroid/content/pm/SharedLibraryInfo;

    iget-object v2, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->filename:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->name:Ljava/lang/String;

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    new-instance v9, Landroid/content/pm/VersionedPackage;

    const-wide/16 v10, 0x0

    const-string v1, "android"

    invoke-direct {v9, v1, v10, v11}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-boolean v12, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->isNative:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    .line 707
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedLibrariesImpl;->commitSharedLibraryInfoLPw(Landroid/content/pm/SharedLibraryInfo;)V

    return-void
.end method

.method public final addSharedLibraryLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;Landroid/content/pm/SharedLibraryInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/SharedLibraryInfo;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/PackageSetting;",
            ")V"
        }
    .end annotation

    .line 490
    invoke-virtual {p3}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 491
    invoke-virtual {p3}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 494
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p3}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 495
    iget-object v1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p3}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    if-eqz p4, :cond_49

    .line 496
    invoke-interface {p4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    if-eqz v0, :cond_4b

    .line 502
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_4b

    :cond_49
    move-object p4, v0

    move-object p5, v1

    :cond_4b
    :goto_4b
    if-eqz p4, :cond_69

    .line 508
    invoke-static {p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 510
    new-instance p4, Lcom/android/server/pm/SharedLibrariesImpl$$ExternalSyntheticLambda1;

    invoke-direct {p4}, Lcom/android/server/pm/SharedLibrariesImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/SharedLibrariesImpl;->applyDefiningSharedLibraryUpdateLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/SharedLibraryInfo;Ljava/util/function/BiConsumer;)V

    if-eqz p5, :cond_69

    .line 512
    invoke-virtual {p5}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_69
    return-void
.end method

.method public final applyDefiningSharedLibraryUpdateLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/SharedLibraryInfo;Ljava/util/function/BiConsumer;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Landroid/content/pm/SharedLibraryInfo;",
            "Ljava/util/function/BiConsumer<",
            "Landroid/content/pm/SharedLibraryInfo;",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;)V"
        }
    .end annotation

    .line 450
    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 451
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 453
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibVersionMajor()I

    move-result p1

    int-to-long v1, p1

    .line 452
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object p0

    if-eqz p0, :cond_57

    .line 455
    invoke-interface {p3, p0, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_57

    .line 457
    :cond_1f
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 459
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibVersion()J

    move-result-wide v1

    .line 458
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object p0

    if-eqz p0, :cond_57

    .line 461
    invoke-interface {p3, p0, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_57

    .line 464
    :cond_37
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getLibraryNames()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3f
    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 465
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 468
    invoke-interface {p3, v0, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3f

    :cond_57
    :goto_57
    return-void
.end method

.method public collectSharedLibraryInfos(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    move-object v12, p0

    .line 861
    iget-object v1, v12, Lcom/android/server/pm/SharedLibrariesImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v13

    .line 866
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesLibraries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_31

    .line 867
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesLibraries()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 868
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v8

    const/4 v9, 0x0

    const-string/jumbo v6, "shared"

    move-object v1, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 867
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_31
    move-object v9, v0

    .line 871
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 872
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v2

    .line 873
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesStaticLibrariesVersions()[J

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesStaticLibrariesCertDigests()[[Ljava/lang/String;

    move-result-object v4

    .line 874
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v8

    const-string/jumbo v6, "static shared"

    move-object v1, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 872
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v9, v0

    .line 877
    :cond_5e
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_84

    .line 878
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 879
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v8

    const-string/jumbo v6, "shared"

    move-object v1, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 878
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v9, v0

    :cond_84
    const-wide/32 v0, 0x879a9f0

    .line 883
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v3

    .line 882
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternal(JLjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 884
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesNativeLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bb

    .line 885
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesNativeLibraries()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 886
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    .line 887
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v8

    const-string/jumbo v6, "native shared"

    move-object v1, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 885
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v9, v0

    .line 890
    :cond_bb
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesOptionalNativeLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e1

    .line 891
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesOptionalNativeLibraries()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 892
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    .line 893
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v8

    const-string/jumbo v6, "native shared"

    move-object v1, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 891
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v9, v0

    .line 897
    :cond_e1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10c

    .line 898
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v2

    .line 899
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesSdkLibrariesCertDigests()[[Ljava/lang/String;

    move-result-object v4

    .line 900
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v8

    const-string/jumbo v6, "sdk"

    move-object v1, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 898
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v9

    :cond_10c
    return-object v9
.end method

.method public final collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[J[[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    .line 914
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v5, p8

    move v6, v4

    :goto_e
    if-ge v6, v3, :cond_1c7

    move-object/from16 v7, p1

    .line 916
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz p2, :cond_1d

    .line 917
    aget-wide v9, p2, v6

    goto :goto_1f

    :cond_1d
    const-wide/16 v9, -0x1

    .line 920
    :goto_1f
    iget-object v11, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v11

    .line 921
    :try_start_24
    iget-object v12, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    move-object/from16 v13, p10

    invoke-static {v8, v9, v10, v12, v13}, Lcom/android/server/pm/SharedLibraryUtils;->getSharedLibraryInfo(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v9

    .line 923
    monitor-exit v11
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_1c4

    const/16 v10, -0x9

    if-nez v9, :cond_66

    if-nez p6, :cond_3a

    move/from16 v10, p7

    move-object/from16 v12, p9

    move v0, v4

    goto/16 :goto_1bd

    .line 926
    :cond_3a
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires unavailable "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " library "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; failing!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_66
    if-eqz p2, :cond_1ae

    if-eqz p3, :cond_1ae

    .line 935
    invoke-virtual {v9}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v11

    aget-wide v14, p2, v6

    cmp-long v11, v11, v14

    if-nez v11, :cond_174

    .line 941
    invoke-virtual {v9}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v12, p9

    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v8, :cond_84

    const/4 v8, 0x0

    goto :goto_88

    .line 942
    :cond_84
    invoke-interface {v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v8

    :goto_88
    if-eqz v8, :cond_14e

    .line 948
    aget-object v11, p3, v6

    .line 949
    array-length v14, v11

    const/4 v15, 0x1

    if-le v14, v15, :cond_117

    const/16 v14, 0x1b

    move/from16 v10, p7

    if-lt v10, v14, :cond_9f

    .line 953
    invoke-virtual {v8}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v8

    .line 952
    invoke-static {v8}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v8

    goto :goto_ad

    :cond_9f
    new-array v14, v15, [Landroid/content/pm/Signature;

    .line 955
    invoke-virtual {v8}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v8

    aget-object v8, v8, v4

    aput-object v8, v14, v4

    .line 954
    invoke-static {v14}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v8

    .line 961
    :goto_ad
    array-length v14, v11

    array-length v15, v8

    if-ne v14, v15, :cond_f1

    .line 968
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 969
    invoke-static {v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 971
    array-length v14, v8

    move v15, v4

    :goto_b9
    if-ge v15, v14, :cond_1b2

    .line 973
    aget-object v4, v8, v15

    aget-object v0, v11, v15

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cb

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    const/4 v4, 0x0

    goto :goto_b9

    .line 974
    :cond_cb
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires differently signed "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " library; failing!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x9

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 962
    :cond_f1
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires differently signed "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " library; failing!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x9

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_117
    move/from16 v10, p7

    move v0, v4

    .line 983
    aget-object v4, v11, v0

    invoke-static {v4, v0}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;Z)[B

    move-result-object v4

    .line 985
    invoke-virtual {v8, v4}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([B)Z

    move-result v4

    if-eqz v4, :cond_128

    goto/16 :goto_1b3

    .line 986
    :cond_128
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires differently signed "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " library; failing!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x9

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 944
    :cond_14e
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires unavailable "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " library; failing!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x9

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 936
    :cond_174
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires unavailable "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " library "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " version "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    invoke-virtual {v9}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; failing!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x9

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1ae
    move/from16 v10, p7

    move-object/from16 v12, p9

    :cond_1b2
    move v0, v4

    :goto_1b3
    if-nez v5, :cond_1ba

    .line 993
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 995
    :cond_1ba
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1bd
    add-int/lit8 v6, v6, 0x1

    move v4, v0

    move-object/from16 v0, p0

    goto/16 :goto_e

    :catchall_1c4
    move-exception v0

    .line 923
    :try_start_1c5
    monitor-exit v11
    :try_end_1c6
    .catchall {:try_start_1c5 .. :try_end_1c6} :catchall_1c4

    throw v0

    :cond_1c7
    return-object v5
.end method

.method public commitSharedLibraryInfoLPw(Landroid/content/pm/SharedLibraryInfo;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    .line 716
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 717
    iget-object v1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedLongSparseArray;

    if-nez v1, :cond_18

    .line 719
    new-instance v1, Lcom/android/server/utils/WatchedLongSparseArray;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedLongSparseArray;-><init>()V

    .line 720
    iget-object v2, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    :cond_18
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 723
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2c

    .line 724
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    :cond_2c
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/utils/WatchedLongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .registers 2

    .line 236
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    .line 1007
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->isCheckIn()Z

    move-result v0

    .line 1009
    iget-object v1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_d
    if-ge v3, v1, :cond_b1

    .line 1011
    iget-object v5, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v5, v3}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1012
    iget-object v6, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 1013
    invoke-virtual {v6, v5}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/utils/WatchedLongSparseArray;

    if-nez v5, :cond_23

    goto/16 :goto_ad

    .line 1017
    :cond_23
    invoke-virtual {v5}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v6

    move v7, v2

    :goto_28
    if-ge v7, v6, :cond_ad

    .line 1019
    invoke-virtual {v5, v7}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/SharedLibraryInfo;

    if-nez v0, :cond_49

    if-nez v4, :cond_43

    .line 1022
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1023
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_3d
    const-string v4, "Libraries:"

    .line 1025
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x1

    :cond_43
    const-string v9, "  "

    .line 1028
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4f

    :cond_49
    const-string/jumbo v9, "lib,"

    .line 1030
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1032
    :goto_4f
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v9

    if-eqz v9, :cond_74

    .line 1034
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " version="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_74
    if-nez v0, :cond_7b

    const-string v9, " -> "

    .line 1037
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1039
    :cond_7b
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9a

    .line 1040
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v9

    if-eqz v9, :cond_8d

    const-string v9, " (so) "

    .line 1041
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_92

    :cond_8d
    const-string v9, " (jar) "

    .line 1043
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1045
    :goto_92
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a6

    :cond_9a
    const-string v9, " (apk) "

    .line 1047
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1050
    :goto_a6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_28

    :cond_ad
    :goto_ad
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    :cond_b1
    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    .line 1061
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_74

    .line 1063
    iget-object v3, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1064
    iget-object v4, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 1065
    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/utils/WatchedLongSparseArray;

    if-nez v3, :cond_1d

    goto :goto_71

    .line 1069
    :cond_1d
    invoke-virtual {v3}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v4

    move v5, v1

    :goto_22
    if-ge v5, v4, :cond_71

    .line 1071
    invoke-virtual {v3, v5}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/SharedLibraryInfo;

    const-wide v7, 0x20b00000003L

    .line 1073
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-wide v9, 0x10900000001L

    .line 1074
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1075
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_47

    const/4 v9, 0x1

    goto :goto_48

    :cond_47
    move v9, v1

    :goto_48
    const-wide v10, 0x10800000002L

    .line 1076
    invoke-virtual {p1, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    if-eqz v9, :cond_5f

    const-wide v9, 0x10900000003L

    .line 1079
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 1078
    invoke-virtual {p1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_6b

    :cond_5f
    const-wide v9, 0x10900000004L

    .line 1082
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1081
    invoke-virtual {p1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1084
    :goto_6b
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_71
    :goto_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_74
    return-void
.end method

.method public executeSharedLibrariesUpdateLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/ArrayList;[I)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;[I)V"
        }
    .end annotation

    .line 556
    new-instance v0, Lcom/android/server/pm/SharedLibrariesImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/SharedLibrariesImpl$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/pm/SharedLibrariesImpl;->applyDefiningSharedLibraryUpdateLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/SharedLibraryInfo;Ljava/util/function/BiConsumer;)V

    if-eqz p5, :cond_95

    .line 560
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUsesLibraryInfos(Ljava/util/List;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 563
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 564
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/content/pm/SharedLibraryInfo;

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v5, p3

    move-object v6, p4

    .line 565
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/SharedLibrariesImpl;->addSharedLibraryLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;Landroid/content/pm/SharedLibraryInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_1b

    .line 568
    :cond_31
    invoke-virtual {p2, v0}, Lcom/android/server/pm/PackageSetting;->setPkgStateLibraryFiles(Ljava/util/Collection;)Lcom/android/server/pm/PackageSetting;

    .line 572
    array-length p1, p6

    new-array p1, p1, [I

    const/4 p3, 0x0

    move p4, p3

    move v0, p4

    .line 574
    :goto_3a
    array-length v1, p6

    if-ge p4, v1, :cond_4f

    .line 575
    aget v1, p6, p4

    invoke-virtual {p2, v1}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_4c

    add-int/lit8 v1, v0, 0x1

    .line 576
    aget v2, p6, p4

    aput v2, p1, v0

    move v0, v1

    :cond_4c
    add-int/lit8 p4, p4, 0x1

    goto :goto_3a

    .line 579
    :cond_4f
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_53
    :goto_53
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_a8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/SharedLibraryInfo;

    .line 580
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result p5

    if-nez p5, :cond_66

    goto :goto_53

    .line 583
    :cond_66
    iget-object p5, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 584
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Lcom/android/server/pm/PackageManagerService;->getPackageSettingForMutation(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p5

    if-nez p5, :cond_89

    .line 586
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Shared lib without setting: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "PackageManager"

    invoke-static {p5, p4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    :cond_89
    move p4, p3

    :goto_8a
    if-ge p4, v0, :cond_53

    .line 590
    aget p6, p1, p4

    const/4 v1, 0x1

    invoke-virtual {p5, v1, p6}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_8a

    .line 594
    :cond_95
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUsesLibraryInfos(Ljava/util/List;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p0

    .line 595
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUsesLibraryFiles(Ljava/util/List;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    :cond_a8
    return-void
.end method

.method public getAll()Lcom/android/server/utils/WatchedArrayMap;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;"
        }
    .end annotation

    .line 254
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public getAllowedSharedLibInfos(Lcom/android/server/pm/ScanResult;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ScanResult;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 779
    iget-object v0, p1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v0, v0, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 780
    iget-object v1, p1, Lcom/android/server/pm/ScanResult;->mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_12

    iget-object v3, p1, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    if-nez v3, :cond_12

    iget-object v3, p1, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    if-nez v3, :cond_12

    return-object v2

    :cond_12
    if-eqz v1, :cond_19

    .line 787
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 789
    :cond_19
    iget-object v1, p1, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    if-eqz v1, :cond_22

    .line 790
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 792
    :cond_22
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p1, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    if-eqz v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    if-nez v1, :cond_32

    return-object v2

    .line 797
    :cond_32
    iget-object v1, p1, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    .line 798
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 802
    iget-object v3, p1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v4, v3, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    if-nez v4, :cond_48

    .line 803
    iget-object v4, v3, Lcom/android/server/pm/ScanRequest;->mOldPkgSetting:Lcom/android/server/pm/PackageSetting;

    goto :goto_48

    :cond_47
    move-object v4, v2

    :cond_48
    :goto_48
    if-eqz v1, :cond_7a

    .line 806
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 807
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getLibraryNames()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_7a

    :cond_5a
    const-string p0, "PackageManager"

    .line 808
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " declares libraries that are not declared on the system image; skipping"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 812
    :cond_7a
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    .line 813
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 814
    iget-object p1, p1, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_112

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/SharedLibraryInfo;

    .line 815
    invoke-virtual {v3}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_d3

    .line 827
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getLibraryNames()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d3

    const-string v3, "PackageManager"

    .line 828
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " declares library "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " that is not declared on system image; skipping"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 834
    :cond_d3
    iget-object v6, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v6

    const-wide/16 v7, -0x1

    .line 835
    :try_start_da
    invoke-virtual {p0, v5, v7, v8}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v7

    if-eqz v7, :cond_109

    const-string v3, "PackageManager"

    .line 836
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " declares library "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " that already exists; skipping"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    monitor-exit v6

    goto :goto_8b

    .line 840
    :cond_109
    monitor-exit v6
    :try_end_10a
    .catchall {:try_start_da .. :try_end_10a} :catchall_10f

    .line 841
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8b

    :catchall_10f
    move-exception p0

    .line 840
    :try_start_110
    monitor-exit v6
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_10f

    throw p0

    :cond_112
    return-object v2
.end method

.method public getLatestStaticSharedLibraVersionLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    .line 393
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 394
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/utils/WatchedLongSparseArray;

    const/4 v0, 0x0

    if-nez p0, :cond_10

    return-object v0

    :cond_10
    const-wide/16 v1, -0x1

    .line 399
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_2c

    .line 401
    invoke-virtual {p0, v4}, Lcom/android/server/utils/WatchedLongSparseArray;->keyAt(I)J

    move-result-wide v5

    .line 402
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibVersion()J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-gez v7, :cond_29

    .line 403
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_2c
    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_39

    .line 407
    invoke-virtual {p0, v1, v2}, Lcom/android/server/utils/WatchedLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/SharedLibraryInfo;

    return-object p0

    :cond_39
    return-object v0
.end method

.method public final getLibraryPackage(Lcom/android/server/pm/Computer;Landroid/content/pm/SharedLibraryInfo;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 5

    .line 300
    invoke-virtual {p2}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object p0

    .line 301
    invoke-virtual {p2}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 304
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 305
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v0

    .line 303
    invoke-interface {p1, p2, v0, v1}, Lcom/android/server/pm/Computer;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    .line 306
    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    return-object p0

    .line 308
    :cond_1b
    invoke-virtual {p2}, Landroid/content/pm/SharedLibraryInfo;->isSdk()Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 309
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    return-object p0

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;"
        }
    .end annotation

    .line 270
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    .line 279
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/utils/WatchedLongSparseArray;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 284
    :cond_c
    invoke-virtual {p0, p2, p3}, Lcom/android/server/utils/WatchedLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/SharedLibraryInfo;

    return-object p0
.end method

.method public getSharedLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/utils/WatchedLongSparseArray;

    return-object p0
.end method

.method public getStaticLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/utils/WatchedLongSparseArray;

    return-object p0
.end method

.method public getStaticSharedLibLatestVersionSetting(Lcom/android/server/pm/ScanResult;)Lcom/android/server/pm/PackageSetting;
    .registers 3

    .line 422
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 423
    :try_start_5
    iget-object p1, p1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object p1, p1, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 424
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SharedLibrariesImpl;->getLatestStaticSharedLibraVersionLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 426
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 427
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 426
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    .line 429
    :goto_1d
    monitor-exit v0

    return-object p0

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .registers 2

    .line 224
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    move-result p0

    return p0
.end method

.method public final makeCache()Lcom/android/server/utils/SnapshotCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/SharedLibrariesImpl;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Lcom/android/server/pm/SharedLibrariesImpl$2;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/SharedLibrariesImpl$2;-><init>(Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method public pruneUnusedStaticSharedLibraries(Lcom/android/server/pm/Computer;JJ)Z
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 327
    iget-object v1, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 328
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 330
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 337
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v5

    .line 338
    invoke-virtual {v5}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_24
    if-ge v8, v6, :cond_83

    .line 341
    invoke-virtual {v5, v8}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/utils/WatchedLongSparseArray;

    if-nez v9, :cond_33

    :cond_2e
    move-object/from16 v13, p1

    move/from16 v17, v8

    goto :goto_80

    .line 345
    :cond_33
    invoke-virtual {v9}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_38
    if-ge v11, v10, :cond_2e

    .line 347
    invoke-virtual {v9, v11}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/SharedLibraryInfo;

    move-object/from16 v13, p1

    .line 348
    invoke-virtual {v0, v13, v12}, Lcom/android/server/pm/SharedLibrariesImpl;->getLibraryPackage(Lcom/android/server/pm/Computer;Landroid/content/pm/SharedLibraryInfo;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v14

    if-nez v14, :cond_4b

    :goto_48
    move/from16 v17, v8

    goto :goto_7b

    .line 354
    :cond_4b
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getLastUpdateTime()J

    move-result-wide v15

    sub-long v15, v3, v15

    cmp-long v15, v15, p4

    if-gez v15, :cond_56

    goto :goto_48

    .line 358
    :cond_56
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v15

    if-eqz v15, :cond_61

    goto :goto_48

    .line 362
    :cond_61
    new-instance v15, Landroid/content/pm/VersionedPackage;

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 363
    invoke-virtual {v12}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v12

    move/from16 v17, v8

    invoke-virtual {v12}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v7

    invoke-direct {v15, v14, v7, v8}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 362
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7b
    add-int/lit8 v11, v11, 0x1

    move/from16 v8, v17

    goto :goto_38

    :goto_80
    add-int/lit8 v8, v17, 0x1

    goto :goto_24

    .line 367
    :cond_83
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_88
    if-ge v4, v3, :cond_b0

    .line 369
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/VersionedPackage;

    .line 371
    iget-object v6, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    invoke-virtual {v5}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 372
    invoke-virtual {v5}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    .line 371
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_ad

    .line 375
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v7

    cmp-long v5, v7, p2

    if-ltz v5, :cond_ad

    return v6

    :cond_ad
    add-int/lit8 v4, v4, 0x1

    goto :goto_88

    :cond_b0
    const/4 v4, 0x0

    return v4
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .registers 2

    .line 203
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public final registerObservers()V
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 176
    iget-object v0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, p0}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public removeSharedLibraryLPw(Ljava/lang/String;J)Z
    .registers 21
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 734
    iget-object v4, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/utils/WatchedLongSparseArray;

    const/4 v5, 0x0

    if-nez v4, :cond_12

    return v5

    .line 738
    :cond_12
    invoke-virtual {v4, v2, v3}, Lcom/android/server/utils/WatchedLongSparseArray;->indexOfKey(J)I

    move-result v6

    if-gez v6, :cond_19

    return v5

    .line 742
    :cond_19
    invoke-virtual {v4, v6}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/SharedLibraryInfo;

    .line 744
    iget-object v7, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v13

    .line 747
    iget-object v7, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v7}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v14

    array-length v15, v14

    :goto_2e
    if-ge v5, v15, :cond_72

    aget v12, v14, v5

    const-wide/16 v9, 0x0

    const/16 v11, 0x3e8

    move-object v7, v13

    move-object v8, v6

    move/from16 v16, v12

    .line 748
    invoke-interface/range {v7 .. v12}, Lcom/android/server/pm/Computer;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_41

    goto :goto_6f

    .line 753
    :cond_41
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_45
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/VersionedPackage;

    .line 754
    iget-object v9, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 755
    invoke-virtual {v8}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 754
    invoke-virtual {v9, v8}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    if-eqz v8, :cond_6a

    .line 757
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move/from16 v11, v16

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/pm/PackageSetting;->setOverlayPathsForLibrary(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;I)Z

    goto :goto_6c

    :cond_6a
    move/from16 v11, v16

    :goto_6c
    move/from16 v16, v11

    goto :goto_45

    :cond_6f
    :goto_6f
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 762
    :cond_72
    invoke-virtual {v4, v2, v3}, Lcom/android/server/utils/WatchedLongSparseArray;->remove(J)V

    .line 763
    invoke-virtual {v4}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_94

    .line 764
    iget-object v2, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mSharedLibraries:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_94

    .line 766
    iget-object v0, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v1

    .line 767
    invoke-virtual {v1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 766
    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_94
    const/4 v0, 0x1

    return v0
.end method

.method public setDeletePackageHelper(Lcom/android/server/pm/DeletePackageHelper;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    return-void
.end method

.method public snapshot()Lcom/android/server/pm/SharedLibrariesRead;
    .registers 1

    .line 245
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/SharedLibrariesRead;

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 79
    invoke-virtual {p0}, Lcom/android/server/pm/SharedLibrariesImpl;->snapshot()Lcom/android/server/pm/SharedLibrariesRead;

    move-result-object p0

    return-object p0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .registers 2

    .line 214
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public updateAllSharedLibrariesLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)Ljava/util/ArrayList;
    .registers 30
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    .line 632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 633
    invoke-static/range {p1 .. p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v10, v0

    move-object v0, v9

    move-object v1, v0

    goto :goto_1b

    :cond_18
    move-object v0, v9

    move-object v1, v0

    move-object v10, v1

    :cond_1b
    :goto_1b
    if-nez v10, :cond_1f

    move-object v2, v9

    goto :goto_26

    :cond_1f
    const/4 v2, 0x0

    .line 637
    invoke-interface {v10, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    :goto_26
    if-eqz v2, :cond_2e

    .line 639
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-object v11, v3

    goto :goto_2f

    :cond_2e
    move-object v11, v9

    :goto_2f
    if-eqz v2, :cond_37

    .line 641
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    move-object v12, v2

    goto :goto_38

    :cond_37
    move-object v12, v9

    .line 642
    :goto_38
    iget-object v2, v7, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v8

    move v13, v2

    :goto_42
    if-ltz v13, :cond_12c

    .line 643
    iget-object v2, v7, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v13}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 644
    iget-object v2, v7, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v14}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v15

    if-eqz v11, :cond_97

    .line 646
    invoke-interface {v14}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesLibraries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v11}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getLibraryNames()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/SharedLibrariesImpl;->hasString(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_97

    .line 647
    invoke-interface {v14}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v11}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getLibraryNames()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/SharedLibrariesImpl;->hasString(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_97

    .line 648
    invoke-interface {v14}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v2

    .line 649
    invoke-interface {v11}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v3

    .line 648
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_97

    .line 650
    invoke-interface {v14}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v2

    .line 651
    invoke-interface {v11}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibName()Ljava/lang/String;

    move-result-object v3

    .line 650
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_97

    goto/16 :goto_128

    :cond_97
    if-nez v0, :cond_9e

    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_9e
    move-object v6, v0

    .line 657
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v11, :cond_c4

    if-nez v1, :cond_ac

    .line 661
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v0

    .line 663
    :cond_ac
    invoke-interface {v14}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c4

    .line 664
    invoke-interface {v14}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 665
    invoke-static {v14, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c4
    move-object/from16 v16, v1

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v15

    move-object v4, v11

    move-object v5, v12

    move-object/from16 v17, v6

    move-object/from16 v6, p3

    .line 669
    :try_start_d0
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/SharedLibrariesImpl;->updateSharedLibrariesLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V
    :try_end_d3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_d0 .. :try_end_d3} :catch_d4

    goto :goto_124

    :catch_d4
    move-exception v0

    move-object v1, v0

    .line 677
    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_e6

    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 678
    :cond_e6
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v23

    .line 680
    iget-object v0, v7, Lcom/android/server/pm/SharedLibrariesImpl;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    invoke-interface {v14}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    iget-object v2, v7, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 681
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v22

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v18, v0

    .line 680
    invoke-virtual/range {v18 .. v25}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z

    .line 684
    :cond_109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAllSharedLibrariesLPw failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_124
    move-object/from16 v1, v16

    move-object/from16 v0, v17

    :goto_128
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_42

    :cond_12c
    if-eqz v10, :cond_134

    .line 687
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1b

    :cond_134
    return-object v0
.end method

.method public updateSharedLibrariesLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 532
    invoke-virtual {p0, p1, p5, v0}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v6

    .line 534
    iget-object p5, p0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p5, p5, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 535
    invoke-virtual {p5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 534
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/SharedLibrariesImpl;->executeSharedLibrariesUpdateLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/ArrayList;[I)V

    return-void
.end method
