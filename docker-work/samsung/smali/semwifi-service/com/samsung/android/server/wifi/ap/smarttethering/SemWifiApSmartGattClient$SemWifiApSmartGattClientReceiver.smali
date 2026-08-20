.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApSmartGattClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemWifiApSmartGattClientReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V
    .registers 2

    .line 406
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    .line 409
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    .line 410
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-eqz v0, :cond_54

    .line 411
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":\tLOGOUT_COMPLETE"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 412
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "shutdownClient due to LOGOUT /"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    .line 414
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmMhsFreq(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V

    .line 415
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_68b

    .line 416
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_68b

    :cond_54
    const-string v0, "android.bluetooth.device.action.PAIRING_REQUEST"

    .line 433
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_15d

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 434
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    const-string v0, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/high16 v1, -0x80000000

    .line 435
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 438
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,mPendingDeviceAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v5

    .line 439
    invoke-virtual {v3, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 438
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tmType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,mPendingDeviceAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v5

    .line 441
    invoke-virtual {v3, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 440
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_68b

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_68b

    .line 443
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68b

    if-ne v0, v4, :cond_68b

    .line 444
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.server.wifi.softap.smarttethering.collapseQuickPanel"

    .line 445
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 447
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->abortBroadcast()V

    const-string p1, "com.android.settings"

    const-string v0, "com.samsung.android.settings.wifi.mobileap.WifiApAutoHotspotBlePairingDialog"

    .line 448
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 449
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "com.samsung.android.settings.wifi.mobileap.WifiApAutoHotspotBlePairingDialog"

    .line 450
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 452
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "passkeyconfirm dialog"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_68b

    .line 454
    :cond_15d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_329

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 455
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    .line 456
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    packed-switch p2, :pswitch_data_68c

    goto/16 :goto_68b

    .line 459
    :pswitch_180
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string v0, "client Bonding is done"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputisBondingGoingon(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    if-eqz p1, :cond_68b

    .line 461
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_68b

    .line 462
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_68b

    .line 463
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V

    .line 464
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\t\tAdding to bondedd devices :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 465
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":Adding to bondedd devices :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmTimeMismatchOccured(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    move-result p2

    if-eqz p2, :cond_288

    .line 467
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mTimeMismatchOccurred is true after bonding"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":\t mTimeMismatchOccurred is true after bonding :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 469
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmTimeMismatchOccured(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    .line 470
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmConnectedGatt(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    if-eqz p1, :cond_25a

    .line 471
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmConnectedGatt(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_BOND_STATUS:Ljava/util/UUID;

    invoke-virtual {p2, p0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto/16 :goto_68b

    .line 473
    :cond_25a
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mTimeMismatchOccured is true after bonding, but gattconnection is null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":\t mTimeMismatchOccured is true after bonding, but gattconnection is null"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 475
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mshutdownclient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V

    goto/16 :goto_68b

    .line 477
    :cond_288
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2, p1, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mtryToConnectToRemoteBLE(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result p2

    if-nez p2, :cond_68b

    .line 478
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    const/4 v0, -0x7

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSmartAp_WiFi_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$msetConnectionState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;ILjava/lang/String;)V

    .line 479
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_68b

    .line 502
    :pswitch_2a7
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_68b

    .line 503
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68b

    .line 504
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputisBondingGoingon(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    .line 505
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, " client Bonding is going on"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_68b

    .line 484
    :pswitch_2cf
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputisBondingGoingon(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    .line 485
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_68b

    .line 486
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68b

    .line 487
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V

    .line 488
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, " client Bonding is failed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":\tclient Bonding is failed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 490
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 491
    new-instance p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver$1;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;)V

    const-wide/16 v0, 0x1770

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_68b

    :cond_329
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 512
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38d

    const-string p1, "wifi_state"

    const/4 v0, 0x4

    .line 513
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v7, :cond_33c

    if-ne p1, v0, :cond_68b

    .line 515
    :cond_33c
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "shutdownClient due to Wi-FI is OFF/"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "auto_hotspot_connected_user"

    invoke-static {p1, p2, v6}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    .line 518
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmMhsFreq(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V

    .line 519
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmIsRetryGattConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    .line 520
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_37b

    .line 521
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p1

    const/16 p2, 0x16

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 522
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 524
    :cond_37b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    iget-object v0, p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    monitor-enter v0

    .line 525
    :try_start_380
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 526
    monitor-exit v0

    goto/16 :goto_68b

    :catchall_38a
    move-exception p0

    monitor-exit v0
    :try_end_38c
    .catchall {:try_start_380 .. :try_end_38c} :catchall_38a

    throw p0

    :cond_38d
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 528
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ec

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothIsOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    move-result v0

    if-eqz v0, :cond_3ec

    .line 529
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 530
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothDevice(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    if-eqz p2, :cond_68b

    if-eqz p1, :cond_68b

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    if-ne p1, v2, :cond_68b

    .line 531
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_STATE_CHANGED mBluetoothIsOn "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothIsOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothDevice(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V

    .line 533
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothDevice(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/bluetooth/BluetoothDevice;->createBond(I)Z

    .line 534
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmBluetoothIsOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    goto/16 :goto_68b

    :cond_3ec
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 536
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68b

    const-string p1, "networkInfo"

    .line 537
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-eqz p1, :cond_408

    .line 538
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p2

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_408

    move p2, v7

    goto :goto_409

    :cond_408
    move p2, v3

    :goto_409
    if-eqz p1, :cond_415

    .line 540
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_415

    move p1, v7

    goto :goto_416

    :cond_415
    move p1, v3

    .line 542
    :goto_416
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    if-eqz v0, :cond_42e

    .line 545
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 546
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 548
    :cond_42e
    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v8

    if-eqz v8, :cond_4a9

    .line 549
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recvd NETWORK_STATE_CHANGED_ACTION:bssid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",wifiInfo.getSSID():"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",isConnected:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetMHSDBG()Z

    move-result v8

    if-eqz v8, :cond_4a9

    .line 551
    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":\trecvd NETWORK_STATE_CHANGED_ACTION:bssid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",wifiInfo.getSSID():"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isConnected:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_4a9
    const/4 v1, 0x3

    if-eqz p2, :cond_5f5

    .line 555
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmIsRetryGattConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    .line 556
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmReGetAes(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    move-result p1

    if-eqz p1, :cond_520

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLimitCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result p1

    if-lez p1, :cond_520

    .line 557
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_4d6

    .line 558
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p1

    const/16 p2, 0x18

    const-wide/16 v8, 0xbb8

    invoke-virtual {p1, p2, v8, v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 560
    :cond_4d6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmReGetAes(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    .line 561
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reget AES by using startSmartTetheringApk, mLimitCount : "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLimitCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\treget AES by using startSmartTetheringApk, mLimitCount : "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLimitCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_520
    if-eqz v0, :cond_68b

    .line 564
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68b

    .line 565
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    .line 566
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    iget-object p2, p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    monitor-enter p2

    .line 567
    :try_start_551
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_559
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5ef

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;

    if-eqz v2, :cond_559

    .line 568
    iget v6, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    if-ne v6, v4, :cond_559

    .line 569
    iput v1, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    .line 570
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    iget-object v2, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->clientMAC:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$minvokeCallback(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;I)V

    .line 571
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmUserType(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v0

    if-ne v0, v7, :cond_5c3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v0

    if-eqz v0, :cond_5c3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    move-result v0

    if-lez v0, :cond_5c3

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    move-result v0

    if-eqz v0, :cond_5c3

    .line 572
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "smart_wifi_ap_advanced_connect"

    invoke-virtual {v0, v1, v2, v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_5c3

    .line 574
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotService()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->setAdvnacedConnectionLcdOffSetting(I)V

    .line 575
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotService()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->setAdvnacedConnectionSetting(I)V

    .line 576
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    iget-object v0, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->clientMAC:Ljava/lang/String;

    const/16 v1, 0x39

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mlaunchWiFiApWarning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;I)V

    .line 579
    :cond_5c3
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "updated status to WIFI connected in the SmartMHSlist"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\tupdated status to WIFI connected in the SmartMHSlist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 581
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->showSmartMHSInfo()V

    .line 585
    :cond_5ef
    monitor-exit p2

    goto/16 :goto_68b

    :catchall_5f2
    move-exception p0

    monitor-exit p2
    :try_end_5f4
    .catchall {:try_start_551 .. :try_end_5f4} :catchall_5f2

    throw p0

    :cond_5f5
    if-eqz p1, :cond_68b

    .line 588
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "isDisconnected: true"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    monitor-enter p1

    .line 590
    :try_start_605
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    iget-object p2, p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_60d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_686

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;

    .line 591
    iget v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    if-ne v2, v1, :cond_60d

    .line 592
    iput v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    .line 593
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->clientMAC:Ljava/lang/String;

    invoke-static {p2, v1, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$minvokeCallback(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;I)V

    .line 594
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updated status to WIFI disconnected in the SmartMHSlist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->MHS_MAC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    if-nez v1, :cond_644

    const-string v1, "null"

    goto :goto_64a

    :cond_644
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->MHS_MAC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_64a
    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/content/Context;

    move-result-object p2

    const-string v1, "auto_hotspot_connected_user"

    invoke-static {p2, v1, v6}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\tupdated status to WIFI disconnected in the SmartMHSlist:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->MHS_MAC:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_67d

    const-string p2, "null"

    goto :goto_683

    :cond_67d
    iget-object p2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->MHS_MAC:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :goto_683
    invoke-virtual {p0, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 600
    :cond_686
    monitor-exit p1

    goto :goto_68b

    :catchall_688
    move-exception p0

    monitor-exit p1
    :try_end_68a
    .catchall {:try_start_605 .. :try_end_68a} :catchall_688

    throw p0

    :cond_68b
    :goto_68b
    return-void

    :pswitch_data_68c
    .packed-switch 0xa
        :pswitch_2cf
        :pswitch_2a7
        :pswitch_180
    .end packed-switch
.end method
