.class public Lcom/android/server/backup/restore/RestoreDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "RestoreDeleteObserver.java"


# instance fields
.field public final mDone:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDone"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    iget-object p1, p0, Lcom/android/server/backup/restore/RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter p1

    .line 65
    :try_start_3
    iget-object p2, p0, Lcom/android/server/backup/restore/RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 66
    iget-object p0, p0, Lcom/android/server/backup/restore/RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 67
    monitor-exit p1

    return-void

    :catchall_10
    move-exception p0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public reset()V
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 44
    :try_start_3
    iget-object p0, p0, Lcom/android/server/backup/restore/RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 45
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public waitForCompletion()V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 53
    :catch_3
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    if-nez v1, :cond_11

    .line 55
    :try_start_b
    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_3
    .catchall {:try_start_b .. :try_end_10} :catchall_13

    goto :goto_3

    .line 59
    :cond_11
    :try_start_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw p0
.end method
