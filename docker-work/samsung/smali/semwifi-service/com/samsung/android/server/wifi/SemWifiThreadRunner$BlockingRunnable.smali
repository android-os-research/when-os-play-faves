.class final Lcom/samsung/android/server/wifi/SemWifiThreadRunner$BlockingRunnable;
.super Ljava/lang/Object;
.source "SemWifiThreadRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiThreadRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BlockingRunnable"
.end annotation


# instance fields
.field private mDone:Z

.field private final mTask:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner$BlockingRunnable;->mTask:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public postAndWait(Landroid/os/Handler;J)Z
    .registers 9

    .line 193
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 197
    :cond_8
    monitor-enter p0

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-lez p1, :cond_28

    .line 199
    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p2

    .line 200
    :catch_14
    :goto_14
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner$BlockingRunnable;->mDone:Z

    if-nez p1, :cond_30

    .line 201
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long p1, v3, p1

    cmp-long p3, p1, v1

    if-gtz p3, :cond_24

    .line 203
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_33

    return v0

    .line 206
    :cond_24
    :try_start_24
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_27} :catch_14
    .catchall {:try_start_24 .. :try_end_27} :catchall_33

    goto :goto_14

    .line 211
    :catch_28
    :cond_28
    :goto_28
    :try_start_28
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner$BlockingRunnable;->mDone:Z
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_33

    if-nez p1, :cond_30

    .line 213
    :try_start_2c
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_28
    .catchall {:try_start_2c .. :try_end_2f} :catchall_33

    goto :goto_28

    .line 218
    :cond_30
    :try_start_30
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_33
    move-exception p1

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public run()V
    .registers 3

    const/4 v0, 0x1

    .line 183
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner$BlockingRunnable;->mTask:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    .line 185
    monitor-enter p0

    .line 186
    :try_start_7
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner$BlockingRunnable;->mDone:Z

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 188
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v0

    :catchall_11
    move-exception v1

    .line 185
    monitor-enter p0

    .line 186
    :try_start_13
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner$BlockingRunnable;->mDone:Z

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 188
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1a

    .line 189
    throw v1

    :catchall_1a
    move-exception v0

    .line 188
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method
