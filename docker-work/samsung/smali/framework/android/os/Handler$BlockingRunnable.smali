.class final Landroid/os/Handler$BlockingRunnable;
.super Ljava/lang/Object;
.source "Handler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BlockingRunnable"
.end annotation


# instance fields
.field private greylist-max-o mDone:Z

.field private final greylist-max-o mTask:Ljava/lang/Runnable;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 959
    iput-object p1, p0, Landroid/os/Handler$BlockingRunnable;->mTask:Ljava/lang/Runnable;

    .line 960
    return-void
.end method


# virtual methods
.method public greylist-max-o postAndWait(Landroid/os/Handler;J)Z
    .registers 12
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "timeout"    # J

    .line 975
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 976
    return v1

    .line 979
    :cond_8
    monitor-enter p0

    .line 980
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-lez v0, :cond_2b

    .line 981
    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p2

    .line 982
    .local v4, "expirationTime":J
    :goto_14
    iget-boolean v0, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z

    if-nez v0, :cond_2a

    .line 983
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 984
    .local v6, "delay":J
    cmp-long v0, v6, v2

    if-gtz v0, :cond_24

    .line 985
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_38

    return v1

    .line 988
    :cond_24
    :try_start_24
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_27} :catch_28
    .catchall {:try_start_24 .. :try_end_27} :catchall_38

    .line 990
    goto :goto_29

    .line 989
    :catch_28
    move-exception v0

    .line 991
    .end local v6    # "delay":J
    :goto_29
    goto :goto_14

    .line 992
    .end local v4    # "expirationTime":J
    :cond_2a
    goto :goto_35

    .line 993
    :cond_2b
    :goto_2b
    :try_start_2b
    iget-boolean v0, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_38

    if-nez v0, :cond_35

    .line 995
    :try_start_2f
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_32} :catch_33
    .catchall {:try_start_2f .. :try_end_32} :catchall_38

    .line 997
    :goto_32
    goto :goto_2b

    .line 996
    :catch_33
    move-exception v0

    goto :goto_32

    .line 1000
    :cond_35
    :goto_35
    :try_start_35
    monitor-exit p0

    .line 1001
    const/4 v0, 0x1

    return v0

    .line 1000
    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public whitelist test-api run()V
    .registers 3

    .line 965
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Landroid/os/Handler$BlockingRunnable;->mTask:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    .line 967
    monitor-enter p0

    .line 968
    :try_start_7
    iput-boolean v0, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z

    .line 969
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 970
    monitor-exit p0

    .line 971
    nop

    .line 972
    return-void

    .line 970
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0

    .line 967
    :catchall_12
    move-exception v1

    monitor-enter p0

    .line 968
    :try_start_14
    iput-boolean v0, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z

    .line 969
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 970
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1b

    .line 971
    throw v1

    .line 970
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method
