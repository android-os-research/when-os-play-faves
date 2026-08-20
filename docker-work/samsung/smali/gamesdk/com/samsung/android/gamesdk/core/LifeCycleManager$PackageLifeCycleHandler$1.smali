.class Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$1;
.super Landroid/os/Handler;
.source "LifeCycleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$1"    # Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 409
    iput-object p1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$1;->this$1:Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 413
    const-string v0, "GameSDK@LifeCycle"

    :try_start_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 414
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_10e

    goto/16 :goto_ec

    .line 435
    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 436
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(): MSG_APP_FOCUS_CHANGE, packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$1;->this$1:Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;

    iget-object v2, v2, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    # invokes: Lcom/samsung/android/gamesdk/core/LifeCycleManager;->handleFocusedPackageChanged(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->access$500(Lcom/samsung/android/gamesdk/core/LifeCycleManager;Ljava/lang/String;)V

    .line 438
    goto/16 :goto_ec

    .line 422
    .end local v1    # "packageName":Ljava/lang/String;
    :pswitch_33
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 423
    .restart local v1    # "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(): MSG_APP_RESUME, packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$1;->this$1:Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;

    iget-object v2, v2, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    # invokes: Lcom/samsung/android/gamesdk/core/LifeCycleManager;->handleResume(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->access$300(Lcom/samsung/android/gamesdk/core/LifeCycleManager;Ljava/lang/String;)V

    .line 425
    goto/16 :goto_ec

    .line 428
    .end local v1    # "packageName":Ljava/lang/String;
    :pswitch_5a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 429
    .restart local v1    # "packageName":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 430
    .local v2, "pid":I
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage(): MSG_APP_PAUSE, packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v3, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$1;->this$1:Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;

    iget-object v3, v3, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/samsung/android/gamesdk/core/LifeCycleManager;->handlePause(ILjava/lang/String;)V
    invoke-static {v3, v4, v1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->access$400(Lcom/samsung/android/gamesdk/core/LifeCycleManager;ILjava/lang/String;)V

    .line 432
    goto :goto_ec

    .line 441
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pid":I
    :pswitch_8e
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 442
    .local v1, "pid":I
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(): MSG_APP_FINAL, pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$1;->this$1:Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;

    iget-object v2, v2, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    # invokes: Lcom/samsung/android/gamesdk/core/LifeCycleManager;->handleFinalize(I)V
    invoke-static {v2, v1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->access$600(Lcom/samsung/android/gamesdk/core/LifeCycleManager;I)V

    .line 444
    goto :goto_ec

    .line 416
    .end local v1    # "pid":I
    :pswitch_b2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$InitMessageObj;

    .line 417
    .local v1, "initMessageObj":Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$InitMessageObj;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(): MSG_APP_INIT, packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$InitMessageObj;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$InitMessageObj;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$1;->this$1:Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;

    iget-object v2, v2, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, v1, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$InitMessageObj;->packageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$InitMessageObj;->version:Ljava/lang/String;

    # invokes: Lcom/samsung/android/gamesdk/core/LifeCycleManager;->handleInitialize(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->access$200(Lcom/samsung/android/gamesdk/core/LifeCycleManager;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_eb} :catch_ed

    .line 419
    nop

    .line 451
    .end local v1    # "initMessageObj":Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$InitMessageObj;
    :goto_ec
    goto :goto_10c

    .line 449
    :catch_ed
    move-exception v1

    .line 450
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_10c
    return-void

    nop

    :pswitch_data_10e
    .packed-switch 0x2711
        :pswitch_b2
        :pswitch_8e
        :pswitch_5a
        :pswitch_33
        :pswitch_c
    .end packed-switch
.end method
