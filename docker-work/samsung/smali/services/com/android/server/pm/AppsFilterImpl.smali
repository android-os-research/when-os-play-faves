.class public final Lcom/android/server/pm/AppsFilterImpl;
.super Lcom/android/server/pm/AppsFilterLocked;
.source "AppsFilterImpl.java"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;
    }
.end annotation


# instance fields
.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/AppsFilterSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field public final mWatchable:Lcom/android/server/utils/WatchableImpl;


# direct methods
.method public static synthetic $r8$lambda$RMXPXLVuYbJC38Bzr-Klqa0z4MQ(Lcom/android/server/pm/AppsFilterImpl;Landroid/content/pm/PackageManagerInternal;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterImpl;->lambda$updateEntireShouldFilterCacheAsync$0(Landroid/content/pm/PackageManagerInternal;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monChanged(Lcom/android/server/pm/AppsFilterImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateShouldFilterCacheForPackage(Lcom/android/server/pm/AppsFilterImpl;Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/FeatureConfig;[Ljava/lang/String;ZLcom/android/server/om/OverlayReferenceMapper$Provider;Landroid/os/Handler;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 155
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterLocked;-><init>()V

    .line 90
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 156
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    .line 157
    iput-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    .line 158
    iput-boolean p3, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemAppsQueryable:Z

    .line 159
    new-instance p1, Lcom/android/server/om/OverlayReferenceMapper;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p4}, Lcom/android/server/om/OverlayReferenceMapper;-><init>(ZLcom/android/server/om/OverlayReferenceMapper$Provider;)V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 161
    iput-object p5, p0, Lcom/android/server/pm/AppsFilterBase;->mBackgroundHandler:Landroid/os/Handler;

    .line 162
    new-instance p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 163
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    const-string p3, "AppsFilter.mShouldFilterCache"

    invoke-direct {p1, p2, p2, p3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCacheSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 165
    new-instance p1, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 166
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string p3, "AppsFilter.mImplicitlyQueryable"

    invoke-direct {p1, p2, p2, p3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 168
    new-instance p1, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 169
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string p3, "AppsFilter.mRetainedImplicitlyQueryable"

    invoke-direct {p1, p2, p2, p3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 172
    new-instance p1, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 173
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string p3, "AppsFilter.mQueriesViaPackage"

    invoke-direct {p1, p2, p2, p3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 175
    new-instance p1, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 176
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string p3, "AppsFilter.mQueriesViaComponent"

    invoke-direct {p1, p2, p2, p3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 178
    new-instance p1, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 179
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string p3, "AppsFilter.mQueryableViaUsesLibrary"

    invoke-direct {p1, p2, p2, p3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrarySnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 182
    new-instance p1, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    .line 183
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    const-string p3, "AppsFilter.mForceQueryable"

    invoke-direct {p1, p2, p2, p3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 185
    new-instance p1, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 186
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    const-string p3, "AppsFilter.mProtectedBroadcasts"

    invoke-direct {p1, p2, p2, p3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcastsSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 189
    new-instance p1, Lcom/android/server/pm/AppsFilterImpl$1;

    invoke-direct {p1, p0, p0, p0}, Lcom/android/server/pm/AppsFilterImpl$1;-><init>(Lcom/android/server/pm/AppsFilterImpl;Lcom/android/server/pm/AppsFilterSnapshot;Lcom/android/server/utils/Watchable;)V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public static create(Lcom/android/server/pm/PackageManagerServiceInjector;Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/pm/AppsFilterImpl;
    .registers 10

    .line 362
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111015f

    .line 363
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 364
    new-instance v0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;-><init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl-IA;)V

    const/4 p1, 0x0

    if-eqz v5, :cond_1c

    new-array p1, p1, [Ljava/lang/String;

    move-object v4, p1

    goto :goto_3a

    .line 371
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10700db

    .line 372
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 373
    :goto_2b
    array-length v2, v1

    if-ge p1, v2, :cond_39

    .line 374
    aget-object v2, v1, p1

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2b

    :cond_39
    move-object v4, v1

    .line 377
    :goto_3a
    new-instance p1, Lcom/android/server/pm/AppsFilterImpl;

    const/4 v6, 0x0

    .line 379
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v7

    move-object v2, p1

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/AppsFilterImpl;-><init>(Lcom/android/server/pm/FeatureConfig;[Ljava/lang/String;ZLcom/android/server/om/OverlayReferenceMapper$Provider;Landroid/os/Handler;)V

    .line 380
    invoke-virtual {v0, p1}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->setAppsFilter(Lcom/android/server/pm/AppsFilterImpl;)V

    return-object p1
.end method

.method public static isSystemSigned(Landroid/content/pm/SigningDetails;Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 3

    .line 828
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 829
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private synthetic lambda$updateEntireShouldFilterCacheAsync$0(Landroid/content/pm/PackageManagerInternal;J)V
    .registers 14

    .line 692
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 697
    :cond_b
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-array v3, v2, [[Landroid/content/pm/UserInfo;

    .line 699
    invoke-virtual {p1}, Landroid/content/pm/PackageManagerInternal;->snapshot()Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    move-result-object v4

    .line 701
    invoke-interface {v4}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v5

    .line 702
    invoke-interface {v4}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 704
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    aput-object v6, v3, v1

    .line 708
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v7, v1

    :goto_2c
    if-ge v7, v6, :cond_44

    .line 709
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v8

    .line 710
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    :cond_44
    aget-object v0, v3, v1

    const/4 v1, -0x1

    .line 713
    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCacheInner(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 714
    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    .line 716
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_69

    const-string v0, "AppsFilter"

    const-string v1, "Cache invalidated while building, retrying."

    .line 717
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x2

    mul-long/2addr p2, v0

    const-wide/16 v0, 0x2710

    .line 719
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 718
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCacheAsync(Landroid/content/pm/PackageManagerInternal;J)V

    return-void

    .line 723
    :cond_69
    iput-boolean v2, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    return-void
.end method

.method public static pkgInstruments(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 5

    .line 1074
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1075
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getInstrumentations()Ljava/util/List;

    move-result-object p0

    .line 1076
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_e
    if-ltz v0, :cond_24

    .line 1077
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_26

    if-eqz v2, :cond_21

    return v1

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_24
    const/4 p0, 0x0

    return p0

    :catchall_26
    move-exception p0

    .line 1086
    throw p0
.end method


# virtual methods
.method public addPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 4

    const/4 v0, 0x0

    .line 923
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/AppsFilterImpl;->addPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;Z)V

    return-void
.end method

.method public addPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;Z)V
    .registers 16

    .line 445
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    if-eqz p3, :cond_10

    .line 447
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {p3, v0}, Lcom/android/server/utils/WatchedArraySet;->copyTo(Landroid/util/ArraySet;)V

    const/4 p3, 0x1

    .line 449
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterImpl;->removePackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;Z)V

    .line 453
    :cond_10
    invoke-interface {p1}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p3

    .line 454
    invoke-interface {p1}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 456
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/AppsFilterImpl;->addPackageInternal(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;)Landroid/util/ArraySet;

    move-result-object v9

    .line 458
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 459
    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArraySet;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_2a

    .line 460
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 463
    :cond_2a
    iget-boolean v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-eqz v0, :cond_6c

    .line 464
    iget-object v11, p0, Lcom/android/server/pm/AppsFilterLocked;->mCacheLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_88

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 466
    :try_start_33
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v8

    .line 465
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    if-eqz v9, :cond_67

    .line 468
    :goto_41
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-ge v10, p2, :cond_67

    .line 469
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 470
    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-nez v3, :cond_57

    goto :goto_64

    :cond_57
    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 478
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, v8

    .line 477
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    :goto_64
    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 481
    :cond_67
    monitor-exit v11

    goto :goto_84

    :catchall_69
    move-exception p1

    monitor-exit v11
    :try_end_6b
    .catchall {:try_start_33 .. :try_end_6b} :catchall_69

    :try_start_6b
    throw p1

    .line 483
    :cond_6c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addPackage: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppsFilterImpl;->invalidateCache(Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_6b .. :try_end_84} :catchall_88

    .line 486
    :goto_84
    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    return-void

    :catchall_88
    move-exception p1

    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    .line 490
    throw p1
.end method

.method public final addPackageInternal(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;)Landroid/util/ArraySet;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "android"

    .line 500
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 502
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    .line 505
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 506
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-static {v2, v1}, Lcom/android/server/pm/AppsFilterImpl;->isSystemSigned(Landroid/content/pm/SigningDetails;Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 507
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterLocked;->mForceQueryableLock:Ljava/lang/Object;

    monitor-enter v2

    .line 508
    :try_start_31
    iget-object v3, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 509
    monitor-exit v2

    goto :goto_1a

    :catchall_40
    move-exception p0

    monitor-exit v2
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_40

    throw p0

    .line 514
    :cond_43
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_4b

    const/4 p0, 0x0

    return-object p0

    .line 520
    :cond_4b
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterLocked;->mProtectedBroadcastsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 521
    :try_start_4e
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 524
    iget-object v4, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/utils/WatchedArraySet;->addAll(Ljava/util/Collection;)V

    .line 525
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_4e .. :try_end_62} :catchall_260

    if-eqz v2, :cond_69

    .line 527
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 531
    :cond_69
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterLocked;->mForceQueryableLock:Ljava/lang/Object;

    monitor-enter v2

    .line 532
    :try_start_6c
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_a2

    .line 534
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isForceQueryableOverride()Z

    move-result v1

    if-nez v1, :cond_a2

    .line 535
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_a0

    iget-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemAppsQueryable:Z

    if-nez v1, :cond_a2

    .line 536
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isForceQueryable()Z

    move-result v1

    if-nez v1, :cond_a2

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    .line 538
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 537
    invoke-static {v1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a0

    goto :goto_a2

    :cond_a0
    move v1, v4

    goto :goto_a3

    :cond_a2
    :goto_a2
    move v1, v3

    :goto_a3
    if-nez v1, :cond_af

    .line 539
    iget-object v5, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    if-eqz v5, :cond_bc

    .line 541
    invoke-static {v5, p1}, Lcom/android/server/pm/AppsFilterImpl;->isSystemSigned(Landroid/content/pm/SigningDetails;Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 542
    :cond_af
    iget-object v5, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_bc
    monitor-exit v2
    :try_end_bd
    .catchall {:try_start_6c .. :try_end_bd} :catchall_25d

    .line 546
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_c2
    if-ltz v2, :cond_227

    .line 547
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 548
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    if-eq v5, v6, :cond_223

    .line 549
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    if-nez v5, :cond_dc

    goto/16 :goto_223

    .line 553
    :cond_dc
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    if-nez v1, :cond_14e

    .line 556
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_10b

    iget-object v6, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 557
    invoke-static {v5, v0, v6}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result v6

    if-eqz v6, :cond_10b

    .line 558
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaComponentLock:Ljava/lang/Object;

    monitor-enter v6

    .line 559
    :try_start_f5
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    .line 560
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 559
    invoke-virtual {v7, v8, v9}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 561
    monitor-exit v6

    goto :goto_10b

    :catchall_108
    move-exception p0

    monitor-exit v6
    :try_end_10a
    .catchall {:try_start_f5 .. :try_end_10a} :catchall_108

    throw p0

    .line 563
    :cond_10b
    :goto_10b
    invoke-static {v5, v0}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-nez v6, :cond_117

    .line 564
    invoke-static {v3, v0}, Lcom/android/server/pm/AppsFilterUtils;->canQueryAsInstaller(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_12c

    .line 565
    :cond_117
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaPackageLock:Ljava/lang/Object;

    monitor-enter v6

    .line 566
    :try_start_11a
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    .line 567
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 566
    invoke-virtual {v7, v8, v9}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 568
    monitor-exit v6
    :try_end_12c
    .catchall {:try_start_11a .. :try_end_12c} :catchall_14b

    .line 570
    :cond_12c
    invoke-static {v5, v0}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaUsesLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_14e

    .line 571
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueryableViaUsesLibraryLock:Ljava/lang/Object;

    monitor-enter v6

    .line 572
    :try_start_135
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    .line 573
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 572
    invoke-virtual {v7, v8, v9}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 574
    monitor-exit v6

    goto :goto_14e

    :catchall_148
    move-exception p0

    monitor-exit v6
    :try_end_14a
    .catchall {:try_start_135 .. :try_end_14a} :catchall_148

    throw p0

    :catchall_14b
    move-exception p0

    .line 568
    :try_start_14c
    monitor-exit v6
    :try_end_14d
    .catchall {:try_start_14c .. :try_end_14d} :catchall_14b

    throw p0

    .line 578
    :cond_14e
    :goto_14e
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterLocked;->mForceQueryableLock:Ljava/lang/Object;

    monitor-enter v6

    .line 579
    :try_start_151
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 580
    monitor-exit v6
    :try_end_160
    .catchall {:try_start_151 .. :try_end_160} :catchall_220

    if-nez v7, :cond_1ce

    .line 583
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_18b

    iget-object v6, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 584
    invoke-static {v0, v5, v6}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result v6

    if-eqz v6, :cond_18b

    .line 585
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaComponentLock:Ljava/lang/Object;

    monitor-enter v6

    .line 586
    :try_start_175
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    .line 587
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 586
    invoke-virtual {v7, v8, v9}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 588
    monitor-exit v6

    goto :goto_18b

    :catchall_188
    move-exception p0

    monitor-exit v6
    :try_end_18a
    .catchall {:try_start_175 .. :try_end_18a} :catchall_188

    throw p0

    .line 590
    :cond_18b
    :goto_18b
    invoke-static {v0, v5}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-nez v6, :cond_197

    .line 591
    invoke-static {p1, v5}, Lcom/android/server/pm/AppsFilterUtils;->canQueryAsInstaller(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_1ac

    .line 592
    :cond_197
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaPackageLock:Ljava/lang/Object;

    monitor-enter v6

    .line 593
    :try_start_19a
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    .line 594
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 593
    invoke-virtual {v7, v8, v9}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 595
    monitor-exit v6
    :try_end_1ac
    .catchall {:try_start_19a .. :try_end_1ac} :catchall_1cb

    .line 597
    :cond_1ac
    invoke-static {v0, v5}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaUsesLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v5

    if-eqz v5, :cond_1ce

    .line 598
    iget-object v5, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueryableViaUsesLibraryLock:Ljava/lang/Object;

    monitor-enter v5

    .line 599
    :try_start_1b5
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    .line 600
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 599
    invoke-virtual {v6, v7, v8}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 601
    monitor-exit v5

    goto :goto_1ce

    :catchall_1c8
    move-exception p0

    monitor-exit v5
    :try_end_1ca
    .catchall {:try_start_1b5 .. :try_end_1ca} :catchall_1c8

    throw p0

    :catchall_1cb
    move-exception p0

    .line 595
    :try_start_1cc
    monitor-exit v6
    :try_end_1cd
    .catchall {:try_start_1cc .. :try_end_1cd} :catchall_1cb

    throw p0

    .line 605
    :cond_1ce
    :goto_1ce
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    if-eqz v5, :cond_223

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    if-eqz v5, :cond_223

    .line 606
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/pm/AppsFilterImpl;->pkgInstruments(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v5

    if-nez v5, :cond_1f6

    .line 607
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/pm/AppsFilterImpl;->pkgInstruments(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v5

    if-eqz v5, :cond_223

    .line 608
    :cond_1f6
    iget-object v5, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaPackageLock:Ljava/lang/Object;

    monitor-enter v5

    .line 609
    :try_start_1f9
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 610
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 611
    monitor-exit v5

    goto :goto_223

    :catchall_21d
    move-exception p0

    monitor-exit v5
    :try_end_21f
    .catchall {:try_start_1f9 .. :try_end_21f} :catchall_21d

    throw p0

    :catchall_220
    move-exception p0

    .line 580
    :try_start_221
    monitor-exit v6
    :try_end_222
    .catchall {:try_start_221 .. :try_end_222} :catchall_220

    throw p0

    :cond_223
    :goto_223
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_c2

    .line 615
    :cond_227
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 616
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    move v2, v4

    :goto_231
    if-ge v2, v0, :cond_24d

    .line 618
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 619
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    if-eqz v5, :cond_24a

    .line 620
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24a
    add-int/lit8 v2, v2, 0x1

    goto :goto_231

    .line 624
    :cond_24d
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 625
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-virtual {p2, v0, v1}, Lcom/android/server/om/OverlayReferenceMapper;->addPkg(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Map;)Landroid/util/ArraySet;

    move-result-object p2

    .line 627
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {p0, p1, v4}, Lcom/android/server/pm/FeatureConfig;->updatePackageState(Lcom/android/server/pm/pkg/PackageStateInternal;Z)V

    return-object p2

    :catchall_25d
    move-exception p0

    .line 544
    :try_start_25e
    monitor-exit v2
    :try_end_25f
    .catchall {:try_start_25e .. :try_end_25f} :catchall_25d

    throw p0

    :catchall_260
    move-exception p0

    .line 525
    :try_start_261
    monitor-exit v1
    :try_end_262
    .catchall {:try_start_261 .. :try_end_262} :catchall_260

    throw p0
.end method

.method public final collectProtectedBroadcasts(Landroid/util/ArrayMap;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mProtectedBroadcastsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 836
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    .line 837
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-ltz v1, :cond_41

    .line 838
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 839
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_3e

    .line 843
    :cond_2b
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v2

    .line 844
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 845
    iget-object v3, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArraySet;->addAll(Ljava/util/Collection;)V

    :cond_3e
    :goto_3e
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 848
    :cond_41
    monitor-exit v0

    return-void

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .registers 2

    .line 134
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public getFeatureConfig()Lcom/android/server/pm/FeatureConfig;
    .registers 1

    .line 385
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    return-object p0
.end method

.method public grantImplicitAccess(IIZ)Z
    .registers 7

    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    return v0

    .line 402
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterLocked;->mImplicitlyQueryableLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p3, :cond_14

    .line 404
    :try_start_9
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p1, v2}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    move-result p3

    goto :goto_1e

    .line 405
    :cond_14
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p1, v2}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    move-result p3

    .line 406
    :goto_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_55

    .line 412
    iget-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-eqz v1, :cond_30

    .line 413
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterLocked;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 415
    :try_start_26
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v2, p1, p2, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->put(IIZ)V

    .line 416
    monitor-exit v1

    goto :goto_4f

    :catchall_2d
    move-exception p0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_2d

    throw p0

    :cond_30
    if-eqz p3, :cond_4f

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "grantImplicitAccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppsFilterImpl;->invalidateCache(Ljava/lang/String;)V

    :cond_4f
    :goto_4f
    if-eqz p3, :cond_54

    .line 421
    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    :cond_54
    return p3

    :catchall_55
    move-exception p0

    .line 406
    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public final invalidateCache(Ljava/lang/String;)V
    .registers 4

    .line 145
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_20

    .line 146
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalidating cache: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppsFilter"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method public isQueryableViaComponentWhenRequireRecompute(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArraySet;Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "II)Z"
        }
    .end annotation

    .line 871
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppsFilterImpl;->recomputeComponentVisibility(Landroid/util/ArrayMap;)V

    .line 872
    invoke-virtual {p0, p5, p6}, Lcom/android/server/pm/AppsFilterLocked;->isQueryableViaComponent(II)Z

    move-result p0

    return p0
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .registers 2

    .line 122
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    move-result p0

    return p0
.end method

.method public final onChanged()V
    .registers 1

    .line 141
    invoke-virtual {p0, p0}, Lcom/android/server/pm/AppsFilterImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public onSystemReady(Landroid/content/pm/PackageManagerInternal;)V
    .registers 3

    .line 427
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayReferenceMapper;->rebuildIfDeferred()V

    .line 428
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v0}, Lcom/android/server/pm/FeatureConfig;->onSystemReady()V

    .line 430
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCacheAsync(Landroid/content/pm/PackageManagerInternal;)V

    return-void
.end method

.method public onUserCreated(Lcom/android/server/pm/snapshot/PackageDataSnapshot;I)V
    .registers 4

    .line 728
    iget-boolean v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-nez v0, :cond_5

    return-void

    .line 731
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCache(Lcom/android/server/pm/snapshot/PackageDataSnapshot;I)V

    return-void
.end method

.method public onUserDeleted(I)V
    .registers 3

    .line 735
    iget-boolean v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-nez v0, :cond_5

    return-void

    .line 738
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppsFilterImpl;->removeShouldFilterCacheForUser(I)V

    .line 739
    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    return-void
.end method

.method public final recomputeComponentVisibility(Landroid/util/ArrayMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AppsFilter"

    const-string/jumbo v1, "recomputeComponentVisibility"

    .line 881
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaComponentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 883
    :try_start_b
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedSparseSetArray;->clear()V

    .line 884
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_98

    .line 885
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_8e

    .line 886
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 887
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_8b

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/AppsFilterUtils;->requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_8b

    .line 890
    :cond_30
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_36
    if-ltz v2, :cond_8b

    if-ne v0, v2, :cond_3b

    goto :goto_88

    .line 894
    :cond_3b
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 895
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    if-eqz v4, :cond_88

    iget-object v4, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    .line 896
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 895
    invoke-virtual {v4, v5}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    goto :goto_88

    .line 900
    :cond_58
    iget-object v4, p0, Lcom/android/server/pm/AppsFilterLocked;->mProtectedBroadcastsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 901
    :try_start_5b
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    .line 902
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 901
    invoke-static {v5, v6, v7}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result v5

    .line 903
    monitor-exit v4
    :try_end_6a
    .catchall {:try_start_5b .. :try_end_6a} :catchall_85

    if-eqz v5, :cond_88

    .line 905
    iget-object v4, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaComponentLock:Ljava/lang/Object;

    monitor-enter v4

    .line 906
    :try_start_6f
    iget-object v5, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 907
    monitor-exit v4

    goto :goto_88

    :catchall_82
    move-exception p0

    monitor-exit v4
    :try_end_84
    .catchall {:try_start_6f .. :try_end_84} :catchall_82

    throw p0

    :catchall_85
    move-exception p0

    .line 903
    :try_start_86
    monitor-exit v4
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw p0

    :cond_88
    :goto_88
    add-int/lit8 v2, v2, -0x1

    goto :goto_36

    :cond_8b
    :goto_8b
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 912
    :cond_8e
    iget-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 913
    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    return-void

    :catchall_98
    move-exception p0

    .line 884
    :try_start_99
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw p0
.end method

.method public recomputeComponentVisibilityIfNeeded(Lcom/android/server/pm/snapshot/PackageDataSnapshot;)V
    .registers 3

    .line 857
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 858
    invoke-interface {p1}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppsFilterImpl;->recomputeComponentVisibility(Landroid/util/ArrayMap;)V

    :cond_f
    return-void
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .registers 2

    .line 100
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public final removeAppIdFromVisibilityCache(I)V
    .registers 5

    .line 633
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 634
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 635
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-ne v2, p1, :cond_1f

    .line 636
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->removeAt(I)V

    add-int/lit8 v1, v1, -0x1

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 644
    :cond_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public removePackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;Z)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    .line 936
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v10

    .line 937
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v11

    .line 938
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getAllSharedUsers()Ljava/util/Collection;

    move-result-object v1

    .line 939
    array-length v2, v11

    .line 941
    iget-object v3, v0, Lcom/android/server/pm/AppsFilterLocked;->mImplicitlyQueryableLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v12, 0x0

    move v4, v12

    :goto_16
    const/4 v5, 0x1

    if-ge v4, v2, :cond_67

    .line 943
    :try_start_19
    aget-object v6, v11, v4

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 944
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    invoke-static {v6, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 945
    iget-object v7, v0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v7, v6}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 946
    iget-object v7, v0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v7}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v7

    sub-int/2addr v7, v5

    :goto_31
    if-ltz v7, :cond_43

    .line 947
    iget-object v8, v0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v8, v7}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v13

    .line 948
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 947
    invoke-virtual {v8, v13, v14}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)Z

    add-int/lit8 v7, v7, -0x1

    goto :goto_31

    :cond_43
    if-eqz p3, :cond_46

    goto :goto_64

    .line 955
    :cond_46
    iget-object v7, v0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v7, v6}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 956
    iget-object v7, v0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v7}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v7

    sub-int/2addr v7, v5

    :goto_52
    if-ltz v7, :cond_64

    .line 957
    iget-object v5, v0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 958
    invoke-virtual {v5, v7}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 957
    invoke-virtual {v5, v8, v13}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)Z

    add-int/lit8 v7, v7, -0x1

    goto :goto_52

    :cond_64
    :goto_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 961
    :cond_67
    monitor-exit v3
    :try_end_68
    .catchall {:try_start_19 .. :try_end_68} :catchall_221

    .line 962
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_9e

    .line 963
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaComponentLock:Ljava/lang/Object;

    monitor-enter v2

    .line 964
    :try_start_73
    iget-object v3, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 965
    iget-object v3, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_83
    if-ltz v3, :cond_99

    .line 966
    iget-object v4, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v6

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_83

    .line 968
    :cond_99
    monitor-exit v2

    goto :goto_9e

    :catchall_9b
    move-exception v0

    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_73 .. :try_end_9d} :catchall_9b

    throw v0

    .line 970
    :cond_9e
    :goto_9e
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaPackageLock:Ljava/lang/Object;

    monitor-enter v2

    .line 971
    :try_start_a1
    iget-object v3, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 972
    iget-object v3, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_b1
    if-ltz v3, :cond_c7

    .line 973
    iget-object v4, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v6

    .line 974
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 973
    invoke-virtual {v4, v6, v7}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_b1

    .line 976
    :cond_c7
    monitor-exit v2
    :try_end_c8
    .catchall {:try_start_a1 .. :try_end_c8} :catchall_21e

    .line 978
    iget-object v3, v0, Lcom/android/server/pm/AppsFilterLocked;->mQueryableViaUsesLibraryLock:Ljava/lang/Object;

    monitor-enter v3

    .line 979
    :try_start_cb
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 980
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v2

    sub-int/2addr v2, v5

    :goto_db
    if-ltz v2, :cond_f1

    .line 981
    iget-object v4, v0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v4, v2}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v6

    .line 982
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 981
    invoke-virtual {v4, v6, v7}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_db

    .line 984
    :cond_f1
    monitor-exit v3
    :try_end_f2
    .catchall {:try_start_cb .. :try_end_f2} :catchall_21b

    .line 986
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterLocked;->mForceQueryableLock:Ljava/lang/Object;

    monitor-enter v2

    .line 987
    :try_start_f5
    iget-object v3, v0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    .line 988
    monitor-exit v2
    :try_end_103
    .catchall {:try_start_f5 .. :try_end_103} :catchall_218

    .line 991
    iget-object v3, v0, Lcom/android/server/pm/AppsFilterLocked;->mProtectedBroadcastsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 992
    :try_start_106
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_138

    .line 993
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_138

    .line 994
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 995
    new-instance v4, Landroid/util/ArraySet;

    iget-object v6, v0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 996
    invoke-virtual {v6}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 997
    invoke-virtual {v0, v10, v2}, Lcom/android/server/pm/AppsFilterImpl;->collectProtectedBroadcasts(Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 998
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v2, v4}, Lcom/android/server/utils/WatchedArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    xor-int/2addr v2, v5

    goto :goto_139

    :cond_138
    move v2, v12

    .line 1000
    :goto_139
    monitor-exit v3
    :try_end_13a
    .catchall {:try_start_106 .. :try_end_13a} :catchall_215

    if-eqz v2, :cond_141

    .line 1003
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1006
    :cond_141
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/om/OverlayReferenceMapper;->removePkg(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v13

    .line 1007
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v2, v9, v5}, Lcom/android/server/pm/FeatureConfig;->updatePackageState(Lcom/android/server/pm/pkg/PackageStateInternal;Z)V

    .line 1013
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v2

    if-eqz v2, :cond_178

    .line 1015
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getSharedUserAppId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/AppsFilterBase;->getSharedUserPackages(ILjava/util/Collection;)Landroid/util/ArraySet;

    move-result-object v2

    .line 1016
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_163
    if-ltz v3, :cond_178

    .line 1017
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_16c

    goto :goto_175

    .line 1021
    :cond_16c
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1020
    invoke-virtual {v0, v4, v10}, Lcom/android/server/pm/AppsFilterImpl;->addPackageInternal(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;)Landroid/util/ArraySet;

    :goto_175
    add-int/lit8 v3, v3, -0x1

    goto :goto_163

    .line 1025
    :cond_178
    iget-boolean v2, v0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-eqz v2, :cond_1f8

    .line 1026
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/AppsFilterImpl;->removeAppIdFromVisibilityCache(I)V

    .line 1028
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v2

    if-eqz v2, :cond_1c7

    .line 1030
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getSharedUserAppId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/AppsFilterBase;->getSharedUserPackages(ILjava/util/Collection;)Landroid/util/ArraySet;

    move-result-object v14

    .line 1031
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v5

    move v15, v1

    :goto_197
    if-ltz v15, :cond_1c7

    .line 1033
    invoke-virtual {v14, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-ne v4, v9, :cond_1a3

    goto :goto_1bd

    .line 1037
    :cond_1a3
    iget-object v8, v0, Lcom/android/server/pm/AppsFilterLocked;->mCacheLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1039
    :try_start_1a6
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v7, -0x1

    .line 1040
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v16
    :try_end_1af
    .catchall {:try_start_1a6 .. :try_end_1af} :catchall_1c0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v10

    move-object v6, v11

    move-object/from16 v17, v8

    move/from16 v8, v16

    .line 1038
    :try_start_1b9
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    .line 1041
    monitor-exit v17

    :goto_1bd
    add-int/lit8 v15, v15, -0x1

    goto :goto_197

    :catchall_1c0
    move-exception v0

    move-object/from16 v17, v8

    :goto_1c3
    monitor-exit v17
    :try_end_1c4
    .catchall {:try_start_1b9 .. :try_end_1c4} :catchall_1c5

    throw v0

    :catchall_1c5
    move-exception v0

    goto :goto_1c3

    :cond_1c7
    if-eqz v13, :cond_211

    .line 1046
    :goto_1c9
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v12, v1, :cond_211

    .line 1047
    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1048
    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-nez v4, :cond_1df

    goto :goto_1f2

    .line 1055
    :cond_1df
    iget-object v9, v0, Lcom/android/server/pm/AppsFilterLocked;->mCacheLock:Ljava/lang/Object;

    monitor-enter v9

    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 1057
    :try_start_1e4
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v10

    move-object v6, v11

    .line 1056
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    .line 1058
    monitor-exit v9

    :goto_1f2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1c9

    :catchall_1f5
    move-exception v0

    monitor-exit v9
    :try_end_1f7
    .catchall {:try_start_1e4 .. :try_end_1f7} :catchall_1f5

    throw v0

    .line 1062
    :cond_1f8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removePackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/AppsFilterImpl;->invalidateCache(Ljava/lang/String;)V

    .line 1064
    :cond_211
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    return-void

    :catchall_215
    move-exception v0

    .line 1000
    :try_start_216
    monitor-exit v3
    :try_end_217
    .catchall {:try_start_216 .. :try_end_217} :catchall_215

    throw v0

    :catchall_218
    move-exception v0

    .line 988
    :try_start_219
    monitor-exit v2
    :try_end_21a
    .catchall {:try_start_219 .. :try_end_21a} :catchall_218

    throw v0

    :catchall_21b
    move-exception v0

    .line 984
    :try_start_21c
    monitor-exit v3
    :try_end_21d
    .catchall {:try_start_21c .. :try_end_21d} :catchall_21b

    throw v0

    :catchall_21e
    move-exception v0

    .line 976
    :try_start_21f
    monitor-exit v2
    :try_end_220
    .catchall {:try_start_21f .. :try_end_220} :catchall_21e

    throw v0

    :catchall_221
    move-exception v0

    .line 961
    :try_start_222
    monitor-exit v3
    :try_end_223
    .catchall {:try_start_222 .. :try_end_223} :catchall_221

    throw v0
.end method

.method public final removeShouldFilterCacheForUser(I)V
    .registers 7

    .line 803
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 805
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->keys()[I

    move-result-object v1

    .line 806
    array-length v2, v1

    const/4 v3, 0x0

    .line 807
    invoke-static {p1, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    if-ltz v4, :cond_16

    goto :goto_17

    :cond_16
    not-int v4, v4

    :goto_17
    if-ge v4, v2, :cond_75

    .line 809
    aget v2, v1, v4

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eq v2, p1, :cond_22

    goto :goto_75

    :cond_22
    add-int/lit8 v2, p1, 0x1

    .line 814
    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-ltz v2, :cond_33

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_33
    not-int v2, v2

    :goto_34
    if-ge v4, v2, :cond_4d

    add-int/lit8 v3, v2, -0x1

    .line 816
    aget v1, v1, v3

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v1, p1, :cond_41

    goto :goto_4d

    .line 821
    :cond_41
    iget-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {p1, v4, v2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->removeRange(II)V

    .line 822
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->compact()V

    .line 823
    monitor-exit v0

    return-void

    :cond_4d
    :goto_4d
    const-string p0, "AppsFilter"

    .line 817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove should filter cache for user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", fromIndex="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", toIndex="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    monitor-exit v0

    return-void

    :cond_75
    :goto_75
    const-string p0, "AppsFilter"

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove should filter cache for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", fromIndex="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    monitor-exit v0

    return-void

    :catchall_95
    move-exception p0

    .line 823
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_3 .. :try_end_97} :catchall_95

    throw p0
.end method

.method public snapshot()Lcom/android/server/pm/AppsFilterSnapshot;
    .registers 1

    .line 203
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/AppsFilterSnapshot;

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 79
    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilterImpl;->snapshot()Lcom/android/server/pm/AppsFilterSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .registers 2

    .line 111
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public final updateEntireShouldFilterCache(Lcom/android/server/pm/snapshot/PackageDataSnapshot;I)V
    .registers 8

    .line 649
    invoke-interface {p1}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    .line 650
    invoke-interface {p1}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v2, 0x0

    .line 652
    :goto_9
    array-length v3, v1

    const/16 v4, -0x2710

    if-ge v2, v3, :cond_18

    .line 653
    aget-object v3, v1, v2

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne p2, v3, :cond_15

    goto :goto_19

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    move p2, v4

    :goto_19
    if-ne p2, v4, :cond_23

    const-string p2, "AppsFilter"

    const-string v2, "We encountered a new user that isn\'t a member of known users, updating the whole cache"

    .line 659
    invoke-static {p2, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    .line 663
    :cond_23
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCacheInner(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 665
    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    return-void
.end method

.method public final updateEntireShouldFilterCacheAsync(Landroid/content/pm/PackageManagerInternal;)V
    .registers 4

    const-wide/16 v0, 0x2710

    .line 686
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCacheAsync(Landroid/content/pm/PackageManagerInternal;J)V

    return-void
.end method

.method public final updateEntireShouldFilterCacheAsync(Landroid/content/pm/PackageManagerInternal;J)V
    .registers 6

    .line 691
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AppsFilterImpl;Landroid/content/pm/PackageManagerInternal;J)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final updateEntireShouldFilterCacheInner(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;[",
            "Landroid/content/pm/UserInfo;",
            "I)V"
        }
    .end annotation

    .line 672
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    if-ne p4, v1, :cond_b

    .line 674
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->clear()V

    .line 676
    :cond_b
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    array-length v2, p3

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->setCapacity(I)V

    .line 677
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1c
    if-ltz v1, :cond_32

    const/4 v4, 0x0

    .line 679
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move v9, v1

    .line 678
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    .line 682
    :cond_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public final updateShouldFilterCacheForPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/String;)V
    .registers 12

    .line 744
    iget-boolean v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-nez v0, :cond_5

    return-void

    .line 748
    :cond_5
    invoke-interface {p1}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v5

    .line 749
    invoke-interface {p1}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 750
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v3, 0x0

    .line 752
    :try_start_11
    invoke-virtual {v5, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    const/4 v7, -0x1

    .line 753
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v8

    move-object v1, p0

    move-object v2, p1

    .line 751
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    .line 754
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_27

    .line 755
    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    return-void

    :catchall_27
    move-exception p0

    .line 754
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final updateShouldFilterCacheForPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCacheLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;[",
            "Landroid/content/pm/UserInfo;",
            "II)V"
        }
    .end annotation

    .line 763
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p7, v0}, Ljava/lang/Math;->min(II)I

    move-result p7

    :goto_a
    if-ltz p7, :cond_4d

    .line 764
    invoke-virtual {p4, p7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 765
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    if-ne v1, v2, :cond_1d

    goto :goto_4a

    .line 769
    :cond_1d
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eq v1, p2, :cond_4a

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-ne v1, p2, :cond_2a

    goto :goto_4a

    :cond_2a
    const/4 v1, -0x1

    if-ne p6, v1, :cond_41

    const/4 v1, 0x0

    move v7, v1

    .line 774
    :goto_2f
    array-length v1, p5

    if-ge v7, v1, :cond_4a

    .line 775
    aget-object v1, p5, v7

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p5

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForUser(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[Landroid/content/pm/UserInfo;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    :cond_41
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p5

    move-object v5, v0

    move v6, p6

    .line 779
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForUser(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[Landroid/content/pm/UserInfo;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    :cond_4a
    :goto_4a
    add-int/lit8 p7, p7, -0x1

    goto :goto_a

    :cond_4d
    return-void
.end method

.method public final updateShouldFilterCacheForUser(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[Landroid/content/pm/UserInfo;Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .registers 19
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCacheLock"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p3

    const/4 v0, 0x0

    move v8, v0

    .line 789
    :goto_5
    array-length v0, v7

    if-ge v8, v0, :cond_3f

    .line 790
    aget-object v0, v7, v8

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    .line 791
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    move/from16 v9, p5

    invoke-static {v9, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    .line 792
    invoke-interface/range {p4 .. p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-static {v5, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v11

    move-object v0, p0

    move-object v1, p1

    move v2, v10

    move-object v3, p2

    move-object/from16 v4, p4

    .line 793
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationInternal(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v12

    move v2, v11

    move-object/from16 v3, p4

    move-object v4, p2

    move/from16 v5, p5

    .line 795
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationInternal(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v0

    .line 797
    iget-object v1, v6, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1, v10, v11, v12}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->put(IIZ)V

    .line 798
    iget-object v1, v6, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1, v11, v10, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->put(IIZ)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_3f
    return-void
.end method
