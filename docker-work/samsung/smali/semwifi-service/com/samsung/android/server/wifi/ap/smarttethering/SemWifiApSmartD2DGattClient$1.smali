.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "SemWifiApSmartD2DGattClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)V
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 6

    .line 429
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestedToAccept:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetrequestedToAccept(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",onCharacteristicChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->lookup(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApSmartD2DGattClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_ACCEPT_INVITATION:Ljava/util/UUID;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_69

    .line 432
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetrequestedToAccept(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_69

    .line 433
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fputrequestedToAccept(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Z)V

    .line 434
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_CLIENT_MAC:Ljava/util/UUID;

    invoke-virtual {p2, p0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    :cond_69
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 11

    .line 379
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 381
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object p3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_D2D_CLIENT_BOND_STATUS:Ljava/util/UUID;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/16 v0, 0xc

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "SemWifiApSmartD2DGattClient"

    if-eqz p3, :cond_b2

    .line 382
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    if-eqz p2, :cond_77

    .line 383
    array-length p3, p2

    if-lez p3, :cond_77

    aget-byte p3, p2, v2

    if-ne p3, v1, :cond_77

    .line 384
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got bond status:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p2, v2

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/util/LocalLog;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemWifiApSmartD2DGattClient:\tGot bond status:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p2, p2, v2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 386
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_ACCEPT_INVITATION:Ljava/util/UUID;

    invoke-virtual {p2, p0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p0

    .line 387
    invoke-virtual {p1, p0, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 388
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 389
    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto/16 :goto_159

    :cond_77
    const-string p2, "remote device is not bonded"

    .line 391
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/util/LocalLog;

    move-result-object p2

    const-string p3, "SemWifiApSmartD2DGattClient:\tremote device is not bonded"

    invoke-virtual {p2, p3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_95

    const-string p2, "device is not bonded at D2D Client side ,so removing the device"

    .line 395
    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    .line 398
    :cond_95
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    const/4 p2, -0x6

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmD2DClient_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$msetConnectionState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;ILjava/lang/String;)V

    .line 399
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_159

    .line 400
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_159

    .line 403
    :cond_b2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_CLIENT_MAC:Ljava/util/UUID;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_159

    .line 404
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    if-eqz p1, :cond_148

    .line 406
    aget-byte p2, p1, v2

    const-wide/16 v4, 0xfa0

    if-ne p2, v1, :cond_133

    .line 407
    new-instance p2, Ljava/lang/String;

    const/16 p3, 0x11

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v1, p3, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const/16 p3, 0x12

    .line 408
    aget-byte p3, p1, p3

    .line 409
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/16 v6, 0x13

    invoke-direct {v1, p1, v6, p3, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 410
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    add-int/2addr p3, v6

    .line 411
    aget-byte p1, p1, p3

    .line 412
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetDBG(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Z

    move-result p3

    if-eqz p3, :cond_118

    .line 413
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got client devicename and MAC"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",deviceType:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_118
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getInstance()Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    move-result-object p3

    .line 415
    invoke-virtual {p3, p2, v1, p1}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;I)I

    .line 416
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_148

    .line 417
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    move-result-object p1

    const/16 p2, 0xe

    invoke-virtual {p1, p2, v4, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_148

    :cond_133
    if-nez p2, :cond_148

    .line 418
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_148

    .line 419
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    move-result-object p1

    const/16 p2, 0xf

    invoke-virtual {p1, p2, v4, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 423
    :cond_148
    :goto_148
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_159

    .line 424
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->sendEmptyMessage(I)Z

    :cond_159
    :goto_159
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 10

    .line 440
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 441
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCharacteristicWrite:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->lookup(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SemWifiApSmartD2DGattClient"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object p3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_ACCEPT_INVITATION:Ljava/util/UUID;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_eb

    .line 443
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object p3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_FAMILY_ID:Ljava/util/UUID;

    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    const/16 p3, 0x96

    new-array p3, p3, [B

    .line 445
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getFamilyID()Ljava/lang/String;

    move-result-object v2

    .line 446
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    .line 447
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getOwnWifiMac()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_d2

    .line 448
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_75

    goto :goto_d2

    :cond_75
    const-string p0, "sending familyid to client"

    .line 454
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 456
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 457
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 458
    array-length v3, p0

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, p3, v4

    move v3, v4

    .line 459
    :goto_92
    array-length v5, p0

    if-ge v3, v5, :cond_9d

    add-int/lit8 v5, v3, 0x1

    .line 460
    aget-byte v3, p0, v3

    aput-byte v3, p3, v5

    move v3, v5

    goto :goto_92

    .line 462
    :cond_9d
    array-length v3, p0

    add-int/2addr v3, v1

    array-length v1, v0

    int-to-byte v1, v1

    aput-byte v1, p3, v3

    move v1, v4

    .line 463
    :goto_a4
    array-length v3, v0

    if-ge v1, v3, :cond_b2

    add-int/lit8 v3, v1, 0x2

    .line 464
    array-length v5, p0

    add-int/2addr v3, v5

    aget-byte v5, v0, v1

    aput-byte v5, p3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_a4

    .line 466
    :cond_b2
    array-length v1, p0

    add-int/lit8 v1, v1, 0x2

    array-length v3, v0

    add-int/2addr v1, v3

    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, p3, v1

    .line 467
    :goto_bb
    array-length v1, v2

    if-ge v4, v1, :cond_cb

    add-int/lit8 v1, v4, 0x3

    .line 468
    array-length v3, p0

    add-int/2addr v1, v3

    array-length v3, v0

    add-int/2addr v1, v3

    aget-byte v3, v2, v4

    aput-byte v3, p3, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_bb

    .line 470
    :cond_cb
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 471
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_101

    :cond_d2
    :goto_d2
    const-string p1, "family id is null shutting down"

    .line 449
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_ea

    .line 451
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    move-result-object p0

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->sendEmptyMessage(I)Z

    :cond_ea
    return-void

    .line 473
    :cond_eb
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_FAMILY_ID:Ljava/util/UUID;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_101

    .line 475
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fputrequestedToAccept(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Z)V

    :cond_101
    :goto_101
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 7

    .line 309
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 310
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemWifiApSmartD2DGattClient:\tonConnectionStateChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    .line 311
    invoke-virtual {v2, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getStatusDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    .line 312
    invoke-virtual {v2, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getStateDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const-string v0, "SemWifiApSmartD2DGattClient"

    const/4 v1, 0x2

    if-ne p3, v1, :cond_91

    .line 315
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetDBG(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Z

    move-result p2

    if-eqz p2, :cond_6c

    .line 316
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "device,connected"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",mRequestedToConnect:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmRequestedToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_6c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmRequestedToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Z

    move-result p1

    if-eqz p1, :cond_131

    .line 318
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fputmRequestedToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Z)V

    .line 319
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_131

    .line 320
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    move-result-object p0

    const/16 p1, 0x10

    const-wide/16 p2, 0x12c

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_131

    :cond_91
    if-nez p3, :cond_131

    .line 324
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetDBG(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Z

    move-result p3

    if-eqz p3, :cond_b3

    .line 325
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device, disconnected"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    if-eqz p2, :cond_117

    .line 327
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    .line 328
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    iget-object p3, p3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, -0x5

    const/4 v1, 0x3

    if-lt p3, v1, :cond_e5

    .line 330
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmD2DClient_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$msetConnectionState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;ILjava/lang/String;)V

    .line 331
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$mshutdownclient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)V

    goto :goto_131

    :cond_e5
    if-ge p3, v1, :cond_131

    .line 335
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$mshutdownclient_1(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)V

    .line 336
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->refresh()Z

    const-wide/16 v1, 0x3e8

    .line 338
    :try_start_f1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_f4} :catch_f4

    .line 342
    :catch_f4
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p3, p1, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$mtryToConnectToRemoteBLE(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result p1

    if-nez p1, :cond_131

    .line 343
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmD2DClient_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$msetConnectionState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;ILjava/lang/String;)V

    .line 344
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$mshutdownclient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)V

    goto :goto_131

    .line 349
    :cond_117
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    if-eqz p2, :cond_12c

    .line 350
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    iget-object p2, p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_12c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$mshutdownclient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)V

    :cond_131
    :goto_131
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 5

    .line 480
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    const-string p3, "SemWifiApSmartD2DGattClient"

    const-string v0, "MTU changed"

    .line 481
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x200

    if-ne p2, p3, :cond_30

    .line 483
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 484
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    move-result-object p1

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 485
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->removeMessages(I)V

    :cond_30
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 8

    .line 359
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 361
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_c
    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->lookup(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemWifiApSmartD2DGattClient"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 365
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fputmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Landroid/bluetooth/BluetoothGattService;)V

    const/4 v0, 0x1

    .line 367
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_D2D_CLIENT_BOND_STATUS:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_c

    :cond_68
    if-nez v0, :cond_87

    .line 371
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    const/4 p2, -0x8

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmD2DClient_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$msetConnectionState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;ILjava/lang/String;)V

    .line 372
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_87

    .line 373
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;

    move-result-object p0

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->sendEmptyMessage(I)Z

    :cond_87
    return-void
.end method
