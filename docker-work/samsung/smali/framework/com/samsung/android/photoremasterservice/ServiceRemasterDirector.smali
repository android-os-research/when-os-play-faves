.class public Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
.super Ljava/lang/Object;
.source "ServiceRemasterDirector.java"

# interfaces
.implements Lcom/samsung/android/photoremaster/IDirector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;
    }
.end annotation


# static fields
.field static final blacklist TAG:Ljava/lang/String; = "ServiceRemasterDirector"


# instance fields
.field private blacklist mInitialized:Z

.field private final blacklist mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

.field private final blacklist mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

.field private final blacklist mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

.field private final blacklist mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-direct {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    .line 22
    new-instance v1, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-direct {v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    .line 23
    new-instance v1, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-direct {v1}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    .line 24
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mInitialized:Z

    .line 25
    new-instance v2, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-direct {v2}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    .line 28
    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->getProgressObserver()Lcom/samsung/android/photoremasterservice/ProgressObserver;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->registerObserver(Lcom/samsung/android/photoremasterservice/ProgressObserver;)V

    .line 29
    return-void
.end method

.method private blacklist confirmInitialized()V
    .registers 2

    .line 371
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized(Z)V

    .line 372
    return-void
.end method

.method private blacklist confirmInitialized(Z)V
    .registers 4
    .param p1, "isLeavingLog"    # Z

    .line 375
    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mInitialized:Z

    if-nez v0, :cond_17

    .line 376
    const-string v0, "Access before initialization."

    const-string v1, "ServiceRemasterDirector"

    if-eqz p1, :cond_e

    .line 377
    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 379
    :cond_e
    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :goto_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 383
    :cond_17
    return-void
.end method

.method private blacklist throwEmptyBundleException()V
    .registers 3

    .line 386
    const-string v0, "ServiceRemasterDirector"

    const-string v1, "Return bundle is empty."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public declared-synchronized blacklist deinit()V
    .registers 5

    monitor-enter p0

    .line 102
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->lock()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_7f

    .line 108
    :try_start_2e
    invoke-direct {p0, v3}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized(Z)V
    :try_end_31
    .catch Ljava/lang/IllegalStateException; {:try_start_2e .. :try_end_31} :catch_34
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    .line 114
    goto :goto_47

    .line 129
    :catchall_32
    move-exception v0

    goto :goto_79

    .line 109
    :catch_34
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_35
    iget-boolean v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mInitialized:Z

    if-nez v1, :cond_47

    .line 111
    const-string v1, "ServiceRemasterDirector"

    const-string v2, "Double Deinitialization!!!"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_78

    .line 129
    :try_start_40
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_7f

    .line 112
    monitor-exit p0

    return-void

    .line 117
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_47
    :goto_47
    :try_start_47
    iput-boolean v3, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mInitialized:Z

    .line 119
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 120
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->unbindService()V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->deinitServiceCall()V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->unbindService()V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->deinit()V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->deinitServiceCall()V
    :try_end_69
    .catchall {:try_start_47 .. :try_end_69} :catchall_78

    .line 129
    :try_start_69
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 130
    nop

    .line 131
    const-string v0, "ServiceRemasterDirector"

    const-string v1, "deinit() is done."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_69 .. :try_end_76} :catchall_7f

    .line 132
    monitor-exit p0

    return-void

    .line 129
    :catchall_78
    move-exception v0

    :goto_79
    :try_start_79
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 130
    throw v0
    :try_end_7f
    .catchall {:try_start_79 .. :try_end_7f} :catchall_7f

    .line 101
    :catchall_7f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist getIntParam(I)I
    .registers 7
    .param p1, "id"    # I

    monitor-enter p0

    .line 323
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_a3

    .line 327
    :try_start_2e
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 329
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 330
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 331
    const-string v1, "ServiceRemasterDirector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "int_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 334
    .local v1, "retBundle":Landroid/os/Bundle;
    if-nez v1, :cond_6e

    .line 335
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->throwEmptyBundleException()V
    :try_end_66
    .catchall {:try_start_2e .. :try_end_66} :catchall_9c

    .line 336
    const/4 v2, -0x1

    .line 342
    :try_start_67
    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v3}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_a3

    .line 336
    monitor-exit p0

    return v2

    .line 338
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_6e
    :try_start_6e
    const-string v2, "ServiceRemasterDirector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ret Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ret_int"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string/jumbo v2, "ret_int"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_95
    .catchall {:try_start_6e .. :try_end_95} :catchall_9c

    .line 342
    :try_start_95
    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v3}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_9a
    .catchall {:try_start_95 .. :try_end_9a} :catchall_a3

    .line 339
    monitor-exit p0

    return v2

    .line 342
    .end local v0    # "argBundle":Landroid/os/Bundle;
    .end local v1    # "retBundle":Landroid/os/Bundle;
    :catchall_9c
    move-exception v0

    :try_start_9d
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 343
    throw v0
    :try_end_a3
    .catchall {:try_start_9d .. :try_end_a3} :catchall_a3

    .line 322
    .end local p1    # "id":I
    :catchall_a3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getLongParam(I)J
    .registers 8
    .param p1, "id"    # I

    monitor-enter p0

    .line 349
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_86

    .line 353
    :try_start_2e
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 355
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 356
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 358
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 359
    .local v1, "retBundle":Landroid/os/Bundle;
    if-nez v1, :cond_51

    .line 360
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->throwEmptyBundleException()V
    :try_end_48
    .catchall {:try_start_2e .. :try_end_48} :catchall_7f

    .line 361
    const-wide/16 v2, -0x1

    .line 366
    :try_start_4a
    iget-object v4, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v4}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_86

    .line 361
    monitor-exit p0

    return-wide v2

    .line 363
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_51
    :try_start_51
    const-string v2, "ServiceRemasterDirector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ret Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ret_long"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string/jumbo v2, "ret_long"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_78
    .catchall {:try_start_51 .. :try_end_78} :catchall_7f

    .line 366
    :try_start_78
    iget-object v4, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v4}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_86

    .line 364
    monitor-exit p0

    return-wide v2

    .line 366
    .end local v0    # "argBundle":Landroid/os/Bundle;
    .end local v1    # "retBundle":Landroid/os/Bundle;
    :catchall_7f
    move-exception v0

    :try_start_80
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 367
    throw v0
    :try_end_86
    .catchall {:try_start_80 .. :try_end_86} :catchall_86

    .line 348
    .end local p1    # "id":I
    :catchall_86
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getStringParam(I)Ljava/lang/String;
    .registers 7
    .param p1, "id"    # I

    monitor-enter p0

    .line 300
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_86

    .line 304
    :try_start_2e
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 306
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 307
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 309
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 310
    .local v1, "retBundle":Landroid/os/Bundle;
    if-nez v1, :cond_51

    .line 311
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->throwEmptyBundleException()V

    .line 312
    const-string v2, ""
    :try_end_4a
    .catchall {:try_start_2e .. :try_end_4a} :catchall_7f

    .line 317
    :try_start_4a
    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v3}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_86

    .line 312
    monitor-exit p0

    return-object v2

    .line 314
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_51
    :try_start_51
    const-string v2, "ServiceRemasterDirector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ret Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ret_string"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string/jumbo v2, "ret_string"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_78
    .catchall {:try_start_51 .. :try_end_78} :catchall_7f

    .line 317
    :try_start_78
    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v3}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_86

    .line 315
    monitor-exit p0

    return-object v2

    .line 317
    .end local v0    # "argBundle":Landroid/os/Bundle;
    .end local v1    # "retBundle":Landroid/os/Bundle;
    :catchall_7f
    move-exception v0

    :try_start_80
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 318
    throw v0
    :try_end_86
    .catchall {:try_start_80 .. :try_end_86} :catchall_86

    .line 299
    .end local p1    # "id":I
    :catchall_86
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist init(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 66
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->initServiceCall()V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->initServiceCall()V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->init()V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_c5

    .line 74
    :try_start_3d
    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mInitialized:Z

    if-eqz v0, :cond_4f

    .line 75
    const-string v0, "ServiceRemasterDirector"

    const-string v1, "Double Initialization!!! init is ignored."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_be

    .line 96
    :try_start_48
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_c5

    .line 76
    monitor-exit p0

    return-void

    .line 79
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_4f
    :try_start_4f
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0, p1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->setContext(Landroid/content/Context;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0, p1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->setContext(Landroid/content/Context;)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-virtual {v0, p1}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->setContext(Landroid/content/Context;)V

    .line 83
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "ServiceRemasterDirector"

    const-string v1, "PhotoRemaster git commit: %s , build date: %s"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "1a5c03258909263dd2f4d4c3cf699f41ad5f49f0"

    aput-object v5, v4, v3

    const-string v3, "2023.04.12.11:04"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mInitialized:Z

    if-eqz v0, :cond_ae

    .line 89
    const-string v0, "ServiceRemasterDirector"

    const-string v1, "Double Initialization!!!"

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a7
    .catchall {:try_start_4f .. :try_end_a7} :catchall_be

    .line 96
    :try_start_a7
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_ac
    .catchall {:try_start_a7 .. :try_end_ac} :catchall_c5

    .line 90
    monitor-exit p0

    return-void

    .line 93
    :cond_ae
    :try_start_ae
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 94
    iput-boolean v5, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mInitialized:Z
    :try_end_b6
    .catchall {:try_start_ae .. :try_end_b6} :catchall_be

    .line 96
    :try_start_b6
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_bb
    .catchall {:try_start_b6 .. :try_end_bb} :catchall_c5

    .line 97
    nop

    .line 98
    monitor-exit p0

    return-void

    .line 96
    :catchall_be
    move-exception v0

    :try_start_bf
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 97
    throw v0
    :try_end_c5
    .catchall {:try_start_bf .. :try_end_c5} :catchall_c5

    .line 65
    .end local p1    # "context":Landroid/content/Context;
    :catchall_c5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist processAestheticScoring()F
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 217
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_60

    .line 221
    :try_start_2e
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 222
    const-string v0, "ServiceRemasterDirector"

    const-string v1, "processAestheticScoring:"

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_40
    .catchall {:try_start_2e .. :try_end_40} :catchall_59

    .line 224
    .local v0, "retBundle":Landroid/os/Bundle;
    if-nez v0, :cond_4b

    .line 225
    const/high16 v1, -0x40800000    # -1.0f

    .line 230
    :try_start_44
    iget-object v2, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v2}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_60

    .line 225
    monitor-exit p0

    return v1

    .line 228
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_4b
    :try_start_4b
    const-string/jumbo v1, "ret_float"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_59

    .line 230
    :try_start_52
    iget-object v2, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v2}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_60

    .line 228
    monitor-exit p0

    return v1

    .line 230
    .end local v0    # "retBundle":Landroid/os/Bundle;
    :catchall_59
    move-exception v0

    :try_start_5a
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 231
    throw v0
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_60

    .line 216
    :catchall_60
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist processImage(II)Z
    .registers 8
    .param p1, "processMode"    # I
    .param p2, "enhanceMode"    # I

    monitor-enter p0

    .line 168
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    if-ltz p2, :cond_7e

    .line 174
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->throwExceptionIfLocked()V

    .line 175
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 177
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 178
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string v1, "int_processMode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    const-string v1, "int_enhanceMode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    const-string v1, "ServiceRemasterDirector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processImage("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_71
    .catchall {:try_start_1 .. :try_end_71} :catchall_84

    .line 183
    .local v1, "retBundle":Landroid/os/Bundle;
    if-nez v1, :cond_75

    .line 184
    monitor-exit p0

    return v3

    .line 186
    :cond_75
    :try_start_75
    const-string/jumbo v2, "ret_boolean"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_84

    monitor-exit p0

    return v2

    .line 171
    .end local v0    # "argBundle":Landroid/os/Bundle;
    .end local v1    # "retBundle":Landroid/os/Bundle;
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_7e
    :try_start_7e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_84
    .catchall {:try_start_7e .. :try_end_84} :catchall_84

    .line 167
    .end local p1    # "processMode":I
    .end local p2    # "enhanceMode":I
    :catchall_84
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist processImage(ILjava/util/List;)Z
    .registers 9
    .param p1, "processMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .local p2, "enhanceModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 191
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->throwExceptionIfLocked()V

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 195
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 196
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string v1, "int_processMode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 199
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v2, "ArrayListInt_enhanceMode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 200
    const-string v2, "ServiceRemasterDirector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processImage("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 203
    .local v2, "retBundle":Landroid/os/Bundle;
    if-nez v2, :cond_80

    .line 204
    const-string v4, "ServiceRemasterDirector"

    const-string/jumbo v5, "retBundle is null."

    invoke-static {v4, v5}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_1 .. :try_end_7e} :catchall_89

    .line 205
    monitor-exit p0

    return v3

    .line 207
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_80
    :try_start_80
    const-string/jumbo v3, "ret_boolean"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_87
    .catchall {:try_start_80 .. :try_end_87} :catchall_89

    monitor-exit p0

    return v3

    .line 190
    .end local v0    # "argBundle":Landroid/os/Bundle;
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "retBundle":Landroid/os/Bundle;
    .end local p1    # "processMode":I
    .end local p2    # "enhanceModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_89
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setLongParam(IJ)V
    .registers 9
    .param p1, "id"    # I
    .param p2, "value"    # J

    monitor-enter p0

    .line 276
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_9f

    .line 280
    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_41

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_39

    goto :goto_41

    .line 281
    :cond_39
    :try_start_39
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    .end local p1    # "id":I
    .end local p2    # "value":J
    throw v0
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_3f

    .line 294
    .restart local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    .restart local p1    # "id":I
    .restart local p2    # "value":J
    :catchall_3f
    move-exception v0

    goto :goto_99

    .line 284
    :cond_41
    :goto_41
    :try_start_41
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 286
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 287
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    const-string v1, "long_value"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 289
    const-string v1, "ServiceRemasterDirector"

    const-string/jumbo v2, "setLongParam:"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v1, "ServiceRemasterDirector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "int_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "long_value"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_90
    .catchall {:try_start_41 .. :try_end_90} :catchall_98

    .line 294
    .end local v0    # "argBundle":Landroid/os/Bundle;
    :try_start_90
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_95
    .catchall {:try_start_90 .. :try_end_95} :catchall_9f

    .line 295
    nop

    .line 296
    monitor-exit p0

    return-void

    .line 294
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :catchall_98
    move-exception v0

    :goto_99
    :try_start_99
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 295
    throw v0
    :try_end_9f
    .catchall {:try_start_99 .. :try_end_9f} :catchall_9f

    .line 275
    .end local p1    # "id":I
    .end local p2    # "value":J
    :catchall_9f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setObjectParam(ILjava/lang/Object;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 236
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_66

    .line 240
    :try_start_2e
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 242
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 243
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 244
    move-object v1, p2

    check-cast v1, Landroid/net/Uri;

    .line 245
    .local v1, "uri":Landroid/net/Uri;
    const-string/jumbo v2, "string_value"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v2, "ServiceRemasterDirector"

    const-string/jumbo v3, "setObjectParam:"

    invoke-static {v2, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v2, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_57
    .catchall {:try_start_2e .. :try_end_57} :catchall_5f

    .line 250
    .end local v0    # "argBundle":Landroid/os/Bundle;
    .end local v1    # "uri":Landroid/net/Uri;
    :try_start_57
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_66

    .line 251
    nop

    .line 252
    monitor-exit p0

    return-void

    .line 250
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :catchall_5f
    move-exception v0

    :try_start_60
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 251
    throw v0
    :try_end_66
    .catchall {:try_start_60 .. :try_end_66} :catchall_66

    .line 235
    .end local p1    # "id":I
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_66
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setProgressUpdateListener(Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;

    monitor-enter p0

    .line 392
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_42

    .line 396
    :try_start_2e
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-virtual {v0, p1}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->setProgressUpdateListener(Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_3b

    .line 398
    :try_start_33
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_42

    .line 399
    nop

    .line 400
    monitor-exit p0

    return-void

    .line 398
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :catchall_3b
    move-exception v0

    :try_start_3c
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 399
    throw v0
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_42

    .line 391
    .end local p1    # "listener":Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;
    :catchall_42
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setStringParam(ILjava/lang/String;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;

    monitor-enter p0

    .line 256
    :try_start_1
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_8e

    .line 260
    :try_start_2e
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 262
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 263
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    const-string/jumbo v1, "string_value"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v1, "ServiceRemasterDirector"

    const-string/jumbo v2, "setStringParam:"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v1, "ServiceRemasterDirector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "int_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "string_value"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_7f
    .catchall {:try_start_2e .. :try_end_7f} :catchall_87

    .line 270
    .end local v0    # "argBundle":Landroid/os/Bundle;
    :try_start_7f
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_84
    .catchall {:try_start_7f .. :try_end_84} :catchall_8e

    .line 271
    nop

    .line 272
    monitor-exit p0

    return-void

    .line 270
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :catchall_87
    move-exception v0

    :try_start_88
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 271
    throw v0
    :try_end_8e
    .catchall {:try_start_88 .. :try_end_8e} :catchall_8e

    .line 255
    .end local p1    # "id":I
    .end local p2    # "value":Ljava/lang/String;
    :catchall_8e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist stop()V
    .registers 5

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is called!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceRemasterDirector"

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->lock()V

    .line 141
    :try_start_2d
    invoke-direct {p0, v2}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized(Z)V
    :try_end_30
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_30} :catch_62
    .catchall {:try_start_2d .. :try_end_30} :catchall_60

    .line 146
    nop

    .line 150
    :try_start_31
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_38
    .catch Ljava/lang/IllegalStateException; {:try_start_31 .. :try_end_38} :catch_40
    .catchall {:try_start_31 .. :try_end_38} :catchall_3e

    .line 154
    :try_start_38
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    :goto_3a
    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->unbindService()V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_60

    .line 155
    goto :goto_49

    .line 154
    :catchall_3e
    move-exception v0

    goto :goto_59

    .line 151
    :catch_40
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_41
    const-string v2, "Stop is called before initialization!!!"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_3e

    .line 154
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :try_start_46
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    :try_end_48
    .catchall {:try_start_46 .. :try_end_48} :catchall_60

    goto :goto_3a

    .line 158
    :goto_49
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 159
    nop

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->deinit()V

    .line 163
    const-string/jumbo v0, "stop() is done."

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void

    .line 154
    :goto_59
    :try_start_59
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->unbindService()V

    .line 155
    nop

    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    throw v0

    .line 158
    .restart local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :catchall_60
    move-exception v0

    goto :goto_6e

    .line 142
    :catch_62
    move-exception v0

    .line 144
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    const-string v2, "Stop is called after deinit is done. Stop is ignored."

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_59 .. :try_end_68} :catchall_60

    .line 158
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 145
    return-void

    .line 158
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_6e
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 159
    throw v0
.end method
