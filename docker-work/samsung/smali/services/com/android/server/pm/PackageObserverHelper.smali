.class public Lcom/android/server/pm/PackageObserverHelper;
.super Ljava/lang/Object;
.source "PackageObserverHelper.java"


# instance fields
.field public mActiveSnapshot:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/pm/PackageManagerInternal$PackageListObserver;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageObserverHelper;->mLock:Ljava/lang/Object;

    .line 34
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageObserverHelper;->mActiveSnapshot:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public addObserver(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V
    .registers 5

    .line 39
    iget-object v0, p0, Lcom/android/server/pm/PackageObserverHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 40
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/pm/PackageObserverHelper;->mActiveSnapshot:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 41
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 42
    iput-object v1, p0, Lcom/android/server/pm/PackageObserverHelper;->mActiveSnapshot:Landroid/util/ArraySet;

    .line 43
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public notifyAdded(Ljava/lang/String;I)V
    .registers 6

    .line 56
    iget-object v0, p0, Lcom/android/server/pm/PackageObserverHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageObserverHelper;->mActiveSnapshot:Landroid/util/ArraySet;

    .line 58
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1a

    .line 59
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_19

    .line 61
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/PackageManagerInternal$PackageListObserver;->onPackageAdded(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_19
    return-void

    :catchall_1a
    move-exception p0

    .line 58
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public notifyChanged(Ljava/lang/String;I)V
    .registers 6

    .line 67
    iget-object v0, p0, Lcom/android/server/pm/PackageObserverHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageObserverHelper;->mActiveSnapshot:Landroid/util/ArraySet;

    .line 69
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1a

    .line 70
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_19

    .line 72
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/PackageManagerInternal$PackageListObserver;->onPackageChanged(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_19
    return-void

    :catchall_1a
    move-exception p0

    .line 69
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public notifyRemoved(Ljava/lang/String;I)V
    .registers 6

    .line 78
    iget-object v0, p0, Lcom/android/server/pm/PackageObserverHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageObserverHelper;->mActiveSnapshot:Landroid/util/ArraySet;

    .line 80
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1a

    .line 81
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_19

    .line 83
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/PackageManagerInternal$PackageListObserver;->onPackageRemoved(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_19
    return-void

    :catchall_1a
    move-exception p0

    .line 80
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public removeObserver(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V
    .registers 5

    .line 47
    iget-object v0, p0, Lcom/android/server/pm/PackageObserverHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/pm/PackageObserverHelper;->mActiveSnapshot:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 49
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 50
    iput-object v1, p0, Lcom/android/server/pm/PackageObserverHelper;->mActiveSnapshot:Landroid/util/ArraySet;

    .line 51
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method
