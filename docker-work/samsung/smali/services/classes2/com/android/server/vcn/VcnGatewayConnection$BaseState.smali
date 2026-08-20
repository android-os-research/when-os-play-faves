.class public abstract Lcom/android/server/vcn/VcnGatewayConnection$BaseState;
.super Lcom/android/internal/util/State;
.source "VcnGatewayConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BaseState"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .registers 2

    .line 1285
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$BaseState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 1289
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->enterState()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_27

    :catch_4
    move-exception v0

    .line 1291
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string v2, "Uncaught exception"

    invoke-static {v1, v2, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogWtf(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1292
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uncaught exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 1292
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendDisconnectRequestedAndAcquireWakelock(Ljava/lang/String;Z)V

    :goto_27
    return-void
.end method

.method public enterState()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public exit()V
    .registers 4

    .line 1346
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->exitState()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_27

    :catch_4
    move-exception v0

    .line 1348
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string v2, "Uncaught exception"

    invoke-static {v1, v2, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogWtf(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1349
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uncaught exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 1349
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendDisconnectRequestedAndAcquireWakelock(Ljava/lang/String;Z)V

    :goto_27
    return-void
.end method

.method public exitState()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public handleDisconnectRequested(Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;)V
    .registers 5

    .line 1389
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tearing down. Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; quitting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;->shouldQuit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 1390
    iget-boolean p1, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;->shouldQuit:Z

    if-eqz p1, :cond_2f

    .line 1391
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIsQuitting(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/util/OneWayBoolean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/vcn/util/OneWayBoolean;->setTrue()V

    .line 1394
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->teardownNetwork()V

    .line 1396
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmIkeSession(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-result-object p1

    if-nez p1, :cond_42

    .line 1398
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectedState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_49

    .line 1401
    :cond_42
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    :goto_49
    return-void
.end method

.method public handleSafeModeTimeoutExceeded()V
    .registers 3

    .line 1406
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmSafeModeTimeoutAlarm(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/internal/util/WakeupMessage;)V

    .line 1407
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string v1, "Entering safe mode after timeout exceeded"

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 1410
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->teardownNetwork()V

    .line 1411
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmIsInSafeMode(Lcom/android/server/vcn/VcnGatewayConnection;Z)V

    .line 1412
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmGatewayStatusCallback(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;->onSafeModeStatusChanged()V

    return-void
.end method

.method public isValidToken(I)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public logUnexpectedEvent(I)V
    .registers 5

    .line 1416
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in state "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1420
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1416
    invoke-static {v0, p0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogVdbg(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    return-void
.end method

.method public logUnhandledMessage(Landroid/os/Message;)V
    .registers 2

    .line 1358
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_e

    .line 1374
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->logWtfUnknownEvent(I)V

    goto :goto_c

    .line 1371
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->logUnexpectedEvent(I)V

    :goto_c
    return-void

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public logWtfUnknownEvent(I)V
    .registers 5

    .line 1424
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in state "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogWtf(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    return-void
.end method

.method public final processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 1321
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1322
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->isValidToken(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2a

    .line 1323
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message called with obsolete token: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; what: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogDbg(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    return v2

    .line 1328
    :cond_2a
    :try_start_2a
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->processStateMsg(Landroid/os/Message;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_50

    :catch_2e
    move-exception p1

    .line 1330
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string v1, "Uncaught exception"

    invoke-static {v0, v1, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogWtf(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1331
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uncaught exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1331
    invoke-virtual {v0, p1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->sendDisconnectRequestedAndAcquireWakelock(Ljava/lang/String;Z)V

    .line 1336
    :goto_50
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mmaybeReleaseWakeLock(Lcom/android/server/vcn/VcnGatewayConnection;)V

    return v2
.end method

.method public abstract processStateMsg(Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public teardownNetwork()V
    .registers 2

    .line 1380
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1381
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fgetmNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->unregister()V

    .line 1382
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$fputmNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;)V

    :cond_17
    return-void
.end method
