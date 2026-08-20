.class public final Lcom/android/server/Watchdog$HandlerChecker;
.super Ljava/lang/Object;
.source "Watchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HandlerChecker"
.end annotation


# instance fields
.field public mCompleted:Z

.field public mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

.field public final mHandler:Landroid/os/Handler;

.field public final mMonitorQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$Monitor;",
            ">;"
        }
    .end annotation
.end field

.field public final mMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$Monitor;",
            ">;"
        }
    .end annotation
.end field

.field public final mName:Ljava/lang/String;

.field public mPauseCount:I

.field public mStartTime:J

.field public mWaitMax:J

.field public final synthetic this$0:Lcom/android/server/Watchdog;


# direct methods
.method public constructor <init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 4

    .line 323
    iput-object p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->this$0:Lcom/android/server/Watchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    .line 316
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitorQueue:Ljava/util/ArrayList;

    .line 324
    iput-object p2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    .line 325
    iput-object p3, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 326
    iput-boolean p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    return-void
.end method


# virtual methods
.method public addMonitorLocked(Lcom/android/server/Watchdog$Monitor;)V
    .registers 2

    .line 332
    iget-object p0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitorQueue:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeBlockedStateLocked()Ljava/lang/String;
    .registers 5

    .line 393
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    const-string v1, ")"

    const-string v2, " ("

    if-nez v0, :cond_2d

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blocked in handler on "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 396
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blocked in monitor "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " on "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {p0}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCompletionStateLocked()I
    .registers 7

    .line 371
    iget-boolean v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 374
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mStartTime:J

    sub-long/2addr v0, v2

    .line 375
    iget-wide v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mWaitMax:J

    const-wide/16 v4, 0x2

    div-long v4, v2, v4

    cmp-long p0, v0, v4

    if-gez p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    cmp-long p0, v0, v2

    if-gez p0, :cond_1f

    const/4 p0, 0x2

    return p0

    :cond_1f
    const/4 p0, 0x3

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 389
    iget-object p0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getThread()Ljava/lang/Thread;
    .registers 1

    .line 385
    iget-object p0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public pauseLocked(Ljava/lang/String;)V
    .registers 4

    .line 423
    iget v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    .line 427
    iput-boolean v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pausing HandlerChecker: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Pause count: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Watchdog"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resumeLocked(Ljava/lang/String;)V
    .registers 5

    .line 434
    iget v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    const-string v1, "Watchdog"

    if-lez v0, :cond_33

    add-int/lit8 v0, v0, -0x1

    .line 435
    iput v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resuming HandlerChecker: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for reason: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Pause count: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 439
    :cond_33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already resumed HandlerChecker: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_49
    return-void
.end method

.method public run()V
    .registers 5

    .line 407
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_24

    .line 409
    iget-object v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->this$0:Lcom/android/server/Watchdog;

    invoke-static {v2}, Lcom/android/server/Watchdog;->-$$Nest$fgetmLock(Lcom/android/server/Watchdog;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 410
    :try_start_10
    iget-object v3, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/Watchdog$Monitor;

    iput-object v3, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    .line 411
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_21

    .line 412
    invoke-interface {v3}, Lcom/android/server/Watchdog$Monitor;->monitor()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :catchall_21
    move-exception p0

    .line 411
    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0

    .line 415
    :cond_24
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->this$0:Lcom/android/server/Watchdog;

    invoke-static {v0}, Lcom/android/server/Watchdog;->-$$Nest$fgetmLock(Lcom/android/server/Watchdog;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 416
    :try_start_2c
    iput-boolean v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    const/4 v1, 0x0

    .line 417
    iput-object v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    .line 418
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_33

    throw p0
.end method

.method public scheduleCheckLocked(J)V
    .registers 3

    .line 341
    iput-wide p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mWaitMax:J

    .line 342
    iget-boolean p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    if-eqz p1, :cond_12

    .line 344
    iget-object p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitorQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 345
    iget-object p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitorQueue:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 347
    :cond_12
    iget-object p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2a

    iget-object p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/MessageQueue;->isPolling()Z

    move-result p1

    if-nez p1, :cond_2e

    :cond_2a
    iget p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    if-lez p1, :cond_32

    :cond_2e
    const/4 p1, 0x1

    .line 356
    iput-boolean p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    return-void

    .line 359
    :cond_32
    iget-boolean p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    if-nez p1, :cond_37

    return-void

    :cond_37
    const/4 p1, 0x0

    .line 364
    iput-boolean p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    const/4 p1, 0x0

    .line 365
    iput-object p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    .line 366
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mStartTime:J

    .line 367
    iget-object p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
