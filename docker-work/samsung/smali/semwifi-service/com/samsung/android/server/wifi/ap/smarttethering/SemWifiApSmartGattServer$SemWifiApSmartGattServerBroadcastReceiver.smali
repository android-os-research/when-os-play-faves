.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApSmartGattServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemWifiApSmartGattServerBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    .line 228
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApSmartGattServer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.android.server.wifi.softap.smarttethering.AcceptPopUp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_73

    .line 231
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisWaitingForAcceptStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result p1

    if-eqz p1, :cond_671

    const-string p1, "accepted"

    .line 232
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 233
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Accepted popup:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_58

    .line 235
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisWaitingForAcceptStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 236
    :cond_58
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_6a

    .line 237
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->removeMessages(I)V

    .line 238
    :cond_6a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_ACCEPT_INVITATION:Ljava/util/UUID;

    invoke-static {p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$mnotifyConnectedDevices(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/util/UUID;I)V

    goto/16 :goto_671

    .line 240
    :cond_73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0xa

    const-string v4, "android.bluetooth.device.extra.DEVICE"

    if-eqz v0, :cond_1a4

    .line 241
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    .line 242
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    packed-switch p2, :pswitch_data_672

    goto/16 :goto_671

    .line 245
    :pswitch_94
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bonding is done,mBondingAddress"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBondingAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bonding is done,device.getAddress()"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemWifiApSmartGattServer:\tBonding is done,mBondingAddress"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBondingAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 248
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemWifiApSmartGattServer:\tBonding is done,device.getAddress()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object p0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_671

    :pswitch_12e
    const-string p2, "Bonding is going on"

    .line 258
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemWifiApSmartGattServer:\tBonding is goingon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object p0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_671

    .line 251
    :pswitch_15d
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBondingAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_671

    .line 252
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBondingAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_671

    .line 253
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemWifiApSmartGattServer:\tBonding is failed:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object p0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const-string p0, "Bonding is failed"

    .line 254
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_671

    :cond_1a4
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 293
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21a

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBluetoothIsOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v0

    if-eqz v0, :cond_21a

    .line 294
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 295
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmPenditIntent(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_671

    if-eqz p1, :cond_671

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_671

    .line 296
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ACTION_STATE_CHANGED passkeyconfirm dialog, mBluetoothIsOn : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBluetoothIsOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SemWifiApSmartGattServer:\tACTION_STATE_CHANGED passkeyconfirm dialog, mBluetoothIsOn : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBluetoothIsOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 298
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmPenditIntent(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 299
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmBluetoothIsOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    goto/16 :goto_671

    :cond_21a
    const-string v0, "android.bluetooth.device.action.PAIRING_REQUEST"

    .line 301
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v0, :cond_354

    .line 302
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    const/high16 v0, -0x80000000

    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    .line 303
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mType:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",device:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v7

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",mBondingAddress:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBondingAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v9

    .line 306
    invoke-virtual {v8, v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "isAutoHotspotServerSet :"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisAutoHotspotServerSet(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SemWifiApSmartGattServer\tACTION_PAIRING_REQUEST PAIRING Type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBondingAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v7

    .line 308
    invoke-virtual {v4, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisAutoHotspotServerSet(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 307
    invoke-virtual {v2, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 309
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisAutoHotspotServerSet(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v2

    if-eqz v2, :cond_671

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBondingAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_671

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_671

    .line 310
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBondingAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_671

    const/4 v2, 0x3

    if-ne v0, v2, :cond_303

    .line 312
    invoke-virtual {p1, v6}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    .line 313
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->abortBroadcast()V

    goto/16 :goto_671

    :cond_303
    if-ne v0, v5, :cond_671

    .line 315
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->abortBroadcast()V

    const-string p1, "com.android.settings"

    const-string v0, "com.samsung.android.settings.wifi.mobileap.WifiApAutoHotspotBlePairingDialog"

    .line 316
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 317
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 318
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_331

    .line 320
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    if-ne v0, v3, :cond_331

    .line 321
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 322
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmBluetoothIsOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 323
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmPenditIntent(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Landroid/content/Intent;)V

    goto :goto_33a

    .line 325
    :cond_331
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_33a
    const-string p1, "passkeyconfirm dialog"

    .line 327
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.samsung.android.server.wifi.softap.smarttethering.collapseQuickPanel"

    .line 329
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_671

    :cond_354
    const-string v0, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    .line 333
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0xd

    const/16 v4, 0x9

    if-eqz v0, :cond_428

    .line 334
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTetheredClientInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->getNumOfConnectedDevices()I

    move-result p1

    const-string v0, "EVENT"

    .line 335
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 336
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result v0

    .line 337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Client Num"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "isMhsEnabledsmartly"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "mAuthDevices size"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mAuthDevices:Ljava/util/HashMap;

    .line 338
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 337
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v3, :cond_3f6

    .line 339
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v5

    if-eqz v5, :cond_3f6

    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmIsNotClientConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v5

    if-eqz v5, :cond_3f6

    const-string v5, "Client is connected so remove START_HOTSPOT_ENABLED_TIMEOUT_WITHOUT_CLIENT"

    .line 340
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v5

    const-string v6, "SemWifiApSmartGattServer:\tClient is connected so remove START_HOTSPOT_ENABLED_TIMEOUT_WITHOUT_CLIENT"

    invoke-virtual {v5, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 342
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v5

    if-eqz v5, :cond_3f1

    .line 343
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->removeMessages(I)V

    .line 345
    :cond_3f1
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmIsNotClientConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    :cond_3f6
    if-eqz p2, :cond_671

    const-string v4, "sta_leave"

    .line 347
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_671

    if-nez p1, :cond_671

    if-ne v0, v3, :cond_671

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result p1

    if-eqz p1, :cond_671

    const-string p1, "Disabling Smart MHS"

    .line 349
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object p1

    const-string p2, "SemWifiApSmartGattServer:\tGattServer sta_leave  ClientNum == 0 stopSoftAp"

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 351
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    goto/16 :goto_671

    :cond_428
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 353
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, " isMHSEnabledSmartly "

    if-eqz v0, :cond_5e7

    const-string p1, "wifi_state"

    .line 354
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, v3, :cond_54e

    .line 356
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisWaitingForMHSStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result p1

    if-eqz p1, :cond_501

    .line 357
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisWaitingForMHSStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 358
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 359
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingLiteSupported()Z

    move-result v0

    .line 360
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingSupported()Z

    move-result v3

    .line 361
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifichip :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " isWifiConnected() :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$misWifiConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",isWifiSharingLiteSupported:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",isWifiSharingSupported:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v5

    const-wide/16 v7, 0x3e8

    if-eqz v5, :cond_4c9

    .line 364
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4c9

    const-string v5, "MTK"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c9

    if-eqz v0, :cond_4c9

    if-eqz v3, :cond_4c9

    .line 366
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object p1

    invoke-virtual {p1, p2, v7, v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4f0

    .line 368
    :cond_4c9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v0

    if-eqz v0, :cond_4e9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e9

    const-string v0, "QCA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e9

    .line 369
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object p1

    invoke-virtual {p1, p2, v7, v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4f0

    .line 371
    :cond_4e9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    sget-object p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_MHS_ENABLED:Ljava/util/UUID;

    invoke-static {p1, p2, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$mnotifyConnectedDevices(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/util/UUID;I)V

    .line 372
    :goto_4f0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_501

    .line 373
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->removeMessages(I)V

    .line 376
    :cond_501
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result p1

    if-eqz p1, :cond_537

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_537

    .line 377
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_526

    .line 378
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->removeMessages(I)V

    .line 379
    :cond_526
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object p1

    const-wide/32 v2, 0xea60

    invoke-virtual {p1, v4, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 380
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmIsNotClientConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 382
    :cond_537
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisMHSEnabledViaIntent(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    const-string p1, "Hotspot Enabled.."

    .line 383
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object p0

    const-string p1, "SemWifiApSmartGattServer:\tHotspot Enabled.. "

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_671

    :cond_54e
    if-eq p1, p2, :cond_554

    const/16 p2, 0xe

    if-ne p1, p2, :cond_671

    .line 386
    :cond_554
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisWaitingForMHSStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result p2

    if-eqz p2, :cond_5b6

    .line 387
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p2, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisWaitingForMHSStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 388
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object p2

    if-eqz p2, :cond_57b

    .line 389
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object p2

    invoke-virtual {p2, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->removeMessages(I)V

    .line 390
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->removeMessages(I)V

    .line 392
    :cond_57b
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_MHS_ENABLED:Ljava/util/UUID;

    invoke-static {p2, v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$mnotifyConnectedDevices(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/util/UUID;I)V

    .line 393
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemWifiApSmartGattServer\tHotspot disabled. state "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isWaitingForMHSStatus "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisWaitingForMHSStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 395
    :cond_5b6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 396
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisResetWifiSharingForDualBandSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result p1

    if-eqz p1, :cond_5d1

    const-string p1, "MHS was single Band, AH will set in Dual Band reset wifi sharing "

    .line 397
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiSharingEnabled(Z)Z

    .line 400
    :cond_5d1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisResetWifiSharingForDualBandSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 401
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisMHSEnabledViaIntent(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 402
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmIsNotClientConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 403
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmChangeSecurity(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    goto/16 :goto_671

    :cond_5e7
    const-string v0, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    .line 405
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_671

    const/4 p1, -0x1

    const-string v0, "called_dialog"

    .line 406
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v5, :cond_671

    const-string p1, "Hotspot Enabled cancelled.."

    .line 408
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object p1

    const-string p2, "SemWifiApSmartGattServer:\tHotspot Enabled cancelled.. "

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 410
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisWaitingForMHSStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result p1

    if-eqz p1, :cond_662

    .line 411
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisWaitingForMHSStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 412
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_62f

    .line 413
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->removeMessages(I)V

    .line 414
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->removeMessages(I)V

    .line 416
    :cond_62f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    sget-object p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_MHS_ENABLED:Ljava/util/UUID;

    invoke-static {p1, p2, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$mnotifyConnectedDevices(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/util/UUID;I)V

    .line 417
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SemWifiApSmartGattServer\tHotspot enabling cancelled. isWaitingForMHSStatus "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisWaitingForMHSStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 419
    :cond_662
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 420
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisMHSEnabledViaIntent(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 421
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$SemWifiApSmartGattServerBroadcastReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmIsNotClientConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    :cond_671
    :goto_671
    return-void

    :pswitch_data_672
    .packed-switch 0xa
        :pswitch_15d
        :pswitch_12e
        :pswitch_94
    .end packed-switch
.end method
