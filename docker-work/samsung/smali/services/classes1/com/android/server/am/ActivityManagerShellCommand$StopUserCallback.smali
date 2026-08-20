.class public final Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;
.super Landroid/app/IStopUserCallback$Stub;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StopUserCallback"
.end annotation


# instance fields
.field public mFinished:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 2142
    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    const/4 v0, 0x0

    .line 2143
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->mFinished:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized userStopAborted(I)V
    .registers 2

    monitor-enter p0

    const/4 p1, 0x1

    .line 2161
    :try_start_2
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->mFinished:Z

    .line 2162
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 2163
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized userStopped(I)V
    .registers 2

    monitor-enter p0

    const/4 p1, 0x1

    .line 2155
    :try_start_2
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->mFinished:Z

    .line 2156
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 2157
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized waitForFinish()V
    .registers 3

    monitor-enter p0

    .line 2147
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->mFinished:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_8} :catch_d
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    goto :goto_1

    .line 2151
    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    goto :goto_14

    :catch_d
    move-exception v0

    .line 2149
    :try_start_e
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_b

    :goto_14
    monitor-exit p0

    throw v0
.end method
