.class Lcom/android/ims/ImsManager$InstanceManager;
.super Ljava/lang/Object;
.source "ImsManager.java"

# interfaces
.implements Lcom/android/ims/FeatureConnector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/ims/FeatureConnector$Listener<",
        "Lcom/android/ims/ImsManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist CONNECT_TIMEOUT_MS:I = 0x32


# instance fields
.field private blacklist isConnectorActive:Z

.field private blacklist mConnectedLatch:Ljava/util/concurrent/CountDownLatch;

.field private final blacklist mConnector:Lcom/android/ims/FeatureConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ims/FeatureConnector<",
            "Lcom/android/ims/ImsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mImsManager:Lcom/android/ims/ImsManager;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Lcom/android/ims/ImsManager;)V
    .registers 12
    .param p1, "manager"    # Lcom/android/ims/ImsManager;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsManager$InstanceManager;->mLock:Ljava/lang/Object;

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/ImsManager$InstanceManager;->isConnectorActive:Z

    .line 374
    iput-object p1, p0, Lcom/android/ims/ImsManager$InstanceManager;->mImsManager:Lcom/android/ims/ImsManager;

    .line 376
    const-string v1, "IM"

    invoke-static {p1, v1}, Lcom/android/ims/ImsManager;->-$$Nest$fputmLogTagPostfix(Lcom/android/ims/ImsManager;Ljava/lang/String;)V

    .line 378
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v1, "readyFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    new-instance v0, Lcom/android/ims/FeatureConnector;

    iget-object v3, p1, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    iget v4, p1, Lcom/android/ims/ImsManager;->mPhoneId:I

    new-instance v5, Lcom/android/ims/ImsManager$InstanceManager$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/ims/ImsManager$InstanceManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/ims/ImsManager$InstanceManager;)V

    .line 386
    invoke-static {p1}, Lcom/android/ims/ImsManager;->-$$Nest$mgetImsThreadExecutor(Lcom/android/ims/ImsManager;)Ljava/util/concurrent/Executor;

    move-result-object v9

    const-string v6, "InstanceManager"

    move-object v2, v0

    move-object v7, v1

    move-object v8, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/ims/FeatureConnector;-><init>(Landroid/content/Context;ILcom/android/ims/FeatureConnector$ManagerFactory;Ljava/lang/String;Ljava/util/List;Lcom/android/ims/FeatureConnector$Listener;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager$InstanceManager;->mConnector:Lcom/android/ims/FeatureConnector;

    .line 387
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist connectionReady(Lcom/android/ims/FeatureUpdates;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 361
    check-cast p1, Lcom/android/ims/ImsManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsManager$InstanceManager;->connectionReady(Lcom/android/ims/ImsManager;I)V

    return-void
.end method

.method public blacklist connectionReady(Lcom/android/ims/ImsManager;I)V
    .registers 7
    .param p1, "manager"    # Lcom/android/ims/ImsManager;
    .param p2, "subId"    # I

    .line 418
    iget-object v0, p0, Lcom/android/ims/ImsManager$InstanceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsManager$InstanceManager;->mImsManager:Lcom/android/ims/ImsManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectionReady, subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->-$$Nest$mlogi(Lcom/android/ims/ImsManager;Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/android/ims/ImsManager$InstanceManager;->mConnectedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 421
    monitor-exit v0

    .line 422
    return-void

    .line 421
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public blacklist connectionUnavailable(I)V
    .registers 6
    .param p1, "reason"    # I

    .line 426
    iget-object v0, p0, Lcom/android/ims/ImsManager$InstanceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsManager$InstanceManager;->mImsManager:Lcom/android/ims/ImsManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectionUnavailable, reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->-$$Nest$mlogi(Lcom/android/ims/ImsManager;Ljava/lang/String;)V

    .line 430
    const/4 v1, 0x3

    if-ne p1, v1, :cond_21

    .line 431
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ims/ImsManager$InstanceManager;->isConnectorActive:Z

    .line 433
    :cond_21
    iget-object v1, p0, Lcom/android/ims/ImsManager$InstanceManager;->mConnectedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 434
    monitor-exit v0

    .line 436
    return-void

    .line 434
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public blacklist getInstance()Lcom/android/ims/ImsManager;
    .registers 2

    .line 390
    iget-object v0, p0, Lcom/android/ims/ImsManager$InstanceManager;->mImsManager:Lcom/android/ims/ImsManager;

    return-object v0
.end method

.method synthetic blacklist lambda$new$0$com-android-ims-ImsManager$InstanceManager(Landroid/content/Context;I)Lcom/android/ims/ImsManager;
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "p"    # I

    .line 385
    iget-object v0, p0, Lcom/android/ims/ImsManager$InstanceManager;->mImsManager:Lcom/android/ims/ImsManager;

    return-object v0
.end method

.method public blacklist reconnect()V
    .registers 6

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, "requiresReconnect":Z
    iget-object v1, p0, Lcom/android/ims/ImsManager$InstanceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 396
    :try_start_4
    iget-boolean v2, p0, Lcom/android/ims/ImsManager$InstanceManager;->isConnectorActive:Z

    if-nez v2, :cond_13

    .line 397
    const/4 v0, 0x1

    .line 398
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/ims/ImsManager$InstanceManager;->isConnectorActive:Z

    .line 399
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lcom/android/ims/ImsManager$InstanceManager;->mConnectedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 401
    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_31

    .line 402
    if-eqz v0, :cond_1b

    .line 403
    iget-object v1, p0, Lcom/android/ims/ImsManager$InstanceManager;->mConnector:Lcom/android/ims/FeatureConnector;

    invoke-virtual {v1}, Lcom/android/ims/FeatureConnector;->connect()V

    .line 408
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lcom/android/ims/ImsManager$InstanceManager;->mConnectedLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x32

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 409
    iget-object v1, p0, Lcom/android/ims/ImsManager$InstanceManager;->mImsManager:Lcom/android/ims/ImsManager;

    const-string v2, "ImsService not up yet - timeout waiting for connection."

    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->-$$Nest$mlog(Lcom/android/ims/ImsManager;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_2e} :catch_2f

    .line 413
    :cond_2e
    goto :goto_30

    .line 411
    :catch_2f
    move-exception v1

    .line 414
    :goto_30
    return-void

    .line 401
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2
.end method
