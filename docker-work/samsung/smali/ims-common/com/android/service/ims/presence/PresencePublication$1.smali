.class Lcom/android/service/ims/presence/PresencePublication$1;
.super Landroid/os/Handler;
.source "PresencePublication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/service/ims/presence/PresencePublication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/service/ims/presence/PresencePublication;


# direct methods
.method constructor blacklist <init>(Lcom/android/service/ims/presence/PresencePublication;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/service/ims/presence/PresencePublication;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 98
    iput-object p1, p0, Lcom/android/service/ims/presence/PresencePublication$1;->this$0:Lcom/android/service/ims/presence/PresencePublication;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 101
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 103
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication$1;->this$0:Lcom/android/service/ims/presence/PresencePublication;

    invoke-static {v0}, Lcom/android/service/ims/presence/PresencePublication;->-$$Nest$fgetlogger(Lcom/android/service/ims/presence/PresencePublication;)Lcom/android/ims/internal/Logger;

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

    .line 105
    if-nez p1, :cond_3f

    .line 106
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication$1;->this$0:Lcom/android/service/ims/presence/PresencePublication;

    invoke-static {v0}, Lcom/android/service/ims/presence/PresencePublication;->-$$Nest$fgetlogger(Lcom/android/service/ims/presence/PresencePublication;)Lcom/android/ims/internal/Logger;

    move-result-object v0

    const-string v1, "msg=null"

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 107
    return-void

    .line 110
    :cond_3f
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_90

    .line 126
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication$1;->this$0:Lcom/android/service/ims/presence/PresencePublication;

    invoke-static {v0}, Lcom/android/service/ims/presence/PresencePublication;->-$$Nest$fgetlogger(Lcom/android/service/ims/presence/PresencePublication;)Lcom/android/ims/internal/Logger;

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

    goto :goto_8e

    .line 122
    :pswitch_63
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication$1;->this$0:Lcom/android/service/ims/presence/PresencePublication;

    invoke-static {v0}, Lcom/android/service/ims/presence/PresencePublication;->-$$Nest$mrequestPublishIfSubscriptionReady(Lcom/android/service/ims/presence/PresencePublication;)V

    .line 123
    goto :goto_8e

    .line 112
    :pswitch_69
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication$1;->this$0:Lcom/android/service/ims/presence/PresencePublication;

    invoke-static {v0}, Lcom/android/service/ims/presence/PresencePublication;->-$$Nest$fgetlogger(Lcom/android/service/ims/presence/PresencePublication;)Lcom/android/ims/internal/Logger;

    move-result-object v0

    const-string v1, "handleMessage  msg=RCS_PUBLISH_REQUEST:"

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 114
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    .line 115
    .local v0, "publishRequest":Lcom/android/service/ims/presence/PresencePublication$PublishRequest;
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication$1;->this$0:Lcom/android/service/ims/presence/PresencePublication;

    invoke-static {v1}, Lcom/android/service/ims/presence/PresencePublication;->-$$Nest$fgetmSyncObj(Lcom/android/service/ims/presence/PresencePublication;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 116
    :try_start_7f
    iget-object v2, p0, Lcom/android/service/ims/presence/PresencePublication$1;->this$0:Lcom/android/service/ims/presence/PresencePublication;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/service/ims/presence/PresencePublication;->mPendingRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    .line 117
    monitor-exit v1
    :try_end_85
    .catchall {:try_start_7f .. :try_end_85} :catchall_8b

    .line 118
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication$1;->this$0:Lcom/android/service/ims/presence/PresencePublication;

    invoke-static {v1, v0}, Lcom/android/service/ims/presence/PresencePublication;->-$$Nest$mdoPublish(Lcom/android/service/ims/presence/PresencePublication;Lcom/android/service/ims/presence/PresencePublication$PublishRequest;)V

    .line 119
    goto :goto_8e

    .line 117
    :catchall_8b
    move-exception v2

    :try_start_8c
    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw v2

    .line 128
    .end local v0    # "publishRequest":Lcom/android/service/ims/presence/PresencePublication$PublishRequest;
    :goto_8e
    return-void

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_69
        :pswitch_63
    .end packed-switch
.end method
