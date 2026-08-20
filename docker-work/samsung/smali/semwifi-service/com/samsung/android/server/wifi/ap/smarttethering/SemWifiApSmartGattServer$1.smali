.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;
.super Landroid/bluetooth/BluetoothGattServerCallback;
.source "SemWifiApSmartGattServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)V
    .registers 2

    .line 1060
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattServerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 25

    move-object/from16 v1, p0

    const-string v2, "wificonnected"

    .line 1106
    invoke-super/range {p0 .. p4}, Landroid/bluetooth/BluetoothGattServerCallback;->onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCharacteristicReadRequest:: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v3

    .line 1108
    invoke-virtual/range {p4 .. p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->lookup(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SemWifiApSmartGattServer"

    .line 1107
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_D2D_CLIENT_BOND_STATUS:Ljava/util/UUID;

    invoke-virtual/range {p4 .. p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "Sent bond status "

    const/16 v5, 0xa

    const/16 v6, 0xc

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_74

    new-array v0, v5, [B

    aput-byte v8, v0, v8

    .line 1112
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    if-ne v2, v6, :cond_50

    aput-byte v7, v0, v8

    .line 1115
    :cond_50
    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v9, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object v14, v0

    invoke-virtual/range {v9 .. v14}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    .line 1120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, v0, v8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9e9

    .line 1121
    :cond_74
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_CLIENT_MAC:Ljava/util/UUID;

    invoke-virtual/range {p4 .. p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10b

    const/16 v0, 0x96

    new-array v14, v0, [B

    .line 1123
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    if-ne v0, v6, :cond_fc

    .line 1124
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1125
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getOwnWifiMac()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    aput-byte v8, v14, v8

    .line 1127
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisWaitingForAcceptStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v4

    if-nez v4, :cond_bb

    aput-byte v7, v14, v8

    :cond_bb
    move v4, v8

    .line 1129
    :goto_bc
    array-length v5, v2

    if-ge v4, v5, :cond_c7

    add-int/lit8 v5, v4, 0x1

    .line 1130
    aget-byte v4, v2, v4

    aput-byte v4, v14, v5

    move v4, v5

    goto :goto_bc

    .line 1132
    :cond_c7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device length:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    array-length v2, v0

    int-to-byte v2, v2

    const/16 v3, 0x12

    aput-byte v2, v14, v3

    :goto_e2
    const/16 v2, 0x22

    if-ge v8, v2, :cond_f2

    .line 1134
    array-length v2, v0

    if-ge v8, v2, :cond_f2

    add-int/lit8 v2, v8, 0x13

    .line 1135
    aget-byte v4, v0, v8

    aput-byte v4, v14, v2

    add-int/lit8 v8, v8, 0x1

    goto :goto_e2

    .line 1137
    :cond_f2
    array-length v0, v0

    add-int/2addr v0, v3

    add-int/2addr v0, v7

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isTablet()Z

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v14, v0

    .line 1139
    :cond_fc
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, p1

    move/from16 v11, p2

    invoke-virtual/range {v9 .. v14}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    goto/16 :goto_9e9

    .line 1144
    :cond_10b
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_SIDE_GET_TIME:Ljava/util/UUID;

    invoke-virtual/range {p4 .. p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v9, ""

    if-eqz v0, :cond_1a4

    .line 1145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_131

    .line 1148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1150
    :cond_131
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SemWifiApSmartGattServer:\tsystem time is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_17a

    .line 1152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1153
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 1154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sending mhs time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17a
    move-object v10, v2

    .line 1156
    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v5 .. v10}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    .line 1161
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$sfgetMHSDBG()Z

    move-result v1

    if-eqz v1, :cond_9e9

    .line 1162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sent mhs time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9e9

    .line 1163
    :cond_1a4
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_BOND_STATUS:Ljava/util/UUID;

    invoke-virtual/range {p4 .. p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_204

    new-array v0, v5, [B

    aput-byte v8, v0, v8

    .line 1166
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    if-ne v2, v6, :cond_1e0

    aput-byte v7, v0, v8

    .line 1168
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v2

    if-eqz v2, :cond_1e0

    .line 1169
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/4 v5, 0x6

    .line 1170
    iput v5, v2, Landroid/os/Message;->what:I

    .line 1171
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1172
    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1175
    :cond_1e0
    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v10, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object v15, v0

    invoke-virtual/range {v10 .. v15}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    .line 1180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, v0, v8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9e9

    .line 1181
    :cond_204
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_GET_WIFI_CONNECTION_DETAILS:Ljava/util/UUID;

    invoke-virtual/range {p4 .. p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v4, 0xd

    const-string v5, " Encryption can\'t be null"

    const-string v10, "Using AES:"

    const/16 v11, 0xc8

    const/4 v12, -0x1

    if-nez v0, :cond_80f

    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_GET_WIFI_CONNECTION_PASSWORD_DETAILS:Ljava/util/UUID;

    .line 1182
    invoke-virtual/range {p4 .. p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_227

    goto/16 :goto_80f

    .line 1267
    :cond_227
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_AUTH_STATUS:Ljava/util/UUID;

    invoke-virtual/range {p4 .. p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a8

    .line 1268
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getlegacySSID()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/lang/String;)V

    .line 1269
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getlegacyPassword()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmPassword(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/lang/String;)V

    new-array v0, v11, [B

    .line 1271
    invoke-static {v0, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 1272
    iget-object v9, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v11, v9, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mClientConnections:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;

    iget v11, v11, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;->mVersion:I

    invoke-static {v9, v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmVersion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    .line 1273
    iget-object v9, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v11, v9, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mClientConnections:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;

    iget v11, v11, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;->mUserType:I

    invoke-static {v9, v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmUserType(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    .line 1274
    iget-object v9, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v9, v9, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mClientConnections:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;

    iget-object v9, v9, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;->mAESKey:Ljava/lang/String;

    .line 1275
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v11

    if-eq v11, v6, :cond_2c0

    .line 1276
    iget-object v6, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmVersion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v6

    iget-object v12, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    if-ne v6, v7, :cond_2ae

    iget-object v6, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmUserType(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v6

    iget-object v12, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    if-ne v6, v7, :cond_2ae

    goto :goto_2c0

    :cond_2ae
    const-string v2, "client device is not bonded"

    .line 1344
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v2

    const-string v4, "SemWifiApSmartGattServer:\tclient device is not bonded"

    invoke-virtual {v2, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_4f2

    .line 1277
    :cond_2c0
    :goto_2c0
    iget-object v6, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mAuthDevices:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v8

    const-string v12, "mWifiMAC:"

    const/16 v13, 0x9

    if-ne v6, v7, :cond_4ba

    .line 1280
    iget-object v6, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2f1

    .line 1281
    iget-object v6, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v6

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    goto :goto_2f2

    :cond_2f1
    move v6, v8

    .line 1283
    :goto_2f2
    iget-object v14, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v14}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_308

    .line 1284
    iget-object v14, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v14}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    array-length v14, v14

    goto :goto_309

    :cond_308
    move v14, v8

    .line 1285
    :goto_309
    iget-object v15, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getOwnWifiMac()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1286
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v13, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    move v13, v8

    .line 1288
    :goto_334
    array-length v15, v12

    if-ge v13, v15, :cond_343

    add-int/lit8 v15, v6, 0x3

    add-int/2addr v15, v14

    add-int/2addr v15, v7

    add-int/2addr v15, v13

    .line 1289
    aget-byte v16, v12, v13

    aput-byte v16, v0, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_334

    :cond_343
    int-to-byte v12, v6

    aput-byte v12, v0, v7

    move v12, v8

    :goto_347
    if-ge v12, v6, :cond_35e

    add-int/lit8 v13, v12, 0x2

    .line 1293
    iget-object v15, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v15

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v15, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    aget-byte v2, v2, v12

    aput-byte v2, v0, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_347

    :cond_35e
    add-int/lit8 v2, v6, 0x2

    int-to-byte v12, v14

    .line 1295
    aput-byte v12, v0, v2

    move v2, v8

    :goto_364
    if-ge v2, v14, :cond_37c

    add-int/lit8 v12, v2, 0x3

    add-int/2addr v12, v6

    .line 1297
    iget-object v13, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v13

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v13, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v13

    aget-byte v13, v13, v2

    aput-byte v13, v0, v12

    add-int/lit8 v2, v2, 0x1

    goto :goto_364

    :cond_37c
    const/4 v2, 0x3

    add-int/2addr v6, v2

    add-int/2addr v6, v14

    .line 1299
    aput-byte v8, v0, v6

    .line 1300
    iget-object v12, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result v12

    .line 1301
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isNeededSecurityWpa2 :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v14}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisNeededSecurityWpa2(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v12, v4, :cond_471

    .line 1303
    aput-byte v7, v0, v6

    .line 1304
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v4

    const-string v12, "SAE_SECURITY"

    invoke-virtual {v4, v12}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1305
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hostapd security:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-object v12, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisNeededSecurityWpa2(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v12

    if-eqz v12, :cond_3e1

    if-eqz v4, :cond_3e1

    const-string v2, "WPA2/3 or WPA3 are set but due to unknown client\'s security type, send WPA2"

    .line 1307
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x8

    .line 1308
    aput-byte v8, v0, v6

    goto/16 :goto_4f2

    :cond_3e1
    if-eqz v4, :cond_3f7

    const-string v12, "1"

    .line 1309
    invoke-virtual {v4, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3f7

    const-string v2, "MHS already enabled in WPA2"

    .line 1310
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x8

    .line 1311
    aput-byte v8, v0, v6

    goto/16 :goto_4f2

    :cond_3f7
    if-eqz v4, :cond_40d

    const-string v12, "3"

    .line 1312
    invoke-virtual {v4, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_40d

    const-string v2, "MHS already enabled in WPA3"

    .line 1313
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x8

    .line 1314
    aput-byte v7, v0, v6

    goto/16 :goto_4f2

    :cond_40d
    if-eqz v4, :cond_424

    const-string v12, "2"

    .line 1315
    invoke-virtual {v4, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_424

    const-string v2, "MHS already enabled in WPA3 transition"

    .line 1316
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x8

    const/4 v2, 0x2

    .line 1317
    aput-byte v2, v0, v6

    goto/16 :goto_4f2

    :cond_424
    if-eqz v4, :cond_43a

    const-string v12, "4"

    .line 1318
    invoke-virtual {v4, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43a

    const-string v4, "MHS already enabled in OWE"

    .line 1319
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x8

    .line 1320
    aput-byte v2, v0, v6

    goto/16 :goto_4f2

    .line 1323
    :cond_43a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MHS is already enabled,sending security:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v4

    iget-object v12, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v12, v12, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v4, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSecurityType(Landroid/net/wifi/SoftApConfiguration;)B

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x8

    .line 1324
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v4, v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSecurityType(Landroid/net/wifi/SoftApConfiguration;)B

    move-result v2

    aput-byte v2, v0, v6

    goto/16 :goto_4f2

    .line 1327
    :cond_471
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisNeededSecurityWpa2(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v2

    if-eqz v2, :cond_484

    const-string v2, "WPA2/3 or WPA3 are set but due to unknown client\'s security type, send WPA2"

    .line 1328
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x8

    .line 1329
    aput-byte v8, v0, v6

    goto :goto_4f2

    .line 1331
    :cond_484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MHS is not enabled,sending security:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v4

    iget-object v12, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v12, v12, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v4, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSecurityType(Landroid/net/wifi/SoftApConfiguration;)B

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x8

    .line 1332
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v4, v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSecurityType(Landroid/net/wifi/SoftApConfiguration;)B

    move-result v2

    aput-byte v2, v0, v6

    goto :goto_4f2

    :cond_4ba
    if-nez v6, :cond_4f2

    .line 1336
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getOwnWifiMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1337
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    move v4, v8

    .line 1339
    :goto_4e7
    array-length v6, v2

    if-ge v4, v6, :cond_4f2

    add-int/lit8 v6, v4, 0x1

    .line 1340
    aget-byte v4, v2, v4

    aput-byte v4, v0, v6

    move v4, v6

    goto :goto_4e7

    .line 1347
    :cond_4f2
    :goto_4f2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sent Auth status "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, v0, v8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mVersion:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmVersion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mUserType:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmUserType(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",bonded_state:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SemWifiApSmartGattServer:\tSent Auth status "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v8, v0, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1349
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmVersion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v2

    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    if-ne v2, v7, :cond_598

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmUserType(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v2

    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    if-ne v2, v7, :cond_598

    .line 1350
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$sfgetMHSDBG()Z

    move-result v2

    if-eqz v2, :cond_580

    .line 1351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :cond_580
    new-instance v2, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v2, v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/AES;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_593

    .line 1354
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :cond_593
    if-nez v0, :cond_598

    .line 1357
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_598
    move-object v11, v0

    .line 1359
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {v6 .. v11}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    goto/16 :goto_9e9

    .line 1365
    :cond_5a8
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_STATUS_UUID:Ljava/util/UUID;

    invoke-virtual/range {p4 .. p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e9

    const/16 v0, 0x32

    new-array v0, v0, [B

    aput-byte v8, v0, v8

    .line 1370
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v4, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mClientConnections:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;

    iget v4, v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;->mVersion:I

    invoke-static {v2, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmVersion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    .line 1371
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v4, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mClientConnections:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;

    iget v4, v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;->mUserType:I

    invoke-static {v2, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmUserType(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    .line 1372
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mClientConnections:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;->mAESKey:Ljava/lang/String;

    .line 1373
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    if-eq v2, v6, :cond_615

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmVersion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v2

    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    if-ne v2, v7, :cond_7aa

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmUserType(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v2

    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    if-ne v2, v7, :cond_7aa

    .line 1374
    :cond_615
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisMHSEnabledViaIntent(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v2

    if-eqz v2, :cond_7aa

    aput-byte v7, v0, v8

    .line 1380
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v2

    const-string v4, "GET_FREQ"

    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1382
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hapd_freq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :try_start_641
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_66d

    const-string v4, " "

    .line 1387
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1388
    array-length v4, v2

    if-le v4, v7, :cond_665

    .line 1389
    aget-object v4, v2, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1390
    aget-object v2, v2, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v4, v2, :cond_65f

    goto :goto_66f

    :cond_65f
    move/from16 v19, v4

    move v4, v2

    move/from16 v2, v19

    goto :goto_66f

    .line 1399
    :cond_665
    aget-object v2, v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_66b
    .catch Ljava/lang/Exception; {:try_start_641 .. :try_end_66b} :catch_66d

    move v2, v12

    goto :goto_66f

    :catch_66d
    :cond_66d
    move v2, v12

    move v4, v2

    .line 1405
    :goto_66f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "max_hapd_freq:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",min_hapd_freq:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_696

    goto :goto_6aa

    .line 1408
    :cond_696
    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v5

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-eqz v5, :cond_6a5

    const/16 v5, 0x170c

    if-le v4, v5, :cond_6aa

    goto :goto_6ab

    :cond_6a5
    const/16 v5, 0x1388

    if-le v4, v5, :cond_6aa

    goto :goto_6ab

    :cond_6aa
    :goto_6aa
    move v2, v4

    :goto_6ab
    if-gez v2, :cond_6ae

    goto :goto_6e9

    :cond_6ae
    const/16 v4, 0x16c2

    if-ge v2, v4, :cond_6e8

    .line 1425
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2.4G or 5G mhs is being used mhsChannel  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x9b4

    if-ge v2, v4, :cond_6d1

    add-int/lit16 v2, v2, -0x96c

    .line 1427
    div-int/lit8 v2, v2, 0x5

    add-int/lit8 v12, v2, 0x1

    goto :goto_6e9

    .line 1429
    :cond_6d1
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetm5GChannelMap(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_6e9

    .line 1432
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_6e9

    :cond_6e8
    move v12, v2

    .line 1436
    :cond_6e9
    :goto_6e9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "final mhs channel value is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v12, v7, :cond_727

    .line 1439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1440
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    int-to-byte v5, v4

    aput-byte v5, v0, v7

    move v5, v8

    :goto_716
    if-ge v5, v4, :cond_72a

    add-int/lit8 v6, v5, 0x2

    .line 1443
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    aget-byte v9, v9, v5

    aput-byte v9, v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_716

    :cond_727
    aput-byte v8, v0, v7

    move v4, v8

    .line 1448
    :cond_72a
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getOwnWifiMac()Ljava/lang/String;

    move-result-object v2

    .line 1449
    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getMHSMacFromInterface()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_745

    .line 1453
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_746

    :cond_745
    move v6, v8

    :goto_746
    if-eqz v2, :cond_74d

    .line 1455
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    goto :goto_74e

    :cond_74d
    move v9, v8

    :goto_74e
    add-int/lit8 v10, v4, 0x2

    int-to-byte v11, v9

    .line 1456
    aput-byte v11, v0, v10

    move v11, v8

    :goto_754
    if-ge v11, v9, :cond_766

    add-int/lit8 v13, v10, 0x1

    add-int/2addr v13, v11

    .line 1458
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    aget-byte v14, v14, v11

    aput-byte v14, v0, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_754

    :cond_766
    add-int/lit8 v2, v4, 0x3

    add-int/2addr v2, v9

    int-to-byte v10, v6

    .line 1461
    aput-byte v10, v0, v2

    move v2, v8

    :goto_76d
    if-ge v2, v6, :cond_780

    add-int/lit8 v10, v9, 0x4

    add-int/2addr v10, v4

    add-int/2addr v10, v2

    .line 1463
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    aget-byte v11, v11, v2

    aput-byte v11, v0, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_76d

    .line 1465
    :cond_780
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmUserType(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v2

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    if-ne v2, v7, :cond_7a8

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    move-result v2

    if-eqz v2, :cond_7a8

    const-string v2, "isAdvancedAutohotspotSupported is true"

    .line 1466
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v9, v9, 0x4

    add-int/2addr v9, v4

    add-int/2addr v9, v6

    const/4 v2, 0x2

    .line 1467
    aput-byte v2, v0, v9

    goto :goto_7ac

    :cond_7a8
    move v2, v8

    goto :goto_7ac

    :cond_7aa
    move v2, v8

    move v12, v2

    .line 1472
    :goto_7ac
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v13, v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v18, v0

    invoke-virtual/range {v13 .. v18}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    .line 1477
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sent MHS status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v5, v0, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mhsChannel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",isAdvAHSupported:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemWifiApSmartGattServer:\tSent MHS status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, v0, v8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",isAdvAHSupported"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_9e9

    .line 1184
    :cond_80f
    :goto_80f
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_GET_WIFI_CONNECTION_PASSWORD_DETAILS:Ljava/util/UUID;

    invoke-virtual/range {p4 .. p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    new-array v0, v11, [B

    .line 1188
    invoke-static {v0, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 1189
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mClientConnections:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;

    iget v9, v9, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;->mVersion:I

    invoke-static {v0, v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmVersion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    .line 1190
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mClientConnections:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;

    iget v9, v9, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;->mUserType:I

    invoke-static {v0, v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmUserType(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    .line 1191
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mClientConnections:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;

    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;->mAESKey:Ljava/lang/String;

    .line 1192
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 1194
    :try_start_859
    invoke-virtual {v11, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_85c
    .catch Lorg/json/JSONException; {:try_start_859 .. :try_end_85c} :catch_85d

    goto :goto_862

    :catch_85d
    move-exception v0

    move-object v8, v0

    .line 1196
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 1198
    :goto_862
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmUserType(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v0

    iget-object v8, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    if-ne v0, v7, :cond_968

    .line 1199
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$misWifihasInternet(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v0

    if-eqz v0, :cond_965

    .line 1200
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftapUtils()Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;

    move-result-object v0

    const-string v8, "Wi-Fi is connected"

    .line 1201
    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object v8, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    if-eqz v8, :cond_965

    .line 1204
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v13

    .line 1205
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v14

    invoke-virtual {v14, v8}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    .line 1206
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "networkId:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_8bb

    const-string v4, "config is not null"

    .line 1207
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8bb
    if-eq v13, v12, :cond_965

    if-eqz v14, :cond_965

    .line 1208
    invoke-virtual {v0, v14}, Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;->isAvailableToShareConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_965

    .line 1209
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    .line 1210
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v12

    .line 1211
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    move-result v13

    .line 1212
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getHiddenSSID()Z

    move-result v15

    .line 1224
    invoke-virtual {v0, v14}, Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;->getStaPassword(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    .line 1225
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v14

    .line 1226
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$sfgetMHSDBG()Z

    move-result v16

    if-eqz v16, :cond_92e

    .line 1227
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v5

    const-string v5, "Wi-Fi SSID:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " bssid:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",hidden:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",securityType:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " preSharedKey:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",freq:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",RSSI:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_930

    :cond_92e
    move-object/from16 v17, v5

    :goto_930
    const/4 v5, 0x1

    .line 1230
    :try_start_931
    invoke-virtual {v11, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "wifissid"

    .line 1231
    invoke-virtual {v11, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "wifisecurity"

    .line 1232
    invoke-virtual {v11, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "wififreq"

    .line 1233
    invoke-virtual {v11, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "bssid"

    .line 1234
    invoke-virtual {v11, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ishidden"

    .line 1235
    invoke-virtual {v11, v2, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz v6, :cond_984

    const-string v2, "presharedkey"

    .line 1237
    invoke-virtual {v11, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1238
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->sendEmptyMessage(I)Z
    :try_end_95f
    .catch Lorg/json/JSONException; {:try_start_931 .. :try_end_95f} :catch_960

    goto :goto_984

    :catch_960
    move-exception v0

    .line 1241
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_984

    :cond_965
    move-object/from16 v17, v5

    goto :goto_984

    :cond_968
    move-object/from16 v17, v5

    .line 1247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usertype:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmUserType(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :cond_984
    :goto_984
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1250
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmVersion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v2

    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    const/4 v4, 0x1

    if-ne v2, v4, :cond_9db

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmUserType(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v2

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    if-ne v2, v4, :cond_9db

    .line 1251
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$sfgetMHSDBG()Z

    move-result v2

    if-eqz v2, :cond_9c1

    .line 1252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_9c1
    new-instance v2, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v2, v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/AES;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9d4

    .line 1255
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :cond_9d4
    if-nez v0, :cond_9db

    move-object/from16 v2, v17

    .line 1258
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9db
    move-object v9, v0

    .line 1261
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v4 .. v9}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    :cond_9e9
    :goto_9e9
    return-void
.end method

.method public onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v5, p7

    .line 1487
    invoke-super/range {p0 .. p7}, Landroid/bluetooth/BluetoothGattServerCallback;->onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V

    .line 1489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicWriteRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->lookup(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifiApSmartGattServer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_FAMILY_ID:Ljava/util/UUID;

    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x3

    const/16 v4, 0xc

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1659
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v1, :cond_2a3

    .line 1492
    array-length v1, v5

    if-nez v1, :cond_4b

    move v10, v9

    goto :goto_4c

    :cond_4b
    move v10, v8

    :goto_4c
    if-eqz v10, :cond_51

    .line 1499
    aget-byte v11, v5, v9

    goto :goto_52

    :cond_51
    move v11, v9

    :goto_52
    if-eqz v10, :cond_59

    add-int/lit8 v12, v11, 0x2

    if-ge v1, v12, :cond_59

    move v10, v9

    :cond_59
    if-eqz v10, :cond_60

    add-int/lit8 v12, v11, 0x1

    .line 1504
    aget-byte v12, v5, v12

    goto :goto_61

    :cond_60
    move v12, v9

    :goto_61
    const/16 v13, 0x11

    if-eqz v10, :cond_6b

    add-int/2addr v11, v12

    add-int/2addr v11, v13

    add-int/2addr v11, v7

    if-ge v1, v11, :cond_6b

    move v10, v9

    .line 1509
    :cond_6b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "family ID valid:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ",rValueLength:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",rDeviceNamelength:"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v4, :cond_292

    if-eqz v10, :cond_292

    .line 1511
    new-instance v1, Ljava/lang/String;

    aget-byte v4, v5, v9

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v5, v8, v4, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1512
    new-instance v4, Ljava/lang/String;

    aget-byte v7, v5, v9

    add-int/lit8 v10, v7, 0x2

    add-int/2addr v7, v8

    aget-byte v7, v5, v7

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v10, v7, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1513
    new-instance v7, Ljava/lang/String;

    aget-byte v10, v5, v9

    add-int/lit8 v11, v10, 0x1

    aget-byte v11, v5, v11

    add-int/2addr v10, v11

    add-int/2addr v10, v3

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v5, v10, v13, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1514
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->generateHashKey(Ljava/lang/String;)J

    move-result-wide v10

    .line 1515
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 1517
    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getD2DWifiMac()Ljava/lang/String;

    move-result-object v7

    .line 1518
    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v12, v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisWaitingForAcceptStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 1519
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const-string v13, "\n"

    const/16 v14, 0x9

    if-nez v12, :cond_f4

    .line 1520
    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1521
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 1523
    :cond_f4
    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getD2DFamilyID()Ljava/lang/String;

    move-result-object v12

    .line 1524
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1526
    :try_start_102
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    move-result v6

    if-eqz v6, :cond_125

    const-string v1, " device logged in with samsung account, so D2DFamilyID will not be saved"

    .line 1527
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v1

    const-string v2, "SemWifiApSmartGattServer\t:device logged in with samsung account, so D2DFamilyID will not be saved "

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1529
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1, v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisWaitingForAcceptStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    goto/16 :goto_257

    :cond_125
    if-eqz v12, :cond_1e4

    .line 1531
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_12f

    goto/16 :goto_1e4

    :cond_12f
    if-nez v9, :cond_185

    .line 1550
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_185

    if-nez v7, :cond_13e

    .line 1552
    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_154

    .line 1555
    :cond_13e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1557
    :goto_154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "added D2D AutoHotspot MAC2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->putD2DWifiMac(Ljava/lang/String;)V

    .line 1559
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_257

    .line 1560
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_257

    .line 1564
    :cond_185
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d1

    .line 1565
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.android.settings"

    const-string v9, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    .line 1566
    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x10000000

    .line 1567
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v7, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    .line 1568
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "wifiap_warning_dialog_type"

    const/16 v9, 0x2b

    .line 1569
    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "mD2DFamilyID"

    .line 1570
    invoke-virtual {v6, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mD2DDeviceName"

    .line 1571
    invoke-virtual {v6, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mD2DHashFamily"

    .line 1572
    invoke-virtual {v6, v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "mD2DDeviceWiFiMAC"

    .line 1573
    invoke-virtual {v6, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1574
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v1, "D2D Family dialog"

    .line 1575
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1, v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisWaitingForAcceptStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    goto/16 :goto_257

    .line 1577
    :cond_1d1
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_257

    .line 1578
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->sendEmptyMessage(I)Z

    goto :goto_257

    .line 1532
    :cond_1e4
    :goto_1e4
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->putD2DFamilyID(Ljava/lang/String;)V

    .line 1533
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->putHashbasedonD2DFamilyid(J)V

    .line 1534
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.samsung.android.server.wifi.softap.smarttethering.d2dfamilyid"

    .line 1535
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1536
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1537
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_21b

    .line 1538
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v1

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->sendEmptyMessage(I)Z

    :cond_21b
    if-nez v9, :cond_257

    if-nez v7, :cond_224

    .line 1541
    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_23a

    .line 1544
    :cond_224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1546
    :goto_23a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "added D2D AutoHotspot MAC1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->putD2DWifiMac(Ljava/lang/String;)V
    :try_end_257
    .catchall {:try_start_102 .. :try_end_257} :catchall_28d

    .line 1581
    :cond_257
    :goto_257
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1583
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisWaitingForAcceptStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    move-result v1

    if-eqz v1, :cond_277

    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_277

    .line 1584
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v1

    const/4 v2, 0x7

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_292

    .line 1585
    :cond_277
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v1

    if-eqz v1, :cond_292

    .line 1586
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v1

    const/16 v2, 0x8

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_292

    :catchall_28d
    move-exception v0

    .line 1581
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1582
    throw v0

    .line 1595
    :cond_292
    :goto_292
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    goto/16 :goto_a80

    .line 1600
    :cond_2a3
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_VER_UPDATE:Ljava/util/UUID;

    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_307

    .line 1601
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mClientConnections:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;

    aget-byte v2, v5, v9

    iput v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;->mVersion:I

    .line 1602
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mClientConnections:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;

    aget-byte v2, v5, v8

    iput v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;->mUserType:I

    .line 1603
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mClientConnections:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAESKey(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;->mAESKey:Ljava/lang/String;

    .line 1604
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    goto/16 :goto_a80

    .line 1609
    :cond_307
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_ENCRYPTED_AUTH_ID:Ljava/util/UUID;

    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3b

    const/4 v1, 0x0

    .line 1611
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v11, v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mClientConnections:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;

    iget v11, v11, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;->mVersion:I

    invoke-static {v6, v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmVersion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    .line 1612
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v11, v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mClientConnections:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;

    iget v11, v11, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;->mUserType:I

    invoke-static {v6, v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmUserType(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    .line 1613
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mClientConnections:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;->mAESKey:Ljava/lang/String;

    .line 1614
    iget-object v11, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmVersion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v11

    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    if-ne v11, v8, :cond_3ab

    iget-object v11, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmUserType(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v11

    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    if-ne v11, v8, :cond_3ab

    .line 1615
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Using AES:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    iget-object v11, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v11

    if-eqz v11, :cond_390

    .line 1617
    iget-object v11, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v11

    const-wide/16 v12, 0x3a98

    invoke-virtual {v11, v4, v12, v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1619
    :cond_390
    new-instance v11, Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v5, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v11, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/AES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3a3

    .line 1621
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    :cond_3a3
    if-nez v1, :cond_3ac

    const-string v5, " decryption can\'t be null. AES key is not matched between hotspot and client"

    .line 1624
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3ac

    :cond_3ab
    move-object v1, v5

    :cond_3ac
    :goto_3ac
    if-eqz v1, :cond_3b0

    .line 1629
    array-length v5, v1

    goto :goto_3b1

    :cond_3b0
    move v5, v9

    :goto_3b1
    const/4 v6, 0x4

    if-ge v5, v6, :cond_3b6

    move v6, v9

    goto :goto_3b7

    :cond_3b6
    move v6, v8

    :goto_3b7
    if-eqz v6, :cond_3bc

    .line 1638
    aget-byte v11, v1, v8

    goto :goto_3bd

    :cond_3bc
    move v11, v9

    :goto_3bd
    if-eqz v6, :cond_3c4

    add-int/lit8 v12, v11, 0x3

    if-ge v5, v12, :cond_3c4

    move v6, v9

    :cond_3c4
    if-eqz v6, :cond_3cb

    add-int/lit8 v12, v11, 0x2

    .line 1644
    aget-byte v12, v1, v12

    goto :goto_3cc

    :cond_3cb
    move v12, v9

    :goto_3cc
    if-eqz v6, :cond_3d5

    add-int v13, v12, v11

    const/4 v14, 0x4

    add-int/2addr v13, v14

    if-ge v5, v13, :cond_3d5

    move v6, v9

    :cond_3d5
    if-eqz v6, :cond_3de

    add-int/lit8 v13, v11, 0x2

    add-int/2addr v13, v8

    add-int/2addr v13, v12

    .line 1650
    aget-byte v13, v1, v13

    goto :goto_3df

    :cond_3de
    move v13, v9

    :goto_3df
    if-eqz v6, :cond_3e8

    add-int/2addr v12, v11

    const/4 v11, 0x4

    add-int/2addr v12, v11

    add-int/2addr v12, v13

    if-ge v5, v12, :cond_3e8

    move v6, v9

    .line 1655
    :cond_3e8
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v11, "wifi_ap_smart_tethering_settings"

    invoke-static {v5, v11, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_416

    .line 1657
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v5

    const-string v6, "SemWifiApSmartGattServer:\tAutoHotspot switch is OFF, so making auth 0"

    invoke-virtual {v5, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const-string v5, "AutoHotspot switch is OFF, so making auth 0"

    .line 1658
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mAuthDevices:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v9

    .line 1662
    :cond_416
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AuthID valid:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5

    if-eq v5, v4, :cond_44a

    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmVersion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v4

    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    if-ne v4, v8, :cond_9df

    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmUserType(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v4

    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    if-ne v4, v8, :cond_9df

    :cond_44a
    if-eqz v6, :cond_9df

    .line 1664
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    aget-byte v5, v1, v9

    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmUsertype(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    .line 1665
    aget-byte v4, v1, v8

    .line 1666
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1, v7, v4}, Ljava/lang/String;-><init>([BII)V

    .line 1667
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mAuthDevices:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v4, v7

    .line 1668
    aget-byte v6, v1, v4

    add-int/2addr v4, v8

    add-int/2addr v4, v6

    .line 1669
    aget-byte v6, v1, v4

    .line 1670
    new-instance v11, Ljava/lang/String;

    add-int/2addr v4, v8

    invoke-direct {v11, v1, v4, v6}, Ljava/lang/String;-><init>([BII)V

    .line 1671
    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmUsertype(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v12

    iget-object v13, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    const-string v13, "temp[tmp_int] "

    const-string v14, ",mGetOWESecurityFromClient:"

    const-string v15, ",mGetSecurityFromClient:"

    const-string v3, ",mGetBandFromClient:"

    if-ne v12, v8, :cond_625

    .line 1672
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getGuid()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmGuid(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/lang/String;)V

    add-int/2addr v4, v6

    .line 1674
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGuid(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4f6

    .line 1675
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mAuthDevices:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGuid(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    add-int/lit8 v10, v4, 0x1

    add-int/2addr v10, v8

    add-int/2addr v10, v8

    aget-byte v10, v1, v10

    invoke-static {v6, v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmGetWifiProfileShare(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    .line 1677
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetWifiProfileShare(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v6

    if-nez v6, :cond_4f6

    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mAuthDevices:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_4f6

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    move-result v6

    if-eqz v6, :cond_4f6

    .line 1678
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotMHSLcdOnOff()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;->setAutoHotspotClientHistory(Ljava/lang/String;)V

    .line 1681
    :cond_4f6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v10, v1, v4

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    aget-byte v6, v1, v4

    if-eqz v6, :cond_513

    .line 1683
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v10, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    :cond_513
    add-int/2addr v4, v8

    .line 1685
    aget-byte v6, v1, v4

    if-eqz v6, :cond_51d

    .line 1686
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v10, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmGetSecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    :cond_51d
    add-int/2addr v4, v8

    .line 1688
    aget-byte v4, v1, v4

    if-eqz v4, :cond_527

    .line 1689
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v6, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmGetOWESecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    .line 1691
    :cond_527
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SemWifiApSmartGattServer:\t same user ,mGetWifiProfileShare,"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetWifiProfileShare(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",device:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v11

    .line 1692
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",mGuid:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v12

    iget-object v13, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGuid(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->hideString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ",Remote mGuid:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v13

    .line 1693
    invoke-virtual {v13, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->hideString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetSecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetOWESecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1691
    invoke-virtual {v4, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1695
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAME_User,mGetWifiProfileShare,"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetWifiProfileShare(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v6

    .line 1696
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v6

    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGuid(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->hideString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v6

    .line 1697
    invoke-virtual {v6, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->hideString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetSecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetOWESecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1695
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_964

    .line 1699
    :cond_625
    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmUsertype(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v12

    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    const-string v9, "wifi_ap_smart_tethering_settings_with_family"

    const-string v8, ",Remote family id:"

    move-object/from16 p3, v11

    const-string v11, ",mFamilyID:"

    move-object/from16 v17, v10

    const-string v10, "Family:"

    if-ne v12, v7, :cond_7ad

    .line 1700
    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getFamilyID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmFamilyID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/lang/String;)V

    add-int/2addr v4, v6

    .line 1701
    aget-byte v6, v1, v4

    .line 1702
    new-instance v7, Ljava/lang/String;

    const/4 v12, 0x1

    add-int/2addr v4, v12

    invoke-direct {v7, v1, v4, v6}, Ljava/lang/String;-><init>([BII)V

    add-int/2addr v4, v6

    .line 1704
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v13, v1, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    aget-byte v12, v1, v4

    if-eqz v12, :cond_673

    .line 1706
    iget-object v13, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v13, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    :cond_673
    const/4 v12, 0x1

    add-int/2addr v4, v12

    .line 1708
    aget-byte v13, v1, v4

    if-eqz v13, :cond_67f

    .line 1709
    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v12, v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    const/4 v12, 0x1

    :cond_67f
    add-int/2addr v4, v12

    .line 1711
    aget-byte v4, v1, v4

    if-eqz v4, :cond_689

    .line 1712
    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v12, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmGetOWESecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    .line 1714
    :cond_689
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mRemoteGuidLength:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->hideString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetSecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetOWESecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmFamilyID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_705

    .line 1718
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v4, v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mAuthDevices:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmFamilyID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6fd

    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->validateGuidInFamilyUsers(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6fd

    const/4 v7, 0x1

    goto :goto_6fe

    :cond_6fd
    const/4 v7, 0x0

    :goto_6fe
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    :cond_705
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v4, v9, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1720
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SemWifiApSmartGattServer:\t same family   device:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmFamilyID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v10

    .line 1721
    invoke-virtual {v9, v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->hideString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v8

    .line 1722
    invoke-virtual {v8, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->hideString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetSecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetOWESecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1720
    invoke-virtual {v6, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-nez v4, :cond_964

    .line 1725
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v3

    const-string v4, "SemWifiApSmartGattServer:\tfamily is not supported, so making auth 0"

    invoke-virtual {v3, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const-string v3, "family is not supported, so making auth 0"

    .line 1726
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mAuthDevices:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v7, v17

    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_964

    :cond_7ad
    move-object/from16 v7, v17

    .line 1729
    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmUsertype(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v12

    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    const/4 v7, 0x3

    if-ne v12, v7, :cond_964

    .line 1730
    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getFamilyID()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmFamilyID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/lang/String;)V

    .line 1732
    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmFamilyID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7dd

    .line 1733
    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmFamilyID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_7de

    :cond_7dd
    const/4 v7, 0x0

    .line 1734
    :goto_7de
    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v12

    move-object/from16 p4, v14

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->verifyInSmartApWhiteList(Ljava/lang/String;)Z

    move-result v12

    .line 1735
    iget-object v14, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v14}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmFamilyID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_80f

    .line 1736
    iget-object v14, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v14, v14, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mAuthDevices:Ljava/util/HashMap;

    move-object/from16 p3, v15

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    if-eqz v12, :cond_806

    if-eqz v7, :cond_806

    const/4 v7, 0x1

    goto :goto_807

    :cond_806
    const/4 v7, 0x0

    :goto_807
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v14, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_811

    :cond_80f
    move-object/from16 p3, v15

    .line 1737
    :goto_811
    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v14, 0x0

    invoke-static {v7, v9, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    add-int/2addr v4, v6

    .line 1739
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v9, v1, v4

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    aget-byte v6, v1, v4

    if-eqz v6, :cond_83e

    .line 1741
    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v9, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    :cond_83e
    const/4 v6, 0x1

    add-int/2addr v4, v6

    .line 1743
    aget-byte v9, v1, v4

    if-eqz v9, :cond_849

    .line 1744
    iget-object v13, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v13, v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmGetSecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    :cond_849
    add-int/2addr v4, v6

    .line 1746
    aget-byte v4, v1, v4

    if-eqz v4, :cond_853

    .line 1747
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v6, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmGetOWESecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    .line 1749
    :cond_853
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SemWifiApSmartGattServer:\t same allowed user   device:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v9

    iget-object v13, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmFamilyID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v13

    .line 1750
    invoke-virtual {v9, v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->hideString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v9

    .line 1751
    invoke-virtual {v9, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->hideString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",isInWhiteList"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v9, p3

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetSecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1749
    invoke-virtual {v4, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1753
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " same allowed user   device:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v6

    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmFamilyID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object v10

    .line 1754
    invoke-virtual {v6, v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->hideString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->hideString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",isInWhiteList"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetSecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, p4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetOWESecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1753
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_964

    .line 1758
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v3

    const-string v4, "SemWifiApSmartGattServer:\tfamily is not supported, so making auth 0"

    invoke-virtual {v3, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const-string v3, "family is not supported, so making auth 0"

    .line 1759
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mAuthDevices:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v17

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    :cond_964
    :goto_964
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mAuthDevices:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9df

    .line 1765
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_98a

    const/16 v4, 0x190

    goto :goto_98b

    :cond_98a
    const/4 v4, 0x0

    .line 1770
    :goto_98b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enabling Hotspot state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " interval "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mGetWifiProfileShare:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetWifiProfileShare(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v3

    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmUsertype(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->SetUserTypefromGattServer(I)V

    .line 1772
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v3

    if-eqz v3, :cond_9df

    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetWifiProfileShare(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    move-result v3

    if-nez v3, :cond_9df

    .line 1773
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    move-result-object v3

    int-to-long v4, v4

    const/4 v6, 0x2

    invoke-virtual {v3, v6, v4, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1776
    :cond_9df
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v11, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    if-eqz v1, :cond_a80

    .line 1782
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reveived Auth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-byte v5, v1, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",device.getBondState():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemWifiApSmartGattServer\treveived Auth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-byte v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_a80

    .line 1785
    :cond_a3b
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_MHS_ENABLED:Ljava/util/UUID;

    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5e

    if-eqz p5, :cond_a80

    .line 1787
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    goto :goto_a80

    .line 1793
    :cond_a5e
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_ACCEPT_INVITATION:Ljava/util/UUID;

    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a80

    if-eqz p5, :cond_a80

    .line 1795
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    :cond_a80
    :goto_a80
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 7

    .line 1063
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattServerCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionStateChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    .line 1066
    invoke-virtual {v1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getStatusDescription(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object p2

    .line 1067
    invoke-virtual {p2, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getStateDescription(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SemWifiApSmartGattServer"

    .line 1065
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    const/4 v1, 0x2

    if-ne p3, v1, :cond_c3

    .line 1070
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object p3, p3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mAuthDevices:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object p3, p3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mClientConnections:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$ClientVer;-><init>()V

    invoke-virtual {p3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connected device:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmBondingAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/lang/String;)V

    .line 1074
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmVersion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    .line 1075
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    const/4 p3, -0x1

    invoke-static {p1, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmUserType(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    .line 1076
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    .line 1077
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisNeededSecurityWpa2(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 1078
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SemWifiApSmartGattServer:\tGattServer connected device:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object p3

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBondingAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_135

    :cond_c3
    if-nez p3, :cond_135

    .line 1080
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object p3, p3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mAuthDevices:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object p3, p3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mClientConnections:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnected device:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemWifiApSmartGattServer:\tGattServer disconnected device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1084
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmBondingAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/lang/String;)V

    .line 1085
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmGetSecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    .line 1086
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p0, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmGetOWESecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    :cond_135
    :goto_135
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 4

    .line 1806
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattServerCallback;->onMtuChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 1807
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Our gatt server onMtuChanged. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemWifiApSmartGattServer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SemWifiApSmartGattServer:\tOur gatt server onMtuChanged. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V
    .registers 4

    .line 1098
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattServerCallback;->onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V

    .line 1099
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceAdded:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemWifiApSmartGattServer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$1;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SemWifiApSmartGattServer:\tonServiceAdded:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method
