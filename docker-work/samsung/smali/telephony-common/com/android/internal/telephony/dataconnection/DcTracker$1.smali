.class Lcom/android/internal/telephony/dataconnection/DcTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .registers 2

    .line 562
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 565
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent.getAction() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 570
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_40

    .line 572
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string p2, "screen on"

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 573
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fputmIsScreenOn(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)V

    .line 574
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    .line 575
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    .line 576
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$mrestartDataStallAlarm(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    goto/16 :goto_3d8

    :cond_40
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 577
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_66

    .line 578
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string p2, "screen off"

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 579
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fputmIsScreenOn(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)V

    .line 580
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    .line 581
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    .line 582
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$mrestartDataStallAlarm(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    goto/16 :goto_3d8

    :cond_66
    const-string v0, "com.android.internal.telephony.data-stall"

    .line 583
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 584
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$monActionIntentDataStallAlarm(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/content/Intent;)V

    goto/16 :goto_3d8

    :cond_75
    const-string v0, "com.android.internal.telephony.provisioning_apn_alarm"

    .line 585
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 586
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v0, "Provisioning apn alarm"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 587
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$monActionIntentProvisioningApnAlarm(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/content/Intent;)V

    goto/16 :goto_3d8

    :cond_8b
    const-string v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    .line 588
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "android.telephony.extra.SLOT_INDEX"

    const/4 v4, -0x1

    if-nez v0, :cond_3b8

    const-string v0, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    .line 589
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    goto/16 :goto_3b8

    :cond_a0
    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 596
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 597
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne p1, v0, :cond_3d8

    const-string p1, "android.telephony.extra.REBROADCAST_ON_UNLOCK"

    .line 599
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_c7

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmConfigReady(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result p1

    if-eqz p1, :cond_c7

    return-void

    :cond_c7
    const-string p1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 605
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 607
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_3d8

    .line 608
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const p1, 0x42036

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3d8

    :cond_dd
    const-string v0, "android.net.conn.TETHER_STATE_CHANGED"

    .line 613
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    const-string p1, "tetherArray"

    .line 614
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 615
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTetherStateChanged, tethered = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mTetherRequested = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmTetherRequested(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 616
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmTetherRequested(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result p2

    if-lez p1, :cond_11d

    move v0, v1

    goto :goto_11e

    :cond_11d
    move v0, v2

    :goto_11e
    if-eq p2, v0, :cond_3d8

    .line 617
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    if-lez p1, :cond_125

    goto :goto_126

    :cond_125
    move v1, v2

    :goto_126
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTetherStateChanged(Z)V

    goto/16 :goto_3d8

    :cond_12b
    const-string v0, "android.intent.action.ACTION_DATA_SELECTION_POPUP_PRESSED"

    .line 619
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e6

    .line 620
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmDataAllowPopup(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DataAllowPopup;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->needPopupForCurrentCarrier()Z

    move-result p1

    if-nez p1, :cond_14b

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmDataAllowPopup(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DataAllowPopup;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isPromptDataRoaming()Z

    move-result p1

    if-eqz p1, :cond_3d8

    :cond_14b
    const-string p1, "DataEnable"

    .line 621
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "Roaming"

    .line 622
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmDataAllowPopup(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DataAllowPopup;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA_SELECTION_POPUP_PRESSED : dataEnable = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", roamingStatus = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->eventLog(Ljava/lang/String;)V

    const-string v0, "popupPressed"

    if-eqz p2, :cond_1be

    .line 626
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmDataAllowPopup(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DataAllowPopup;

    move-result-object p2

    invoke-virtual {p2, v2, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->setNeedRoamingDataAllowPopup(ZLjava/lang/String;)V

    .line 627
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object p2, p2, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    invoke-static {p2}, Lcom/android/internal/telephony/TelephonyFeatures;->needToRunLteRoaming(I)Z

    move-result p2

    if-eqz p2, :cond_1c7

    if-eqz p1, :cond_1c7

    .line 629
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateApnForLteRoaming()Z

    move-result p2

    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmDataAllowPopup(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DataAllowPopup;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA_SELECTION_POPUP_PRESSED : updateApn = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->eventLog(Ljava/lang/String;)V

    if-eqz p2, :cond_1c7

    .line 632
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createAllApnList()V

    goto :goto_1c7

    .line 637
    :cond_1be
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmDataAllowPopup(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DataAllowPopup;

    move-result-object p2

    invoke-virtual {p2, v2, v0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->setNeedDataAllowPopup(ZLjava/lang/String;)V

    .line 639
    :cond_1c7
    :goto_1c7
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmDataAllowPopup(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DataAllowPopup;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->setWaitingForUserPress(Z)V

    .line 640
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmDataAllowPopup(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DataAllowPopup;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->setDeferredDataAllowPopup(Z)V

    if-eqz p1, :cond_3d8

    .line 642
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    sget-object p1, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string p2, "pressDataEnable"

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    goto/16 :goto_3d8

    :cond_1e6
    const-string v0, "com.samsung.intent.action.CSC_CONNECTION_RESET_DONE"

    .line 645
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "SKT"

    if-eqz v0, :cond_255

    .line 646
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    const-string p2, "CHN"

    const-string v0, "HKG"

    const-string v1, "TPE"

    filled-new-array {p2, v0, v1}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21e

    .line 647
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object p2, p1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of p2, p2, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz p2, :cond_21e

    const-string p2, "CSC_CONNECTION_RESET_DONE : updateCurrentCarrierInProvider"

    .line 648
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 649
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p1, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider()Z

    .line 652
    :cond_21e
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d8

    .line 653
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateApnForLteRoaming()Z

    move-result p1

    .line 654
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CSC_CONNECTION_RESET_DONE : updateApn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_3d8

    .line 656
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createAllApnList()V

    goto/16 :goto_3d8

    :cond_255
    const-string v0, "com.sec.android.UsimRegistrationKOR.UsimDownload.end"

    .line 659
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "nothing"

    if-eqz v0, :cond_28e

    .line 660
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d8

    .line 661
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object p2, p2, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    const-string v0, "CscFeature_RIL_BIPOTAUsimRegistration"

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3d8

    .line 662
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    sget-object p1, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    goto/16 :goto_3d8

    :cond_28e
    const-string v0, "android.intent.action.ACTION_DATA_CALL_SETUP_RETRY"

    .line 664
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "KTT"

    if-eqz v0, :cond_2ba

    .line 665
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d8

    .line 666
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string p2, "[KT_NOTI] android.intent.action.ACTION_DATA_CALL_SETUP_RETRY recieved"

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 668
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    sget-object p1, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    goto/16 :goto_3d8

    :cond_2ba
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 670
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_318

    .line 671
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "LGT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e8

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 672
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d8

    .line 673
    :cond_2e8
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getAirplaneMode()Z

    move-result p1

    if-nez p1, :cond_3d8

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 675
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRoamingEnabledInternal()Z

    move-result p1

    if-eqz p1, :cond_3d8

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmDataAllowPopup(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DataAllowPopup;

    move-result-object p1

    .line 677
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->isWaitingForUserPress()Z

    move-result p1

    if-nez p1, :cond_3d8

    .line 678
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string p2, "DATA : air plane mode is disabled "

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 679
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmDataAllowPopup(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DataAllowPopup;

    move-result-object p0

    const-string p1, "apmModeOff"

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->setNeedRoamingDataAllowPopup(ZLjava/lang/String;)V

    goto/16 :goto_3d8

    :cond_318
    const-string v0, "android.intent.action.retrySetupData"

    .line 682
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34a

    .line 683
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    const-string v0, "phone"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 684
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object p2, p2, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    if-ne p1, p2, :cond_3d8

    .line 685
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string p2, "call onTrySetupData cause of received intent retrySetupData"

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 686
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    sget-object p1, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string p2, "t3396Stopped"

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    goto/16 :goto_3d8

    :cond_34a
    const-string p2, "com.samsung.android.mobiledoctor.GETMOBILEDATAFILES"

    .line 688
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_3b2

    const-string p2, "com.samsung.android.action.ACTION_REQUEST_INTERNET_LOG"

    .line 689
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_35c

    goto :goto_3b2

    :cond_35c
    const-string p2, "com.samsung.android.mobiledoctor.DELETEMOBILEDATAFILES"

    .line 691
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_36a

    .line 692
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->removeTPData(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    goto :goto_3d8

    :cond_36a
    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 694
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_389

    .line 695
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmSimState(Lcom/android/internal/telephony/dataconnection/DcTracker;)I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_3d8

    .line 696
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string p2, "call setDefaultDataRoamingEnabled cause of received intent dds_changed"

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 697
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$msetDefaultDataRoamingEnabled(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    goto :goto_3d8

    :cond_389
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 700
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39b

    .line 701
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmDataAllowPopup(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DataAllowPopup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataAllowPopup;->onBootCompleted()V

    goto :goto_3d8

    .line 703
    :cond_39b
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: Unknown action="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_3d8

    .line 690
    :cond_3b2
    :goto_3b2
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->dumpTPData(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    goto :goto_3d8

    .line 590
    :cond_3b8
    :goto_3b8
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne p1, v0, :cond_3d8

    const-string p1, "android.telephony.extra.SIM_STATE"

    .line 592
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 594
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const p2, 0x42037

    invoke-virtual {p0, p2, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3d8
    :goto_3d8
    return-void
.end method
