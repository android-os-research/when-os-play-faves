.class public final Landroid/os/CancellationSignal;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CancellationSignal$Transport;,
        Landroid/os/CancellationSignal$OnCancelListener;
    }
.end annotation


# instance fields
.field private greylist-max-p mCancelInProgress:Z

.field private greylist-max-p mIsCanceled:Z

.field private greylist-max-p mOnCancelListener:Landroid/os/CancellationSignal$OnCancelListener;

.field private greylist-max-p mRemote:Landroid/os/ICancellationSignal;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static greylist-max-o createTransport()Landroid/os/ICancellationSignal;
    .registers 2

    .line 178
    new-instance v0, Landroid/os/CancellationSignal$Transport;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/CancellationSignal$Transport;-><init>(Landroid/os/CancellationSignal$Transport-IA;)V

    return-object v0
.end method

.method public static greylist-max-o fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;
    .registers 2
    .param p0, "transport"    # Landroid/os/ICancellationSignal;

    .line 190
    instance-of v0, p0, Landroid/os/CancellationSignal$Transport;

    if-eqz v0, :cond_a

    .line 191
    move-object v0, p0

    check-cast v0, Landroid/os/CancellationSignal$Transport;

    iget-object v0, v0, Landroid/os/CancellationSignal$Transport;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-object v0

    .line 193
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-p waitForCancelFinishedLocked()V
    .registers 2

    .line 161
    :goto_0
    iget-boolean v0, p0, Landroid/os/CancellationSignal;->mCancelInProgress:Z

    if-eqz v0, :cond_a

    .line 163
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_8

    .line 165
    :goto_7
    goto :goto_0

    .line 164
    :catch_8
    move-exception v0

    goto :goto_7

    .line 167
    :cond_a
    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .registers 5

    .line 69
    monitor-enter p0

    .line 70
    :try_start_1
    iget-boolean v0, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_7

    .line 71
    monitor-exit p0

    return-void

    .line 73
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z

    .line 74
    iput-boolean v0, p0, Landroid/os/CancellationSignal;->mCancelInProgress:Z

    .line 75
    iget-object v0, p0, Landroid/os/CancellationSignal;->mOnCancelListener:Landroid/os/CancellationSignal$OnCancelListener;

    .line 76
    .local v0, "listener":Landroid/os/CancellationSignal$OnCancelListener;
    iget-object v1, p0, Landroid/os/CancellationSignal;->mRemote:Landroid/os/ICancellationSignal;

    .line 77
    .local v1, "remote":Landroid/os/ICancellationSignal;
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_38

    .line 80
    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    .line 81
    :try_start_14
    invoke-interface {v0}, Landroid/os/CancellationSignal$OnCancelListener;->onCancel()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1a

    .line 90
    :catchall_18
    move-exception v3

    goto :goto_20

    .line 83
    :cond_1a
    :goto_1a
    if-eqz v1, :cond_2c

    .line 85
    :try_start_1c
    invoke-interface {v1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_2b
    .catchall {:try_start_1c .. :try_end_1f} :catchall_18

    .line 87
    goto :goto_2c

    .line 90
    :goto_20
    monitor-enter p0

    .line 91
    :try_start_21
    iput-boolean v2, p0, Landroid/os/CancellationSignal;->mCancelInProgress:Z

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 93
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_28

    .line 94
    throw v3

    .line 93
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2

    .line 86
    :catch_2b
    move-exception v3

    .line 90
    :cond_2c
    :goto_2c
    monitor-enter p0

    .line 91
    :try_start_2d
    iput-boolean v2, p0, Landroid/os/CancellationSignal;->mCancelInProgress:Z

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 93
    monitor-exit p0

    .line 94
    nop

    .line 95
    return-void

    .line 93
    :catchall_35
    move-exception v2

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    throw v2

    .line 77
    .end local v0    # "listener":Landroid/os/CancellationSignal$OnCancelListener;
    .end local v1    # "remote":Landroid/os/ICancellationSignal;
    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public whitelist isCanceled()Z
    .registers 2

    .line 46
    monitor-enter p0

    .line 47
    :try_start_1
    iget-boolean v0, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z

    monitor-exit p0

    return v0

    .line 48
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/CancellationSignal$OnCancelListener;

    .line 114
    monitor-enter p0

    .line 115
    :try_start_1
    invoke-direct {p0}, Landroid/os/CancellationSignal;->waitForCancelFinishedLocked()V

    .line 117
    iget-object v0, p0, Landroid/os/CancellationSignal;->mOnCancelListener:Landroid/os/CancellationSignal$OnCancelListener;

    if-ne v0, p1, :cond_a

    .line 118
    monitor-exit p0

    return-void

    .line 120
    :cond_a
    iput-object p1, p0, Landroid/os/CancellationSignal;->mOnCancelListener:Landroid/os/CancellationSignal$OnCancelListener;

    .line 121
    iget-boolean v0, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_18

    if-nez p1, :cond_13

    goto :goto_18

    .line 124
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1a

    .line 125
    invoke-interface {p1}, Landroid/os/CancellationSignal$OnCancelListener;->onCancel()V

    .line 126
    return-void

    .line 122
    :cond_18
    :goto_18
    :try_start_18
    monitor-exit p0

    return-void

    .line 124
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public greylist-max-o setRemote(Landroid/os/ICancellationSignal;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/ICancellationSignal;

    .line 142
    monitor-enter p0

    .line 143
    :try_start_1
    invoke-direct {p0}, Landroid/os/CancellationSignal;->waitForCancelFinishedLocked()V

    .line 145
    iget-object v0, p0, Landroid/os/CancellationSignal;->mRemote:Landroid/os/ICancellationSignal;

    if-ne v0, p1, :cond_a

    .line 146
    monitor-exit p0

    return-void

    .line 148
    :cond_a
    iput-object p1, p0, Landroid/os/CancellationSignal;->mRemote:Landroid/os/ICancellationSignal;

    .line 149
    iget-boolean v0, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_1a

    if-nez p1, :cond_13

    goto :goto_1a

    .line 152
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1c

    .line 154
    :try_start_14
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    .line 156
    goto :goto_19

    .line 155
    :catch_18
    move-exception v0

    .line 157
    :goto_19
    return-void

    .line 150
    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit p0

    return-void

    .line 152
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public whitelist throwIfCanceled()V
    .registers 2

    .line 57
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 60
    return-void

    .line 58
    :cond_7
    new-instance v0, Landroid/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/os/OperationCanceledException;-><init>()V

    throw v0
.end method
