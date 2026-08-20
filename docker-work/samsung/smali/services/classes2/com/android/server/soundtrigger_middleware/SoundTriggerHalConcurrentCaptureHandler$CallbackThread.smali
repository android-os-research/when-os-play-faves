.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;
.super Ljava/lang/Object;
.source "SoundTriggerHalConcurrentCaptureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackThread"
.end annotation


# instance fields
.field public final mList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public mProcessedCount:I

.field public mPushCount:I


# direct methods
.method public static synthetic $r8$lambda$4FSZ8bJpTxN08PuGQcTjtlewiQ0(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mList:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 297
    iput v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mPushCount:I

    .line 298
    iput v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mProcessedCount:I

    .line 304
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 316
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    .line 307
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->pop()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 308
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mList:Ljava/util/Queue;

    monitor-enter v0
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_1a

    .line 309
    :try_start_a
    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mProcessedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mProcessedCount:I

    .line 310
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mList:Ljava/util/Queue;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 311
    monitor-exit v0

    goto :goto_0

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_17

    :try_start_19
    throw p0
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1a} :catch_1a

    :catch_1a
    return-void
.end method


# virtual methods
.method public flush()V
    .registers 4

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mList:Ljava/util/Queue;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_14

    .line 338
    :try_start_3
    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mPushCount:I

    .line 339
    :goto_5
    iget v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mProcessedCount:I

    if-eq v2, v1, :cond_f

    .line 340
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mList:Ljava/util/Queue;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_5

    .line 342
    :cond_f
    monitor-exit v0

    goto :goto_14

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    :try_start_13
    throw p0
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_14} :catch_14

    :catch_14
    :goto_14
    return-void
.end method

.method public final pop()Ljava/lang/Runnable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mList:Ljava/util/Queue;

    monitor-enter v0

    .line 349
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mList:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 350
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mList:Ljava/util/Queue;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 352
    :cond_11
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mList:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    monitor-exit v0

    return-object p0

    :catchall_1b
    move-exception p0

    .line 353
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public push(Ljava/lang/Runnable;)V
    .registers 4

    .line 325
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mList:Ljava/util/Queue;

    monitor-enter v0

    .line 326
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mList:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 327
    iget p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mPushCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mPushCount:I

    .line 328
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->mList:Ljava/util/Queue;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 329
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method
