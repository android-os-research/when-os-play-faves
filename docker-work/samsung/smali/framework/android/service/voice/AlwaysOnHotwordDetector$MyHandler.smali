.class Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;
.super Landroid/os/Handler;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AlwaysOnHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/voice/AlwaysOnHotwordDetector;


# direct methods
.method constructor blacklist <init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/voice/AlwaysOnHotwordDetector;

    .line 1449
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1452
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    iget-object v0, v0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1453
    :try_start_5
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmAvailability(Landroid/service/voice/AlwaysOnHotwordDetector;)I

    move-result v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_30

    .line 1454
    const-string v1, "AlwaysOnHotwordDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for an invalid detector"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    monitor-exit v0

    return-void

    .line 1457
    :cond_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_97

    .line 1459
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_9a

    .line 1485
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_96

    .line 1482
    :pswitch_3a
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmExternalCallback(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onHotwordDetectionServiceRestarted()V

    .line 1483
    goto :goto_96

    .line 1479
    :pswitch_44
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmExternalCallback(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onHotwordDetectionServiceInitialized(I)V

    .line 1480
    goto :goto_96

    .line 1476
    :pswitch_50
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmExternalCallback(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/service/voice/HotwordRejectedResult;

    invoke-virtual {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V

    .line 1477
    goto :goto_96

    .line 1473
    :pswitch_5e
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmExternalCallback(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onRecognitionResumed()V

    .line 1474
    goto :goto_96

    .line 1470
    :pswitch_68
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmExternalCallback(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onRecognitionPaused()V

    .line 1471
    goto :goto_96

    .line 1467
    :pswitch_72
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmExternalCallback(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onError()V

    .line 1468
    goto :goto_96

    .line 1464
    :pswitch_7c
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmExternalCallback(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;

    invoke-virtual {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onDetected(Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;)V

    .line 1465
    goto :goto_96

    .line 1461
    :pswitch_8a
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmExternalCallback(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onAvailabilityChanged(I)V

    .line 1462
    nop

    .line 1487
    :goto_96
    return-void

    .line 1457
    :catchall_97
    move-exception v1

    :try_start_98
    monitor-exit v0
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    throw v1

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_7c
        :pswitch_72
        :pswitch_68
        :pswitch_5e
        :pswitch_50
        :pswitch_44
        :pswitch_3a
    .end packed-switch
.end method
