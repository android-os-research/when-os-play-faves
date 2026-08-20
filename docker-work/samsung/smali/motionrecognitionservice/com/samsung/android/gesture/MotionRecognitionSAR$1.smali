.class Lcom/samsung/android/gesture/MotionRecognitionSAR$1;
.super Landroid/content/BroadcastReceiver;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionSAR;

    .line 583
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 587
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_2b0

    :cond_e
    goto/16 :goto_77

    :sswitch_10
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x3

    goto/16 :goto_78

    :sswitch_1b
    const-string v1, "com.sec.intent.action.SARDEVICE_CP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v4

    goto :goto_78

    :sswitch_25
    const-string v1, "com.samsung.UsbOtgCableConnection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x7

    goto :goto_78

    :sswitch_2f
    const-string v1, "android.samsung.media.action.receiver_sar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v3

    goto :goto_78

    :sswitch_39
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x6

    goto :goto_78

    :sswitch_43
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x9

    goto :goto_78

    :sswitch_4e
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    goto :goto_78

    :sswitch_58
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x5

    goto :goto_78

    :sswitch_62
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x4

    goto :goto_78

    :sswitch_6c
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x8

    goto :goto_78

    :goto_77
    move v0, v2

    :goto_78
    packed-switch v0, :pswitch_data_2da

    .line 677
    const-string v0, "MotionRecognitionService"

    const-string v1, "[SAR] not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2ae

    .line 674
    :pswitch_84
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmBigData(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->-$$Nest$msetScreenState(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;Z)V

    .line 675
    goto/16 :goto_2ae

    .line 671
    :pswitch_8f
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmBigData(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;->-$$Nest$msetScreenState(Lcom/samsung/android/gesture/MotionRecognitionSAR$BigData;Z)V

    .line 672
    goto/16 :goto_2ae

    .line 667
    :pswitch_9a
    const-string v0, "Connect"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, "isConnected":Ljava/lang/String;
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SAR]  onReceive : USB_OTG_CABLE_CONNECTION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    goto/16 :goto_2ae

    .line 652
    .end local v0    # "isConnected":Ljava/lang/String;
    :pswitch_ba
    const-string v0, "MotionRecognitionService"

    const-string v1, "[SAR]  mReceiver.onReceive : ACTION_SIM_STATE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const-string v0, ""

    .line 654
    .local v0, "iccState":Ljava/lang/String;
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 655
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 657
    :cond_d1
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2ae

    .line 658
    const-string v1, "MotionRecognitionService"

    const-string v2, "ICC State : %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensors(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 660
    :try_start_ef
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensors(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_109

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;

    .line 661
    .local v3, "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    invoke-virtual {v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->onSimChanged()V

    .line 662
    .end local v3    # "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    goto :goto_f9

    .line 663
    :cond_109
    monitor-exit v1

    goto/16 :goto_2ae

    :catchall_10c
    move-exception v2

    monitor-exit v1
    :try_end_10e
    .catchall {:try_start_ef .. :try_end_10e} :catchall_10c

    throw v2

    .line 640
    .end local v0    # "iccState":Ljava/lang/String;
    :pswitch_10f
    const-string v0, "state"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 641
    .local v0, "state":I
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SAR]  onReceive : ACTION_HEADSET_PLUG, state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensors(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 645
    :try_start_134
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensors(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;

    .line 646
    .restart local v3    # "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    invoke-virtual {v3, v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->onHeadSetStatusChanged(I)V

    .line 647
    .end local v3    # "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    goto :goto_13e

    .line 648
    :cond_14e
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmProximitySAR(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

    move-result-object v2

    if-eqz v2, :cond_15f

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmProximitySAR(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->onHeadSetStatusChanged(I)V

    .line 649
    :cond_15f
    monitor-exit v1

    .line 650
    goto/16 :goto_2ae

    .line 649
    :catchall_162
    move-exception v2

    monitor-exit v1
    :try_end_164
    .catchall {:try_start_134 .. :try_end_164} :catchall_162

    throw v2

    .line 632
    .end local v0    # "state":I
    :pswitch_165
    const-string v0, "MotionRecognitionService"

    const-string v1, "[SAR]  onReceive : ACTION_POWER_DISCONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensors(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 634
    :try_start_173
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensors(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;

    .line 635
    .local v2, "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    invoke-virtual {v2, v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->onTAStatusChanged(Z)V

    .line 636
    .end local v2    # "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    goto :goto_17d

    .line 637
    :cond_18d
    monitor-exit v0

    .line 638
    goto/16 :goto_2ae

    .line 637
    :catchall_190
    move-exception v1

    monitor-exit v0
    :try_end_192
    .catchall {:try_start_173 .. :try_end_192} :catchall_190

    throw v1

    .line 624
    :pswitch_193
    const-string v0, "MotionRecognitionService"

    const-string v1, "[SAR]  onReceive : ACTION_POWER_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensors(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 626
    :try_start_1a1
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensors(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1ab
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1bb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;

    .line 627
    .restart local v2    # "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->onTAStatusChanged(Z)V

    .line 628
    .end local v2    # "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    goto :goto_1ab

    .line 629
    :cond_1bb
    monitor-exit v0

    .line 630
    goto/16 :goto_2ae

    .line 629
    :catchall_1be
    move-exception v1

    monitor-exit v0
    :try_end_1c0
    .catchall {:try_start_1a1 .. :try_end_1c0} :catchall_1be

    throw v1

    .line 615
    :pswitch_1c1
    const-string v0, "plugged"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 616
    .local v0, "plugged":I
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SAR]  onReceive : ACTION_BATTERY_CHANGED, Plugged: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensors(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 618
    :try_start_1e6
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensors(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_205

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;

    .line 619
    .local v5, "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    if-lez v0, :cond_200

    move v6, v3

    goto :goto_201

    :cond_200
    move v6, v4

    :goto_201
    invoke-virtual {v5, v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->onTAStatusChanged(Z)V

    .line 620
    .end local v5    # "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    goto :goto_1f0

    .line 621
    :cond_205
    monitor-exit v1

    .line 622
    goto/16 :goto_2ae

    .line 621
    :catchall_208
    move-exception v2

    monitor-exit v1
    :try_end_20a
    .catchall {:try_start_1e6 .. :try_end_20a} :catchall_208

    throw v2

    .line 610
    .end local v0    # "plugged":I
    :pswitch_20b
    const-string v0, "android.samsung.media.extra.receiver"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 611
    .local v0, "isRCV":Z
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SAR]  onReceive : MEDIA_SAR :: isRCV = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmProximitySAR(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

    move-result-object v1

    if-eqz v1, :cond_2ae

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmProximitySAR(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->onReceiverChanged(Z)V

    goto :goto_2ae

    .line 589
    .end local v0    # "isRCV":Z
    :pswitch_23b
    const-string v0, "cmd"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, "callAction":Ljava/lang/String;
    const/4 v1, 0x0

    .line 592
    .local v1, "deviceID":I
    :try_start_242
    const-string v3, "device"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_24c
    .catch Ljava/lang/NumberFormatException; {:try_start_242 .. :try_end_24c} :catch_24e

    move v1, v3

    .line 595
    goto :goto_250

    .line 593
    :catch_24e
    move-exception v3

    .line 594
    .local v3, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .line 596
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :goto_250
    const/4 v3, 0x0

    .line 597
    .local v3, "slot":I
    const/4 v4, 0x0

    .line 598
    .local v4, "deviceExt":I
    const-string v5, "slot"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_260

    .line 599
    const-string v5, "slot"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 601
    :cond_260
    const-string v2, "device_ext"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_272

    .line 602
    const-string v2, "device_ext"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 604
    :cond_272
    const-string v2, "MotionRecognitionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SAR]  onReceive : SARDEVICE_CP, callAction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " deviceID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " slot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " device_ext = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v2, v1, v0, v3, v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$mcallSARDeviceID(Lcom/samsung/android/gesture/MotionRecognitionSAR;ILjava/lang/String;II)V

    .line 608
    nop

    .line 680
    .end local v0    # "callAction":Ljava/lang/String;
    .end local v1    # "deviceID":I
    .end local v3    # "slot":I
    .end local v4    # "deviceExt":I
    :cond_2ae
    :goto_2ae
    return-void

    nop

    :sswitch_data_2b0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_6c
        -0x7073f927 -> :sswitch_62
        -0x63ecb970 -> :sswitch_58
        -0x5bb23923 -> :sswitch_4e
        -0x56ac2893 -> :sswitch_43
        -0xdb21ee7 -> :sswitch_39
        -0x21f4771 -> :sswitch_2f
        0x1d39695c -> :sswitch_25
        0x373e5fe2 -> :sswitch_1b
        0x3cbf870b -> :sswitch_10
    .end sparse-switch

    :pswitch_data_2da
    .packed-switch 0x0
        :pswitch_23b
        :pswitch_20b
        :pswitch_1c1
        :pswitch_193
        :pswitch_165
        :pswitch_10f
        :pswitch_ba
        :pswitch_9a
        :pswitch_8f
        :pswitch_84
    .end packed-switch
.end method
