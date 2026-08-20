.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "SemWifiApSmartGattClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;


# direct methods
.method public static synthetic $r8$lambda$l3njFcxty3kkDqWRndgAaQClisk(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;Lcom/samsung/android/wifi/SemWifiApBleScanResult;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->lambda$onConnectionStateChange$0(Lcom/samsung/android/wifi/SemWifiApBleScanResult;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V
    .registers 2

    .line 1202
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method

.method private synthetic lambda$onConnectionStateChange$0(Lcom/samsung/android/wifi/SemWifiApBleScanResult;)Z
    .registers 2

    if-eqz p1, :cond_12

    .line 1247
    iget-object p1, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSmartAp_WiFi_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 10

    .line 1294
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 1295
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->lookup(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",requestedToEnableMHS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetrequestedToEnableMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\tonCharacteristicChanged:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->lookup(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetrequestedToEnableMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1297
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 1298
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_MHS_ENABLED:Ljava/util/UUID;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_b3

    aget-byte v1, v0, v4

    const/16 v6, 0xb

    if-ne v1, v6, :cond_b3

    aget-byte v1, v0, v5

    if-ne v1, v6, :cond_b3

    .line 1300
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "need to notify that hotspot fails provisioning to user"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_148

    .line 1302
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p0

    const/16 p1, 0x1c

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_148

    .line 1304
    :cond_b3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_MHS_ENABLED:Ljava/util/UUID;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    aget-byte v1, v0, v4

    const/16 v6, 0xc

    if-ne v1, v6, :cond_eb

    aget-byte v0, v0, v5

    if-ne v0, v6, :cond_eb

    .line 1306
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "need to check hotspot\'s status for user"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_148

    .line 1308
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p0

    const/16 p1, 0x1d

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_148

    .line 1310
    :cond_eb
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_MHS_ENABLED:Ljava/util/UUID;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_148

    .line 1311
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    .line 1312
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_127

    const-string v0, "Qualcomm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_122

    const-string v0, "QCA"

    .line 1313
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_127

    .line 1314
    :cond_122
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmGotMHSEnabledNotificationEarlier(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    .line 1316
    :cond_127
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetrequestedToEnableMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    move-result p2

    if-ne p2, v5, :cond_148

    .line 1317
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputrequestedToEnableMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    .line 1318
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_STATUS_UUID:Ljava/util/UUID;

    invoke-virtual {p2, p0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    :cond_148
    :goto_148
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p3

    .line 1392
    invoke-super/range {p0 .. p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 1393
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCharacteristicRead:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->lookup(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getStatusDescription(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":\tonCharacteristicRead:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->lookup(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getStatusDescription(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1395
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_SIDE_GET_TIME:Ljava/util/UUID;

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_203

    .line 1396
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 1397
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received mhs time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_fb

    .line 1399
    new-instance v3, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1400
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAESKey(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmAESKey(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V

    .line 1401
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetMHSDBG()Z

    move-result v3

    if-eqz v3, :cond_fb

    .line 1402
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "received mhs_time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",mAESKey:"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmAESKey(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fb
    if-eqz v0, :cond_14b

    .line 1404
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmAESKey(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14b

    .line 1405
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_VER_UPDATE:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    new-array v3, v4, [B

    .line 1406
    fill-array-data v3, :array_cc6

    .line 1407
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 1408
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 1409
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 1410
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Write Characterstic version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmversion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto/16 :goto_cc5

    .line 1413
    :cond_14b
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Time mismatch occurred ,need to establish 1.0 connection"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmTimeMismatchOccured(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    .line 1415
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1ed

    .line 1416
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothAdapter(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1d7

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothAdapter(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1d7

    .line 1417
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device is not bonded, enabling BT adapter,mBluetoothIsOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothIsOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\tdevice is not bonded, enabling BT adapter,mBluetoothIsOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothIsOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1419
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothAdapter(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1420
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmBluetoothIsOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    .line 1421
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmBluetoothDevice(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_cc5

    .line 1423
    :cond_1d7
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V

    .line 1424
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothDevice;->createBond(I)Z

    goto/16 :goto_cc5

    .line 1427
    :cond_1ed
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_BOND_STATUS:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto/16 :goto_cc5

    .line 1430
    :cond_203
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_BOND_STATUS:Ljava/util/UUID;

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    if-eqz v3, :cond_2f9

    .line 1431
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    if-eqz v3, :cond_27f

    .line 1432
    array-length v4, v3

    if-lez v4, :cond_27f

    aget-byte v4, v3, v7

    if-ne v4, v5, :cond_27f

    .line 1433
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got bond status:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v6, v3, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":\tGot bond status:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, v3, v7

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1435
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_MHS_ENABLED:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 1436
    invoke-virtual {v2, v0, v5}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 1437
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 1438
    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto/16 :goto_cc5

    :cond_27f
    const/16 v3, 0x12

    if-ne v0, v3, :cond_2ab

    .line 1440
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmChacteristicRetryCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v0

    if-lez v0, :cond_2ab

    .line 1441
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmChacteristicRetryCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v3

    sub-int/2addr v3, v5

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmChacteristicRetryCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V

    .line 1442
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_BOND_STATUS:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto/16 :goto_cc5

    .line 1444
    :cond_2ab
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2db

    .line 1446
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device is not bonded at MHS side ,so removing the device"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\tdevice is not bonded at MHS side ,so removing the device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1448
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    .line 1450
    :cond_2db
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    const/16 v2, -0xa

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSmartAp_WiFi_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$msetConnectionState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;ILjava/lang/String;)V

    .line 1451
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object v0

    if-eqz v0, :cond_cc5

    .line 1452
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_cc5

    .line 1455
    :cond_2f9
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_GET_WIFI_CONNECTION_DETAILS:Ljava/util/UUID;

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v8, 0x4

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-nez v3, :cond_9d8

    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_GET_WIFI_CONNECTION_PASSWORD_DETAILS:Ljava/util/UUID;

    .line 1456
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_321

    goto/16 :goto_9d8

    .line 1588
    :cond_321
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_AUTH_STATUS:Ljava/util/UUID;

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_759

    .line 1589
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    if-eqz v3, :cond_33a

    if-eqz v0, :cond_388

    .line 1591
    :cond_33a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmhs_read_auth_status_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v0

    if-lez v0, :cond_388

    .line 1592
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\tmhs_read_auth_status_retry"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1593
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mhs_read_auth_status_retry"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmhs_read_auth_status_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v3

    sub-int/2addr v3, v5

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmhs_read_auth_status_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V

    .line 1595
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_AUTH_STATUS:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void

    .line 1599
    :cond_388
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmAESKey(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3db

    .line 1600
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetMHSDBG()Z

    move-result v0

    if-eqz v0, :cond_3b4

    .line 1601
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Using AES:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmAESKey(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b4
    if-eqz v3, :cond_3d0

    .line 1603
    new-instance v0, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v8, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmAESKey(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/AES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d0

    .line 1605
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    move-object v3, v0

    :cond_3d0
    if-nez v3, :cond_3db

    .line 1609
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v8, " decryption can\'t be null"

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3db
    if-eqz v3, :cond_5e9

    .line 1612
    array-length v0, v3

    if-lez v0, :cond_5e9

    aget-byte v0, v3, v7

    if-ne v0, v5, :cond_5e9

    .line 1613
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got Auth status:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v8, v3, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":\tGot Auth status:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v8, v3, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1615
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetisClientAcceptedWifiProfileSharing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    move-result v0

    if-eqz v0, :cond_488

    .line 1616
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isClientAcceptedWifiProfileSharing:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetisClientAcceptedWifiProfileSharing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":\tisClientAcceptedWifiProfileSharing:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetisClientAcceptedWifiProfileSharing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1618
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmhs_read_wifi_share_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V

    .line 1619
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_GET_WIFI_CONNECTION_PASSWORD_DETAILS:Ljava/util/UUID;

    .line 1620
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 1619
    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void

    .line 1623
    :cond_488
    aget-byte v0, v3, v5

    .line 1624
    iget-object v6, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    new-instance v8, Ljava/lang/String;

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v0, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v6, v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x2

    .line 1625
    aget-byte v6, v3, v4

    .line 1626
    iget-object v8, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v8, v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmPassword(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V

    if-eqz v6, :cond_4ae

    .line 1628
    iget-object v8, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    new-instance v10, Ljava/lang/String;

    add-int/2addr v4, v5

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v3, v4, v6, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v8, v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmPassword(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V

    :cond_4ae
    add-int/lit8 v4, v0, 0x3

    add-int/2addr v4, v6

    .line 1629
    aget-byte v8, v3, v4

    .line 1630
    iget-object v10, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    add-int/2addr v4, v5

    add-int/2addr v4, v9

    aget-byte v4, v3, v4

    invoke-static {v10, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmWPA3Mode(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V

    .line 1631
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSSID:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "mhs_status:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mWPA3Mode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWPA3Mode(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mSSIDlength:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mPasswordLength:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mbytes.length:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bytes:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":\tmSSID:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "mhs_status:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mWPA3Mode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWPA3Mode(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mSSIDlength:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mPasswordLength:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mbytes.length:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1636
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputrequestedToEnableMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    if-ne v8, v5, :cond_59d

    .line 1638
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmGotMHSEnabledNotificationEarlier(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    .line 1639
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_STATUS_UUID:Ljava/util/UUID;

    .line 1640
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 1639
    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto/16 :goto_cc5

    :cond_59d
    if-nez v8, :cond_cc5

    .line 1642
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmGotMHSEnabledNotificationEarlier(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    move-result v0

    if-eqz v0, :cond_cc5

    .line 1643
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v3, "QCOM mGotMHSEnabledNotificationEarlier"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\tQCOM mGotMHSEnabledNotificationEarlier"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1645
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmGotMHSEnabledNotificationEarlier(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    .line 1646
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_STATUS_UUID:Ljava/util/UUID;

    .line 1647
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 1646
    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto/16 :goto_cc5

    .line 1651
    :cond_5e9
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputrequestedToEnableMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    .line 1652
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Auth failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":\tAuth failed"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1654
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    const/4 v2, -0x3

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSmartAp_WiFi_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v2, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$msetConnectionState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;ILjava/lang/String;)V

    .line 1655
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object v0

    if-eqz v0, :cond_630

    .line 1656
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 1657
    :cond_630
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmUserType(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    if-ne v0, v5, :cond_680

    .line 1658
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AES key is not mismatched so auth failure happens"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object v0

    if-eqz v0, :cond_661

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmReGetAes(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    move-result v0

    if-nez v0, :cond_661

    .line 1660
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object v0

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 1662
    :cond_661
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\tAES key is not mismatched so auth failure happens"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_6b4

    .line 1663
    :cond_680
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmUserType(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    if-ne v0, v4, :cond_6b4

    .line 1664
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Auth failed for family user"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\tAuth failed for family user"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1667
    :cond_6b4
    :goto_6b4
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    move-result v0

    if-nez v0, :cond_cc5

    .line 1668
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Allowed type, auth failed, so removing wifi mac"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\tAllowed type, auth failed, so removing wifi mac"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1670
    new-instance v0, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v5, v9, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1671
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->removeWifiMACFromRegisteredList(Ljava/lang/String;)V

    .line 1672
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getD2DWifiMac()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_709

    .line 1673
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_cc5

    .line 1674
    :cond_709
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->putHashbasedonD2DFamilyid(J)V

    .line 1675
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->putD2DFamilyID(Ljava/lang/String;)V

    .line 1676
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Allowed type, no registered D2D MHS found, so removed D2DfamilyID"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tAllowed type, no registered D2D MHS found, so removed D2DfamilyID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1678
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.server.wifi.softap.smarttethering.d2dfamilyid"

    .line 1679
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1680
    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_cc5

    .line 1684
    :cond_759
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_STATUS_UUID:Ljava/util/UUID;

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc5

    .line 1685
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    if-eqz v3, :cond_7b2

    .line 1687
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":\tGot MHS status:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1688
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got MHS status:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_800

    .line 1689
    :cond_7b2
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmhs_read_status_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v0

    if-lez v0, :cond_800

    .line 1690
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\tmhs_read_status_retry"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1691
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mhs_read_status_retry"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmhs_read_status_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v3

    sub-int/2addr v3, v5

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmhs_read_status_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V

    .line 1693
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_STATUS_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void

    :cond_800
    :goto_800
    if-eqz v3, :cond_9bb

    .line 1696
    aget-byte v0, v3, v7

    if-ne v0, v5, :cond_9bb

    .line 1697
    array-length v0, v3

    if-le v0, v4, :cond_9a7

    .line 1698
    aget-byte v2, v3, v5

    .line 1699
    new-instance v0, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v4, v2, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1700
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_840

    .line 1701
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v7, "Got MHS channel: 0"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":\tGot MHS channel: 0"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_88b

    .line 1705
    :cond_840
    :try_start_840
    iget-object v7, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":\tGot MHS channel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1706
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got MHS channel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    iget-object v7, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v7, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mchannelToFreq(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)I

    move-result v0

    invoke-static {v7, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmMhsFreq(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    :try_end_886
    .catch Ljava/lang/NumberFormatException; {:try_start_840 .. :try_end_886} :catch_887

    goto :goto_88b

    :catch_887
    move-exception v0

    .line 1709
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_88b
    add-int/lit8 v0, v2, 0x2

    .line 1712
    aget-byte v7, v3, v0

    add-int/lit8 v9, v2, 0x3

    add-int/2addr v9, v7

    .line 1713
    aget-byte v9, v3, v9

    .line 1714
    new-instance v10, Ljava/lang/String;

    add-int/2addr v0, v5

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v3, v0, v7, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1715
    new-instance v0, Ljava/lang/String;

    add-int/2addr v2, v8

    add-int/2addr v2, v7

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v2, v9, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1716
    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    add-int/2addr v2, v9

    aget-byte v2, v3, v2

    invoke-static {v5, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmHotspotVersion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V

    .line 1718
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got MHS channel:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmMhsFreq(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",clientmac:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",mhsmac:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v5

    .line 1719
    invoke-virtual {v5, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " got hotspot ah version "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmHotspotVersion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1718
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\tGot MHS channel:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmMhsFreq(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",clientmac:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",mhsmac:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v5

    .line 1721
    invoke-virtual {v5, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " got hotspot ah version "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmHotspotVersion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1720
    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1722
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    monitor-enter v2

    :try_start_95b
    const-string v3, ""

    .line 1723
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a2

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a2

    .line 1724
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_973
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9a2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;

    const/16 v7, 0x9

    .line 1725
    invoke-virtual {v10, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->clientMAC:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_973

    .line 1726
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->MHS_MAC:Ljava/lang/String;

    .line 1727
    iput v4, v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    .line 1728
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v3, "updated MHS MAC in Smart MHS list"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    :cond_9a2
    monitor-exit v2

    goto :goto_9a7

    :catchall_9a4
    move-exception v0

    monitor-exit v2
    :try_end_9a6
    .catchall {:try_start_95b .. :try_end_9a6} :catchall_9a4

    throw v0

    .line 1735
    :cond_9a7
    :goto_9a7
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object v0

    if-eqz v0, :cond_9c5

    .line 1736
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendEmptyMessage(I)Z

    goto :goto_9c5

    .line 1738
    :cond_9bb
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    const/4 v2, -0x8

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSmartAp_WiFi_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$msetConnectionState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;ILjava/lang/String;)V

    .line 1740
    :cond_9c5
    :goto_9c5
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object v0

    if-eqz v0, :cond_cc5

    .line 1741
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_cc5

    .line 1458
    :cond_9d8
    :goto_9d8
    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_GET_WIFI_CONNECTION_PASSWORD_DETAILS:Ljava/util/UUID;

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1461
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v11

    if-eqz v11, :cond_9ea

    if-eqz v0, :cond_a4f

    .line 1463
    :cond_9ea
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmhs_read_wifi_share_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v0

    if-lez v0, :cond_a4f

    .line 1464
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":\tmhs_read_wifi_share_retry"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1465
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v4, "mhs_read_wifi_share_retry"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmhs_read_wifi_share_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v4

    sub-int/2addr v4, v5

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmhs_read_wifi_share_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V

    if-eqz v3, :cond_a3a

    .line 1468
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_GET_WIFI_CONNECTION_PASSWORD_DETAILS:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_a4e

    .line 1470
    :cond_a3a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_GET_WIFI_CONNECTION_DETAILS:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    :goto_a4e
    return-void

    .line 1475
    :cond_a4f
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmAESKey(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_aa2

    .line 1476
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetMHSDBG()Z

    move-result v0

    if-eqz v0, :cond_a7b

    .line 1477
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Using AES:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmAESKey(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a7b
    if-eqz v11, :cond_a97

    .line 1479
    new-instance v0, Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v11, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v12, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmAESKey(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/AES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a97

    .line 1481
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    move-object v11, v0

    :cond_a97
    if-nez v11, :cond_aa2

    .line 1485
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v12, " CHARACTERISTIC_GET_WIFI_CONNECTION_DETAILS decryption can\'t be null"

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_aa2
    :try_start_aa2
    new-instance v12, Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/String;

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v11, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_aae
    .catch Ljava/lang/Exception; {:try_start_aa2 .. :try_end_aae} :catch_abe

    :try_start_aae
    const-string v0, "wificonnected"

    .line 1495
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_ab4
    .catch Ljava/lang/Exception; {:try_start_aae .. :try_end_ab4} :catch_abb

    if-ne v0, v5, :cond_ab8

    move v0, v5

    goto :goto_ab9

    :cond_ab8
    move v0, v7

    :goto_ab9
    move v10, v0

    goto :goto_ac4

    :catch_abb
    move-exception v0

    move-object v10, v12

    goto :goto_abf

    :catch_abe
    move-exception v0

    .line 1497
    :goto_abf
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v12, v10

    move v10, v7

    :goto_ac4
    if-eqz v12, :cond_c6c

    if-eqz v10, :cond_c67

    :try_start_ac8
    const-string v0, "wifissid"

    .line 1502
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "wififreq"

    .line 1503
    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v13, "wifisecurity"

    .line 1504
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v14, "bssid"

    .line 1505
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "ishidden"

    .line 1506
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v15
    :try_end_ae6
    .catch Ljava/lang/Exception; {:try_start_ac8 .. :try_end_ae6} :catch_c5e

    .line 1507
    :try_start_ae6
    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/content/Context;

    move-result-object v5

    const-string v7, "wifi"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 1508
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16
    :try_end_af8
    .catch Ljava/lang/Exception; {:try_start_ae6 .. :try_end_af8} :catch_c59

    .line 1510
    :try_start_af8
    iget-object v7, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    invoke-static {v7, v5, v14, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mcheckIfBSSIDExistInScanResults(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_b02
    .catchall {:try_start_af8 .. :try_end_b02} :catchall_c54

    .line 1512
    :try_start_b02
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-ne v13, v8, :cond_b08

    goto :goto_b09

    :cond_b08
    const/4 v7, 0x6

    .line 1525
    :goto_b09
    iget-object v7, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/content/Context;

    move-result-object v8

    const-string v6, "wifinl80211"

    invoke-virtual {v8, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-static {v7, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmNl80211Manager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Landroid/net/wifi/nl80211/WifiNl80211Manager;)V

    const/16 v6, 0x170c

    if-le v11, v6, :cond_b32

    .line 1528
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmNl80211Manager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/net/wifi/nl80211/WifiNl80211Manager;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getChannelsMhzForBand(I)[I

    .line 1530
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    const-string v6, "SEC_PRODUCT_FEATURE_WLAN_SUPPORT_80211AX_6GHZ not enabled"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b30
    const/4 v4, 0x0

    goto :goto_b54

    :cond_b32
    const/16 v6, 0x1388

    if-le v11, v6, :cond_b53

    .line 1537
    iget-object v6, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmNl80211Manager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/net/wifi/nl80211/WifiNl80211Manager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getChannelsMhzForBand(I)[I

    move-result-object v4

    .line 1538
    array-length v4, v4
    :try_end_b41
    .catch Ljava/lang/Exception; {:try_start_b02 .. :try_end_b41} :catch_c50

    if-nez v4, :cond_b53

    .line 1540
    :try_start_b43
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    const-string v6, "allowed frequency 5ghz not supported"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4c
    .catch Ljava/lang/Exception; {:try_start_b43 .. :try_end_b4c} :catch_b4d

    goto :goto_b30

    :catch_b4d
    move-exception v0

    move-object v4, v0

    move v0, v5

    const/4 v5, 0x0

    goto/16 :goto_c63

    :cond_b53
    const/4 v4, 0x1

    .line 1543
    :goto_b54
    :try_start_b54
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " wifi profile share SSID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",security:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",freq:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",isWificonifSupported:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",isInScanResults:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ":ishidden:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget-object v6, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object v6

    if-eqz v6, :cond_bbe

    if-nez v3, :cond_bbe

    if-eqz v4, :cond_bbe

    if-nez v5, :cond_ba4

    if-eqz v15, :cond_bbe

    .line 1545
    :cond_ba4
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    const/16 v7, 0x1a

    .line 1546
    iput v7, v6, Landroid/os/Message;->what:I

    .line 1547
    iget-object v7, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v7, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mremoveDoubleQuotes(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1548
    iget-object v7, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_bbe
    if-eqz v3, :cond_c45

    const-string v6, "presharedkey"

    .line 1552
    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1553
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetMHSDBG()Z

    move-result v7

    if-eqz v7, :cond_bf4

    .line 1554
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "presharedkey:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",bssid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",ishidden:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_bf4
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    const/16 v8, 0x1b

    .line 1556
    iput v8, v7, Landroid/os/Message;->what:I

    .line 1557
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "ssid"

    .line 1558
    invoke-virtual {v8, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "securitytype"

    .line 1559
    invoke-virtual {v8, v0, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "bssid"

    .line 1560
    invoke-virtual {v8, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ishidden"

    .line 1561
    invoke-virtual {v8, v0, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "presharedkey"

    .line 1562
    invoke-virtual {v8, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    invoke-virtual {v7, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1564
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object v0

    if-eqz v0, :cond_c3a

    .line 1565
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1566
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object v0

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 1568
    :cond_c3a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSmartAp_WiFi_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v0, v7, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$msetConnectionState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;ILjava/lang/String;)V
    :try_end_c44
    .catch Ljava/lang/Exception; {:try_start_b54 .. :try_end_c44} :catch_c48

    return-void

    :cond_c45
    move v0, v5

    move v5, v4

    goto :goto_c6a

    :catch_c48
    move-exception v0

    move/from16 v18, v4

    move-object v4, v0

    move v0, v5

    move/from16 v5, v18

    goto :goto_c63

    :catch_c50
    move-exception v0

    move-object v4, v0

    move v0, v5

    goto :goto_c5c

    :catchall_c54
    move-exception v0

    .line 1512
    :try_start_c55
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1513
    throw v0
    :try_end_c59
    .catch Ljava/lang/Exception; {:try_start_c55 .. :try_end_c59} :catch_c59

    :catch_c59
    move-exception v0

    move-object v4, v0

    const/4 v0, 0x0

    :goto_c5c
    const/4 v5, 0x1

    goto :goto_c63

    :catch_c5e
    move-exception v0

    move-object v4, v0

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v15, 0x0

    .line 1573
    :goto_c63
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c6a

    :cond_c67
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v15, 0x0

    :goto_c6a
    move v7, v0

    goto :goto_c6f

    :cond_c6c
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_c6f
    if-eqz v3, :cond_cb6

    .line 1577
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Wifi is not connected"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\tWifi is not connected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1579
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object v0

    if-eqz v0, :cond_cab

    .line 1580
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 1582
    :cond_cab
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSmartAp_WiFi_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$msetConnectionState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;ILjava/lang/String;)V

    return-void

    :cond_cb6
    if-eqz v10, :cond_cbf

    if-eqz v5, :cond_cbf

    if-nez v7, :cond_cbe

    if-eqz v15, :cond_cbf

    :cond_cbe
    return-void

    .line 1587
    :cond_cbf
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$msendAuthInformation(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Landroid/bluetooth/BluetoothGatt;Z)V

    :cond_cc5
    :goto_cc5
    return-void

    :array_cc6
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 9

    .line 1357
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 1358
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicWrite:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->lookup(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getStatusDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\tonCharacteristicWrite:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->lookup(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getStatusDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1360
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_VER_UPDATE:Ljava/util/UUID;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_140

    .line 1361
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmhs_write_bluetooth_gatt_characteristic_status_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result p2

    if-lez p2, :cond_123

    if-eqz p3, :cond_123

    .line 1362
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":\tmhs_write_bluetooth_gatt_characteristic_status_retry"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1363
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mhs_write_bluetooth_gatt_characteristic_status_retry: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmhs_write_bluetooth_gatt_characteristic_status_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmhs_write_bluetooth_gatt_characteristic_status_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result p3

    sub-int/2addr p3, v1

    invoke-static {p2, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmhs_write_bluetooth_gatt_characteristic_status_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V

    .line 1365
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object p3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_VER_UPDATE:Ljava/util/UUID;

    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [B

    .line 1366
    fill-array-data p3, :array_1ac

    .line 1367
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 1368
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 1369
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 1370
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write Characterstic version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmversion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto/16 :goto_1ab

    .line 1373
    :cond_123
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_MHS_ENABLED:Ljava/util/UUID;

    invoke-virtual {p2, p0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p0

    .line 1374
    invoke-virtual {p1, p0, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 1375
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 1376
    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_1ab

    .line 1378
    :cond_140
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object p3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_MHS_ENABLED:Ljava/util/UUID;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_186

    .line 1379
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetisWifiProfileShareEnabled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    move-result p2

    if-eqz p2, :cond_17f

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmUserType(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    move-result p2

    if-ne p2, v1, :cond_17f

    .line 1380
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WifiProfileShareEnabled, get Wifi connection details"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_GET_WIFI_CONNECTION_DETAILS:Ljava/util/UUID;

    invoke-virtual {p2, p0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void

    .line 1384
    :cond_17f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$msendAuthInformation(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Landroid/bluetooth/BluetoothGatt;Z)V

    goto :goto_1ab

    .line 1385
    :cond_186
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object p3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_ENCRYPTED_AUTH_ID:Ljava/util/UUID;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1ab

    .line 1386
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_AUTH_STATUS:Ljava/util/UUID;

    invoke-virtual {p2, p0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    :cond_1ab
    :goto_1ab
    return-void

    :array_1ac
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 10

    .line 1205
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 1206
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":\tonConnectionStateChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    .line 1207
    invoke-virtual {v2, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getStatusDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v3

    .line 1208
    invoke-virtual {v3, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getStateDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1206
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1209
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnectionStateChange: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v3

    .line 1210
    invoke-virtual {v3, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getStatusDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    .line 1211
    invoke-virtual {v2, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getStateDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1209
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p3, v1, :cond_bc

    .line 1213
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device,connected"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmIsRetryGattConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    .line 1215
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_266

    .line 1216
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p0

    const/16 p1, 0x13

    const-wide/16 p2, 0x12c

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_266

    :cond_bc
    if-nez p3, :cond_266

    .line 1218
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device, disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p3, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmIsRetryGattConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    .line 1220
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    const/4 v1, -0x1

    invoke-static {p3, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmMhsFreq(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V

    if-nez p2, :cond_11a

    .line 1221
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmNeedRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    move-result p2

    if-eqz p2, :cond_fe

    goto :goto_11a

    .line 1274
    :cond_fe
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    if-eqz p2, :cond_113

    .line 1275
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    iget-object p2, p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    :cond_113
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mshutdownclient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V

    goto/16 :goto_266

    .line 1222
    :cond_11a
    :goto_11a
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p2

    const/16 p3, 0x19

    invoke-virtual {p2, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_131

    .line 1223
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->removeMessages(I)V

    .line 1225
    :cond_131
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    .line 1226
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    iget-object p3, p3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    const/4 v1, -0x7

    if-nez p3, :cond_15d

    .line 1228
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSmartAp_WiFi_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, v1, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$msetConnectionState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;ILjava/lang/String;)V

    .line 1229
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mshutdownclient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V

    goto/16 :goto_266

    .line 1231
    :cond_15d
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_17b

    .line 1232
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSmartAp_WiFi_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, v1, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$msetConnectionState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;ILjava/lang/String;)V

    .line 1233
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mshutdownclient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V

    goto/16 :goto_266

    .line 1235
    :cond_17b
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ge p3, v3, :cond_266

    .line 1236
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mshutdownclient_1(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V

    .line 1237
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->refresh()Z

    const-wide/16 v2, 0x3e8

    .line 1239
    :try_start_18b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_18e} :catch_18e

    :catch_18e
    const/4 p3, 0x0

    .line 1245
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->getWifiApBleScanResults()Ljava/util/List;

    move-result-object v2

    .line 1246
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;)V

    .line 1247
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 1248
    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    .line 1249
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_20b

    .line 1250
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selected ble scan result mac : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget-object v4, v4, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ble mac : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget-object v5, v5, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget-object v3, v3, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    invoke-static {p3, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmSmartAp_BLE_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V

    .line 1253
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothAdapter(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p3

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget-object v2, v2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    :cond_20b
    if-nez p3, :cond_21a

    .line 1256
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    const-string v2, " device is null so get gat.getDevice() "

    invoke-static {p3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    .line 1259
    :cond_21a
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    const/16 v2, 0xc

    if-ne p1, v2, :cond_247

    if-eqz p3, :cond_266

    .line 1260
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    const/4 v0, 0x1

    invoke-static {p1, p3, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mtryToConnectToRemoteBLE(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result p1

    if-nez p1, :cond_266

    .line 1261
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSmartAp_WiFi_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, v1, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$msetConnectionState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;ILjava/lang/String;)V

    .line 1262
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mshutdownclient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V

    goto :goto_266

    :cond_247
    if-eqz p3, :cond_266

    .line 1266
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1, p3, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mtryToConnectToRemoteBLE(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result p1

    if-nez p1, :cond_266

    .line 1267
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSmartAp_WiFi_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, v1, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$msetConnectionState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;ILjava/lang/String;)V

    .line 1268
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mshutdownclient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V

    :cond_266
    :goto_266
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 4

    .line 1284
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    const/16 p3, 0x200

    if-ne p2, p3, :cond_29

    .line 1286
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 1287
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p1

    const/16 p2, 0x13

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 1288
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->removeMessages(I)V

    :cond_29
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 9

    .line 1325
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 1326
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServicesDiscovered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getStatusDescription(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " removeMessages TRY_TO_RECONNECT_AUTOHOTSPOT"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmNeedRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    .line 1328
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p2

    if-eqz p2, :cond_43

    .line 1329
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p2

    const/16 v1, 0x19

    invoke-virtual {p2, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->removeMessages(I)V

    .line 1331
    :cond_43
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4b
    :goto_4b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_101

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 1332
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v4

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->lookup(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1334
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Service: mWifiApSmartUtil.SERVICE_UUID"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\tService: mWifiApSmartUtil.SERVICE_UUID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1337
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Landroid/bluetooth/BluetoothGattService;)V

    const/4 v0, 0x1

    .line 1339
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmAESKey(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e2

    .line 1340
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "read CHARACTERISTIC_MHS_SIDE_GET_TIME"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_SIDE_GET_TIME:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto/16 :goto_4b

    .line 1343
    :cond_e2
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "read CHARACTERISTIC_MHS_BOND_STATUS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_BOND_STATUS:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto/16 :goto_4b

    :cond_101
    if-nez v0, :cond_121

    .line 1349
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    const/16 p2, -0xd

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSmartAp_WiFi_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$msetConnectionState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;ILjava/lang/String;)V

    .line 1350
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_121

    .line 1351
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    move-result-object p0

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->sendEmptyMessage(I)Z

    :cond_121
    return-void
.end method
