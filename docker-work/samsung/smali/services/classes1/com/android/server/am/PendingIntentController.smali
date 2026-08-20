.class public Lcom/android/server/am/PendingIntentController;
.super Ljava/lang/Object;
.source "PendingIntentController.java"


# static fields
.field public static final RECENT_N:I = 0xa

.field public static final TAG:Ljava/lang/String; = "ActivityManager"

.field public static final TAG_MU:Ljava/lang/String; = "ActivityManager_MU"


# instance fields
.field public mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field public final mH:Landroid/os/Handler;

.field public final mIntentSenderRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/am/PendingIntentRecord$Key;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mIntentsPerUid:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mRecentIntentsPerUid:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/util/RingBuffer<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mUserController:Lcom/android/server/am/UserController;


# direct methods
.method public static synthetic $r8$lambda$Lty4hx9MGaos-2CBai-KetCFYSs(Lcom/android/server/am/PendingIntentController;Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/PendingIntentController;->clearPendingResultForActivity(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ROdWOA0WWhZoFBvWn7O_C9hbWGg(Lcom/android/server/am/PendingIntentController;Landroid/os/RemoteCallbackList;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/PendingIntentController;->handlePendingIntentCancelled(Landroid/os/RemoteCallbackList;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/am/UserController;Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 5

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 96
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    .line 100
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    .line 108
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p1, p0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 109
    iput-object p2, p0, Lcom/android/server/am/PendingIntentController;->mUserController:Lcom/android/server/am/UserController;

    .line 110
    iput-object p3, p0, Lcom/android/server/am/PendingIntentController;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    return-void
.end method


# virtual methods
.method public cancelIntentSender(Landroid/content/IIntentSender;)V
    .registers 8

    .line 244
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_5

    return-void

    .line 247
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_8
    check-cast p1, Lcom/android/server/am/PendingIntentRecord;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_6c

    .line 250
    :try_start_a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    const-wide/32 v3, 0x10000000

    .line 251
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 250
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 252
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_25} :catch_65
    .catchall {:try_start_a .. :try_end_25} :catchall_6c

    if-eqz v1, :cond_2d

    const/4 v1, 0x1

    .line 262
    :try_start_28
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;Z)V

    .line 263
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_6c

    return-void

    .line 253
    :cond_2d
    :try_start_2d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: cancelIntentSender() from pid="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not allowed to cancel package "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object p1, p1, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    .line 256
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_65} :catch_65
    .catchall {:try_start_2d .. :try_end_65} :catchall_6c

    :catch_65
    move-exception p0

    .line 260
    :try_start_66
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_6c
    move-exception p0

    .line 263
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_66 .. :try_end_6e} :catchall_6c

    throw p0
.end method

.method public cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;Z)V
    .registers 6

    .line 267
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/PendingIntentController;->makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;)V

    .line 269
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/server/am/PendingIntentController;->decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    if-eqz p2, :cond_2c

    .line 271
    iget-object p2, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object p2, p2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-eqz p2, :cond_2c

    .line 272
    new-instance p2, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticLambda0;-><init>()V

    iget-object v1, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object p1, p1, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-static {p2, p0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 275
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 277
    :cond_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public final clearPendingResultForActivity(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;)V"
        }
    .end annotation

    .line 367
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearPendingResultForActivity(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 531
    iget p1, p1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 532
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_2c

    .line 534
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 536
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    add-int/lit8 v2, v2, -0xa

    if-ne v1, v2, :cond_1f

    .line 537
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_1f
    if-nez v1, :cond_27

    .line 540
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_2c

    .line 542
    :cond_27
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->setValueAt(II)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public dumpPendingIntentStatsForStatsd()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/PendingIntentStats;",
            ">;"
        }
    .end annotation

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 449
    :try_start_8
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_98

    .line 451
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 452
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 454
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_24
    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_24

    .line 455
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_39

    goto :goto_24

    .line 458
    :cond_39
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    .line 459
    iget v5, v4, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    const/4 v6, 0x1

    if-gez v5, :cond_5b

    .line 462
    iget v5, v4, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 463
    iget v5, v4, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 464
    invoke-virtual {v4}, Landroid/content/Intent;->getExtrasTotalSize()I

    move-result v4

    .line 463
    invoke-virtual {v3, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_24

    .line 466
    :cond_5b
    iget v7, v4, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v2, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 467
    iget v6, v4, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 468
    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 469
    invoke-virtual {v4}, Landroid/content/Intent;->getExtrasTotalSize()I

    move-result v4

    add-int/2addr v5, v4

    .line 467
    invoke-virtual {v3, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_24

    :cond_78
    const/4 p0, 0x0

    .line 474
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    :goto_7d
    if-ge p0, v4, :cond_98

    .line 475
    new-instance v5, Landroid/app/PendingIntentStats;

    .line 476
    invoke-virtual {v2, p0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 477
    invoke-virtual {v2, p0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    .line 478
    invoke-virtual {v3, p0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    div-int/lit16 v8, v8, 0x400

    invoke-direct {v5, v6, v7, v8}, Landroid/app/PendingIntentStats;-><init>(III)V

    .line 475
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_7d

    .line 481
    :cond_98
    monitor-exit v1

    return-object v0

    :catchall_9a
    move-exception p0

    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_8 .. :try_end_9c} :catchall_9a

    throw p0
.end method

.method public dumpPendingIntents(Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .registers 13

    .line 371
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "ACTIVITY MANAGER PENDING INTENTS (dumpsys activity intents)"

    .line 374
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_f2

    .line 378
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 379
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 380
    iget-object v5, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 381
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 382
    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 383
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_3b

    .line 384
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/PendingIntentRecord;

    goto :goto_3c

    :cond_3b
    const/4 v7, 0x0

    :goto_3c
    if-nez v7, :cond_42

    .line 386
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_42
    if-eqz p3, :cond_4f

    .line 389
    iget-object v6, v7, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4f

    goto :goto_26

    .line 392
    :cond_4f
    iget-object v6, v7, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_67

    .line 394
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 395
    iget-object v8, v7, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_67
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_6b
    move p3, v2

    move v5, p3

    .line 399
    :goto_6d
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge p3, v6, :cond_c7

    .line 400
    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const-string v6, "  * "

    .line 402
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, ": "

    .line 403
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, " items"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v6, v2

    .line 404
    :goto_99
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_c3

    const-string v7, "    #"

    .line 405
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p2, :cond_c0

    .line 407
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/PendingIntentRecord;

    const-string v8, "      "

    invoke-virtual {v7, p1, v8}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_c0
    add-int/lit8 v6, v6, 0x1

    goto :goto_99

    :cond_c3
    add-int/lit8 p3, p3, 0x1

    move v5, v3

    goto :goto_6d

    .line 411
    :cond_c7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_f0

    const-string p2, "  * WEAK REFS:"

    .line 413
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p2, v2

    .line 414
    :goto_d3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_f3

    const-string p3, "    #"

    .line 415
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p3, ": "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_d3

    :cond_f0
    move v3, v5

    goto :goto_f3

    :cond_f2
    move v3, v2

    .line 420
    :cond_f3
    :goto_f3
    iget-object p2, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    if-lez p2, :cond_11c

    :goto_fb
    if-ge v2, p2, :cond_11c

    const-string p3, "  * UID: "

    .line 423
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 424
    iget-object p3, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {p3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string p3, " total: "

    .line 425
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 426
    iget-object p3, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {p3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_fb

    :cond_11c
    if-nez v3, :cond_123

    const-string p0, "  (nothing)"

    .line 431
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    :cond_123
    monitor-exit v0

    return-void

    :catchall_125
    move-exception p0

    monitor-exit v0
    :try_end_127
    .catchall {:try_start_3 .. :try_end_127} :catchall_125

    throw p0
.end method

.method public getIntentSender(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;
    .registers 33

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v14, p9

    .line 122
    iget-object v15, v0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 123
    :try_start_9
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v2, :cond_23

    const-string v2, "ActivityManager_MU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIntentSender(): uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const/4 v2, 0x0

    const/4 v13, 0x1

    if-eqz v14, :cond_33

    move v3, v2

    .line 128
    :goto_28
    array-length v4, v14

    if-ge v3, v4, :cond_33

    .line 129
    aget-object v4, v14, v3

    invoke-virtual {v4, v13}, Landroid/content/Intent;->setDefusable(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_33
    move-object/from16 v3, p12

    .line 132
    invoke-static {v3, v13}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    const/high16 v4, 0x20000000

    and-int v4, p11, v4

    if-eqz v4, :cond_41

    move/from16 v16, v13

    goto :goto_43

    :cond_41
    move/from16 v16, v2

    :goto_43
    const/high16 v4, 0x10000000

    and-int v4, p11, v4

    if-eqz v4, :cond_4c

    move/from16 v17, v13

    goto :goto_4e

    :cond_4c
    move/from16 v17, v2

    :goto_4e
    const/high16 v4, 0x8000000

    and-int v4, p11, v4

    if-eqz v4, :cond_57

    move/from16 v18, v13

    goto :goto_59

    :cond_57
    move/from16 v18, v2

    :goto_59
    const v2, -0x38000001

    and-int v11, p11, v2

    .line 140
    new-instance v12, Lcom/android/server/am/PendingIntentRecord$Key;

    .line 142
    invoke-static/range {p12 .. p12}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v19

    move-object v2, v12

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object v1, v12

    move-object/from16 v12, v19

    move/from16 v19, v13

    move/from16 v13, p5

    invoke-direct/range {v2 .. v13}, Lcom/android/server/am/PendingIntentRecord$Key;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILcom/android/server/wm/SafeActivityOptions;I)V

    .line 144
    iget-object v2, v0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    if-eqz v2, :cond_91

    .line 145
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    goto :goto_92

    :cond_91
    move-object v2, v3

    :goto_92
    if-eqz v2, :cond_cf

    if-nez v17, :cond_c4

    if-eqz v18, :cond_c2

    .line 149
    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_aa

    if-eqz v14, :cond_a6

    .line 151
    array-length v1, v14

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v14, v1

    goto :goto_a7

    :cond_a6
    move-object v1, v3

    .line 150
    :goto_a7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    :cond_aa
    if-eqz v14, :cond_bc

    .line 154
    array-length v0, v14

    add-int/lit8 v0, v0, -0x1

    iget-object v1, v2, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    aput-object v3, v14, v0

    .line 155
    iput-object v14, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    move-object/from16 v0, p10

    .line 156
    iput-object v0, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    goto :goto_c2

    .line 158
    :cond_bc
    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iput-object v3, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 159
    iput-object v3, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    .line 162
    :cond_c2
    :goto_c2
    monitor-exit v15

    return-object v2

    .line 164
    :cond_c4
    invoke-virtual {v0, v2}, Lcom/android/server/am/PendingIntentController;->makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;)V

    .line 165
    iget-object v3, v0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {v0, v2}, Lcom/android/server/am/PendingIntentController;->decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    :cond_cf
    if-eqz v16, :cond_d3

    .line 169
    monitor-exit v15

    return-object v2

    .line 171
    :cond_d3
    new-instance v2, Lcom/android/server/am/PendingIntentRecord;

    move-object v3, v1

    move/from16 v1, p4

    invoke-direct {v2, v0, v3, v1}, Lcom/android/server/am/PendingIntentRecord;-><init>(Lcom/android/server/am/PendingIntentController;Lcom/android/server/am/PendingIntentRecord$Key;I)V

    .line 172
    iget-object v1, v0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-virtual {v0, v2}, Lcom/android/server/am/PendingIntentController;->incrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    .line 174
    monitor-exit v15

    return-object v2

    :catchall_e7
    move-exception v0

    .line 175
    monitor-exit v15
    :try_end_e9
    .catchall {:try_start_9 .. :try_end_e9} :catchall_e7

    throw v0
.end method

.method public getPendingIntentFlags(Landroid/content/IIntentSender;)I
    .registers 4

    .line 323
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_1d

    const-string p0, "ActivityManager"

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "markAsSentFromNotification(): not a PendingIntentRecord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 327
    :cond_1d
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 328
    :try_start_20
    check-cast p1, Lcom/android/server/am/PendingIntentRecord;

    iget-object p1, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget p1, p1, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    monitor-exit p0

    return p1

    :catchall_28
    move-exception p1

    .line 329
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public final handlePendingIntentCancelled(Landroid/os/RemoteCallbackList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;)V"
        }
    .end annotation

    .line 351
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, p0, :cond_15

    .line 354
    :try_start_8
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/IResultReceiver;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_12

    :catch_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 359
    :cond_15
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 362
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->kill()V

    return-void
.end method

.method public incrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 491
    iget v0, p1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 492
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_18

    .line 495
    iget-object v3, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 496
    iget-object v4, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_1e

    .line 498
    :cond_18
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    move v3, v2

    .line 502
    :goto_1e
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    add-int/lit8 v4, v1, -0xa

    add-int/2addr v4, v2

    const/4 v2, 0x0

    const/16 v5, 0xa

    if-ne v3, v4, :cond_37

    .line 505
    new-instance v2, Lcom/android/internal/util/RingBuffer;

    const-class v1, Ljava/lang/String;

    invoke-direct {v2, v1, v5}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 506
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_44

    :cond_37
    if-le v3, v4, :cond_44

    if-gt v3, v1, :cond_44

    .line 508
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/util/RingBuffer;

    :cond_44
    :goto_44
    if-nez v2, :cond_47

    return-void

    .line 514
    :cond_47
    iget-object p1, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {p1}, Lcom/android/server/am/PendingIntentRecord$Key;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 517
    iget-object p1, p0, Lcom/android/server/am/PendingIntentController;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p1, p1, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    if-ne v3, p1, :cond_89

    .line 518
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many PendingIntent created for uid "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recent "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ActivityManager"

    .line 518
    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_89
    return-void
.end method

.method public final makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;)V
    .registers 4

    .line 335
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p1, Lcom/android/server/am/PendingIntentRecord;->canceledFromUID:I

    .line 336
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p1, Lcom/android/server/am/PendingIntentRecord;->canceledFromPID:I

    const/4 v0, 0x1

    .line 339
    iput-boolean v0, p1, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 340
    invoke-virtual {p1}, Lcom/android/server/am/PendingIntentRecord;->detachCancelListenersLocked()Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 342
    new-instance v1, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 344
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 346
    :cond_23
    const-class p0, Lcom/android/server/AlarmManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/AlarmManagerInternal;

    .line 347
    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, p1}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    invoke-interface {p0, v0}, Lcom/android/server/AlarmManagerInternal;->remove(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public onActivityManagerInternalAdded()V
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_3
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 116
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public registerIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)Z
    .registers 5

    .line 281
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    const/4 v1, 0x1

    if-nez v0, :cond_e

    const-string p0, "ActivityManager"

    const-string/jumbo p1, "registerIntentSenderCancelListener called on non-PendingIntentRecord"

    .line 282
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 287
    :cond_e
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 288
    :try_start_11
    check-cast p1, Lcom/android/server/am/PendingIntentRecord;

    .line 289
    iget-boolean v0, p1, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v0, :cond_1c

    .line 291
    invoke-virtual {p1, p2}, Lcom/android/server/am/PendingIntentRecord;->registerCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V

    .line 292
    monitor-exit p0

    return v1

    :cond_1c
    const/4 p1, 0x0

    .line 294
    monitor-exit p0

    return p1

    :catchall_1f
    move-exception p1

    .line 296
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public removePendingIntentsForPackage(Ljava/lang/String;IIZ)Z
    .registers 11

    .line 182
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_e

    .line 188
    monitor-exit v0

    return v2

    .line 191
    :cond_e
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 192
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    .line 193
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_87

    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_2b

    .line 196
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_19

    .line 199
    :cond_2b
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    if-nez v4, :cond_37

    .line 201
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_19

    :cond_37
    if-nez p1, :cond_40

    .line 206
    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-eq v5, p2, :cond_5e

    goto :goto_19

    .line 211
    :cond_40
    iget v5, v4, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-eq v5, p3, :cond_49

    goto :goto_19

    :cond_49
    const/4 v5, -0x1

    if-eq p2, v5, :cond_53

    .line 215
    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-eq v5, p2, :cond_53

    goto :goto_19

    .line 219
    :cond_53
    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5e

    goto :goto_19

    :cond_5e
    if-nez p4, :cond_62

    .line 225
    monitor-exit v0

    return v3

    .line 228
    :cond_62
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 229
    invoke-virtual {p0, v4}, Lcom/android/server/am/PendingIntentController;->makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;)V

    .line 230
    invoke-virtual {p0, v4}, Lcom/android/server/am/PendingIntentController;->decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    .line 231
    iget-object v2, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-eqz v2, :cond_85

    .line 232
    new-instance v2, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticLambda0;-><init>()V

    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-static {v2, p0, v5, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 235
    iget-object v4, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_85
    move v2, v3

    goto :goto_19

    .line 238
    :cond_87
    monitor-exit v0

    return v2

    :catchall_89
    move-exception p0

    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_3 .. :try_end_8b} :catchall_89

    throw p0
.end method

.method public setPendingIntentAllowlistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;JIILjava/lang/String;)V
    .registers 15

    .line 312
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_1c

    const-string p0, "ActivityManager"

    .line 313
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "markAsSentFromNotification(): not a PendingIntentRecord: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 316
    :cond_1c
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 317
    :try_start_1f
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/PendingIntentRecord;

    move-object v1, p2

    move-wide v2, p3

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/PendingIntentRecord;->setAllowlistDurationLocked(Landroid/os/IBinder;JIILjava/lang/String;)V

    .line 319
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public unregisterIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V
    .registers 4

    .line 301
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_5

    return-void

    .line 304
    :cond_5
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 305
    :try_start_8
    check-cast p1, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {p1, p2}, Lcom/android/server/am/PendingIntentRecord;->unregisterCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V

    .line 306
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw p1
.end method
