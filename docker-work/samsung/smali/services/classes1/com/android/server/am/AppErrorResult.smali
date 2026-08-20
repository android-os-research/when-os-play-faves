.class public final Lcom/android/server/am/AppErrorResult;
.super Ljava/lang/Object;
.source "AppErrorResult.java"


# instance fields
.field public mHasResult:Z

.field public mResult:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    return-void
.end method


# virtual methods
.method public get()I
    .registers 2

    .line 29
    monitor-enter p0

    .line 30
    :catch_1
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_9

    .line 32
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_1
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    goto :goto_1

    .line 36
    :cond_9
    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_d

    .line 37
    iget p0, p0, Lcom/android/server/am/AppErrorResult;->mResult:I

    return p0

    :catchall_d
    move-exception v0

    .line 36
    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public set(I)V
    .registers 3

    .line 21
    monitor-enter p0

    const/4 v0, 0x1

    .line 22
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    .line 23
    iput p1, p0, Lcom/android/server/am/AppErrorResult;->mResult:I

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 25
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw p1
.end method
