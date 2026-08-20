.class final Landroid/media/AudioManager$SafeWaitObject;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeWaitObject"
.end annotation


# instance fields
.field private greylist-max-o mQuit:Z


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 4455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4456
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioManager$SafeWaitObject;->mQuit:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioManager$SafeWaitObject-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/AudioManager$SafeWaitObject;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o safeNotify()V
    .registers 2

    .line 4459
    monitor-enter p0

    .line 4460
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/media/AudioManager$SafeWaitObject;->mQuit:Z

    .line 4461
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 4462
    monitor-exit p0

    .line 4463
    return-void

    .line 4462
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public greylist-max-o safeWait(J)V
    .registers 9
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 4466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 4467
    .local v0, "timeOutTime":J
    monitor-enter p0

    .line 4468
    :goto_6
    :try_start_6
    iget-boolean v2, p0, Landroid/media/AudioManager$SafeWaitObject;->mQuit:Z

    if-nez v2, :cond_1b

    .line 4469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 4470
    .local v2, "timeToWait":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_17

    goto :goto_1b

    .line 4471
    :cond_17
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 4472
    .end local v2    # "timeToWait":J
    goto :goto_6

    .line 4473
    :cond_1b
    :goto_1b
    monitor-exit p0

    .line 4474
    return-void

    .line 4473
    :catchall_1d
    move-exception v2

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw v2
.end method
