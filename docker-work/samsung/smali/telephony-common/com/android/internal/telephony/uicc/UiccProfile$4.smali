.class Lcom/android/internal/telephony/uicc/UiccProfile$4;
.super Landroid/os/Handler;
.source "UiccProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .registers 2

    .line 392
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 395
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmDisposed(Lcom/android/internal/telephony/uicc/UiccProfile;)Z

    move-result v1

    const-string v2, "handleMessage: Received "

    if-eqz v1, :cond_40

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x8

    if-eq v1, v3, :cond_40

    const/16 v3, 0x9

    if-eq v1, v3, :cond_40

    const/16 v3, 0xa

    if-eq v1, v3, :cond_40

    const/16 v3, 0xb

    if-eq v1, v3, :cond_40

    const/16 v3, 0xc

    if-eq v1, v3, :cond_40

    .line 403
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " after dispose(); ignoring the message"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    return-void

    .line 407
    :cond_40
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for phoneId "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/uicc/UiccProfile;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlogWithLocalLog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 408
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xc8

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_437

    const/16 v2, 0xc9

    const/4 v5, 0x0

    if-eq v1, v2, :cond_3cc

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_379

    const-string v2, "skip mNetworkLockedRegistrants.notifyRegistrants()"

    packed-switch v1, :pswitch_data_47a

    packed-switch v1, :pswitch_data_48a

    const/4 v0, 0x4

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_4a0

    packed-switch v1, :pswitch_data_4b4

    .line 797
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: Unhandled message with number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    goto/16 :goto_479

    .line 635
    :pswitch_9d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 636
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_bd

    .line 637
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error sim password with exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 639
    :cond_bd
    iget-object p0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    invoke-static {p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 640
    iget-object p0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_479

    .line 620
    :pswitch_d2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 621
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_105

    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmDesiredSimPersoLocked(Lcom/android/internal/telephony/uicc/UiccProfile;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmPersoSimLock(Lcom/android/internal/telephony/uicc/UiccProfile;Z)V

    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v0, v6}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmDesiredSimPersoLocked(Lcom/android/internal/telephony/uicc/UiccProfile;Z)V

    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_CHANGE_FACILITY_SIM_PERSO_DONE: mPersoSimLock= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmPersoSimLock(Lcom/android/internal/telephony/uicc/UiccProfile;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    goto :goto_11d

    .line 626
    :cond_105
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error change facility lock with exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 628
    :goto_11d
    iget-object p0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    invoke-static {p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 629
    iget-object p0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_479

    .line 614
    :pswitch_132
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 615
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$monQueryFacilitySimPerso(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/AsyncResult;)V

    goto/16 :goto_479

    .line 596
    :pswitch_13d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 597
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_479

    .line 598
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_17f

    .line 599
    check-cast p1, [B

    .line 600
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_GET_PERSO_STATUS_COMPLETE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p1, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 601
    aget-byte p1, p1, v6

    if-ne p1, v0, :cond_178

    .line 602
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmPersoSimLock(Lcom/android/internal/telephony/uicc/UiccProfile;Z)V

    goto/16 :goto_479

    .line 604
    :cond_178
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0, v6}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmPersoSimLock(Lcom/android/internal/telephony/uicc/UiccProfile;Z)V

    goto/16 :goto_479

    .line 607
    :cond_17f
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string p1, "EVENT_GET_PERSO_STATUS_COMPLETE ar.result null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    goto/16 :goto_479

    .line 454
    :pswitch_188
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$misSupportSsu(Lcom/android/internal/telephony/uicc/UiccProfile;)Z

    move-result p1

    if-eqz p1, :cond_198

    .line 455
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v0, "skip mPersoLockedRegistrants.notifyRegistrants()"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    goto :goto_1a1

    .line 457
    :cond_198
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmPersoLockedRegistrants(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 459
    :goto_1a1
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateExternalState()V

    goto/16 :goto_479

    .line 445
    :pswitch_1a8
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$misSupportSsu(Lcom/android/internal/telephony/uicc/UiccProfile;)Z

    move-result p1

    if-eqz p1, :cond_1b8

    .line 446
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v0, "skip mServicePoviderLockedRegistrants.notifyRegistrants()"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    goto :goto_1c1

    .line 448
    :cond_1b8
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmServicePoviderLockedRegistrants(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 450
    :goto_1c1
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateExternalState()V

    goto/16 :goto_479

    .line 436
    :pswitch_1c8
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$misSupportSsu(Lcom/android/internal/telephony/uicc/UiccProfile;)Z

    move-result p1

    if-eqz p1, :cond_1d6

    .line 437
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    goto :goto_1df

    .line 439
    :cond_1d6
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmNetworkSubsetLockedRegistrants(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 441
    :goto_1df
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateExternalState()V

    goto/16 :goto_479

    .line 586
    :pswitch_1e6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 587
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_479

    .line 588
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmOPLMNwAct(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 589
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_QUERY_OPLMNWACT_DONE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmOPLMNwAct(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    goto/16 :goto_479

    .line 577
    :pswitch_219
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 578
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_479

    .line 579
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmFPLMN(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 580
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_QUERY_FPLMN_DONE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmFPLMN(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    goto/16 :goto_479

    .line 568
    :pswitch_24c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 569
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_479

    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmPLMNwAct(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 571
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_QUERY_PLMNWACT_DONE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmPLMNwAct(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    goto/16 :goto_479

    .line 551
    :pswitch_27f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 552
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 553
    aget-byte v1, p1, v6

    if-ne v1, v3, :cond_479

    .line 554
    aget-byte p1, p1, v4

    if-ne p1, v0, :cond_29f

    .line 555
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v0, "EVENT_SAP_NOTIFICATION - SAP_CARD_STATUS_INSERTED : SIM state is changed to UNKNOWN by SAP connection"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 556
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$msetExternalState(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_479

    :cond_29f
    const/4 v0, 0x3

    if-eq p1, v0, :cond_2a4

    if-ne p1, v3, :cond_479

    .line 559
    :cond_2a4
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v0, "EVENT_SAP_NOTIFICATION - REMOVED or NOT_ACCESSIBLE"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 560
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateExternalState()V

    goto/16 :goto_479

    .line 528
    :pswitch_2b2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 529
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_2d6

    .line 532
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v1, "An error occurred during internal PIN verification"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmPinStorage(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/PinStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/uicc/UiccProfile;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/PinStorage;->clearPin(I)V

    .line 534
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateExternalState()V

    goto :goto_2dd

    .line 536
    :cond_2d6
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v0, "Internal PIN verification was successful!"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    :goto_2dd
    const/16 p0, 0x150

    .line 542
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_2e4

    goto :goto_2e5

    :cond_2e4
    move v3, v4

    .line 540
    :goto_2e5
    invoke-static {p0, v3, v4}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(III)V

    goto/16 :goto_479

    .line 518
    :pswitch_2ea
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_2f4

    .line 519
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1, v5}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmTestOverrideCarrierPrivilegeRules(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)V

    goto :goto_300

    .line 521
    :cond_2f4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    check-cast p1, Ljava/util/List;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmTestOverrideCarrierPrivilegeRules(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)V

    .line 524
    :goto_300
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->refresh()V

    goto/16 :goto_479

    .line 490
    :pswitch_307
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mhandleCarrierNameOverride(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    .line 491
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mhandleSimCountryIsoOverride(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    goto/16 :goto_479

    .line 478
    :pswitch_313
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/uicc/UiccProfile;)I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_328

    .line 480
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCarrierPrivilegesTracker()Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    move-result-object p1

    if-eqz p1, :cond_328

    .line 482
    invoke-virtual {p1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->onUiccAccessRulesLoaded()V

    .line 485
    :cond_328
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$monCarrierPrivilegesLoadedMessage(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    .line 486
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateExternalState()V

    goto/16 :goto_479

    .line 412
    :pswitch_334
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$misSupportSsu(Lcom/android/internal/telephony/uicc/UiccProfile;)Z

    move-result p1

    if-eqz p1, :cond_342

    .line 413
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    goto :goto_372

    .line 415
    :cond_342
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmUiccApplication(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p1

    if-eqz p1, :cond_36b

    .line 416
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmNetworkLockedRegistrants(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p1

    new-instance v0, Landroid/os/AsyncResult;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmUiccApplication(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 417
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v5, v1, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 416
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_372

    .line 419
    :cond_36b
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v0, "EVENT_NETWORK_LOCKED or EVENT_REGIONAL_LOCKED: mUiccApplication is NULL, mNetworkLockedRegistrants not notified."

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 431
    :goto_372
    :pswitch_372
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateExternalState()V

    goto/16 :goto_479

    .line 502
    :cond_379
    :pswitch_379
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 503
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_399

    .line 504
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: Error in SIM access with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlogWithLocalLog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 507
    :cond_399
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v1, :cond_3af

    .line 508
    check-cast v1, Landroid/os/Message;

    iget-object p0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, p0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 509
    iget-object p0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_479

    .line 511
    :cond_3af
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: ar.userObj is null in event:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", failed to post status back to caller"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    goto/16 :goto_479

    .line 772
    :cond_3cc
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 773
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/uicc/UiccProfile;)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 775
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3e6

    .line 776
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v1, "Failed to get Ecc List from 3GPP2"

    invoke-static {p1, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    goto :goto_3f5

    .line 779
    :cond_3e6
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mread2GEccList(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/AsyncResult;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 780
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmEmergencyNumber(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    :goto_3f5
    if-eqz v0, :cond_3fb

    .line 784
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v5

    :cond_3fb
    if-eqz v5, :cond_429

    .line 785
    instance-of p1, v5, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    if-eqz p1, :cond_429

    .line 786
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ecclistFromSim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmEmergencyNumber(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 787
    check-cast v5, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmEmergencyNumber(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v4, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->handleSimEcc(ILjava/lang/String;)V

    goto :goto_432

    :cond_429
    if-nez v0, :cond_432

    .line 789
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v0, "currentPhone is null"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 791
    :cond_432
    :goto_432
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mAlreadyReadEcc:Z

    goto :goto_479

    .line 750
    :cond_437
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 752
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_44e

    .line 753
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v0, "Failed to get Ecc List from 3GPP, try to re-read from 3GPP2"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 754
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmEmergencyNumber(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    goto :goto_474

    .line 759
    :cond_44e
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    if-eqz v0, :cond_465

    .line 760
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_465

    .line 761
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mread2GEccList(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/AsyncResult;)Ljava/lang/StringBuffer;

    move-result-object p1

    goto :goto_46b

    .line 763
    :cond_465
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mread3GEccList(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/AsyncResult;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 765
    :goto_46b
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmEmergencyNumber(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 767
    :goto_474
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->getEccListFromSim(I)V

    :cond_479
    :goto_479
    :pswitch_479
    return-void

    :pswitch_data_47a
    .packed-switch 0x1
        :pswitch_372
        :pswitch_372
        :pswitch_372
        :pswitch_372
        :pswitch_334
        :pswitch_372
    .end packed-switch

    :pswitch_data_48a
    .packed-switch 0x8
        :pswitch_379
        :pswitch_379
        :pswitch_379
        :pswitch_379
        :pswitch_379
        :pswitch_313
        :pswitch_307
        :pswitch_2ea
        :pswitch_2b2
    .end packed-switch

    :pswitch_data_4a0
    .packed-switch 0x64
        :pswitch_27f
        :pswitch_24c
        :pswitch_219
        :pswitch_1e6
        :pswitch_1c8
        :pswitch_1a8
        :pswitch_188
        :pswitch_334
    .end packed-switch

    :pswitch_data_4b4
    .packed-switch 0x6e
        :pswitch_13d
        :pswitch_132
        :pswitch_d2
        :pswitch_9d
        :pswitch_9d
        :pswitch_479
        :pswitch_479
    .end packed-switch
.end method
