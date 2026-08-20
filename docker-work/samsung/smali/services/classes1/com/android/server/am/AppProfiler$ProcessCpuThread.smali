.class public Lcom/android/server/am/AppProfiler$ProcessCpuThread;
.super Ljava/lang/Thread;
.source "AppProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcessCpuThread"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler;Ljava/lang/String;)V
    .registers 3

    .line 2167
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;->this$0:Lcom/android/server/am/AppProfiler;

    .line 2168
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 2173
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v0}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmProcessCpuTracker(Lcom/android/server/am/AppProfiler;)Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object v0

    monitor-enter v0

    .line 2174
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v1}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmProcessCpuInitLatch(Lcom/android/server/am/AppProfiler;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2175
    iget-object v1, p0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v1}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmProcessCpuTracker(Lcom/android/server/am/AppProfiler;)Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 2176
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_66

    .line 2180
    :goto_1a
    :try_start_1a
    monitor-enter p0
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1b} :catch_58
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1b} :catch_56

    .line 2181
    :try_start_1b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2182
    iget-object v2, p0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v2}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmLastCpuTime(Lcom/android/server/am/AppProfiler;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/32 v4, 0xfffffff

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    .line 2183
    iget-object v4, p0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v4}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmLastWriteTime(Lcom/android/server/am/AppProfiler;)J

    move-result-wide v4

    const-wide/32 v6, 0x1b7740

    add-long/2addr v4, v6

    sub-long/2addr v4, v0

    cmp-long v0, v4, v2

    if-gez v0, :cond_3e

    move-wide v2, v4

    :cond_3e
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_51

    .line 2190
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v0}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmProcessCpuMutexFree(Lcom/android/server/am/AppProfiler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2191
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 2193
    :cond_51
    monitor-exit p0

    goto :goto_58

    :catchall_53
    move-exception v0

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_1b .. :try_end_55} :catchall_53

    :try_start_55
    throw v0
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_56} :catch_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_56} :catch_56

    :catch_56
    move-exception v0

    goto :goto_5e

    .line 2196
    :catch_58
    :goto_58
    :try_start_58
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$ProcessCpuThread;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5d} :catch_56

    goto :goto_1a

    :goto_5e
    const-string v1, "ActivityManager"

    const-string v2, "Unexpected exception collecting process stats"

    .line 2198
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    :catchall_66
    move-exception p0

    .line 2176
    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw p0
.end method
