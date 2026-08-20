.class Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;
.super Lcom/samsung/android/smartface/ISmartFaceClient$Stub;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartface/SmartFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartFaceClient"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/smartface/SmartFaceManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/smartface/SmartFaceManager;)V
    .registers 3

    .line 412
    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-direct {p0}, Lcom/samsung/android/smartface/ISmartFaceClient$Stub;-><init>()V

    .line 413
    const-string p1, "SmartFaceManager"

    const-string v0, "New SmartFaceClient"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-void
.end method


# virtual methods
.method public blacklist onInfo(ILcom/samsung/android/smartface/FaceInfo;I)V
    .registers 7
    .param p1, "msgType"    # I
    .param p2, "data"    # Lcom/samsung/android/smartface/FaceInfo;
    .param p3, "serviceType"    # I

    .line 417
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->-$$Nest$fgetmEventHandlerLock(Lcom/samsung/android/smartface/SmartFaceManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 418
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->-$$Nest$fgetmInternalEventHandler(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 419
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->-$$Nest$fgetmInternalEventHandler(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, p1, p3, v2, p2}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 420
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v2}, Lcom/samsung/android/smartface/SmartFaceManager;->-$$Nest$fgetmInternalEventHandler(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 421
    nop

    .end local v1    # "m":Landroid/os/Message;
    goto :goto_49

    :cond_25
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 422
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, p1, p3, v2, p2}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 423
    .restart local v1    # "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v2}, Lcom/samsung/android/smartface/SmartFaceManager;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 424
    nop

    .end local v1    # "m":Landroid/os/Message;
    goto :goto_49

    .line 425
    :cond_42
    const-string v1, "SmartFaceManager"

    const-string v2, "EventHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :goto_49
    monitor-exit v0

    .line 428
    return-void

    .line 427
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_4b

    throw v1
.end method
