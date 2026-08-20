.class public Lcom/android/server/wm/PersisterQueue;
.super Ljava/lang/Object;
.source "PersisterQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;,
        Lcom/android/server/wm/PersisterQueue$Listener;,
        Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final EMPTY_ITEM:Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

.field public static final FLUSH_QUEUE:J = -0x1L

.field public static final INTER_WRITE_DELAY_MS:J = 0x1f4L

.field public static final MAX_WRITE_QUEUE_LENGTH:I = 0x6

.field public static final PRE_TASK_DELAY_MS:J = 0xbb8L

.field public static final TAG:Ljava/lang/String; = "PersisterQueue"


# instance fields
.field public final mInterWriteDelayMs:J

.field public final mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

.field public final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/PersisterQueue$Listener;",
            ">;"
        }
    .end annotation
.end field

.field public mNextWriteTime:J

.field public final mPreTaskDelayMs:J

.field public final mWriteQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/PersisterQueue$WriteQueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$syVj9EGgTHDI9mYKZaXH4FHirr0()V
    .registers 0

    invoke-static {}, Lcom/android/server/wm/PersisterQueue;->lambda$static$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/wm/PersisterQueue;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWriteQueue(Lcom/android/server/wm/PersisterQueue;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mprocessNextItem(Lcom/android/server/wm/PersisterQueue;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/PersisterQueue;->processNextItem()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Lcom/android/server/wm/PersisterQueue$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/wm/PersisterQueue$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/wm/PersisterQueue;->EMPTY_ITEM:Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const-wide/16 v0, 0x1f4

    const-wide/16 v2, 0xbb8

    .line 73
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/wm/PersisterQueue;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 70
    iput-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2c

    cmp-long v0, p3, v0

    if-ltz v0, :cond_2c

    .line 84
    iput-wide p1, p0, Lcom/android/server/wm/PersisterQueue;->mInterWriteDelayMs:J

    .line 85
    iput-wide p3, p0, Lcom/android/server/wm/PersisterQueue;->mPreTaskDelayMs:J

    .line 86
    new-instance p1, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    const/4 p2, 0x0

    const-string p3, "LazyTaskWriterThread"

    invoke-direct {p1, p0, p3, p2}, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;-><init>(Lcom/android/server/wm/PersisterQueue;Ljava/lang/String;Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread-IA;)V

    iput-object p1, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    return-void

    .line 80
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Both inter-write delay and pre-task delay need tobe non-negative. inter-write delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms pre-task delay: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic lambda$static$0()V
    .registers 0

    return-void
.end method


# virtual methods
.method public declared-synchronized addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V
    .registers 5

    monitor-enter p0

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_24

    .line 111
    iget-object p1, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x6

    if-le p1, p2, :cond_12

    goto :goto_24

    .line 113
    :cond_12
    iget-wide p1, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_28

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mPreTaskDelayMs:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    goto :goto_28

    :cond_24
    :goto_24
    const-wide/16 p1, -0x1

    .line 112
    iput-wide p1, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    .line 116
    :cond_28
    :goto_28
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 117
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addListener(Lcom/android/server/wm/PersisterQueue$Listener;)V
    .registers 2

    .line 189
    iget-object p0, p0, Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized findLastItem(Ljava/util/function/Predicate;Ljava/lang/Class;)Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/wm/PersisterQueue$WriteQueueItem;",
            ">(",
            "Ljava/util/function/Predicate<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 120
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_2a

    .line 121
    iget-object v1, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 122
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 123
    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 124
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_2d

    if-eqz v2, :cond_27

    .line 125
    monitor-exit p0

    return-object v1

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_2a
    const/4 p1, 0x0

    .line 130
    monitor-exit p0

    return-object p1

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized flush()V
    .registers 5

    monitor-enter p0

    const-wide/16 v0, -0x1

    .line 166
    :try_start_3
    iput-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_13

    .line 170
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_13

    .line 173
    :catch_b
    :try_start_b
    iget-wide v2, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_13

    cmp-long v2, v2, v0

    if-eqz v2, :cond_8

    .line 174
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final processNextItem()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 205
    monitor-enter p0

    .line 206
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/PersisterQueue;->mInterWriteDelayMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    .line 215
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 216
    iget-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_27

    .line 217
    iput-wide v2, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 222
    :cond_27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_35

    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_12

    .line 223
    :cond_35
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 230
    :cond_3b
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 237
    :goto_48
    iget-wide v3, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_57

    sub-long/2addr v3, v1

    .line 241
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 242
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    goto :goto_48

    .line 246
    :cond_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_5c

    .line 248
    invoke-interface {v0}, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;->process()V

    return-void

    :catchall_5c
    move-exception v0

    .line 246
    :try_start_5d
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v0
.end method

.method public declared-synchronized removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/wm/PersisterQueue$WriteQueueItem;",
            ">(",
            "Ljava/util/function/Predicate<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 153
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_2d

    .line 154
    iget-object v1, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 155
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 156
    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 157
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 159
    iget-object v1, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2f

    :cond_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 163
    :cond_2d
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeListener(Lcom/android/server/wm/PersisterQueue$Listener;)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 194
    iget-object p0, p0, Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized startPersisting()V
    .registers 2

    monitor-enter p0

    .line 90
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_e

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 93
    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopPersisting()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 102
    :cond_9
    monitor-enter p0

    .line 103
    :try_start_a
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 104
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_16

    .line 105
    iget-object p0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->join()V

    return-void

    :catchall_16
    move-exception v0

    .line 104
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public declared-synchronized updateLastOrAddItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/wm/PersisterQueue$WriteQueueItem;",
            ">(TT;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 138
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/wm/PersisterQueue$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/wm/PersisterQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/PersisterQueue;->findLastItem(Ljava/util/function/Predicate;Ljava/lang/Class;)Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    move-result-object v0

    if-nez v0, :cond_17

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    goto :goto_1a

    .line 142
    :cond_17
    invoke-interface {v0, p1}, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;->updateFrom(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V

    .line 145
    :goto_1a
    invoke-virtual {p0}, Lcom/android/server/wm/PersisterQueue;->yieldIfQueueTooDeep()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 146
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public yieldIfQueueTooDeep()V
    .registers 5

    .line 178
    monitor-enter p0

    .line 179
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 182
    :goto_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_13

    if-eqz v0, :cond_12

    .line 184
    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_12
    return-void

    :catchall_13
    move-exception v0

    .line 182
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method
