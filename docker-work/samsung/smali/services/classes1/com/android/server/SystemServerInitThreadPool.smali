.class public final Lcom/android/server/SystemServerInitThreadPool;
.super Ljava/lang/Object;
.source "SystemServerInitThreadPool.java"

# interfaces
.implements Landroid/util/Dumpable;


# static fields
.field public static final IS_DEBUGGABLE:Z

.field public static final LOCK:Ljava/lang/Object;

.field public static final SHUTDOWN_TIMEOUT_MILLIS:I = 0x4e20

.field public static final TAG:Ljava/lang/String;

.field public static sInstance:Lcom/android/server/SystemServerInitThreadPool;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "LOCK"
        }
    .end annotation
.end field


# instance fields
.field public final mPendingTasks:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingTasks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mService:Ljava/util/concurrent/ExecutorService;

.field public mShutDown:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingTasks"
        }
    .end annotation
.end field

.field public final mSize:I


# direct methods
.method public static synthetic $r8$lambda$aGlXt69ihU44Qi7EB_RNeu8pnrY(Lcom/android/server/SystemServerInitThreadPool;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServerInitThreadPool;->lambda$submitTask$0(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 50
    const-class v0, Lcom/android/server/SystemServerInitThreadPool;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SystemServerInitThreadPool;->TAG:Ljava/lang/String;

    .line 52
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/SystemServerInitThreadPool;->IS_DEBUGGABLE:Z

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/SystemServerInitThreadPool;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    .line 68
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServerInitThreadPool;->mSize:I

    .line 69
    sget-object v1, Lcom/android/server/SystemServerInitThreadPool;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating instance with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " threads"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "system-server-init-thread"

    const/4 v2, -0x2

    .line 70
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->newFixedThreadPool(ILjava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static dumpStackTraces()V
    .registers 7

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 195
    invoke-static/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/io/StringWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    return-void
.end method

.method private synthetic lambda$submitTask$0(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 8

    .line 100
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InitThreadPoolExec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 102
    sget-boolean v1, Lcom/android/server/SystemServerInitThreadPool;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_32

    .line 103
    sget-object v2, Lcom/android/server/SystemServerInitThreadPool;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Started executing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_32
    :try_start_32
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_35} :catch_5d

    .line 112
    iget-object p2, p0, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    monitor-enter p2

    .line 113
    :try_start_38
    iget-object p0, p0, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 114
    monitor-exit p2
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_5a

    if-eqz v1, :cond_56

    .line 116
    sget-object p0, Lcom/android/server/SystemServerInitThreadPool;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished executing "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_56
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_5a
    move-exception p0

    .line 114
    :try_start_5b
    monitor-exit p2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw p0

    :catch_5d
    move-exception p0

    .line 108
    sget-object p2, Lcom/android/server/SystemServerInitThreadPool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 110
    throw p0
.end method

.method public static shutdown()V
    .registers 7

    .line 145
    sget-object v0, Lcom/android/server/SystemServerInitThreadPool;->TAG:Ljava/lang/String;

    const-string v1, "Shutdown requested"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object v1, Lcom/android/server/SystemServerInitThreadPool;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_a
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    const-string v3, "WaitInitThreadPoolShutdown"

    .line 148
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 149
    sget-object v3, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    if-nez v3, :cond_27

    .line 150
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v2, "Already shutdown"

    .line 151
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    monitor-exit v1

    return-void

    .line 154
    :cond_27
    iget-object v3, v3, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    monitor-enter v3
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_bd

    .line 155
    :try_start_2a
    sget-object v4, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/SystemServerInitThreadPool;->mShutDown:Z

    .line 156
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_ba

    .line 157
    :try_start_30
    iget-object v3, v4, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_bd

    .line 160
    :try_start_35
    sget-object v3, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    iget-object v3, v3, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v4, 0x4e20

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_41
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_41} :catch_94
    .catchall {:try_start_35 .. :try_end_41} :catchall_bd

    if-nez v3, :cond_46

    .line 171
    :try_start_43
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->dumpStackTraces()V

    .line 173
    :cond_46
    sget-object v4, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    iget-object v4, v4, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v4

    if-eqz v3, :cond_5d

    const/4 v3, 0x0

    .line 183
    sput-object v3, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    const-string v3, "Shutdown successful"

    .line 184
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 186
    monitor-exit v1

    return-void

    .line 175
    :cond_5d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    sget-object v3, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    iget-object v3, v3, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    monitor-enter v3
    :try_end_67
    .catchall {:try_start_43 .. :try_end_67} :catchall_bd

    .line 177
    :try_start_67
    sget-object v5, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    iget-object v5, v5, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    monitor-exit v3
    :try_end_6f
    .catchall {:try_start_67 .. :try_end_6f} :catchall_91

    .line 179
    :try_start_6f
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 180
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot shutdown. Unstarted tasks "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Unfinished tasks "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_91
    .catchall {:try_start_6f .. :try_end_91} :catchall_bd

    :catchall_91
    move-exception v0

    .line 178
    :try_start_92
    monitor-exit v3
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    :try_start_93
    throw v0

    .line 163
    :catch_94
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 164
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->dumpStackTraces()V

    .line 165
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/SystemServerInitThreadPool;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " init interrupted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ba
    .catchall {:try_start_93 .. :try_end_ba} :catchall_bd

    :catchall_ba
    move-exception v0

    .line 156
    :try_start_bb
    monitor-exit v3
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    :try_start_bc
    throw v0

    :catchall_bd
    move-exception v0

    .line 186
    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_bd

    throw v0
.end method

.method public static start()Lcom/android/server/SystemServerInitThreadPool;
    .registers 4

    .line 131
    sget-object v0, Lcom/android/server/SystemServerInitThreadPool;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_3
    sget-object v1, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/SystemServerInitThreadPool;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already started"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 133
    new-instance v1, Lcom/android/server/SystemServerInitThreadPool;

    invoke-direct {v1}, Lcom/android/server/SystemServerInitThreadPool;-><init>()V

    sput-object v1, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    .line 134
    monitor-exit v0

    return-object v1

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public static submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    const-string v0, "description cannot be null"

    .line 81
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/server/SystemServerInitThreadPool;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_8
    sget-object v1, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/SystemServerInitThreadPool;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - it has been shut down"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 87
    sget-object v1, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    .line 88
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_32

    .line 90
    invoke-virtual {v1, p0, p1}, Lcom/android/server/SystemServerInitThreadPool;->submitTask(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    :catchall_32
    move-exception p0

    .line 88
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 206
    sget-object p2, Lcom/android/server/SystemServerInitThreadPool;->LOCK:Ljava/lang/Object;

    monitor-enter p2

    :try_start_3
    const-string/jumbo v0, "has instance: %b\n"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 207
    sget-object v3, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    const/4 v4, 0x0

    if-eqz v3, :cond_10

    move v3, v1

    goto :goto_11

    :cond_10
    move v3, v4

    :goto_11
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 208
    monitor-exit p2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_70

    const-string/jumbo p2, "number of threads: %d\n"

    new-array v0, v1, [Ljava/lang/Object;

    .line 209
    iget v2, p0, Lcom/android/server/SystemServerInitThreadPool;->mSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {p1, p2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo p2, "service: %s\n"

    new-array v0, v1, [Ljava/lang/Object;

    .line 210
    iget-object v2, p0, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    aput-object v2, v0, v4

    invoke-virtual {p1, p2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 211
    iget-object v0, p0, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    monitor-enter v0

    :try_start_3a
    const-string/jumbo p2, "is shutdown: %b\n"

    new-array v2, v1, [Ljava/lang/Object;

    .line 212
    iget-boolean v3, p0, Lcom/android/server/SystemServerInitThreadPool;->mShutDown:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, p2, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 213
    iget-object p2, p0, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_59

    const-string/jumbo p0, "no pending tasks"

    .line 215
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6b

    :cond_59
    const-string v2, "%d pending tasks: %s\n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 217
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v4

    iget-object p0, p0, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    aput-object p0, v3, v1

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 219
    :goto_6b
    monitor-exit v0

    return-void

    :catchall_6d
    move-exception p0

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_3a .. :try_end_6f} :catchall_6d

    throw p0

    :catchall_70
    move-exception p0

    .line 208
    :try_start_71
    monitor-exit p2
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw p0
.end method

.method public getDumpableName()Ljava/lang/String;
    .registers 1

    .line 201
    const-class p0, Lcom/android/server/SystemServerInitThreadPool;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final submitTask(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    monitor-enter v0

    .line 96
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/SystemServerInitThreadPool;->mShutDown:Z

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/SystemServerInitThreadPool;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already shut down"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_32

    .line 99
    iget-object v0, p0, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/SystemServerInitThreadPool;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    :catchall_32
    move-exception p0

    .line 98
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0
.end method
