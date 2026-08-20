.class public final Lcom/android/server/pm/PackageFreezer;
.super Ljava/lang/Object;
.source "PackageFreezer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mCloseGuard:Ldalvik/system/CloseGuard;

.field public final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mPackageName:Ljava/lang/String;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 47
    iput-object p1, p0, Lcom/android/server/pm/PackageFreezer;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/android/server/pm/PackageFreezer;->mPackageName:Ljava/lang/String;

    const/4 p0, 0x1

    .line 49
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p0, "close"

    .line 50
    invoke-virtual {v1, p0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;)V
    .registers 8

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 55
    iput-object p4, p0, Lcom/android/server/pm/PackageFreezer;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 56
    iput-object p1, p0, Lcom/android/server/pm/PackageFreezer;->mPackageName:Ljava/lang/String;

    .line 58
    iget-object p0, p4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter p0

    .line 59
    :try_start_17
    iget-object v1, p4, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    const/4 v2, 0x0

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 61
    iget-object v2, p4, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v1, p4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    .line 63
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_17 .. :try_end_3a} :catchall_4d

    if-eqz p1, :cond_47

    .line 65
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p1

    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;IILjava/lang/String;)V

    :cond_47
    const-string p0, "close"

    .line 67
    invoke-virtual {v0, p0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :catchall_4d
    move-exception p1

    .line 63
    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1
.end method


# virtual methods
.method public close()V
    .registers 6

    .line 82
    iget-object v0, p0, Lcom/android/server/pm/PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 83
    iget-object v0, p0, Lcom/android/server/pm/PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 84
    iget-object v0, p0, Lcom/android/server/pm/PackageFreezer;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 85
    :try_start_14
    iget-object v3, p0, Lcom/android/server/pm/PackageFreezer;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v4, p0, Lcom/android/server/pm/PackageFreezer;->mPackageName:Ljava/lang/String;

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v2

    if-lez v1, :cond_39

    .line 88
    iget-object v2, p0, Lcom/android/server/pm/PackageFreezer;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object p0, p0, Lcom/android/server/pm/PackageFreezer;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 90
    :cond_39
    iget-object v1, p0, Lcom/android/server/pm/PackageFreezer;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object p0, p0, Lcom/android/server/pm/PackageFreezer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :goto_42
    monitor-exit v0

    goto :goto_47

    :catchall_44
    move-exception p0

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_14 .. :try_end_46} :catchall_44

    throw p0

    :cond_47
    :goto_47
    return-void
.end method

.method public finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 74
    invoke-virtual {p0}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_c

    .line 76
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_c
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 77
    throw v0
.end method
