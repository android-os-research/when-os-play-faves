.class Lcom/samsung/android/gesture/PocketModeEvent$1;
.super Landroid/os/Handler;
.source "PocketModeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gesture/PocketModeEvent;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/PocketModeEvent;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/PocketModeEvent;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/gesture/PocketModeEvent;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 265
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 23
    .param p1, "msg"    # Landroid/os/Message;

    .line 268
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/16 v7, 0xa

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch v2, :pswitch_data_53e

    goto/16 :goto_53d

    .line 481
    :pswitch_13
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_STOP_EDGE_LIGHTING"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/PocketModeEvent;->injectDataToSensorHub(F)V

    .line 483
    goto/16 :goto_53d

    .line 477
    :pswitch_25
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_START_EDGE_LIGHTING"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    const/high16 v3, 0x42ca0000    # 101.0f

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/PocketModeEvent;->injectDataToSensorHub(F)V

    .line 479
    goto/16 :goto_53d

    .line 343
    :pswitch_37
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 344
    sput-boolean v9, Lcom/samsung/android/gesture/PocketModeEvent;->isTimeoutDelayInvalidEnabled:Z

    .line 345
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v2

    new-instance v11, Lcom/samsung/android/gesture/PocketDumpOverlayInfo;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v4

    iget-object v3, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmShowOverlayTime(Lcom/samsung/android/gesture/PocketModeEvent;)J

    move-result-wide v6

    sget v8, Lcom/samsung/android/gesture/PocketModeEvent;->mPopupReleaseReason:I

    iget-object v3, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuxOutDump(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v9

    move-object v3, v11

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/gesture/PocketDumpOverlayInfo;-><init>(JJII)V

    invoke-virtual {v2, v11}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 346
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$misFlipFolded(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 347
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.KSO_CLOSE_POPUP_SUB"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 348
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_DISABLE_TIMEOUT_DELAY_INVALID"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketSensitivityManager;->isPocketPosSensorReceived()Z

    move-result v2

    if-ne v2, v10, :cond_cf

    .line 350
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketSensitivityManager;->getVpPosData()Lcom/samsung/android/gesture/VirtualPocketPosData;

    move-result-object v2

    .line 351
    .local v2, "posData":Lcom/samsung/android/gesture/VirtualPocketPosData;
    if-eqz v2, :cond_cf

    .line 352
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v3

    new-instance v14, Lcom/samsung/android/gesture/PocketDumpVirtualPos;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v5

    iget-object v4, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v4}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v7

    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getState()I

    move-result v8

    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getposState()I

    move-result v9

    .line 353
    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getposCase()I

    move-result v10

    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getpedoState()I

    move-result v11

    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getpedoCase()I

    move-result v12

    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getversion()I

    move-result v13

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/samsung/android/gesture/PocketDumpVirtualPos;-><init>(JIIIIIII)V

    .line 352
    invoke-virtual {v3, v14}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 357
    .end local v2    # "posData":Lcom/samsung/android/gesture/VirtualPocketPosData;
    :cond_cf
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/gesture/PocketBigDataManager;->setPopupEndTime(J)V

    .line 358
    goto/16 :goto_53d

    .line 303
    :pswitch_dc
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_e8

    .line 304
    goto/16 :goto_53d

    .line 305
    :cond_e8
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 307
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$misFlipFolded(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v2

    if-eqz v2, :cond_15b

    .line 308
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.KSO_SHOW_POPUP_SUB"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 309
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_ENABLE_TIMEOUT_DELAY_INVALID"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketSensitivityManager;->isPocketPosSensorReceived()Z

    move-result v2

    if-ne v2, v10, :cond_15b

    .line 311
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketSensitivityManager;->getVpPosData()Lcom/samsung/android/gesture/VirtualPocketPosData;

    move-result-object v2

    .line 312
    .restart local v2    # "posData":Lcom/samsung/android/gesture/VirtualPocketPosData;
    if-eqz v2, :cond_15b

    .line 313
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/gesture/PocketDumpVirtualPos;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v12

    iget-object v5, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v5}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v14

    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getState()I

    move-result v15

    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getposState()I

    move-result v16

    .line 314
    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getposCase()I

    move-result v17

    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getpedoState()I

    move-result v18

    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getpedoCase()I

    move-result v19

    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getversion()I

    move-result v20

    move-object v11, v4

    invoke-direct/range {v11 .. v20}, Lcom/samsung/android/gesture/PocketDumpVirtualPos;-><init>(JIIIIIII)V

    .line 313
    invoke-virtual {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 318
    .end local v2    # "posData":Lcom/samsung/android/gesture/VirtualPocketPosData;
    :cond_15b
    sput-boolean v10, Lcom/samsung/android/gesture/PocketModeEvent;->isTimeoutDelayInvalidEnabled:Z

    .line 319
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/gesture/PocketBigDataManager;->setPopupStartTime(J)V

    .line 320
    goto/16 :goto_53d

    .line 472
    :pswitch_16a
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 473
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_DISABLE_INSENSITIVE_MODE"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->DISABLED:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/PocketSensitivityManager;->setSensitivityState(Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;)V

    .line 475
    goto/16 :goto_53d

    .line 467
    :pswitch_189
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 468
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_ENABLE_INSENSITIVE_MODE"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->ENABLED:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/PocketSensitivityManager;->setSensitivityState(Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;)V

    .line 470
    goto/16 :goto_53d

    .line 462
    :pswitch_1a8
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 463
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_UNREGISTER_POCKET_POSITION_SENSOR"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketSensitivityManager;->unregisterPocketPositionSensor()V

    .line 465
    goto/16 :goto_53d

    .line 456
    :pswitch_1c5
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 457
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_REGISTER_POCKET_POSITION_SENSOR"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketSensitivityManager;->registerPocketPositionSensor()V

    .line 459
    goto/16 :goto_53d

    .line 450
    :pswitch_1e2
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 451
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_RELEASE_POCKET_MODE"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.RELEASE_POCKET_MODE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 453
    goto/16 :goto_53d

    .line 444
    :pswitch_208
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 445
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_RECOG_POCKET_MODE"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.RECOG_POCKET_MODE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 447
    goto/16 :goto_53d

    .line 438
    :pswitch_22e
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 439
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_UNREGISTER_LIGHT_SENSOR"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->unregisterLightSensor()V

    .line 441
    goto/16 :goto_53d

    .line 431
    :pswitch_249
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 432
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_PHYSICAL_PROX_DISABLE"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterPhysicalProximitySensorForA71_5g()V

    .line 434
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2, v10}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmIsAvailableTiltUse(Lcom/samsung/android/gesture/PocketModeEvent;Z)V

    .line 435
    goto/16 :goto_53d

    .line 421
    :pswitch_26b
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 422
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_HOVER_RECHECK_DISABLE"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    sget-boolean v2, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-nez v2, :cond_288

    .line 424
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2, v9}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmIsPocketOutHover(Lcom/samsung/android/gesture/PocketModeEvent;Z)V

    goto/16 :goto_53d

    .line 426
    :cond_288
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "popup still showing"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    goto/16 :goto_53d

    .line 415
    :pswitch_293
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 416
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_SUBDISPLAY_RECHECK_DISABLE"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    sput-boolean v9, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutSubDisp:Z

    .line 418
    goto/16 :goto_53d

    .line 409
    :pswitch_2ab
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_REGISTER_POCKET_SENSOR"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->registerPocketProxySensor()V

    .line 412
    goto/16 :goto_53d

    .line 403
    :pswitch_2c8
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 404
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_UNREGISTER_POCKET_SENSOR"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterPocketProxySensor()V

    .line 406
    goto/16 :goto_53d

    .line 397
    :pswitch_2e4
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 398
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_POCKET_RECOGNITION_TIMEOUT"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/samsung/android/gesture/PocketProximityManager;->setRunningTouchSensor(Z)V

    .line 400
    goto/16 :goto_53d

    .line 391
    :pswitch_2ff
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 392
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_STOP_SENSING"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->unregisterSensor()V

    .line 394
    goto/16 :goto_53d

    .line 322
    :pswitch_318
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 323
    sput-boolean v9, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    .line 324
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/gesture/PocketDumpOverlayInfo;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v12

    iget-object v4, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v4}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmShowOverlayTime(Lcom/samsung/android/gesture/PocketModeEvent;)J

    move-result-wide v14

    sget v16, Lcom/samsung/android/gesture/PocketModeEvent;->mPopupReleaseReason:I

    iget-object v4, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v4}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuxOutDump(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v17

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lcom/samsung/android/gesture/PocketDumpOverlayInfo;-><init>(JJII)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 333
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.KSO_CLOSE_POPUP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 334
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_REMOVE_POPUP"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/gesture/PocketBigDataManager;->setPopupEndTime(J)V

    .line 338
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v2

    if-ne v2, v6, :cond_53d

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->alertProxAvailable()Z

    move-result v2

    if-eqz v2, :cond_53d

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningAlertProxSensor()Z

    move-result v2

    if-ne v2, v10, :cond_53d

    .line 339
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterAlertProxSensor()V

    goto/16 :goto_53d

    .line 360
    :pswitch_391
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 361
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v2

    new-instance v14, Lcom/samsung/android/gesture/PocketDumpOverlayInfo;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v12

    iget-object v11, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v11}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmShowOverlayTime(Lcom/samsung/android/gesture/PocketModeEvent;)J

    move-result-wide v15

    sget v17, Lcom/samsung/android/gesture/PocketModeEvent;->mPopupReleaseReason:I

    iget-object v11, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v11}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuxDump(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v18

    move-object v11, v14

    move-object v3, v14

    move-wide v14, v15

    move/from16 v16, v17

    move/from16 v17, v18

    invoke-direct/range {v11 .. v17}, Lcom/samsung/android/gesture/PocketDumpOverlayInfo;-><init>(JJII)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 362
    sput-boolean v9, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    .line 363
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_CLICK_POPUP_OK"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v2

    const-wide/16 v11, 0x0

    invoke-virtual {v2, v8, v11, v12}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 366
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v2

    if-ne v2, v4, :cond_3f6

    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3f6

    .line 367
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 369
    :cond_3f6
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v2

    if-ne v2, v6, :cond_442

    .line 370
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v2

    if-ne v2, v10, :cond_411

    .line 371
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->resetPocketProxySensor()V

    .line 373
    :cond_411
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningAlertProxSensor()Z

    move-result v2

    if-ne v2, v10, :cond_422

    .line 374
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterAlertProxSensor()V

    .line 376
    :cond_422
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->resetPocketProxyCluster()V

    .line 378
    sget v2, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    if-ne v2, v8, :cond_45b

    .line 379
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketSensitivityManager;->isDualFlipEnabled()Z

    move-result v2

    if-ne v2, v10, :cond_45b

    .line 380
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketSensitivityManager;->disableDualFlipMode()V

    goto :goto_45b

    .line 382
    :cond_442
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v2

    if-ne v2, v5, :cond_45b

    .line 383
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/samsung/android/gesture/PocketProximityManager;->writeProxInt(I)I

    .line 384
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 386
    :cond_45b
    :goto_45b
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    invoke-virtual {v2, v8}, Lcom/samsung/android/gesture/PocketBigDataManager;->setRMReason(I)V

    .line 387
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/gesture/PocketBigDataManager;->setPopupEndTime(J)V

    .line 388
    goto/16 :goto_53d

    .line 278
    :pswitch_472
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_47e

    .line 279
    goto/16 :goto_53d

    .line 280
    :cond_47e
    sget v2, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v3, 0x14b

    if-ne v2, v3, :cond_48e

    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$mgetLIDState(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v2

    if-nez v2, :cond_48e

    .line 281
    goto/16 :goto_53d

    .line 282
    :cond_48e
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 283
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.KSO_SHOW_POPUP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_SHOW_POPUP"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sput-boolean v10, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    .line 287
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2, v5}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputcurrentState(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 288
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/gesture/PocketBigDataManager;->setPopupStartTime(J)V

    .line 289
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v2

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_4e1

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningAlertProxSensor()Z

    move-result v2

    if-nez v2, :cond_4e1

    .line 290
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->registerAlertProxSensor()V

    goto :goto_50c

    .line 292
    :cond_4e1
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v2

    if-ne v2, v8, :cond_50c

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v2

    const/16 v3, 0x33

    if-ne v2, v3, :cond_50c

    .line 293
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 294
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->registerPhysicalProximitySensorForA71_5g()V

    .line 295
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2, v10}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmIsAvailableTiltUse(Lcom/samsung/android/gesture/PocketModeEvent;Z)V

    .line 298
    :cond_50c
    :goto_50c
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetelState()Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;->ACTIVE:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    if-ne v2, v3, :cond_53d

    .line 299
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;->NONE:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$mchangeEdgeLightingState(Lcom/samsung/android/gesture/PocketModeEvent;Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;)V

    goto :goto_53d

    .line 270
    :pswitch_51c
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    sput-boolean v9, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    .line 272
    sput-boolean v9, Lcom/samsung/android/gesture/PocketModeEvent;->isTimeoutDelayInvalidEnabled:Z

    .line 273
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2, v9}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputcurrentState(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 274
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->registerSensor()V

    .line 275
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_START_SENSING"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    nop

    .line 487
    :cond_53d
    :goto_53d
    return-void

    :pswitch_data_53e
    .packed-switch 0x1
        :pswitch_51c
        :pswitch_472
        :pswitch_391
        :pswitch_318
        :pswitch_2ff
        :pswitch_2e4
        :pswitch_2c8
        :pswitch_2ab
        :pswitch_293
        :pswitch_26b
        :pswitch_249
        :pswitch_22e
        :pswitch_208
        :pswitch_1e2
        :pswitch_1c5
        :pswitch_1a8
        :pswitch_189
        :pswitch_16a
        :pswitch_dc
        :pswitch_37
        :pswitch_25
        :pswitch_13
    .end packed-switch
.end method
