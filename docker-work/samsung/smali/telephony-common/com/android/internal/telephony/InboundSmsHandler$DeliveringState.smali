.class Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;
.super Lcom/android/internal/telephony/State;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeliveringState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .registers 2

    .line 667
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 2

    .line 670
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v0, "DeliveringState.enter: entering DeliveringState"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist exit()V
    .registers 2

    const/4 v0, 0x0

    .line 676
    sput-boolean v0, Lcom/android/internal/telephony/InboundSmsHandler;->mNeedSetWakeLockTimeout:Z

    .line 678
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v0, "DeliveringState.exit: leaving DeliveringState"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 10

    .line 683
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeliveringState.processMessage: processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 684
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "DeliveringState: mNeedSetWakeLockTimeout"

    const/16 v2, 0xbb8

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_ef

    const/4 v5, 0x2

    const/16 v6, 0x8

    if-eq v0, v5, :cond_c1

    if-eq v0, v3, :cond_b7

    const/4 v5, 0x5

    if-eq v0, v5, :cond_9a

    const/4 v5, 0x7

    const/4 v7, 0x0

    if-eq v0, v5, :cond_70

    if-eq v0, v6, :cond_57

    .line 747
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled msg in delivering state, msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget p1, p1, Landroid/os/Message;->what:I

    .line 748
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->getWhatToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 747
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/InboundSmsHandler;->logeWithLocalLog(Ljava/lang/String;)V

    return v7

    .line 740
    :cond_57
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process tracker message in DeliveringState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    # invokes: Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$000(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V

    return v4

    .line 699
    :cond_70
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_7b

    move v7, v4

    :cond_7b
    invoke-static {v0, v5, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$mhandleInjectSms(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/AsyncResult;Z)V

    .line 701
    sget-boolean p1, Lcom/android/internal/telephony/InboundSmsHandler;->mNeedSetWakeLockTimeout:Z

    if-eqz p1, :cond_94

    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$fgetmWakeLockTimeout(Lcom/android/internal/telephony/InboundSmsHandler;)I

    move-result p1

    if-eq p1, v2, :cond_94

    .line 702
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 703
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$msetWakeLockTimeout(Lcom/android/internal/telephony/InboundSmsHandler;I)V

    .line 706
    :cond_94
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return v4

    .line 732
    :cond_9a
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$fgetmWakeLock(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 733
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$fgetmWakeLock(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_b6

    .line 735
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string p1, "mWakeLock released while delivering/broadcasting!"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    :cond_b6
    return v4

    .line 728
    :cond_b7
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return v4

    .line 711
    :cond_c1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/InboundSmsTracker;

    .line 712
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$mprocessMessagePart(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 713
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v6, p1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 714
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$fgetmWaitingState(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_ee

    .line 720
    :cond_e2
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v0, "DeliveringState.processMessage: EVENT_BROADCAST_SMS: No broadcast sent. Return to IdleState"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 722
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :goto_ee
    return v4

    .line 687
    :cond_ef
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$mhandleNewSms(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/AsyncResult;)V

    .line 689
    sget-boolean p1, Lcom/android/internal/telephony/InboundSmsHandler;->mNeedSetWakeLockTimeout:Z

    if-eqz p1, :cond_10e

    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$fgetmWakeLockTimeout(Lcom/android/internal/telephony/InboundSmsHandler;)I

    move-result p1

    if-eq p1, v2, :cond_10e

    .line 690
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 691
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$msetWakeLockTimeout(Lcom/android/internal/telephony/InboundSmsHandler;I)V

    .line 694
    :cond_10e
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return v4
.end method
