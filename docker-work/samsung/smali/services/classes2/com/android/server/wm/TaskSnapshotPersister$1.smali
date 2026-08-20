.class public Lcom/android/server/wm/TaskSnapshotPersister$1;
.super Ljava/lang/Thread;
.source "TaskSnapshotPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;Ljava/lang/String;)V
    .registers 3

    .line 288
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/16 v0, 0xa

    .line 290
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 294
    :goto_5
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->-$$Nest$fgetmLock(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 295
    :try_start_c
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v1}, Lcom/android/server/wm/TaskSnapshotPersister;->-$$Nest$fgetmPaused(Lcom/android/server/wm/TaskSnapshotPersister;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    :cond_16
    :goto_16
    move v3, v2

    goto :goto_3b

    .line 298
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v1}, Lcom/android/server/wm/TaskSnapshotPersister;->-$$Nest$fgetmWriteQueue(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;

    if-eqz v1, :cond_16

    .line 300
    invoke-virtual {v1}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->isReady()Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v3, 0x1

    .line 302
    invoke-virtual {v1}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->onDequeuedLocked()V

    goto :goto_3b

    .line 304
    :cond_31
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v3}, Lcom/android/server/wm/TaskSnapshotPersister;->-$$Nest$fgetmWriteQueue(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_16

    .line 308
    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_c .. :try_end_3c} :catchall_7d

    if-eqz v1, :cond_48

    if-eqz v3, :cond_43

    .line 311
    invoke-virtual {v1}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->write()V

    :cond_43
    const-wide/16 v0, 0x64

    .line 313
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 315
    :cond_48
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->-$$Nest$fgetmLock(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 316
    :try_start_4f
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->-$$Nest$fgetmWriteQueue(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_65

    .line 317
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v3}, Lcom/android/server/wm/TaskSnapshotPersister;->-$$Nest$fgetmPaused(Lcom/android/server/wm/TaskSnapshotPersister;)Z

    move-result v3

    if-nez v3, :cond_65

    .line 318
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_4f .. :try_end_64} :catchall_7a

    goto :goto_5

    .line 321
    :cond_65
    :try_start_65
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v3, v0}, Lcom/android/server/wm/TaskSnapshotPersister;->-$$Nest$fputmQueueIdling(Lcom/android/server/wm/TaskSnapshotPersister;Z)V

    .line 322
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->-$$Nest$fgetmLock(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 323
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0, v2}, Lcom/android/server/wm/TaskSnapshotPersister;->-$$Nest$fputmQueueIdling(Lcom/android/server/wm/TaskSnapshotPersister;Z)V
    :try_end_78
    .catch Ljava/lang/InterruptedException; {:try_start_65 .. :try_end_78} :catch_78
    .catchall {:try_start_65 .. :try_end_78} :catchall_7a

    .line 326
    :catch_78
    :try_start_78
    monitor-exit v1

    goto :goto_5

    :catchall_7a
    move-exception p0

    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_7a

    throw p0

    :catchall_7d
    move-exception p0

    .line 308
    :try_start_7e
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw p0
.end method
