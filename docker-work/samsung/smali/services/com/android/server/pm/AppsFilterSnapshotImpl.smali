.class public final Lcom/android/server/pm/AppsFilterSnapshotImpl;
.super Lcom/android/server/pm/AppsFilterBase;
.source "AppsFilterSnapshotImpl.java"


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AppsFilterImpl;)V
    .registers 4

    .line 28
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterBase;-><init>()V

    .line 29
    iget-object v0, p1, Lcom/android/server/pm/AppsFilterLocked;->mImplicitlyQueryableLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30
    :try_start_6
    iget-object v1, p1, Lcom/android/server/pm/AppsFilterBase;->mImplicitQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedSparseSetArray;

    iput-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 31
    iget-object v1, p1, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedSparseSetArray;

    iput-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 32
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_f0

    .line 33
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 34
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 35
    iget-object v1, p1, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaPackageLock:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_2c
    iget-object v0, p1, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedSparseSetArray;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 37
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_ed

    .line 38
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 39
    iget-object v0, p1, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaComponentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 40
    :try_start_41
    iget-object v1, p1, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedSparseSetArray;

    iput-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 41
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_ea

    .line 42
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 43
    iget-object v1, p1, Lcom/android/server/pm/AppsFilterLocked;->mQueryableViaUsesLibraryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_56
    iget-object v0, p1, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrarySnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedSparseSetArray;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 45
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_56 .. :try_end_61} :catchall_e7

    .line 46
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrarySnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 47
    iget-object v0, p1, Lcom/android/server/pm/AppsFilterLocked;->mForceQueryableLock:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_6b
    iget-object v1, p1, Lcom/android/server/pm/AppsFilterBase;->mForceQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedArraySet;

    iput-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    .line 49
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_6b .. :try_end_76} :catchall_e4

    .line 50
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 51
    iget-object v1, p1, Lcom/android/server/pm/AppsFilterLocked;->mProtectedBroadcastsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_80
    iget-object v0, p1, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcastsSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedArraySet;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 53
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_80 .. :try_end_8b} :catchall_e1

    .line 54
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcastsSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 55
    iget-object v0, p1, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    iget-object v0, p1, Lcom/android/server/pm/AppsFilterBase;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    array-length v1, v0

    .line 57
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    .line 59
    iget-boolean v0, p1, Lcom/android/server/pm/AppsFilterBase;->mSystemAppsQueryable:Z

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemAppsQueryable:Z

    .line 60
    iget-object v0, p1, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v0}, Lcom/android/server/pm/FeatureConfig;->snapshot()Lcom/android/server/pm/FeatureConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    .line 61
    iget-object v0, p1, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 62
    iget-object v0, p1, Lcom/android/server/pm/AppsFilterBase;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    .line 64
    iget-boolean v0, p1, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    .line 65
    iget-boolean v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-eqz v0, :cond_cf

    .line 66
    iget-object v0, p1, Lcom/android/server/pm/AppsFilterLocked;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_c0
    iget-object p1, p1, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCacheSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 68
    monitor-exit v0

    goto :goto_d6

    :catchall_cc
    move-exception p0

    monitor-exit v0
    :try_end_ce
    .catchall {:try_start_c0 .. :try_end_ce} :catchall_cc

    throw p0

    .line 71
    :cond_cf
    new-instance p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 73
    :goto_d6
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCacheSnapshot:Lcom/android/server/utils/SnapshotCache;

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mBackgroundHandler:Landroid/os/Handler;

    return-void

    :catchall_e1
    move-exception p0

    .line 53
    :try_start_e2
    monitor-exit v1
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e1

    throw p0

    :catchall_e4
    move-exception p0

    .line 49
    :try_start_e5
    monitor-exit v0
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e4

    throw p0

    :catchall_e7
    move-exception p0

    .line 45
    :try_start_e8
    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw p0

    :catchall_ea
    move-exception p0

    .line 41
    :try_start_eb
    monitor-exit v0
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ea

    throw p0

    :catchall_ed
    move-exception p0

    .line 37
    :try_start_ee
    monitor-exit v1
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    throw p0

    :catchall_f0
    move-exception p0

    .line 32
    :try_start_f1
    monitor-exit v0
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    throw p0
.end method
