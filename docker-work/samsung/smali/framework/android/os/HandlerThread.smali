.class public Landroid/os/HandlerThread;
.super Ljava/lang/Thread;
.source "HandlerThread.java"


# instance fields
.field private greylist-max-o mHandler:Landroid/os/Handler;

.field greylist-max-o mLooper:Landroid/os/Looper;

.field greylist-max-o mPriority:I

.field greylist-max-o mTid:I


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/HandlerThread;->mPriority:I

    .line 37
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    .line 47
    iput p2, p0, Landroid/os/HandlerThread;->mPriority:I

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist getLooper()Landroid/os/Looper;
    .registers 3

    .line 78
    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_8

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_8
    const/4 v0, 0x0

    .line 85
    .local v0, "wasInterrupted":Z
    monitor-enter p0

    .line 86
    :goto_a
    :try_start_a
    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/os/HandlerThread;->mLooper:Landroid/os/Looper;
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_28

    if-nez v1, :cond_1b

    .line 88
    :try_start_14
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_18
    .catchall {:try_start_14 .. :try_end_17} :catchall_28

    .line 91
    :goto_17
    goto :goto_a

    .line 89
    :catch_18
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_17

    .line 93
    :cond_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_28

    .line 99
    if-eqz v0, :cond_25

    .line 100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 103
    :cond_25
    iget-object v1, p0, Landroid/os/HandlerThread;->mLooper:Landroid/os/Looper;

    return-object v1

    .line 93
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public greylist-max-o getThreadHandler()Landroid/os/Handler;
    .registers 3

    .line 112
    iget-object v0, p0, Landroid/os/HandlerThread;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/os/HandlerThread;->mHandler:Landroid/os/Handler;

    .line 115
    :cond_f
    iget-object v0, p0, Landroid/os/HandlerThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public whitelist getThreadId()I
    .registers 2

    .line 177
    iget v0, p0, Landroid/os/HandlerThread;->mTid:I

    return v0
.end method

.method protected whitelist onLooperPrepared()V
    .registers 1

    .line 55
    return-void
.end method

.method public whitelist quit()Z
    .registers 3

    .line 138
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 139
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_b

    .line 140
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 141
    const/4 v1, 0x1

    return v1

    .line 143
    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist quitSafely()Z
    .registers 3

    .line 165
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 166
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_b

    .line 167
    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 168
    const/4 v1, 0x1

    return v1

    .line 170
    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api run()V
    .registers 2

    .line 59
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    .line 60
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 61
    monitor-enter p0

    .line 62
    :try_start_a
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HandlerThread;->mLooper:Landroid/os/Looper;

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 64
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_23

    .line 65
    iget v0, p0, Landroid/os/HandlerThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 66
    invoke-virtual {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 67
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    .line 69
    return-void

    .line 64
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method
