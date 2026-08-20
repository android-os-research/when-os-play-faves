.class Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)V
    .registers 2

    .line 365
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "wifi_saved_state"

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "SemWifiApBroadcastReceiver"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.intent.action.MIP_ERROR"

    .line 369
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "com.samsung.android.intent.action.TETHERING_DENIED"

    const-string v9, "ro.csc.sales_code"

    const-string v10, "wifi"

    const/4 v11, 0x0

    const-string v12, "sem_wifi"

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v7, :cond_94

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_94

    const-string v7, "com.samsung.android.intent.action.TETHERING_FAILED"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    goto :goto_94

    :cond_44
    const-string v0, "com.samsung.actoin.24GHZ_AP_STA_DISCONNECTED"

    .line 415
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string v0, "Sending the dialog type51"

    .line 416
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    const/16 v4, 0x33

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$mshowHotspotErrorDialog(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_1b8

    :cond_5a
    const-string v0, "com.nttdocomo.intent.action.SHOW_WPSDIALOG"

    .line 418
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 419
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$mstartWifiApSettings(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Landroid/content/Context;)V

    goto/16 :goto_1b8

    :cond_69
    const-string v0, "com.samsung.intent.action.ADVANCED_WIFI_SHARING_NOTIFICATION"

    .line 420
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b8

    const-string v0, "NOTIFICATION_TASK"

    .line 421
    invoke-virtual {v3, v0, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_80

    .line 424
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->clearWifiScanListNotification(Landroid/content/Context;)V

    goto/16 :goto_1b8

    :cond_80
    if-ne v0, v13, :cond_1b8

    .line 427
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1040194

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 428
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-virtual {v4, v2, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->showWifiScanListNotification(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1b8

    .line 370
    :cond_94
    :goto_94
    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 371
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$sfgetCONFIGOPBRANDINGFORMOBILEAP()Ljava/lang/String;

    move-result-object v15

    const-string v13, "SPRINT"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_ca

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_ca

    const-string v13, "SPR"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_ca

    const-string v13, "XAS"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_ca

    const-string v13, "VMU"

    .line 372
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_ca

    const-string v13, "BST"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b8

    .line 373
    :cond_ca
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$sfgetCONFIGOPBRANDINGFORMOBILEAP()Ljava/lang/String;

    move-result-object v7

    const-string v13, "ALL"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_175

    .line 374
    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 375
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 376
    iget-object v8, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result v8

    const/16 v13, 0xc

    if-eq v8, v13, :cond_fc

    const/16 v13, 0xd

    if-eq v8, v13, :cond_fc

    return-void

    .line 380
    :cond_fc
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Mobile AP is disabled by [USA OPEN (SPR)] don\'t : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {v0, v11, v14}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    const-wide/16 v17, 0x258

    .line 384
    :try_start_115
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_118
    .catch Ljava/lang/InterruptedException; {:try_start_115 .. :try_end_118} :catch_119

    goto :goto_12f

    :catch_119
    move-exception v0

    move-object v8, v0

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error InterruptedException "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :goto_12f
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    move-result v0

    if-eqz v0, :cond_153

    .line 389
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    move-result v0

    if-eqz v0, :cond_1b8

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$misWifiSharingEnabled(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b8

    .line 392
    :cond_153
    :try_start_153
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_15b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_153 .. :try_end_15b} :catch_15c

    goto :goto_162

    :catch_15c
    const-string v0, "SettingNotFoundException"

    .line 394
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v14

    :goto_162
    const/4 v8, 0x1

    if-ne v0, v8, :cond_1b8

    const-string v0, "Need to enabled Wifi since provision dialog got dismissed in onPause"

    .line 397
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 399
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1b8

    .line 402
    :cond_175
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a6

    const-string v0, "CODE"

    .line 403
    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mipErrorCode : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1b8

    const-string v4, "67"

    .line 405
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b8

    .line 406
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    const/4 v4, 0x2

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$mshowHotspotErrorDialog(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Landroid/content/Context;ILandroid/content/Intent;)V

    goto :goto_1b8

    .line 407
    :cond_1a6
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b3

    .line 408
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    const/4 v4, 0x3

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$mshowHotspotErrorDialog(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Landroid/content/Context;ILandroid/content/Intent;)V

    goto :goto_1b8

    :cond_1b3
    const-string v0, "do NOT turn off MHS when DIALOG_HOTSPOT_NO_DATA , spr new requirement!!!!"

    .line 410
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b8
    :goto_1b8
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 450
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "MaxClientNum = "

    const-string v7, "ATT"

    if-eqz v0, :cond_5e9

    const/16 v0, 0xe

    const-string v5, "wifi_state"

    .line 451
    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 452
    sput v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->mWifiApStateWithLOHS:I

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onreceive WIFI_AP_STATE_CHANGED_ACTION] apState : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    move-result v3

    const-string v5, "swlan0"

    const-string v8, "wlan0"

    if-eqz v3, :cond_1f6

    move-object v3, v5

    goto :goto_1f7

    :cond_1f6
    move-object v3, v8

    :goto_1f7
    const-string v9, "Error in getting wlan0 interface config:"

    const-wide/16 v17, 0x0

    const-string v13, " "

    packed-switch v0, :pswitch_data_788

    .line 634
    :pswitch_200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unhandled apState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_787

    .line 625
    :pswitch_216
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$sfgetCONFIGOPBRANDINGFORMOBILEAP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_787

    .line 626
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$mclearMaxApNotification(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)V

    goto/16 :goto_787

    .line 463
    :pswitch_227
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$sfgetCONFIGOPBRANDINGFORMOBILEAP()Ljava/lang/String;

    move-result-object v0

    const-string v4, "VZW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23c

    .line 464
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_ap_saved_state"

    invoke-static {v0, v2, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 467
    :cond_23c
    :try_start_23c
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$sfgetmBaseTxBytes()J

    move-result-wide v4

    cmp-long v0, v4, v17

    if-nez v0, :cond_787

    .line 468
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$mresetParameterForHotspotLogging(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)V

    .line 469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 470
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputmTimeOfStartMobileAp(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V

    .line 471
    invoke-static {v3}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$sfputmBaseTxBytes(J)V

    .line 472
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v3}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputmBaseRxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V

    .line 473
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmTelephonyManagerForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_283

    .line 474
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputmTelephonyManagerForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Landroid/telephony/TelephonyManager;)V

    .line 476
    :cond_283
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4$1;

    invoke-direct {v2, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;)V

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputmTelephonyPhoneStateListener(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Landroid/telephony/PhoneStateListener;)V

    .line 509
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmTelephonyManagerForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmTelephonyPhoneStateListener(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_29e
    .catch Ljava/lang/Exception; {:try_start_23c .. :try_end_29e} :catch_2a0

    goto/16 :goto_787

    :catch_2a0
    move-exception v0

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_787

    .line 564
    :pswitch_2b5
    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 565
    invoke-virtual {v2, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/wifi/SemWifiManager;

    .line 566
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmMaxClientNum(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_787

    .line 567
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmMaxClientNum(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)I

    move-result v0

    if-ltz v0, :cond_787

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmMaxClientNum(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)I

    move-result v0

    const/16 v4, 0xa

    if-gt v0, v4, :cond_787

    .line 574
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    move-result v0

    if-eqz v0, :cond_2fc

    goto :goto_2fd

    :cond_2fc
    move-object v5, v8

    .line 579
    :goto_2fd
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetDEFAULT_TIMEOUT_MOBILEAP(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)I

    move-result v4

    div-int/lit8 v4, v4, 0x3c

    const-string v7, "wifi_ap_timeout_setting"

    invoke-static {v0, v7, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 580
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    move-result v4

    const-string v7, "not_support"

    if-eqz v4, :cond_332

    .line 581
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "wifi_ap_wifi_sharing"

    invoke-static {v4, v8, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_32f

    const-string v4, "sharing_on"

    goto :goto_334

    :cond_32f
    const-string v4, "sharing_off"

    goto :goto_334

    :cond_332
    const/4 v8, 0x1

    move-object v4, v7

    .line 585
    :goto_334
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v9, "wifi_ap_pmf_checked"

    invoke-static {v2, v9, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_343

    const-string v2, "pmf_on"

    goto :goto_345

    :cond_343
    const-string v2, "pmf_off"

    .line 596
    :goto_345
    invoke-virtual {v3}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v3

    if-eqz v3, :cond_787

    .line 597
    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_787

    .line 599
    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object v8

    .line 600
    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object v9

    const-string v10, ""

    .line 602
    :goto_35b
    array-length v11, v9

    if-ge v14, v11, :cond_3cd

    const/4 v11, 0x1

    if-ne v14, v11, :cond_372

    .line 604
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "-Dual-"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 605
    :cond_372
    aget v11, v9, v14

    and-int/lit8 v12, v11, 0x4

    if-eqz v12, :cond_391

    .line 606
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "6G"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_3ca

    :cond_391
    and-int/lit8 v12, v11, 0x2

    if-eqz v12, :cond_3ae

    .line 608
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "5G"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_3ca

    :cond_3ae
    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_3ca

    .line 610
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "2G"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_3ca
    :goto_3ca
    add-int/lit8 v14, v14, 0x1

    goto :goto_35b

    .line 613
    :cond_3cd
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bandChannels = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Android"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_421

    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Verizon"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_421

    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Samsung"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_421

    .line 615
    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Galaxy"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_421

    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v6

    const-string v8, "SM-"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41e

    goto :goto_421

    :cond_41e
    const-string v6, "CustomSSID"

    goto :goto_423

    :cond_421
    :goto_421
    const-string v6, "DefaultSSID"

    .line 619
    :goto_423
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmMaxClientNum(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)I

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 620
    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    const-string v2, "MHSI"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$mcallSecBigdataApi(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_787

    .line 519
    :pswitch_478
    :try_start_478
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$sfgetmBaseTxBytes()J

    move-result-wide v4

    cmp-long v0, v4, v17

    if-eqz v0, :cond_5c5

    .line 520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 521
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmTimeOfStartMobileAp(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J

    move-result-wide v7

    sub-long v7, v4, v7

    const-wide/32 v15, 0xea60

    div-long/2addr v7, v15

    .line 524
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetbUseMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Z

    move-result v0

    if-eqz v0, :cond_4d9

    .line 525
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmStartTimeOfMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J

    move-result-wide v15

    sub-long/2addr v4, v15

    const-wide/32 v15, 0xea60

    div-long/2addr v4, v15

    .line 526
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmAmountTimeOfMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J

    move-result-wide v15

    add-long/2addr v15, v4

    .line 527
    invoke-static {v3}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v4

    .line 528
    invoke-static {v3}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v19

    .line 529
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmAmountMobileTxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J

    move-result-wide v21

    .line 530
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmAmountMobileRxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J

    move-result-wide v23

    .line 531
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmTempMobileTxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J

    move-result-wide v25

    sub-long v4, v4, v25

    add-long v4, v21, v4

    invoke-static {v0, v4, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputmAmountMobileTxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V

    .line 532
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmTempMobileRxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J

    move-result-wide v4

    sub-long v19, v19, v4

    add-long v4, v23, v19

    invoke-static {v0, v4, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputmAmountMobileRxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V

    goto :goto_4df

    .line 533
    :cond_4d9
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmAmountTimeOfMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J

    move-result-wide v15

    :goto_4df
    move-wide v4, v15

    .line 534
    invoke-static {v3}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v15

    .line 535
    invoke-static {v3}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v2

    .line 536
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$sfgetmBaseTxBytes()J

    move-result-wide v19

    sub-long v15, v15, v19

    .line 537
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmBaseRxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J

    move-result-wide v19

    sub-long v2, v2, v19

    add-long/2addr v2, v15

    .line 539
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmAmountMobileTxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J

    move-result-wide v15

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmAmountMobileRxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J

    move-result-wide v19

    add-long v15, v15, v19

    sub-long v11, v2, v15

    .line 540
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$mconvertBytesToMegaByte(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)Ljava/lang/String;

    move-result-object v0

    .line 541
    iget-object v10, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v10, v11, v12}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$mconvertBytesToMegaByte(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)Ljava/lang/String;

    move-result-object v10

    .line 542
    iget-object v15, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v15, v7, v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$mconvertMinute(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)Ljava/lang/String;

    move-result-object v15

    .line 543
    iget-object v14, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v14, v4, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$mconvertMinute(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)Ljava/lang/String;

    move-result-object v14
    :try_end_51f
    .catch Ljava/lang/Exception; {:try_start_478 .. :try_end_51f} :catch_5d0

    move-wide/from16 p1, v2

    sub-long v2, v7, v4

    cmp-long v16, v2, v17

    if-ltz v16, :cond_59a

    move-object/from16 v16, v9

    .line 545
    :try_start_529
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v14, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$mconvertMinute(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    move-wide/from16 v2, p1

    sub-long v4, v2, v11

    invoke-static {v0, v4, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$mconvertBytesToMegaByte(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$mconvertBytesToMegaByteForLogging(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0, v11, v12}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$mconvertBytesToMegaByteForLogging(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0, v4, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$mconvertBytesToMegaByteForLogging(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_59d

    :cond_59a
    move-object/from16 v16, v9

    const/4 v11, 0x0

    :goto_59d
    if-eqz v11, :cond_5a6

    .line 549
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    const-string v2, "MHSS"

    invoke-static {v0, v2, v11}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$mcallSecBigdataApi(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :cond_5a6
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmTelephonyPhoneStateListener(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Landroid/telephony/PhoneStateListener;

    move-result-object v0

    if-eqz v0, :cond_5be

    .line 552
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmTelephonyManagerForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmTelephonyPhoneStateListener(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 554
    :cond_5be
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$mresetParameterForHotspotLogging(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)V

    goto/16 :goto_787

    :cond_5c5
    move-object/from16 v16, v9

    const-string v0, "unnormal status of interface"

    .line 556
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5cc
    .catch Ljava/lang/Exception; {:try_start_529 .. :try_end_5cc} :catch_5ce

    goto/16 :goto_787

    :catch_5ce
    move-exception v0

    goto :goto_5d3

    :catch_5d0
    move-exception v0

    move-object/from16 v16, v9

    .line 560
    :goto_5d3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_787

    :cond_5e9
    const-string v0, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    .line 637
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_682

    const-string v0, "STA_COUNT"

    const/4 v2, 0x0

    .line 638
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientNum from ACTION_WIFI_AP_STA_STATE_CHANGED = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v0, :cond_610

    const/4 v14, 0x0

    goto :goto_611

    :cond_610
    move v14, v0

    .line 642
    :goto_611
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmMaxClientNum(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)I

    move-result v0

    if-le v14, v0, :cond_61e

    .line 643
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0, v14}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputmMaxClientNum(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;I)V

    .line 645
    :cond_61e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmMaxClientNum(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$sfgetCONFIGOPBRANDINGFORMOBILEAP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64c

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AIO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_787

    .line 647
    :cond_64c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMaxApNotification(), clients = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v0, :cond_787

    .line 650
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApMaxClient()I

    move-result v0

    if-lt v14, v0, :cond_67b

    .line 651
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$mcreateMaxApNotification(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)V

    goto/16 :goto_787

    .line 653
    :cond_67b
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$mclearMaxApNotification(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)V

    goto/16 :goto_787

    :cond_682
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 659
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v4, 0xb

    if-eqz v0, :cond_726

    const-string v0, "vendor.wifiap.simcheck.disable"

    .line 661
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69b

    return-void

    .line 664
    :cond_69b
    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 665
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v0, :cond_787

    .line 667
    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "ro.boot.activatedid"

    .line 668
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 669
    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result v1

    const-string v7, "ss"

    .line 671
    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 672
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " INTENT_KEY_ICC_STATE state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "ABSENT"

    .line 673
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6f3

    if-eq v1, v4, :cond_787

    const-string v1, "INTENT_VALUE_ICC_ABSENT received, disable wifi hotspot"

    .line 675
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 676
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    goto/16 :goto_787

    :cond_6f3
    const-string v7, "LOADED"

    .line 678
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_787

    const-string v3, "XEC"

    .line 679
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_719

    const-string v7, "O2U"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_719

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_719

    const-string v2, "O2U"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_787

    :cond_719
    if-eq v1, v4, :cond_787

    const-string v1, "INTENT_VALUE_ICC_LOADED received, disable wifi hotspot"

    .line 681
    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 682
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    goto :goto_787

    .line 686
    :cond_726
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$sfgetCONFIGOPBRANDINGFORMOBILEAP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73e

    const-string v0, "com.samsung.android.net.wifi.MAXAP_NOTI"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73e

    .line 687
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$mclearMaxApNotification(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)V

    goto :goto_787

    :cond_73e
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 688
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_787

    .line 689
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v0, :cond_787

    .line 691
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result v2

    if-eq v2, v4, :cond_787

    .line 692
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Landroid/content/Context;

    move-result-object v3

    .line 693
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$misProvisioningNeeded(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_787

    const-string v2, "ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED received, disable wifi hotspot"

    .line 694
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 695
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 696
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040f56

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_787
    :goto_787
    return-void

    :pswitch_data_788
    .packed-switch 0xa
        :pswitch_478
        :pswitch_2b5
        :pswitch_200
        :pswitch_227
        :pswitch_216
    .end packed-switch
.end method
