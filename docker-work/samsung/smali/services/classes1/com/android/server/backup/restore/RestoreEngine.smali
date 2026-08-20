.class public abstract Lcom/android/server/backup/restore/RestoreEngine;
.super Ljava/lang/Object;
.source "RestoreEngine.java"


# static fields
.field public static final SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "RestoreEngine"

.field public static final TARGET_FAILURE:I = -0x2

.field public static final TRANSPORT_FAILURE:I = -0x3


# instance fields
.field public final mResult:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public getResult()I
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public isRunning()Z
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public setResult(I)V
    .registers 2

    .line 64
    iget-object p0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public setRunning(Z)V
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 42
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 43
    iget-object p0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 44
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public waitForResult()I
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 49
    :catch_3
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/backup/restore/RestoreEngine;->isRunning()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_15

    if-eqz v1, :cond_f

    .line 51
    :try_start_9
    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_e} :catch_3
    .catchall {:try_start_9 .. :try_end_e} :catchall_15

    goto :goto_3

    .line 55
    :cond_f
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_15

    .line 56
    invoke-virtual {p0}, Lcom/android/server/backup/restore/RestoreEngine;->getResult()I

    move-result p0

    return p0

    :catchall_15
    move-exception p0

    .line 55
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method
