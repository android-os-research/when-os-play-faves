.class public Lcom/android/service/ims/TaskManager$MessageHandler;
.super Landroid/os/Handler;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/service/ims/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/service/ims/TaskManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/service/ims/TaskManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/service/ims/TaskManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 304
    iput-object p1, p0, Lcom/android/service/ims/TaskManager$MessageHandler;->this$0:Lcom/android/service/ims/TaskManager;

    .line 305
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 306
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 310
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 312
    iget-object v0, p0, Lcom/android/service/ims/TaskManager$MessageHandler;->this$0:Lcom/android/service/ims/TaskManager;

    invoke-static {v0}, Lcom/android/service/ims/TaskManager;->-$$Nest$fgetlogger(Lcom/android/service/ims/TaskManager;)Lcom/android/ims/internal/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 317
    if-nez p1, :cond_3f

    .line 318
    iget-object v0, p0, Lcom/android/service/ims/TaskManager$MessageHandler;->this$0:Lcom/android/service/ims/TaskManager;

    invoke-static {v0}, Lcom/android/service/ims/TaskManager;->-$$Nest$fgetlogger(Lcom/android/service/ims/TaskManager;)Lcom/android/ims/internal/Logger;

    move-result-object v0

    const-string v1, "msg=null"

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 319
    return-void

    .line 322
    :cond_3f
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_86

    .line 342
    iget-object v0, p0, Lcom/android/service/ims/TaskManager$MessageHandler;->this$0:Lcom/android/service/ims/TaskManager;

    invoke-static {v0}, Lcom/android/service/ims/TaskManager;->-$$Nest$fgetlogger(Lcom/android/service/ims/TaskManager;)Lcom/android/ims/internal/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage unknown msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    goto :goto_84

    .line 334
    :pswitch_63
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/service/ims/TaskManager$MessageData;

    .line 335
    .local v0, "messageData":Lcom/android/service/ims/TaskManager$MessageData;
    if-eqz v0, :cond_84

    iget-object v1, v0, Lcom/android/service/ims/TaskManager$MessageData;->mTask:Lcom/android/service/ims/presence/PresenceCapabilityTask;

    if-eqz v1, :cond_84

    .line 336
    iget-object v1, v0, Lcom/android/service/ims/TaskManager$MessageData;->mTask:Lcom/android/service/ims/presence/PresenceCapabilityTask;

    invoke-virtual {v1}, Lcom/android/service/ims/presence/PresenceCapabilityTask;->onTimeout()V

    goto :goto_84

    .line 325
    .end local v0    # "messageData":Lcom/android/service/ims/TaskManager$MessageData;
    :pswitch_73
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/service/ims/TaskManager$MessageData;

    .line 326
    .restart local v0    # "messageData":Lcom/android/service/ims/TaskManager$MessageData;
    if-eqz v0, :cond_84

    iget-object v1, v0, Lcom/android/service/ims/TaskManager$MessageData;->mTask:Lcom/android/service/ims/presence/PresenceCapabilityTask;

    if-eqz v1, :cond_84

    .line 327
    iget-object v1, v0, Lcom/android/service/ims/TaskManager$MessageData;->mTask:Lcom/android/service/ims/presence/PresenceCapabilityTask;

    iget-object v2, v0, Lcom/android/service/ims/TaskManager$MessageData;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/service/ims/presence/PresenceCapabilityTask;->onTerminated(Ljava/lang/String;)V

    .line 344
    .end local v0    # "messageData":Lcom/android/service/ims/TaskManager$MessageData;
    :cond_84
    :goto_84
    return-void

    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_73
        :pswitch_63
    .end packed-switch
.end method
