.class public Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;
.super Landroid/os/HandlerThread;
.source "LifeCycleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/core/LifeCycleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageLifeCycleHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$InitMessageObj;
    }
.end annotation


# static fields
.field private static final MSG_APP_FINAL:I = 0x2712

.field private static final MSG_APP_FOCUS_CHANGE:I = 0x2715

.field private static final MSG_APP_INIT:I = 0x2711

.field private static final MSG_APP_PAUSE:I = 0x2713

.field private static final MSG_APP_RESUME:I = 0x2714


# instance fields
.field private mPcHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    .line 402
    iput-object p1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    .line 403
    const-string v0, "ThreadPackageManage"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 404
    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .registers 3

    .line 408
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 409
    new-instance v0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$1;

    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$1;-><init>(Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->mPcHandler:Landroid/os/Handler;

    .line 454
    return-void
.end method

.method public sendFinalizeMessage(I)V
    .registers 7
    .param p1, "pid"    # I

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    # getter for: Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mLifeCycleLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->access$700(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_38

    .line 486
    :try_start_7
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@LifeCycle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendFinalizeMessage(): pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->mPcHandler:Landroid/os/Handler;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 488
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 489
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->mPcHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 490
    nop

    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 493
    goto :goto_59

    .line 490
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    .end local p0    # "this":Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;
    .end local p1    # "pid":I
    :try_start_37
    throw v1
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_38} :catch_38

    .line 491
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;
    .restart local p1    # "pid":I
    :catch_38
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@LifeCycle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendFinalizeMessage(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_59
    return-void
.end method

.method public sendFocusChangeMessage(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    # getter for: Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mLifeCycleLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->access$700(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_3d

    .line 499
    :try_start_7
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@LifeCycle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendFocusChangeMessage() : packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->mPcHandler:Landroid/os/Handler;

    const/16 v2, 0x2715

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 501
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->mPcHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 502
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 504
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->mPcHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 505
    nop

    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 508
    goto :goto_5e

    .line 505
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_3a

    .end local p0    # "this":Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;
    .end local p1    # "packageName":Ljava/lang/String;
    :try_start_3c
    throw v1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3d} :catch_3d

    .line 506
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catch_3d
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@LifeCycle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendFocusChangeMessage(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5e
    return-void
.end method

.method public sendInitMessage(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    # getter for: Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mLifeCycleLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->access$700(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_4e

    .line 469
    :try_start_7
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@LifeCycle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendInitMessage(): packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    new-instance v1, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$InitMessageObj;

    invoke-direct {v1, p0, p2, p3}, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$InitMessageObj;-><init>(Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .local v1, "initMessageObj":Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$InitMessageObj;
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->mPcHandler:Landroid/os/Handler;

    const/16 v3, 0x2711

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 472
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->mPcHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 473
    .local v2, "msg":Landroid/os/Message;
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 474
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 476
    iget-object v3, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->mPcHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 477
    nop

    .end local v1    # "initMessageObj":Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$InitMessageObj;
    .end local v2    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 480
    goto :goto_6f

    .line 477
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_4b

    .end local p0    # "this":Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;
    .end local p1    # "pid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "version":Ljava/lang/String;
    :try_start_4d
    throw v1
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4e} :catch_4e

    .line 478
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;
    .restart local p1    # "pid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "version":Ljava/lang/String;
    :catch_4e
    move-exception v0

    .line 479
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@LifeCycle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendInitMessage(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6f
    return-void
.end method

.method public sendPauseMessage(ILjava/lang/String;)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 527
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    # getter for: Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mLifeCycleLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->access$700(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_49

    .line 528
    :try_start_7
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@LifeCycle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendPauseMessage() : pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->mPcHandler:Landroid/os/Handler;

    const/16 v2, 0x2713

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 530
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->mPcHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 531
    .local v1, "m":Landroid/os/Message;
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 532
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 533
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->mPcHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 534
    nop

    .end local v1    # "m":Landroid/os/Message;
    monitor-exit v0

    .line 537
    goto :goto_6a

    .line 534
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_7 .. :try_end_48} :catchall_46

    .end local p0    # "this":Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;
    .end local p1    # "pid":I
    .end local p2    # "packageName":Ljava/lang/String;
    :try_start_48
    throw v1
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_49} :catch_49

    .line 535
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;
    .restart local p1    # "pid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    :catch_49
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@LifeCycle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendPauseMessage(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6a
    return-void
.end method

.method public sendResumeMessage(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    # getter for: Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mLifeCycleLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->access$700(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_3d

    .line 514
    :try_start_7
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@LifeCycle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendResumeMessage() : packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->mPcHandler:Landroid/os/Handler;

    const/16 v2, 0x2714

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 516
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->mPcHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 517
    .local v1, "m":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 518
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->mPcHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 519
    nop

    .end local v1    # "m":Landroid/os/Message;
    monitor-exit v0

    .line 522
    goto :goto_5e

    .line 519
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_3a

    .end local p0    # "this":Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;
    .end local p1    # "packageName":Ljava/lang/String;
    :try_start_3c
    throw v1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3d} :catch_3d

    .line 520
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catch_3d
    move-exception v0

    .line 521
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@LifeCycle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendResumeMessage(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5e
    return-void
.end method
