.class public abstract Lcom/android/server/pm/AppsFilterBase;
.super Ljava/lang/Object;
.source "AppsFilterBase.java"

# interfaces
.implements Lcom/android/server/pm/AppsFilterSnapshot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/AppsFilterBase$ToString;
    }
.end annotation


# static fields
.field public static final CACHE_INVALID:Z = false

.field public static final CACHE_REBUILD_DELAY_MAX_MS:I = 0x2710

.field public static final CACHE_REBUILD_DELAY_MIN_MS:I = 0x2710

.field public static final CACHE_VALID:Z = true

.field public static final DEBUG_ALLOW_ALL:Z = false

.field public static final DEBUG_LOGGING:Z = false

.field public static final DEBUG_TRACING:Z = false

.field public static final TAG:Ljava/lang/String; = "AppsFilter"


# instance fields
.field public mBackgroundHandler:Landroid/os/Handler;

.field public volatile mCacheReady:Z

.field public mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

.field public mForceQueryable:Lcom/android/server/utils/WatchedArraySet;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mForceQueryableByDevicePackageNames:[Ljava/lang/String;

.field public mForceQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public mImplicitQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

.field public mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mProtectedBroadcastsSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mQueriesViaPackageSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mQueryableViaUsesLibrarySnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mRetainedImplicitlyQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field public mShouldFilterCacheSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedSparseBooleanMatrix;",
            ">;"
        }
    .end annotation
.end field

.field public mSystemAppsQueryable:Z

.field public mSystemSigningDetails:Landroid/content/pm/SigningDetails;


# direct methods
.method public static synthetic $r8$lambda$lu5M3otBdpphG02wcBObYEz_REA(Landroid/util/SparseArray;[ILcom/android/internal/util/function/QuadFunction;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterBase;->lambda$dumpQueries$0(Landroid/util/SparseArray;[ILcom/android/internal/util/function/QuadFunction;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 196
    iput-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    .line 200
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/PrintWriter;",
            "TT;",
            "Landroid/util/ArraySet<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_48

    .line 811
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_48

    if-eqz p1, :cond_10

    .line 812
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 813
    :cond_10
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p3

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_21
    :goto_21
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_48

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    if-eqz p1, :cond_33

    .line 815
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 816
    :cond_33
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    if-nez p5, :cond_40

    goto :goto_44

    .line 817
    :cond_40
    invoke-interface {p5, p3}, Lcom/android/server/pm/AppsFilterBase$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_44
    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_21

    :cond_48
    return-void
.end method

.method public static dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 783
    :goto_1
    invoke-virtual {p2}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4f

    .line 784
    invoke-virtual {p2, v0}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 785
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v4, 0x0

    .line 788
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/server/utils/WatchedSparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v5

    if-nez p4, :cond_25

    .line 790
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    .line 791
    :cond_25
    invoke-interface {p4, v1}, Lcom/android/server/pm/AppsFilterBase$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_29
    move-object v6, v1

    move-object v3, p0

    move-object v7, p3

    move-object v8, p4

    .line 787
    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/AppsFilterBase;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    goto :goto_4c

    .line 795
    :cond_31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/server/utils/WatchedSparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v5

    if-nez p4, :cond_40

    .line 797
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    .line 798
    :cond_40
    invoke-interface {p4, v1}, Lcom/android/server/pm/AppsFilterBase$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_44
    move-object v6, v1

    move-object v3, p0

    move-object v4, p1

    move-object v7, p3

    move-object v8, p4

    .line 794
    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/AppsFilterBase;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    :goto_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4f
    return-void
.end method

.method public static synthetic lambda$dumpQueries$0(Landroid/util/SparseArray;[ILcom/android/internal/util/function/QuadFunction;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 13

    .line 704
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_7e

    .line 706
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 707
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, 0x0

    .line 709
    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_1c
    if-nez v2, :cond_39

    if-ge v5, v3, :cond_39

    .line 710
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget v6, p1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 711
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 710
    invoke-interface {p2, v2, v6, v7, v8}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_39
    if-nez v2, :cond_53

    .line 714
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[app id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " not installed]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_51
    move-object v0, p1

    goto :goto_77

    .line 716
    :cond_53
    array-length p1, v2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_5a

    aget-object p1, v2, v4

    goto :goto_51

    .line 717
    :cond_5a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-static {p2, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_51

    .line 719
    :goto_77
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7e
    return-object v0
.end method

.method public static log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    .registers 5

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "interaction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_10

    const-string/jumbo p0, "system"

    .line 679
    :cond_10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " -> "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppsFilter"

    .line 678
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public canQueryPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .registers 6

    .line 658
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_e

    return v1

    .line 664
    :cond_e
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {p0, p1}, Lcom/android/server/pm/FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result p0

    if-nez p0, :cond_17

    return v1

    .line 668
    :cond_17
    invoke-static {p1}, Lcom/android/server/pm/AppsFilterUtils;->requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result p0

    if-eqz p0, :cond_1e

    return v1

    .line 672
    :cond_1e
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getQueriesPackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_33

    .line 673
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getQueriesPackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    :goto_34
    return v1
.end method

.method public dumpForceQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "  queries via forceQueryable:"

    .line 742
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object v2

    const-string v3, "forceQueryable"

    const-string v4, "  "

    move-object v0, p1

    move-object v1, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterBase;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    return-void
.end method

.method public dumpQueries(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/DumpState;[ILcom/android/internal/util/function/QuadFunction;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/DumpState;",
            "[I",
            "Lcom/android/internal/util/function/QuadFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 702
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 703
    new-instance v1, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p4, p5}, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;[ILcom/android/internal/util/function/QuadFunction;)V

    .line 723
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p5, "Queries:"

    .line 724
    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p3}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    .line 726
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {p3}, Lcom/android/server/pm/FeatureConfig;->isGloballyEnabled()Z

    move-result p3

    if-nez p3, :cond_23

    const-string p0, "  DISABLED"

    .line 727
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 732
    :cond_23
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "  system apps queryable: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p5, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemAppsQueryable:Z

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpForceQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 734
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaPackage(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 735
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaComponent(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 736
    invoke-virtual {p0, p1, p2, p4, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaImplicitlyQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;[ILcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 737
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaUsesLibrary(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    return-void
.end method

.method public dumpQueriesViaComponent(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "  queries via component:"

    .line 755
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 756
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v0, "    "

    invoke-static {p1, p2, p0, v0, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    return-void
.end method

.method public dumpQueriesViaImplicitlyQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;[ILcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "[I",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "  queryable via interaction:"

    .line 761
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    array-length v0, p3

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_4d

    aget v2, p3, v1

    const-string v3, "    User "

    .line 763
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-nez p2, :cond_23

    move-object v4, v3

    goto :goto_2f

    .line 765
    :cond_23
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2f
    iget-object v5, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v6, "      "

    .line 764
    invoke-static {p1, v4, v5, v6, p4}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    if-nez p2, :cond_39

    goto :goto_45

    .line 768
    :cond_39
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_45
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 767
    invoke-static {p1, v3, v2, v6, p4}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4d
    return-void
.end method

.method public dumpQueriesViaPackage(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "  queries via package name:"

    .line 749
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 750
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v0, "    "

    invoke-static {p1, p2, p0, v0, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    return-void
.end method

.method public dumpQueriesViaUsesLibrary(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "  queryable via uses-library:"

    .line 775
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 776
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v0, "    "

    invoke-static {p1, p2, p0, v0, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    return-void
.end method

.method public getSharedUserPackages(ILjava/util/Collection;)Landroid/util/ArraySet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;)",
            "Landroid/util/ArraySet<",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 685
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/SharedUserSetting;

    .line 686
    iget v0, p2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    if-eq v0, p1, :cond_15

    goto :goto_4

    .line 689
    :cond_15
    invoke-virtual {p2}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p0

    return-object p0

    .line 691
    :cond_1a
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0
.end method

.method public getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "[I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 263
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    move-object/from16 v8, p0

    invoke-virtual {v8, v1}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_10

    return-object v9

    .line 267
    :cond_10
    new-instance v1, Landroid/util/SparseArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v10, 0x0

    move v11, v10

    .line 268
    :goto_18
    array-length v2, v0

    if-ge v11, v2, :cond_90

    .line 269
    aget v12, v0, v11

    .line 270
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v13

    new-array v14, v13, [I

    .line 273
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v15, v2

    move-object/from16 v16, v9

    move v7, v10

    :goto_2d
    if-ltz v15, :cond_82

    move-object/from16 v6, p4

    .line 274
    invoke-virtual {v6, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 275
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    const/16 v2, 0x2710

    if-ge v4, v2, :cond_43

    :goto_40
    move v4, v10

    move v10, v7

    goto :goto_7c

    .line 279
    :cond_43
    invoke-static {v14, v10, v7, v4}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v3

    if-ltz v3, :cond_4a

    goto :goto_40

    .line 283
    :cond_4a
    invoke-static {v12, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v17

    move-object/from16 v2, p0

    move v9, v3

    move-object/from16 v3, p1

    move/from16 v18, v4

    move/from16 v4, v17

    move-object/from16 v6, p2

    move v10, v7

    move v7, v12

    .line 284
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v2

    if-nez v2, :cond_7b

    if-nez v16, :cond_66

    .line 287
    new-array v2, v13, [I

    goto :goto_68

    :cond_66
    move-object/from16 v2, v16

    :goto_68
    not-int v3, v9

    sub-int v7, v10, v3

    const/4 v4, 0x0

    .line 290
    invoke-static {v14, v3, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    aput v18, v14, v3

    add-int/lit8 v3, v3, 0x1

    .line 292
    invoke-static {v2, v4, v14, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v10, 0x1

    move-object/from16 v16, v2

    goto :goto_7d

    :cond_7b
    const/4 v4, 0x0

    :goto_7c
    move v7, v10

    :goto_7d
    add-int/lit8 v15, v15, -0x1

    move v10, v4

    const/4 v9, 0x0

    goto :goto_2d

    :cond_82
    move v4, v10

    move v10, v7

    .line 296
    invoke-static {v14, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    move v10, v4

    const/4 v9, 0x0

    goto :goto_18

    :cond_90
    return-object v1
.end method

.method public getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILcom/android/server/utils/WatchedArrayMap;)Landroid/util/SparseArray;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "[I",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .line 310
    invoke-virtual {p4}, Lcom/android/server/utils/WatchedArrayMap;->untrackedStorage()Landroid/util/ArrayMap;

    move-result-object p4

    .line 309
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public isForceQueryable(I)Z
    .registers 2

    .line 203
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isImplicitlyQueryable(II)Z
    .registers 3

    .line 215
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isQueryableViaComponent(II)Z
    .registers 3

    .line 211
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
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

    const/4 p1, 0x1

    if-eqz p2, :cond_16

    .line 236
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p3

    if-eqz p3, :cond_35

    .line 237
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {p2, p4, p0}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result p0

    if-eqz p0, :cond_35

    return p1

    .line 242
    :cond_16
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p2

    sub-int/2addr p2, p1

    :goto_1b
    if-ltz p2, :cond_35

    .line 244
    invoke-virtual {p3, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p5

    if-eqz p5, :cond_32

    .line 245
    iget-object p6, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {p5, p4, p6}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result p5

    if-eqz p5, :cond_32

    return p1

    :cond_32
    add-int/lit8 p2, p2, -0x1

    goto :goto_1b

    :cond_35
    const/4 p0, 0x0

    return p0
.end method

.method public isQueryableViaPackage(II)Z
    .registers 3

    .line 207
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isQueryableViaUsesLibrary(II)Z
    .registers 3

    .line 223
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isRetainedImplicitlyQueryable(II)Z
    .registers 3

    .line 219
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
    .registers 10

    .line 325
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    const/4 v2, 0x0

    if-lt v0, v1, :cond_5b

    .line 327
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    if-lt v3, v1, :cond_5b

    .line 328
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    if-ne v0, v1, :cond_16

    goto :goto_5b

    .line 330
    :cond_16
    invoke-static {v0}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_37

    .line 331
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    .line 332
    invoke-static {p5, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    .line 334
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    move-result p3

    if-nez p3, :cond_36

    .line 335
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/AppsFilterBase;->isImplicitlyQueryable(II)Z

    move-result p0

    if-nez p0, :cond_36

    move v2, v3

    :cond_36
    return v2

    .line 337
    :cond_37
    iget-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-eqz v1, :cond_46

    .line 339
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    .line 338
    invoke-virtual {p0, p2, p1, p5}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationUsingCache(III)Z

    move-result p1

    if-nez p1, :cond_4d

    return v2

    .line 344
    :cond_46
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationInternal(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result p1

    if-nez p1, :cond_4d

    return v2

    .line 349
    :cond_4d
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {p0, v0}, Lcom/android/server/pm/FeatureConfig;->isLoggingEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_5a

    const-string p0, "BLOCKED"

    .line 350
    invoke-static {p3, p4, p0}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_0 .. :try_end_5a} :catchall_5c

    :cond_5a
    return v3

    :cond_5b
    :goto_5b
    return v2

    :catchall_5c
    move-exception p0

    .line 357
    throw p0
.end method

.method public shouldFilterApplicationInternal(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
    .registers 23

    move-object/from16 v0, p0

    move/from16 v8, p2

    move-object/from16 v1, p3

    move/from16 v9, p5

    .line 383
    :try_start_8
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v2}, Lcom/android/server/pm/FeatureConfig;->isGloballyEnabled()Z

    move-result v2

    const/4 v10, 0x0

    if-nez v2, :cond_12

    return v10

    :cond_12
    const/4 v11, 0x1

    if-nez v1, :cond_2c

    const-string v0, "AppsFilter"

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No setting found for non system uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    .line 398
    :cond_2c
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 400
    instance-of v2, v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    const/4 v3, 0x0

    if-eqz v2, :cond_50

    .line 401
    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 402
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 405
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getSharedUserAppId()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getAllSharedUsers()Ljava/util/Collection;

    move-result-object v2

    .line 404
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/AppsFilterBase;->getSharedUserPackages(ILjava/util/Collection;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_59

    :cond_4e
    move-object v3, v1

    goto :goto_59

    .line 412
    :cond_50
    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    .line 413
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v1

    .line 412
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :goto_59
    move-object v13, v3

    if-eqz v13, :cond_6f

    .line 420
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_8e

    iget-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    .line 421
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v1

    if-nez v1, :cond_8e

    return v10

    .line 428
    :cond_6f
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v11

    :goto_74
    if-ltz v1, :cond_8e

    .line 429
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_8b

    .line 430
    iget-object v3, v0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v3, v2}, Lcom/android/server/pm/FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    if-nez v2, :cond_8b

    return v10

    :cond_8b
    add-int/lit8 v1, v1, -0x1

    goto :goto_74

    :cond_8e
    if-eqz v13, :cond_96

    .line 444
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    :goto_94
    move v14, v1

    goto :goto_a1

    .line 447
    :cond_96
    invoke-virtual {v12, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    goto :goto_94

    .line 449
    :goto_a1
    invoke-interface/range {p4 .. p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v15
    :try_end_a5
    .catchall {:try_start_8 .. :try_end_a5} :catchall_186

    if-ne v14, v15, :cond_a8

    return v10

    :cond_a8
    if-eqz v13, :cond_bb

    .line 465
    :try_start_aa
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_d8

    .line 466
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/AppsFilterUtils;->requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v1

    if-eqz v1, :cond_d8

    return v10

    .line 470
    :cond_bb
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v11

    :goto_c0
    if-ltz v1, :cond_d8

    .line 471
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_d5

    .line 472
    invoke-static {v2}, Lcom/android/server/pm/AppsFilterUtils;->requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2
    :try_end_d2
    .catchall {:try_start_aa .. :try_end_d2} :catchall_184

    if-eqz v2, :cond_d5

    return v10

    :cond_d5
    add-int/lit8 v1, v1, -0x1

    goto :goto_c0

    .line 485
    :cond_d8
    :try_start_d8
    invoke-interface/range {p4 .. p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v16

    if-nez v16, :cond_ea

    const-wide/16 v0, 0x2000

    move-object/from16 v2, p4

    .line 487
    invoke-static {v2, v0, v1, v9}, Lcom/android/server/pm/PackageManagerSamsungUtils;->installedOnSdcardAsUser(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Z

    move-result v0

    if-eqz v0, :cond_e9

    return v10

    :cond_e9
    return v11

    .line 498
    :cond_ea
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isStaticSharedLibrary()Z

    move-result v1
    :try_end_ee
    .catchall {:try_start_d8 .. :try_end_ee} :catchall_186

    if-eqz v1, :cond_f1

    return v10

    .line 507
    :cond_f1
    :try_start_f1
    invoke-virtual {v0, v15}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    move-result v1
    :try_end_f5
    .catchall {:try_start_f1 .. :try_end_f5} :catchall_181

    if-eqz v1, :cond_f8

    return v10

    .line 522
    :cond_f8
    :try_start_f8
    invoke-virtual {v0, v14, v15}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaPackage(II)Z

    move-result v1
    :try_end_fc
    .catchall {:try_start_f8 .. :try_end_fc} :catchall_17e

    if-eqz v1, :cond_ff

    return v10

    .line 537
    :cond_ff
    :try_start_ff
    iget-object v1, v0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_10e

    .line 538
    invoke-virtual {v0, v14, v15}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaComponent(II)Z

    move-result v1

    if-eqz v1, :cond_121

    return v10

    .line 545
    :cond_10e
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v13

    move-object v4, v12

    move-object/from16 v5, v16

    move v6, v14

    move v7, v15

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaComponentWhenRequireRecompute(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArraySet;Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v1
    :try_end_11e
    .catchall {:try_start_ff .. :try_end_11e} :catchall_17c

    if-eqz v1, :cond_121

    return v10

    .line 564
    :cond_121
    :try_start_121
    invoke-static {v9, v15}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 565
    invoke-virtual {v0, v8, v1}, Lcom/android/server/pm/AppsFilterBase;->isImplicitlyQueryable(II)Z

    move-result v1
    :try_end_129
    .catchall {:try_start_121 .. :try_end_129} :catchall_17a

    if-eqz v1, :cond_12c

    return v10

    .line 581
    :cond_12c
    :try_start_12c
    invoke-static {v9, v15}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 582
    invoke-virtual {v0, v8, v1}, Lcom/android/server/pm/AppsFilterBase;->isRetainedImplicitlyQueryable(II)Z

    move-result v1
    :try_end_134
    .catchall {:try_start_12c .. :try_end_134} :catchall_178

    if-eqz v1, :cond_137

    return v10

    .line 599
    :cond_137
    :try_start_137
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 600
    invoke-virtual {v12}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15e

    .line 601
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v2

    move v3, v10

    :goto_146
    if-ge v3, v2, :cond_16b

    .line 603
    invoke-virtual {v12, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 604
    iget-object v5, v0, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 605
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 604
    invoke-virtual {v5, v1, v4}, Lcom/android/server/om/OverlayReferenceMapper;->isValidActor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15b

    return v10

    :cond_15b
    add-int/lit8 v3, v3, 0x1

    goto :goto_146

    .line 615
    :cond_15e
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 616
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 615
    invoke-virtual {v2, v1, v3}, Lcom/android/server/om/OverlayReferenceMapper;->isValidActor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_168
    .catchall {:try_start_137 .. :try_end_168} :catchall_176

    if-eqz v1, :cond_16b

    return v10

    .line 633
    :cond_16b
    :try_start_16b
    invoke-virtual {v0, v14, v15}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaUsesLibrary(II)Z

    move-result v0
    :try_end_16f
    .catchall {:try_start_16b .. :try_end_16f} :catchall_173

    if-eqz v0, :cond_172

    return v10

    :cond_172
    return v11

    :catchall_173
    move-exception v0

    move-object v1, v0

    .line 643
    :try_start_175
    throw v1

    :catchall_176
    move-exception v0

    .line 627
    throw v0

    :catchall_178
    move-exception v0

    .line 593
    throw v0

    :catchall_17a
    move-exception v0

    .line 575
    throw v0

    :catchall_17c
    move-exception v0

    .line 558
    throw v0

    :catchall_17e
    move-exception v0

    move-object v1, v0

    .line 532
    throw v1

    :catchall_181
    move-exception v0

    move-object v1, v0

    .line 517
    throw v1

    :catchall_184
    move-exception v0

    .line 481
    throw v0
    :try_end_186
    .catchall {:try_start_175 .. :try_end_186} :catchall_186

    :catchall_186
    move-exception v0

    .line 650
    throw v0
.end method

.method public shouldFilterApplicationUsingCache(III)Z
    .registers 7

    .line 361
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "AppsFilter"

    if-gez v0, :cond_20

    .line 363
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Encountered calling uid with no cached rules: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 367
    :cond_20
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    .line 368
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {p3, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result p3

    if-gez p3, :cond_49

    .line 370
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Encountered calling -> target with no cached rules: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 374
    :cond_49
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {p0, v0, p3}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAt(II)Z

    move-result p0

    return p0
.end method
