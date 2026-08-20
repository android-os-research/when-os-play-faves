.class public abstract Lcom/android/server/pm/AppsFilterLocked;
.super Lcom/android/server/pm/AppsFilterBase;
.source "AppsFilterLocked.java"


# instance fields
.field public final mCacheLock:Ljava/lang/Object;

.field public final mForceQueryableLock:Ljava/lang/Object;

.field public final mImplicitlyQueryableLock:Ljava/lang/Object;

.field public final mProtectedBroadcastsLock:Ljava/lang/Object;

.field public final mQueriesViaComponentLock:Ljava/lang/Object;

.field public final mQueriesViaPackageLock:Ljava/lang/Object;

.field public final mQueryableViaUsesLibraryLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterBase;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mForceQueryableLock:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaPackageLock:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaComponentLock:Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mImplicitlyQueryableLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueryableViaUsesLibraryLock:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mProtectedBroadcastsLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mCacheLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dumpForceQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
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

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mForceQueryableLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpForceQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 100
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
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

    .line 114
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaComponentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaComponent(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 116
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public dumpQueriesViaImplicitlyQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;[ILcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 6
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

    .line 122
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mImplicitlyQueryableLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaImplicitlyQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;[ILcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 124
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
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

    .line 106
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaPackageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaPackage(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 108
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
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

    .line 130
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueryableViaUsesLibraryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaUsesLibrary(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 132
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public isForceQueryable(I)Z
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mForceQueryableLock:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_3
    invoke-super {p0, p1}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 50
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public isImplicitlyQueryable(II)Z
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mImplicitlyQueryableLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/AppsFilterBase;->isImplicitlyQueryable(II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 71
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public isQueryableViaComponent(II)Z
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaComponentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaComponent(II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 64
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public isQueryableViaPackage(II)Z
    .registers 4

    .line 55
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaPackageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaPackage(II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 57
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public isQueryableViaUsesLibrary(II)Z
    .registers 4

    .line 83
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueryableViaUsesLibraryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaUsesLibrary(II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 85
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public isRetainedImplicitlyQueryable(II)Z
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mImplicitlyQueryableLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/AppsFilterBase;->isRetainedImplicitlyQueryable(II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 78
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public shouldFilterApplicationUsingCache(III)Z
    .registers 5

    .line 90
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationUsingCache(III)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 92
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method
