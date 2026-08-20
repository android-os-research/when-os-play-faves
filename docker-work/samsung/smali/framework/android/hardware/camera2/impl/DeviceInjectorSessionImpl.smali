.class public Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
.super Landroid/hardware/camera2/DeviceInjectorSession;
.source "DeviceInjectorSessionImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;,
        Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$PendingDrainListener;,
        Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "DeviceIjtSessionImpl"


# instance fields
.field private final blacklist mCallback:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;

.field private blacklist mClosed:Z

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mInjectionPending:Z

.field private blacklist mInjectionStarted:Z

.field private blacklist mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

.field private final blacklist mInterfaceLock:Ljava/lang/Object;

.field private blacklist mLastPackageName:Ljava/lang/String;

.field private blacklist mLastSourceId:Ljava/lang/String;

.field private blacklist mLastTargetId:Ljava/lang/String;

.field private final blacklist mPendingDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

.field private final blacklist mStatusCallback:Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

.field private final blacklist mStopDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;


# direct methods
.method public static synthetic blacklist $r8$lambda$s3rFpnyvGW5khNjGi0xRSE4m5nA(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->notifyError(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInterfaceLock(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatusCallback(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStatusCallback:Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStopDrainer(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStopDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInjectorSession(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Landroid/hardware/IDeviceInjectorSession;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monInjectionError(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->onInjectionError(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monInjectionPendingStarted(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->onInjectionPendingStarted(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monInjectionPendingStopped(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->onInjectionPendingStopped(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monInjectionStarted(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->onInjectionStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monInjectionStopped(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->onInjectionStopped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetRemoteInjectorSession(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Landroid/hardware/IDeviceInjectorSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->setRemoteInjectorSession(Landroid/hardware/IDeviceInjectorSession;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 91
    invoke-direct {p0}, Landroid/hardware/camera2/DeviceInjectorSession;-><init>()V

    .line 47
    new-instance v0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mCallback:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mClosed:Z

    .line 62
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectionStarted:Z

    .line 63
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectionPending:Z

    .line 66
    const-string v0, ""

    iput-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastPackageName:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastTargetId:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastSourceId:Ljava/lang/String;

    .line 92
    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStatusCallback:Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    .line 93
    iput-object p2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 95
    new-instance v0, Landroid/hardware/camera2/utils/TaskSingleDrainer;

    new-instance v1, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener-IA;)V

    const-string/jumbo v3, "stop"

    invoke-direct {v0, p2, v1, v3}, Landroid/hardware/camera2/utils/TaskSingleDrainer;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStopDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    .line 96
    new-instance v0, Landroid/hardware/camera2/utils/TaskSingleDrainer;

    new-instance v1, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$PendingDrainListener;

    invoke-direct {v1, p0, v2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$PendingDrainListener;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$PendingDrainListener-IA;)V

    const-string/jumbo v2, "pending"

    invoke-direct {v0, p2, v1, v2}, Landroid/hardware/camera2/utils/TaskSingleDrainer;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mPendingDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    .line 97
    return-void
.end method

.method private blacklist notifyError(I)V
    .registers 3
    .param p1, "errorCode"    # I

    .line 349
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    if-eqz v0, :cond_9

    .line 350
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStatusCallback:Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;->onError(I)V

    .line 352
    :cond_9
    return-void
.end method

.method private blacklist onInjectionError(I)V
    .registers 8
    .param p1, "errorCode"    # I

    .line 318
    const-string v0, "DeviceIjtSessionImpl"

    const-string v1, "injector session error received, code %d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_18
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    if-nez v1, :cond_1e

    .line 322
    monitor-exit v0

    return-void

    .line 325
    :cond_1e
    packed-switch p1, :pswitch_data_46

    .line 333
    const-string v1, "DeviceIjtSessionImpl"

    goto :goto_28

    .line 330
    :pswitch_24
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->scheduleNotifyError(I)V

    .line 331
    goto :goto_41

    .line 333
    :goto_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown error from injector session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->scheduleNotifyError(I)V

    .line 336
    :goto_41
    monitor-exit v0

    .line 337
    return-void

    .line 336
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_18 .. :try_end_45} :catchall_43

    throw v1

    :pswitch_data_46
    .packed-switch -0x1
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
    .end packed-switch
.end method

.method private blacklist onInjectionPendingStarted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;

    .line 270
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    if-nez v1, :cond_9

    .line 272
    monitor-exit v0

    return-void

    .line 275
    :cond_9
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mPendingDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskStarted()V

    .line 276
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectionPending:Z

    .line 278
    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastPackageName:Ljava/lang/String;

    .line 279
    iput-object p2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastTargetId:Ljava/lang/String;

    .line 280
    const-string v1, ""

    iput-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastSourceId:Ljava/lang/String;

    .line 282
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_33

    .line 284
    .local v1, "identity":J
    :try_start_1d
    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p1, p2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_2d

    .line 286
    :try_start_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 287
    nop

    .line 288
    .end local v1    # "identity":J
    monitor-exit v0

    .line 289
    return-void

    .line 286
    .restart local v1    # "identity":J
    :catchall_2d
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 287
    nop

    .end local p0    # "this":Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "targetId":Ljava/lang/String;
    throw v3

    .line 288
    .end local v1    # "identity":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "targetId":Ljava/lang/String;
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_33

    throw v1
.end method

.method private blacklist onInjectionPendingStopped(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;

    .line 295
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    if-nez v1, :cond_9

    .line 297
    monitor-exit v0

    return-void

    .line 300
    :cond_9
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectionPending:Z

    if-eqz v1, :cond_12

    .line 301
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mPendingDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskFinished()V

    .line 303
    :cond_12
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectionPending:Z

    .line 305
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2f

    .line 307
    .local v1, "identity":J
    :try_start_19
    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1, p2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_29

    .line 309
    :try_start_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    nop

    .line 311
    .end local v1    # "identity":J
    monitor-exit v0

    .line 312
    return-void

    .line 309
    .restart local v1    # "identity":J
    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    nop

    .end local p0    # "this":Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "targetId":Ljava/lang/String;
    throw v3

    .line 311
    .end local v1    # "identity":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "targetId":Ljava/lang/String;
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private blacklist onInjectionStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "sourceId"    # Ljava/lang/String;

    .line 222
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    if-nez v1, :cond_9

    .line 224
    monitor-exit v0

    return-void

    .line 227
    :cond_9
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStopDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskStarted()V

    .line 228
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectionStarted:Z

    .line 230
    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastPackageName:Ljava/lang/String;

    .line 231
    iput-object p2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastTargetId:Ljava/lang/String;

    .line 232
    iput-object p3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastSourceId:Ljava/lang/String;

    .line 234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_31

    .line 236
    .local v1, "identity":J
    :try_start_1b
    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, p1, p2, p3}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_2b

    .line 238
    :try_start_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 239
    nop

    .line 240
    .end local v1    # "identity":J
    monitor-exit v0

    .line 241
    return-void

    .line 238
    .restart local v1    # "identity":J
    :catchall_2b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 239
    nop

    .end local p0    # "this":Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "targetId":Ljava/lang/String;
    .end local p3    # "sourceId":Ljava/lang/String;
    throw v3

    .line 240
    .end local v1    # "identity":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "targetId":Ljava/lang/String;
    .restart local p3    # "sourceId":Ljava/lang/String;
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private blacklist onInjectionStopped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "sourceId"    # Ljava/lang/String;

    .line 247
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    if-nez v1, :cond_9

    .line 249
    monitor-exit v0

    return-void

    .line 252
    :cond_9
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectionStarted:Z

    if-eqz v1, :cond_12

    .line 253
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStopDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskFinished()V

    .line 255
    :cond_12
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectionStarted:Z

    .line 257
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2f

    .line 259
    .local v1, "identity":J
    :try_start_19
    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, p1, p2, p3}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_29

    .line 261
    :try_start_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 262
    nop

    .line 263
    .end local v1    # "identity":J
    monitor-exit v0

    .line 264
    return-void

    .line 261
    .restart local v1    # "identity":J
    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 262
    nop

    .end local p0    # "this":Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "targetId":Ljava/lang/String;
    .end local p3    # "sourceId":Ljava/lang/String;
    throw v3

    .line 263
    .end local v1    # "identity":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "targetId":Ljava/lang/String;
    .restart local p3    # "sourceId":Ljava/lang/String;
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private blacklist scheduleNotifyError(I)V
    .registers 7
    .param p1, "errorCode"    # I

    .line 340
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 342
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, p0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1f

    .line 344
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 345
    nop

    .line 346
    return-void

    .line 344
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 345
    throw v2
.end method

.method private blacklist setRemoteInjectorSession(Landroid/hardware/IDeviceInjectorSession;)V
    .registers 9
    .param p1, "injectorSession"    # Landroid/hardware/IDeviceInjectorSession;

    .line 190
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    const/4 v1, 0x0

    if-nez p1, :cond_12

    .line 192
    :try_start_6
    const-string v2, "DeviceIjtSessionImpl"

    const-string v3, "The device injector session has encountered a serious error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->scheduleNotifyError(I)V

    .line 194
    monitor-exit v0

    return-void

    .line 197
    :cond_12
    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    .line 199
    invoke-interface {p1}, Landroid/hardware/IDeviceInjectorSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 200
    .local v2, "remoteSessionBinder":Landroid/os/IBinder;
    if-nez v2, :cond_26

    .line 201
    const-string v3, "DeviceIjtSessionImpl"

    const-string v4, "The device injector session has encountered a serious error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->scheduleNotifyError(I)V

    .line 203
    monitor-exit v0

    return-void

    .line 206
    :cond_26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_4c

    .line 208
    .local v3, "identity":J
    :try_start_2a
    invoke-interface {v2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 209
    iget-object v5, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_37} :catch_3d
    .catchall {:try_start_2a .. :try_end_37} :catchall_3b

    .line 213
    :try_start_37
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_4c

    goto :goto_44

    :catchall_3b
    move-exception v1

    goto :goto_47

    .line 210
    :catch_3d
    move-exception v5

    .line 211
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_3e
    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->scheduleNotifyError(I)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3b

    .line 213
    .end local v5    # "e":Landroid/os/RemoteException;
    :try_start_41
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 214
    :goto_44
    nop

    .line 215
    .end local v2    # "remoteSessionBinder":Landroid/os/IBinder;
    .end local v3    # "identity":J
    monitor-exit v0

    .line 216
    return-void

    .line 213
    .restart local v2    # "remoteSessionBinder":Landroid/os/IBinder;
    .restart local v3    # "identity":J
    :goto_47
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 214
    nop

    .end local p0    # "this":Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
    .end local p1    # "injectorSession":Landroid/hardware/IDeviceInjectorSession;
    throw v1

    .line 215
    .end local v2    # "remoteSessionBinder":Landroid/os/IBinder;
    .end local v3    # "identity":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
    .restart local p1    # "injectorSession":Landroid/hardware/IDeviceInjectorSession;
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_4c

    throw v1
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 6

    .line 148
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_3
    const-string v1, "DeviceIjtSessionImpl"

    const-string v2, "CameraService died unexpectedly"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    if-nez v1, :cond_10

    .line 152
    monitor-exit v0

    return-void

    .line 155
    :cond_10
    new-instance v1, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)V

    .line 170
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2a

    .line 172
    .local v2, "identity":J
    :try_start_19
    iget-object v4, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_24

    .line 174
    :try_start_1e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 175
    nop

    .line 176
    .end local v1    # "r":Ljava/lang/Runnable;
    .end local v2    # "identity":J
    monitor-exit v0

    .line 177
    return-void

    .line 174
    .restart local v1    # "r":Ljava/lang/Runnable;
    .restart local v2    # "identity":J
    :catchall_24
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 175
    nop

    .end local p0    # "this":Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
    throw v4

    .line 176
    .end local v1    # "r":Ljava/lang/Runnable;
    .end local v2    # "identity":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public whitelist test-api close()V
    .registers 4

    .line 101
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    if-eqz v1, :cond_17

    .line 104
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mClosed:Z

    .line 105
    invoke-interface {v1}, Landroid/hardware/IDeviceInjectorSession;->stopDeviceInjector()V

    .line 106
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    invoke-interface {v1}, Landroid/hardware/IDeviceInjectorSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_17} :catch_22
    .catchall {:try_start_3 .. :try_end_17} :catchall_1a

    .line 112
    :cond_17
    :try_start_17
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mPendingDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    goto :goto_25

    .line 111
    :catchall_1a
    move-exception v1

    .line 112
    iget-object v2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mPendingDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    invoke-virtual {v2}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->beginDrain()V

    .line 113
    nop

    .end local p0    # "this":Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
    throw v1

    .line 108
    .restart local p0    # "this":Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
    :catch_22
    move-exception v1

    .line 112
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mPendingDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    :goto_25
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->beginDrain()V

    .line 113
    nop

    .line 114
    monitor-exit v0

    .line 115
    return-void

    .line 114
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_17 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 140
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 142
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 143
    nop

    .line 144
    return-void

    .line 142
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 143
    throw v0
.end method

.method public blacklist getCallback()Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;
    .registers 2

    .line 180
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mCallback:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;

    return-object v0
.end method

.method synthetic blacklist lambda$binderDied$0$android-hardware-camera2-impl-DeviceInjectorSessionImpl()V
    .registers 6

    .line 156
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStatusCallback:Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;->onError(I)V

    .line 158
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectionStarted:Z

    if-eqz v1, :cond_1d

    .line 159
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStopDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskFinished()V

    .line 160
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStatusCallback:Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    iget-object v2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastTargetId:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastSourceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;->onInjectionStopped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_1d
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectionStarted:Z

    .line 163
    iget-boolean v2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectionPending:Z

    if-eqz v2, :cond_32

    .line 164
    iget-object v2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mPendingDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    invoke-virtual {v2}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskFinished()V

    .line 165
    iget-object v2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStatusCallback:Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastTargetId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;->onInjectionPendingStopped(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_32
    iput-boolean v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectionPending:Z

    .line 168
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method synthetic blacklist lambda$onInjectionPendingStarted$4$android-hardware-camera2-impl-DeviceInjectorSessionImpl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;

    .line 284
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStatusCallback:Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;->onInjectionPendingStarted(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic blacklist lambda$onInjectionPendingStopped$5$android-hardware-camera2-impl-DeviceInjectorSessionImpl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;

    .line 307
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStatusCallback:Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;->onInjectionPendingStopped(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic blacklist lambda$onInjectionStarted$2$android-hardware-camera2-impl-DeviceInjectorSessionImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "sourceId"    # Ljava/lang/String;

    .line 236
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStatusCallback:Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;->onInjectionStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic blacklist lambda$onInjectionStopped$3$android-hardware-camera2-impl-DeviceInjectorSessionImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "sourceId"    # Ljava/lang/String;

    .line 259
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStatusCallback:Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;->onInjectionStopped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic blacklist lambda$setRemoteInjectorSession$1$android-hardware-camera2-impl-DeviceInjectorSessionImpl()V
    .registers 2

    .line 209
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStatusCallback:Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;->onSessionCreated(Landroid/hardware/camera2/DeviceInjectorSession;)V

    return-void
.end method

.method public blacklist setDeviceInjectorPending(Z)V
    .registers 7
    .param p1, "pending"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mClosed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2b

    if-nez v1, :cond_23

    .line 124
    :try_start_7
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    if-eqz v1, :cond_e

    .line 125
    invoke-interface {v1, p1}, Landroid/hardware/IDeviceInjectorSession;->setDeviceInjectorPending(Z)V
    :try_end_e
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_e} :catch_1c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f
    .catchall {:try_start_7 .. :try_end_e} :catchall_2b

    .line 133
    :cond_e
    :goto_e
    goto :goto_21

    .line 129
    :catch_f
    move-exception v1

    .line 131
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_10
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/4 v3, 0x4

    const-string v4, "Camera service is currently unavailable"

    invoke-direct {v2, v3, v4}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 132
    .local v2, "sse":Landroid/os/ServiceSpecificException;
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_21

    .line 127
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "sse":Landroid/os/ServiceSpecificException;
    :catch_1c
    move-exception v1

    .line 128
    .local v1, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v1}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    goto :goto_e

    .line 134
    :goto_21
    monitor-exit v0

    .line 135
    return-void

    .line 121
    :cond_23
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "DeviceInjectorSession is already closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
    .end local p1    # "pending":Z
    throw v1

    .line 134
    .restart local p0    # "this":Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
    .restart local p1    # "pending":Z
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_2b

    throw v1
.end method
