.class public final Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "DsmsThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor$RejectedThread;
    }
.end annotation


# static fields
.field private static final blacklist KEEP_ALIVE_TIME_MS:I = 0x1f4

.field private static final blacklist MAXIMUM_THREADS:I = 0x14

.field private static final blacklist MINIMUM_THREADS:I = 0x4

.field private static final blacklist QUEUE_POOL_SIZE:I = 0x1f4

.field private static final blacklist SUBTAG:Ljava/lang/String; = "DsmsThreadPoolExecutor"

.field private static blacklist sInstance:Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;


# instance fields
.field private blacklist isPaused:Z

.field private blacklist pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private blacklist unpaused:Ljava/util/concurrent/locks/Condition;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->sInstance:Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 8

    .line 55
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x1f4

    invoke-direct {v6, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    const/4 v1, 0x4

    const/16 v2, 0x14

    const-wide/16 v3, 0x1f4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->isPaused:Z

    .line 44
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 45
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    .line 61
    new-instance v0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor$RejectedThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor$RejectedThread;-><init>(Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor$RejectedThread-IA;)V

    invoke-super {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 62
    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;
    .registers 2

    const-class v0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;

    monitor-enter v0

    .line 48
    :try_start_3
    sget-object v1, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->sInstance:Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;

    if-nez v1, :cond_e

    .line 49
    new-instance v1, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;

    invoke-direct {v1}, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;-><init>()V

    sput-object v1, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->sInstance:Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;

    .line 51
    :cond_e
    sget-object v1, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->sInstance:Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 47
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public whitelist test-api beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    .line 66
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 69
    :goto_8
    :try_start_8
    iget-boolean v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->isPaused:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_11} :catch_1a
    .catchall {:try_start_8 .. :try_end_11} :catchall_18

    goto :goto_8

    .line 73
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 74
    goto :goto_1f

    .line 73
    :catchall_18
    move-exception v0

    goto :goto_20

    .line 70
    :catch_1a
    move-exception v0

    .line 71
    .local v0, "ie":Ljava/lang/InterruptedException;
    :try_start_1b
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_18

    .end local v0    # "ie":Ljava/lang/InterruptedException;
    goto :goto_12

    .line 75
    :goto_1f
    return-void

    .line 73
    :goto_20
    iget-object v1, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 74
    throw v0
.end method

.method public blacklist resume()V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 80
    :try_start_5
    iget-boolean v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->isPaused:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 81
    const-string v0, "DsmsThreadPoolExecutor"

    const-string v1, "Resuming"

    invoke-static {v0, v1}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->isPaused:Z

    .line 83
    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_25

    .line 86
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 87
    nop

    .line 88
    return-void

    .line 86
    :catchall_25
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 87
    throw v0
.end method
