.class public final Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
.super Ljava/lang/Object;
.source "ContentObserverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ContentObserverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JobInstance"
.end annotation


# instance fields
.field public mChangedAuthorities:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mChangedUris:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public final mExecuteRunner:Ljava/lang/Runnable;

.field public final mJobStatus:Lcom/android/server/job/controllers/JobStatus;

.field public final mMyObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;",
            ">;"
        }
    .end annotation
.end field

.field public final mTimeoutRunner:Ljava/lang/Runnable;

.field public mTriggerPending:Z

.field public final synthetic this$0:Lcom/android/server/job/controllers/ContentObserverController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ContentObserverController;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 275
    iput-object v1, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mMyObservers:Ljava/util/ArrayList;

    move-object/from16 v2, p2

    .line 276
    iput-object v2, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 277
    new-instance v3, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;

    invoke-direct {v3, v0}, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;-><init>(Lcom/android/server/job/controllers/ContentObserverController$JobInstance;)V

    iput-object v3, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Ljava/lang/Runnable;

    .line 278
    new-instance v3, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;

    invoke-direct {v3, v0}, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;-><init>(Lcom/android/server/job/controllers/ContentObserverController$JobInstance;)V

    iput-object v3, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTimeoutRunner:Ljava/lang/Runnable;

    .line 279
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v3

    .line 280
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v4

    .line 281
    iget-object v5, v1, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    .line 282
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    if-nez v5, :cond_42

    .line 284
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 285
    iget-object v6, v1, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_42
    if-eqz v3, :cond_f1

    .line 288
    array-length v6, v3

    const/4 v8, 0x0

    :goto_46
    if-ge v8, v6, :cond_f1

    aget-object v9, v3, v8

    .line 289
    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    const-string v11, " andDescendants="

    const-string v12, " for "

    const-string v13, "JobScheduler.ContentObserver"

    const/4 v14, 0x1

    if-nez v10, :cond_b0

    .line 291
    new-instance v10, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    iget-object v15, v1, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v7

    invoke-direct {v10, v1, v15, v9, v7}, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;-><init>(Lcom/android/server/job/controllers/ContentObserverController;Landroid/os/Handler;Landroid/app/job/JobInfo$TriggerContentUri;I)V

    .line 292
    invoke-virtual {v5, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-virtual {v9}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v7

    and-int/2addr v7, v14

    if-eqz v7, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v14, 0x0

    .line 295
    :goto_70
    invoke-static {}, Lcom/android/server/job/controllers/ContentObserverController;->-$$Nest$sfgetDEBUG()Z

    move-result v7

    if-eqz v7, :cond_a2

    .line 296
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "New observer "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " sourceUserId="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_a2
    iget-object v7, v1, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 301
    invoke-virtual {v9}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v9

    .line 300
    invoke-virtual {v7, v9, v14, v10, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_e3

    .line 307
    :cond_b0
    invoke-static {}, Lcom/android/server/job/controllers/ContentObserverController;->-$$Nest$sfgetDEBUG()Z

    move-result v7

    if-eqz v7, :cond_e3

    .line 308
    invoke-virtual {v9}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v7

    and-int/2addr v7, v14

    if-eqz v7, :cond_be

    goto :goto_bf

    :cond_be
    const/4 v14, 0x0

    .line 310
    :goto_bf
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Reusing existing observer "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_e3
    :goto_e3
    iget-object v7, v10, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v7, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mMyObservers:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_46

    :cond_f1
    return-void
.end method


# virtual methods
.method public detachLocked()V
    .registers 6

    .line 363
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mMyObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_69

    .line 365
    iget-object v2, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mMyObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    .line 366
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 367
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_66

    .line 368
    invoke-static {}, Lcom/android/server/job/controllers/ContentObserverController;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unregistering observer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUri:Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {v4}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "JobScheduler.ContentObserver"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_48
    iget-object v3, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v3, v3, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 372
    iget-object v3, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v3, v3, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUserId:I

    .line 373
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-eqz v3, :cond_66

    .line 375
    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUri:Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_69
    return-void
.end method

.method public scheduleLocked()V
    .registers 5

    .line 341
    iget-boolean v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    .line 342
    iput-boolean v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    .line 343
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTimeoutRunner:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentMaxDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 345
    :cond_16
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 346
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_33

    .line 348
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_42

    .line 350
    :cond_33
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentUpdateDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_42
    return-void
.end method

.method public trigger()V
    .registers 6

    .line 322
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_5
    iget-boolean v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    if-eqz v1, :cond_1a

    .line 324
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 325
    iget-object v3, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/server/job/controllers/JobStatus;->setContentTriggerConstraintSatisfied(JZ)Z

    move-result v1

    .line 328
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->unscheduleLocked()V

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 330
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_30

    if-eqz v1, :cond_2f

    .line 334
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 335
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object p0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, v0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_2f
    return-void

    :catchall_30
    move-exception p0

    .line 330
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public unscheduleLocked()V
    .registers 3

    .line 355
    iget-boolean v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    if-eqz v0, :cond_19

    .line 356
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 357
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTimeoutRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 358
    iput-boolean v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    :cond_19
    return-void
.end method
