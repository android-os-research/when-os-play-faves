.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;
.super Landroid/os/Handler;
.source "SemWifiApSmartGattServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BleWorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Landroid/os/Looper;)V
    .registers 3

    .line 428
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 429
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemWifiApSmartGattServer"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget v2, v0, Landroid/os/Message;->what:I

    const-string v4, "wifiap_warning_dialog_type"

    const-string v5, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    const/high16 v6, 0x10000000

    const-string v7, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    const/16 v8, 0xd

    const/4 v9, 0x5

    const-string v10, "com.android.settings"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    packed-switch v2, :pswitch_data_9aa

    :pswitch_31
    goto/16 :goto_9a8

    .line 466
    :pswitch_33
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040f57

    invoke-static {v0, v1, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9a8

    .line 444
    :pswitch_45
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLimitCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v0

    if-lez v0, :cond_9a8

    const-string v0, "TRY_TO_GET_AES AES key is not matched startSmartTetheringApk"

    .line 445
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->updateAESKeyUsingLocalGroupSmartTetheringApk()I

    .line 447
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v0

    const-string v2, "SemWifiApSmartGattServer:\tTRY_TO_GET_AES AES key is not matched startSmartTetheringApk"

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 448
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLimitCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v1

    sub-int/2addr v1, v13

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmLimitCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    goto/16 :goto_9a8

    :pswitch_72
    const-string v0, "need delay for auto hotspot"

    .line 890
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_MHS_ENABLED:Ljava/util/UUID;

    invoke-static {v0, v1, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$mnotifyConnectedDevices(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/util/UUID;I)V

    goto/16 :goto_9a8

    .line 854
    :pswitch_80
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0, v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisWaitingForMHSStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 855
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0, v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 856
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    if-eqz v0, :cond_c0

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$mpreProvisioning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v0

    if-nez v0, :cond_c0

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingLiteSupported()Z

    move-result v0

    if-nez v0, :cond_c0

    .line 857
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0, v2, v13}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 858
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v0

    const-string v2, "SemWifiApSmartGattServer\tenableHotspot startSoftAp START_RESTART_HOTSPOT_TO_CHANGE_CHANNEL"

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_148

    .line 860
    :cond_c0
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getWifiApWarningActivityRunningState()I

    move-result v0

    if-ne v0, v13, :cond_f4

    .line 861
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "sending WIFIAP_WARNING_STOP_DIALOG2 "

    .line 862
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.settings.wifi.mobileap.wifiapwarning.finish"

    .line 864
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 865
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-wide/16 v11, 0xc8

    .line 867
    :try_start_eb
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_ee
    .catch Ljava/lang/InterruptedException; {:try_start_eb .. :try_end_ee} :catch_ef

    goto :goto_f4

    :catch_ef
    move-exception v0

    move-object v2, v0

    .line 869
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 872
    :cond_f4
    :goto_f4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 873
    invoke-virtual {v0, v10, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 874
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 875
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 876
    invoke-virtual {v0, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 877
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object v2

    array-length v2, v2

    if-ne v2, v13, :cond_122

    const-string v2, "WifiApWarning len =1"

    .line 878
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v2

    const-string v3, "wifiap_band"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_122
    const-string v2, "wifiap_security"

    .line 881
    invoke-virtual {v0, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 882
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v2

    const-string v3, "wifiap_set_security"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 883
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 884
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v0

    const-string v2, "SemWifiApSmartGattServer:\tenableHotspot startSoftAp START_RESTART_HOTSPOT_TO_CHANGE_CHANNEL"

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 886
    :goto_148
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v0

    if-eqz v0, :cond_9a8

    .line 887
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v13, v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_9a8

    .line 843
    :pswitch_15e
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result v0

    .line 844
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMhsEnabledsmartly"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " state"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v8, :cond_9a8

    .line 845
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v0

    if-eqz v0, :cond_9a8

    const-string v0, "Disabling Smart MHS"

    .line 846
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v0

    const-string v2, "SemWifiApSmartGattServer:\tGattServer START_HOTSPOT_ENABLED_TIMEOUT_WITHOUT_CLIENT stopSoftAp"

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 849
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    goto/16 :goto_9a8

    .line 474
    :pswitch_1af
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_ACCEPT_INVITATION:Ljava/util/UUID;

    invoke-static {v0, v1, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$mnotifyConnectedDevices(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/util/UUID;I)V

    goto/16 :goto_9a8

    .line 469
    :pswitch_1b8
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisWaitingForAcceptStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v0

    if-eqz v0, :cond_9a8

    .line 470
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_ACCEPT_INVITATION:Ljava/util/UUID;

    invoke-static {v0, v1, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$mnotifyConnectedDevices(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/util/UUID;I)V

    goto/16 :goto_9a8

    .line 437
    :pswitch_1c9
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9a8

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding to bondedd devices:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemWifiApSmartGattServer:\tAdding to bondedd devices :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_9a8

    .line 463
    :pswitch_213
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040f46

    invoke-static {v0, v1, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9a8

    .line 460
    :pswitch_225
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040f37

    invoke-static {v0, v1, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9a8

    :pswitch_237
    const-string v0, "Got message COMMAND_ENABLE_HOTSPOT and removeMessage(TRY_TO_GET_AES)"

    .line 477
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    .line 478
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->removeMessages(I)V

    .line 500
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v2

    const-string v14, "SemWifiApSmartGattServer:\tGot message COMMAND_ENABLE_HOTSPOT"

    invoke-virtual {v2, v14}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mGetBandFromClient "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " mGetSecurityFromClient : "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetSecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mGetOWESecurityFromClient:"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetOWESecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v15

    iput-object v15, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 503
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object v2

    .line 504
    iget-object v15, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v15}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object v15

    .line 505
    iget-object v6, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v6}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v6

    .line 512
    array-length v11, v2

    move v9, v12

    move/from16 v16, v9

    :goto_2aa
    if-ge v9, v11, :cond_2c5

    aget v17, v2, v9

    and-int/lit8 v18, v17, 0x4

    if-eqz v18, :cond_2b5

    or-int/lit8 v16, v16, 0x4

    goto :goto_2c2

    :cond_2b5
    and-int/lit8 v18, v17, 0x2

    if-eqz v18, :cond_2bc

    or-int/lit8 v16, v16, 0x2

    goto :goto_2c2

    :cond_2bc
    and-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_2c2

    or-int/lit8 v16, v16, 0x1

    :cond_2c2
    :goto_2c2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2aa

    .line 521
    :cond_2c5
    iget-object v9, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result v9

    .line 522
    new-instance v11, Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v13, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v13, v13, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {v11, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    const/4 v13, 0x2

    if-eq v9, v8, :cond_637

    if-ne v9, v0, :cond_2df

    goto/16 :goto_637

    .line 691
    :cond_2df
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uiConfiguredBands : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uiConfiguredChannels : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmChangeSecurity(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 696
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->supportWifiAp6GBasedOnCountry()Z

    move-result v0

    if-eqz v0, :cond_34a

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v0

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-eqz v0, :cond_34a

    and-int/lit8 v0, v16, 0x4

    if-eqz v0, :cond_33b

    .line 699
    invoke-virtual {v11, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    const/4 v8, 0x4

    goto :goto_390

    :cond_33b
    and-int/lit8 v0, v16, 0x2

    if-eqz v0, :cond_345

    const/16 v2, 0x95

    .line 702
    invoke-virtual {v11, v2, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_368

    :cond_345
    const/4 v2, 0x1

    .line 705
    invoke-virtual {v11, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_38f

    .line 707
    :cond_34a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->supportWifiAp5GBasedOnCountry()Z

    move-result v0

    if-eqz v0, :cond_37e

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v0

    and-int/2addr v0, v13

    if-eqz v0, :cond_37e

    and-int/lit8 v0, v16, 0x2

    if-eqz v0, :cond_36a

    const/16 v2, 0x95

    .line 710
    invoke-virtual {v11, v2, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    :goto_368
    move v8, v13

    goto :goto_390

    :cond_36a
    const/16 v2, 0x95

    const/4 v8, 0x1

    and-int/lit8 v0, v16, 0x1

    if-eqz v0, :cond_375

    .line 713
    invoke-virtual {v11, v8}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_390

    .line 716
    :cond_375
    invoke-virtual {v11, v2, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    const-string v0, "MHS is configured in 6GHz but client supports only 2.4 and 5 Ghz"

    .line 717
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_368

    :cond_37e
    const/4 v8, 0x1

    and-int/lit8 v0, v16, 0x1

    if-eqz v0, :cond_387

    .line 722
    invoke-virtual {v11, v8}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_390

    :cond_387
    const-string v0, "MHS is configured in 5 or 6 GHz but client supports only 2.4"

    .line 725
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-virtual {v11, v8}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    :goto_38f
    const/4 v8, 0x1

    .line 729
    :goto_390
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetOWESecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v0

    if-nez v0, :cond_3e7

    const/4 v2, 0x5

    if-ne v6, v2, :cond_3e7

    .line 730
    invoke-virtual {v11}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v0

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-eqz v0, :cond_3d6

    .line 731
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->supportWifiAp5GBasedOnCountry()Z

    move-result v0

    if-eqz v0, :cond_3ca

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v0

    and-int/2addr v0, v13

    if-eqz v0, :cond_3ca

    const-string v0, "MHS is configured in 6GHz and OWE but client wont support OWE,so enable in 5GHz"

    .line 733
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x95

    .line 734
    invoke-virtual {v11, v2, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    move/from16 v17, v13

    const/4 v2, 0x1

    goto :goto_3d9

    :cond_3ca
    const-string v0, "MHS is configured in 6GHz and OWE but client wont support OWE,so enable in 2GHz"

    .line 737
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 738
    invoke-virtual {v11, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move/from16 v17, v2

    goto :goto_3d9

    :cond_3d6
    const/4 v2, 0x1

    move/from16 v17, v8

    .line 741
    :goto_3d9
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmChangeSecurity(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    const/4 v6, 0x0

    .line 743
    invoke-virtual {v11, v6, v12}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move v6, v12

    move/from16 v8, v17

    goto/16 :goto_45a

    :cond_3e7
    const/4 v2, 0x1

    .line 745
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetSecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v0

    if-ne v0, v2, :cond_40a

    const/4 v14, 0x3

    if-ne v6, v14, :cond_40a

    const-string v0, "MHS is configured in WPA3 but client supports only WPA2"

    .line 746
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmChangeSecurity(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 750
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    :goto_408
    move v6, v13

    goto :goto_45a

    .line 757
    :cond_40a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetSecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v0

    if-nez v0, :cond_433

    const/4 v2, 0x3

    if-eq v6, v2, :cond_417

    if-ne v6, v13, :cond_433

    :cond_417
    const-string v0, "MHS is configured in WPA3 but client capability is not known, so enabling in WPA2/3"

    .line 760
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisNeededSecurityWpa2(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 762
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmChangeSecurity(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 764
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_408

    :cond_433
    const/4 v2, 0x1

    if-eq v8, v2, :cond_438

    if-ne v8, v13, :cond_45a

    .line 771
    :cond_438
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetSecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v0

    if-ne v0, v13, :cond_45a

    const/4 v2, 0x3

    if-ne v6, v2, :cond_45a

    const-string v0, "Even though client device supports WPA3, for next client need to use WPA2/3"

    .line 773
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmChangeSecurity(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 776
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_408

    .line 778
    :cond_45a
    :goto_45a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-virtual {v11}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 779
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisWaitingForMHSStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 780
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 781
    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-le v0, v2, :cond_4a0

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MHS was Dual Band, AH will set in single Band reset wifi sharing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiSharingEnabled(Z)Z

    .line 784
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisResetWifiSharingForDualBandSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 787
    :cond_4a0
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisJDMDevice(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v0

    const-string v2, ",mSSID:"

    if-nez v0, :cond_4b6

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingLiteSupported()Z

    move-result v0

    if-eqz v0, :cond_549

    :cond_4b6
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 788
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$mpreProvisioning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v0

    if-nez v0, :cond_549

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_549

    .line 789
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_4ea

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisJDMDevice(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v0

    if-eqz v0, :cond_513

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_513

    :cond_4ea
    const-string v0, "Wifi sharing is OFF or JDM model, therefore disabling the WiFi for Auto hotspot"

    .line 790
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setWifiEnabled(Z)Z

    .line 792
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_saved_state"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-wide/16 v3, 0x1f4

    .line 794
    :try_start_50a
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_50d
    .catch Ljava/lang/InterruptedException; {:try_start_50a .. :try_end_50d} :catch_50e

    goto :goto_513

    :catch_50e
    move-exception v0

    move-object v3, v0

    .line 796
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 800
    :cond_513
    :goto_513
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 801
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemWifiApSmartGattServer\tWiFiSharingLiteSupported case , enableHotspot startSoftAp state :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_620

    .line 803
    :cond_549
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$mpreProvisioning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v0

    if-nez v0, :cond_593

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingLiteSupported()Z

    move-result v0

    if-nez v0, :cond_593

    .line 804
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 805
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemWifiApSmartGattServer\tenableHotspot startSoftAp state :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_620

    .line 809
    :cond_593
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getWifiApWarningActivityRunningState()I

    move-result v0

    const/4 v11, 0x1

    if-ne v0, v11, :cond_5c8

    const-string v0, "sending WIFIAP_WARNING_STOP_DIALOG "

    .line 810
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 812
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.settings.wifi.mobileap.wifiapwarning.finish"

    .line 813
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-wide/16 v11, 0xc8

    .line 816
    :try_start_5bf
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5c2
    .catch Ljava/lang/InterruptedException; {:try_start_5bf .. :try_end_5c2} :catch_5c3

    goto :goto_5c8

    :catch_5c3
    move-exception v0

    move-object v3, v0

    .line 818
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 821
    :cond_5c8
    :goto_5c8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 822
    invoke-virtual {v0, v10, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 824
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 825
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x5

    .line 827
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "wifiap_band"

    .line 828
    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 829
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmChangeSecurity(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v3

    const-string v4, "wifiap_security"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "wifiap_set_security"

    .line 830
    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 831
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 832
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemWifiApSmartGattServer:\tenableHotspot start wifiapwarning SoftAp state :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 836
    :goto_620
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v0

    if-eqz v0, :cond_9a8

    .line 837
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v0

    const-wide/32 v1, 0xea60

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_9a8

    .line 528
    :cond_637
    :goto_637
    :try_start_637
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v0

    const-string v4, "SAE_SECURITY"

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 529
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTetheredClientInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->getNumOfConnectedDevices()I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputconnected_num_sta(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    .line 530
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_682

    .line 531
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hostapd_security:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",connected_num_sta:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetconnected_num_sta(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_682
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v0

    const-string v4, "GET_FREQ"

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hostapd_freq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_708

    const-string v4, " "

    .line 542
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 543
    array-length v4, v0

    const/16 v5, 0x1388

    const/16 v7, 0x960

    const/16 v8, 0x9b4

    const/16 v9, 0x170c

    const/4 v10, 0x1

    if-le v4, v10, :cond_6ee

    .line 544
    aget-object v4, v0, v12

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 545
    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt v4, v8, :cond_6ce

    if-lt v4, v7, :cond_6ce

    const/4 v4, 0x1

    goto :goto_6d9

    :cond_6ce
    if-le v4, v9, :cond_6d2

    const/4 v4, 0x4

    goto :goto_6d9

    :cond_6d2
    if-le v4, v5, :cond_6d8

    if-ge v4, v9, :cond_6d8

    move v4, v13

    goto :goto_6d9

    :cond_6d8
    move v4, v12

    :goto_6d9
    if-gt v0, v8, :cond_6e0

    if-lt v0, v7, :cond_6e0

    or-int/lit8 v0, v4, 0x1

    goto :goto_709

    :cond_6e0
    if-le v0, v9, :cond_6e5

    or-int/lit8 v0, v4, 0x4

    goto :goto_709

    :cond_6e5
    if-le v0, v5, :cond_6ec

    if-ge v0, v9, :cond_6ec

    or-int/lit8 v0, v4, 0x2

    goto :goto_709

    :cond_6ec
    move v0, v4

    goto :goto_709

    .line 561
    :cond_6ee
    aget-object v0, v0, v12

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_6f4
    .catch Ljava/lang/Exception; {:try_start_637 .. :try_end_6f4} :catch_704

    if-gt v0, v8, :cond_6fa

    if-lt v0, v7, :cond_6fa

    const/4 v0, 0x1

    goto :goto_709

    :cond_6fa
    if-le v0, v9, :cond_6fe

    const/4 v0, 0x4

    goto :goto_709

    :cond_6fe
    if-le v0, v5, :cond_708

    if-ge v0, v9, :cond_708

    move v0, v13

    goto :goto_709

    :catch_704
    move-exception v0

    .line 572
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_708
    move v0, v12

    .line 574
    :goto_709
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MHS already enabled , hostapdBand:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",uiConfiguredBands : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uiConfiguredChannels : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MHS already enabled ,,mGetBandFromClient "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_76a

    const-string v0, "not able to fetch band info from hostapd"

    .line 577
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 578
    invoke-virtual {v11, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    and-int/lit8 v0, v16, 0x4

    if-nez v0, :cond_762

    and-int/lit8 v0, v16, 0x2

    if-eqz v0, :cond_75f

    goto :goto_762

    :cond_75f
    :goto_75f
    const/4 v2, 0x1

    goto/16 :goto_831

    :cond_762
    :goto_762
    const-string v0, "not able to fetch band info from hostapd, so set 2GHz"

    .line 580
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_767
    const/4 v2, 0x1

    goto/16 :goto_83d

    .line 584
    :cond_76a
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v2

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-eqz v2, :cond_7bf

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_781

    const-string v0, "client supports 6Ghz, MHS is enabled in 6 GHz ,so set same Band"

    .line 586
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual {v11, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_75f

    :cond_781
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_7a7

    const/4 v4, 0x1

    and-int/2addr v0, v4

    if-eqz v0, :cond_7a7

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client supports 6Ghz, MHS is enabled in dual band:len"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75f

    :cond_7a7
    if-eqz v2, :cond_7b4

    const-string v0, "client supports 6GHz, MHS is enabled in 5 GHz ,so set same Band"

    .line 593
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x95

    .line 594
    invoke-virtual {v11, v2, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_75f

    :cond_7b4
    const-string v0, "client supports 6GHz, MHS is enabled in 2.4 GHz ,so set same Band"

    .line 596
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 597
    invoke-virtual {v11, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto/16 :goto_831

    .line 599
    :cond_7bf
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v2

    and-int/2addr v2, v13

    if-eqz v2, :cond_825

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_7ef

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_7ef

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client supports 5Ghz, MHS is enabled in dual band:len"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_75f

    :cond_7ef
    if-eqz v2, :cond_7fd

    const-string v0, "client supports 5Ghz, MHS is enabled in 5 GHz ,so set same Band"

    .line 604
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x95

    .line 605
    invoke-virtual {v11, v2, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto/16 :goto_75f

    :cond_7fd
    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_80a

    const-string v0, "client supports 5GHz, MHS is enabled in 2.4 GHz ,so set same Band"

    .line 608
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual {v11, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_831

    .line 611
    :cond_80a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->supportWifiAp5GBasedOnCountry()Z

    move-result v0

    if-eqz v0, :cond_81c

    const/16 v4, 0x95

    .line 612
    invoke-virtual {v11, v4, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_81f

    .line 614
    :cond_81c
    invoke-virtual {v11, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    :goto_81f
    const-string v0, "MHS is enabled in 6GHz but client supports only 2.4 and 5 Ghz"

    .line 616
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83d

    :cond_825
    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_833

    const-string v0, "client only supports 2.4GHz,MHS is enabled in 2.4 GHz ,so set same Band"

    .line 621
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-virtual {v11, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    :goto_831
    move v2, v12

    goto :goto_83d

    :cond_833
    const-string v0, "MHS is enabled in 5 or 6 GHz but client supports only 2.4"

    .line 624
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-virtual {v11, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto/16 :goto_767

    .line 629
    :goto_83d
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetOWESecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v0

    if-nez v0, :cond_88a

    const/4 v4, 0x4

    if-ne v6, v4, :cond_88a

    .line 630
    invoke-virtual {v11}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v0

    and-int/2addr v0, v4

    if-eqz v0, :cond_87d

    .line 631
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->supportWifiAp5GBasedOnCountry()Z

    move-result v0

    if-eqz v0, :cond_873

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v0

    and-int/2addr v0, v13

    if-eqz v0, :cond_873

    const-string v0, "MHS is enabled in 6GHz and OWE but client wont support OWE,so enable in 5GHz"

    .line 632
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x95

    .line 633
    invoke-virtual {v11, v2, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_87d

    :cond_873
    const-string v0, "MHS is enabled in 6GHz and OWE but client wont support OWE,so enable in 2GHz"

    .line 635
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    .line 636
    invoke-virtual {v11, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_87e

    :cond_87d
    :goto_87d
    const/4 v4, 0x1

    :goto_87e
    const-string v0, "MHS is enabled in OWE but client does not support so enable in Open"

    .line 639
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 640
    invoke-virtual {v11, v2, v12}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move v13, v4

    goto/16 :goto_90c

    :cond_88a
    const/4 v4, 0x1

    .line 643
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetSecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v0

    if-ne v0, v4, :cond_8a8

    const/4 v4, 0x3

    if-ne v6, v4, :cond_8a8

    const-string v0, "MHS is enabled in WPA3 but client supports only WPA2, so apply WPA3/2"

    .line 645
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    const/4 v13, 0x1

    goto :goto_90c

    .line 653
    :cond_8a8
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetSecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v0

    if-nez v0, :cond_8d1

    const/4 v4, 0x1

    if-eq v6, v4, :cond_8d1

    if-eqz v6, :cond_8d1

    const/4 v5, 0x4

    if-eq v6, v5, :cond_8d1

    .line 655
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisNeededSecurityWpa2(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    const-string v0, "MHS is enabled in WPA3 but dont know about client support, so apply WPA2/3"

    .line 656
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v6, v13, :cond_8c5

    const/4 v2, 0x1

    .line 660
    :cond_8c5
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_90b

    .line 669
    :cond_8d1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MHS is enabled in hostapd_security :"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",applying same"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    if-lt v6, v4, :cond_8fc

    const/4 v4, 0x3

    if-gt v6, v4, :cond_8fc

    .line 671
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_90b

    :cond_8fc
    if-nez v6, :cond_903

    const/4 v4, 0x0

    .line 673
    invoke-virtual {v11, v4, v12}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_90b

    :cond_903
    const/4 v4, 0x0

    const/4 v5, 0x4

    if-ne v6, v5, :cond_90b

    const/4 v5, 0x5

    .line 675
    invoke-virtual {v11, v4, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    :cond_90b
    :goto_90b
    move v13, v2

    .line 678
    :goto_90c
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-virtual {v11}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    if-nez v13, :cond_92a

    .line 680
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_MHS_ENABLED:Ljava/util/UUID;

    invoke-static {v0, v2, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$mnotifyConnectedDevices(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/util/UUID;I)V

    .line 681
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v0

    const-string v1, "SemWifiApSmartGattServer:\tMHS already Enabled"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_9a8

    .line 683
    :cond_92a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v12}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 684
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v0

    if-eqz v0, :cond_949

    .line 685
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v0

    const/16 v2, 0xa

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_949
    const-string v0, "restart MHS"

    .line 687
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v0

    const-string v1, "SemWifiApSmartGattServer:\tMHS already Enabled and disable"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_9a8

    .line 452
    :pswitch_95a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got message START_HOTSPOT_ENABLING_TIMEOUT: isWaitingForMHSStatus "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisWaitingForMHSStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemWifiApSmartGattServer:\tGot message START_HOTSPOT_ENABLING_TIMEOUT: isWaitingForMHSStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisWaitingForMHSStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 454
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisWaitingForMHSStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v0

    if-eqz v0, :cond_9a8

    .line 455
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisWaitingForMHSStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 456
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_MHS_ENABLED:Ljava/util/UUID;

    invoke-static {v0, v1, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$mnotifyConnectedDevices(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/util/UUID;I)V

    :cond_9a8
    :goto_9a8
    return-void

    nop

    :pswitch_data_9aa
    .packed-switch 0x1
        :pswitch_95a
        :pswitch_237
        :pswitch_31
        :pswitch_225
        :pswitch_213
        :pswitch_1c9
        :pswitch_1b8
        :pswitch_1af
        :pswitch_15e
        :pswitch_80
        :pswitch_72
        :pswitch_45
        :pswitch_33
    .end packed-switch
.end method
