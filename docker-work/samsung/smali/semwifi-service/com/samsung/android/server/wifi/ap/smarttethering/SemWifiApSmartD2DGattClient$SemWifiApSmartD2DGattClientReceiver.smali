.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApSmartD2DGattClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemWifiApSmartD2DGattClientReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 212
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.device.action.PAIRING_REQUEST"

    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    const-string v3, "SemWifiApSmartD2DGattClient"

    if-eqz v0, :cond_e7

    .line 219
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    const/high16 v0, -0x80000000

    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    .line 220
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mType: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,device: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v5

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ,mPendingDeviceAddress: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object v7

    .line 222
    invoke-virtual {v6, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/util/LocalLog;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SemWifiApSmartD2DGattClient:\tmType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object v5

    .line 224
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 223
    invoke-virtual {v2, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_337

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_337

    .line 226
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_337

    if-ne v0, v1, :cond_337

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->abortBroadcast()V

    const-string p1, "com.android.settings"

    const-string v0, "com.samsung.android.settings.wifi.mobileap.WifiApAutoHotspotBlePairingDialog"

    .line 228
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 229
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 230
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p0, "passkeyconfirm dialog"

    .line 232
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_337

    :cond_e7
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 234
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0xc

    const/4 v4, 0x0

    if-eqz p1, :cond_145

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBluetoothIsOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Z

    move-result p1

    if-eqz p1, :cond_145

    .line 235
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 236
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBluetoothDevice(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    if-eqz p2, :cond_337

    if-eqz p1, :cond_337

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    if-ne p1, v0, :cond_337

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ACTION_STATE_CHANGED mBluetoothIsOn "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBluetoothIsOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBluetoothDevice(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fputmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Ljava/lang/String;)V

    .line 239
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fputmBluetoothIsOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Z)V

    .line 240
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBluetoothDevice(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDevice;->createBond(I)Z

    goto/16 :goto_337

    .line 243
    :cond_145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_337

    .line 244
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    const/16 v1, 0xa

    const-string v2, "android.bluetooth.device.extra.BOND_STATE"

    .line 245
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v5, ",device.getAddress():"

    packed-switch p2, :pswitch_data_338

    goto/16 :goto_337

    .line 248
    :pswitch_168
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p2, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fputisBondingGoingon(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Z)V

    if-eqz p1, :cond_337

    .line 250
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BONDED mPendingDeviceAddress:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v0

    .line 251
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 250
    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_337

    .line 253
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_337

    .line 254
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p2, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fputmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Ljava/lang/String;)V

    const-string p2, "D2D MHS Bonding is done"

    .line 255
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/util/LocalLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemWifiApSmartD2DGattClient:\tAdding to bondedd devices :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 257
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ":Adding to bondedd devices :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/util/LocalLog;

    move-result-object p2

    const-string v0, "SemWifiApSmartD2DGattClient\tTrying to create a D2D connection after bonding."

    invoke-virtual {p2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 260
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmD2DClient_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$msetConnectionState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;ILjava/lang/String;)V

    .line 261
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p2, p1, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$mtryToConnectToRemoteBLE(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result p2

    if-nez p2, :cond_337

    .line 262
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    const/4 v0, -0x5

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmD2DClient_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$msetConnectionState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;ILjava/lang/String;)V

    .line 263
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_337

    .line 289
    :pswitch_246
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BONDing gOING ON mPendingDeviceAddress:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v0

    .line 290
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 289
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_337

    .line 292
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_337

    .line 293
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fputisBondingGoingon(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Z)V

    const-string p1, " client Bonding is going on"

    .line 294
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/util/LocalLog;

    move-result-object p0

    const-string p1, "SemWifiApSmartD2DGattClient:\tclient Bonding is going on"

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_337

    .line 269
    :pswitch_2ad
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p2, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fputisBondingGoingon(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Z)V

    .line 270
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOND FAILED mPendingDeviceAddress:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    .line 271
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 270
    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_337

    .line 273
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_337

    .line 274
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fputmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Ljava/lang/String;)V

    const-string p1, " client Bonding is failed"

    .line 275
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/util/LocalLog;

    move-result-object p1

    const-string p2, "SemWifiApSmartD2DGattClient:\tclient Bonding is failed"

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 277
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 278
    new-instance p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver$1;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;)V

    const-wide/16 v1, 0x1770

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_337

    .line 285
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->sendEmptyMessage(I)Z

    :cond_337
    :goto_337
    return-void

    :pswitch_data_338
    .packed-switch 0xa
        :pswitch_2ad
        :pswitch_246
        :pswitch_168
    .end packed-switch
.end method
