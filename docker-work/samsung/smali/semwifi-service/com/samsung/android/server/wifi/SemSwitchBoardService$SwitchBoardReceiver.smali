.class Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemSwitchBoardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemSwitchBoardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwitchBoardReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)V
    .registers 2

    .line 441
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    .line 443
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    const/4 v0, -0x1

    .line 446
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v1, :sswitch_data_1ce

    goto :goto_55

    :sswitch_14
    const-string v1, "com.samsung.android.SwitchBoard.SET_POLICY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_55

    :cond_1d
    move v0, v2

    goto :goto_55

    :sswitch_1f
    const-string v1, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_55

    :cond_28
    const/4 v0, 0x4

    goto :goto_55

    :sswitch_2a
    const-string v1, "com.samsung.android.SwitchBoard.MIN_SWITCHING_DELAY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    goto :goto_55

    :cond_33
    const/4 v0, 0x3

    goto :goto_55

    :sswitch_35
    const-string v1, "com.samsung.android.SwitchBoard.STOP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    goto :goto_55

    :cond_3e
    move v0, v3

    goto :goto_55

    :sswitch_40
    const-string v1, "com.samsung.android.SwitchBoard.ENABLE_DEBUG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    goto :goto_55

    :cond_49
    move v0, v4

    goto :goto_55

    :sswitch_4b
    const-string v1, "com.samsung.android.SwitchBoard.START"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    goto :goto_55

    :cond_54
    move v0, v5

    :goto_55
    const-string v1, "default"

    const-string v6, "="

    const-string v7, ", "

    const-string v8, "Package"

    const-string v9, "SwitchBoardReceiver.onReceive: action="

    packed-switch v0, :pswitch_data_1e8

    .line 503
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SwitchBoardReceiver.onReceive: undefined case: action="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logd(Ljava/lang/String;)V

    goto/16 :goto_1cd

    :pswitch_78
    const-string v0, "Policy"

    .line 481
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Policy="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logd(Ljava/lang/String;)V

    .line 483
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1cd

    .line 497
    :pswitch_b1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logd(Ljava/lang/String;)V

    .line 498
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1cd

    .line 487
    :pswitch_d8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmWifiToLteDelayMillis(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)I

    move-result v1

    const-string v2, "WifiToLteDelayMillis"

    .line 488
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fputmWifiToLteDelayMillis(Lcom/samsung/android/server/wifi/SemSwitchBoardService;I)V

    .line 489
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmLteToWifiDelayMillis(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)I

    move-result v1

    const-string v3, "LteToWifiDelayMillis"

    .line 490
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {v0, p2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fputmLteToWifiDelayMillis(Lcom/samsung/android/server/wifi/SemSwitchBoardService;I)V

    .line 491
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmWifiToLteDelayMillis(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmLteToWifiDelayMillis(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logd(Ljava/lang/String;)V

    goto/16 :goto_1cd

    .line 462
    :pswitch_12e
    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_138

    .line 464
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 469
    :cond_138
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logd(Ljava/lang/String;)V

    .line 471
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    move-result-object p0

    invoke-virtual {p0, v4, v5, v5, v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1cd

    :pswitch_16a
    const-string p0, "Debug"

    .line 476
    invoke-virtual {p2, p0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$sfputVDBG(Z)V

    .line 477
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", VDBG="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$sfgetVDBG()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logd(Ljava/lang/String;)V

    goto :goto_1cd

    .line 448
    :pswitch_192
    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_19c

    .line 450
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 455
    :cond_19c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logd(Ljava/lang/String;)V

    .line 457
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    move-result-object p0

    invoke-virtual {p0, v4, v4, v5, v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_1cd
    return-void

    :sswitch_data_1ce
    .sparse-switch
        -0x7115109a -> :sswitch_4b
        -0x31e8872d -> :sswitch_40
        -0x24ae17a2 -> :sswitch_35
        -0x58eb9f7 -> :sswitch_2a
        0x8658582 -> :sswitch_1f
        0x6aaf1b2b -> :sswitch_14
    .end sparse-switch

    :pswitch_data_1e8
    .packed-switch 0x0
        :pswitch_192
        :pswitch_16a
        :pswitch_12e
        :pswitch_d8
        :pswitch_b1
        :pswitch_78
    .end packed-switch
.end method
