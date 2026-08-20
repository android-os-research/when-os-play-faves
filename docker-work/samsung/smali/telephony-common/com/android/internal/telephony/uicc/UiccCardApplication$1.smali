.class Lcom/android/internal/telephony/uicc/UiccCardApplication$1;
.super Landroid/os/Handler;
.source "UiccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCardApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .registers 2

    .line 535
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 544
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$fgetmDestroyed(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_53

    .line 545
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received message "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] while being destroyed. Ignoring."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 548
    iget p0, p1, Landroid/os/Message;->what:I

    if-ne p0, v1, :cond_52

    .line 549
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    if-eqz p0, :cond_52

    .line 551
    new-instance p1, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->ABORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 553
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    if-eqz p1, :cond_52

    .line 556
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object p0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 557
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_52
    return-void

    .line 564
    :cond_53
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v2, 0x1f4

    packed-switch v0, :pswitch_data_13e

    const/16 v4, 0x68

    packed-switch v0, :pswitch_data_154

    .line 640
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    goto/16 :goto_13c

    .line 597
    :pswitch_79
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 598
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$monChangeFdnDone(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto/16 :goto_13c

    .line 622
    :pswitch_84
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v2, "EVENT_WAIT_UPDATE_DONE"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 623
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$fgetmIccStateUpdated(Lcom/android/internal/telephony/uicc/UiccCardApplication;)I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_b9

    .line 625
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v1, "EVENT_WAIT_UPDATE_DONE finish"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 626
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$mparsePinPukErrorResult(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;I)I

    move-result p0

    .line 627
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 628
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object p1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 629
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 630
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_13c

    .line 632
    :cond_b9
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$fgetmIccStateUpdated(Lcom/android/internal/telephony/uicc/UiccCardApplication;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$fputmIccStateUpdated(Lcom/android/internal/telephony/uicc/UiccCardApplication;I)V

    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v1, "EVENT_WAIT_UPDATE_DONE again"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xa

    .line 635
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_13c

    .line 615
    :pswitch_d4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$fputmIccStateUpdated(Lcom/android/internal/telephony/uicc/UiccCardApplication;I)V

    .line 617
    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 618
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_13c

    .line 610
    :pswitch_e6
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v0, "handleMessage (EVENT_RADIO_UNAVAILABLE)"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 611
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    sget-object p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$fputmAppState(Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;)V

    goto :goto_13c

    .line 606
    :pswitch_f5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 607
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$monChangeFacilityLock(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_13c

    .line 602
    :pswitch_ff
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 603
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$monQueryFacilityLock(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_13c

    .line 588
    :pswitch_109
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    const/16 v0, 0x69

    .line 590
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 591
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_13c

    .line 584
    :pswitch_117
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 585
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$monQueryFdnEnabled(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_13c

    .line 575
    :pswitch_121
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 576
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-$$Nest$mparsePinPukErrorResult(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;I)I

    move-result p0

    .line 577
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 579
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object p1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 580
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 581
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_13c
    return-void

    nop

    :pswitch_data_13e
    .packed-switch 0x1
        :pswitch_121
        :pswitch_121
        :pswitch_121
        :pswitch_117
        :pswitch_109
        :pswitch_ff
        :pswitch_f5
        :pswitch_121
        :pswitch_e6
    .end packed-switch

    :pswitch_data_154
    .packed-switch 0x64
        :pswitch_121
        :pswitch_121
        :pswitch_121
        :pswitch_d4
        :pswitch_84
        :pswitch_79
    .end packed-switch
.end method
