.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;
.super Landroid/os/Handler;
.source "SemWifiApSmartD2DGattClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BleWorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Landroid/os/Looper;)V
    .registers 3

    .line 100
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 101
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "SemWifiApSmartD2DGattClient"

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg.what:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget v1, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_2ea

    goto/16 :goto_2e9

    :pswitch_25
    const-string v1, "SemWifiApSmartD2DGattClient"

    const-string v2, "Device didn\'t get mtu callback so this device is using default value."

    .line 108
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/util/LocalLog;

    move-result-object v1

    const-string v2, "SemWifiApSmartD2DGattClient:\tDevice didn\'t get mtu callback so this device is using default value."

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 110
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmConnectedGatt(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    if-eqz v1, :cond_2e9

    .line 111
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmConnectedGatt(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    goto/16 :goto_2e9

    .line 114
    :pswitch_4c
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/content/Context;

    move-result-object v1

    const v4, 0x1040f3c

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 115
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmD2DClient_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$msetConnectionState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;ILjava/lang/String;)V

    .line 116
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmD2DClient_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->removeDuplicateClientMAC(Ljava/lang/String;)V

    goto/16 :goto_2e9

    .line 119
    :pswitch_70
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/content/Context;

    move-result-object v1

    const v4, 0x1040f3b

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 120
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmD2DClient_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v1, v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$minvokeCallback(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Ljava/lang/String;I)V

    .line 121
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmD2DClient_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$msetConnectionState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;ILjava/lang/String;)V

    .line 122
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmD2DClient_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->removeDuplicateClientMAC(Ljava/lang/String;)V

    goto/16 :goto_2e9

    .line 129
    :pswitch_9e
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fputmWifiApSmartD2DMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;)V

    .line 130
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mClientD2DList:Ljava/util/List;

    monitor-enter v1

    .line 131
    :try_start_b0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 133
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mClientD2DList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v2

    move v7, v6

    :goto_bf
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-wide/16 v9, 0x2710

    if-eqz v8, :cond_2a6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;

    .line 134
    iget v11, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->state:I

    const/4 v12, -0x6

    const/16 v13, 0x9

    if-eq v11, v12, :cond_24a

    const/4 v14, -0x2

    if-eq v11, v14, :cond_24a

    const/4 v14, -0x5

    if-ne v11, v14, :cond_dc

    goto/16 :goto_24a

    .line 143
    :cond_dc
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-wide v2, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->timestamp:J

    sub-long/2addr v14, v2

    cmp-long v2, v14, v9

    if-lez v2, :cond_f4

    iget v2, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->state:I

    if-gez v2, :cond_f4

    .line 144
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_194

    .line 146
    :cond_f4
    iget v2, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_197

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v14, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->timestamp:J

    sub-long/2addr v9, v14

    const-wide/32 v14, 0x9c40

    cmp-long v2, v9, v14

    if-lez v2, :cond_197

    const-string v2, "SemWifiApSmartD2DGattClient"

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ST_BT_PAIRING after 30 sec, so cancelling bonding:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",isBondingGoingon:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetisBondingGoingon(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Z

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/util/LocalLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SemWifiApSmartD2DGattClient:\tST_BT_PAIRING after 30 sec, so cancelling bonding:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",isBondingGoingon:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetisBondingGoingon(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Z

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 149
    iput v12, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->state:I

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->timestamp:J

    .line 151
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fputisBondingGoingon(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Z)V

    add-int/lit8 v6, v6, 0x1

    .line 153
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    iget-object v3, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    invoke-static {v2, v3, v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$minvokeCallback(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Ljava/lang/String;I)V

    .line 154
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartD2DMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    move-result-object v2

    iget-object v3, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    new-instance v8, Landroid/util/Pair;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmSmartAp_BLE_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->setBLEPairingFailedHistory(Ljava/lang/String;Landroid/util/Pair;)V

    :goto_194
    const/4 v9, 0x0

    goto/16 :goto_23e

    .line 156
    :cond_197
    iget v2, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->state:I

    const/4 v9, 0x1

    if-ne v2, v9, :cond_1f9

    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmConnectedGatt(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    if-nez v2, :cond_1f9

    const-string v2, "SemWifiApSmartD2DGattClient"

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ST_GATT_CONNECTING and mConnectgatt is null :"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/util/LocalLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SemWifiApSmartD2DGattClient:\tST_GATT_CONNECTING and mConnectgatt is null:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 159
    iput v2, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->state:I

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->timestamp:J

    .line 161
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    iget-object v3, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v2, v3, v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$minvokeCallback(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Ljava/lang/String;I)V

    goto :goto_23e

    :cond_1f9
    const/4 v9, 0x0

    .line 164
    iget v2, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->state:I

    const/4 v10, 0x1

    if-ne v2, v10, :cond_240

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->timestamp:J

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x88b8

    cmp-long v2, v10, v12

    if-lez v2, :cond_240

    const-string v2, "SemWifiApSmartD2DGattClient"

    const-string v3, "mConnectedGatt is not null after 40 sec, so disconnecting gatt"

    .line 165
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/util/LocalLog;

    move-result-object v2

    const-string v3, "SemWifiApSmartD2DGattClient:\tmConnectedGatt is not null after 40 sec, so disconnecting gatt"

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/4 v2, -0x7

    .line 167
    iput v2, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->state:I

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->timestamp:J

    .line 169
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    iget-object v8, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    invoke-static {v3, v8, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$minvokeCallback(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Ljava/lang/String;I)V

    add-int/lit8 v6, v6, 0x1

    .line 171
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmConnectedGatt(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    if-eqz v2, :cond_23e

    .line 172
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$mshutdownclient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)V

    :cond_23e
    :goto_23e
    const/4 v10, 0x1

    goto :goto_2a0

    .line 174
    :cond_240
    iget v2, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->state:I

    const/4 v10, 0x1

    if-ltz v2, :cond_29e

    if-eq v2, v10, :cond_29e

    if-ne v2, v3, :cond_2a0

    goto :goto_29e

    :cond_24a
    :goto_24a
    move v9, v2

    move v10, v3

    .line 135
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartD2DMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    move-result-object v2

    iget-object v3, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->getBLEPairingFailedHistory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29e

    .line 136
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/util/LocalLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SemWifiApSmartD2DGattClient:\tUPDATE_CONNECTION_FAILURES: removing,"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const-string v2, "SemWifiApSmartD2DGattClient"

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UPDATE_CONNECTION_FAILURES: removing, "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29d
    .catchall {:try_start_b0 .. :try_end_29d} :catchall_2e1

    goto :goto_2a0

    :cond_29e
    :goto_29e
    add-int/lit8 v6, v6, 0x1

    :cond_2a0
    :goto_2a0
    add-int/lit8 v7, v7, 0x1

    move v2, v9

    move v3, v10

    goto/16 :goto_bf

    .line 180
    :cond_2a6
    :try_start_2a6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2aa
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 181
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mClientD2DList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2aa

    .line 183
    :cond_2c2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2d3

    .line 184
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    const-string v3, "D2D gattclient, update failures"

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->sendClientScanResultUpdateIntent(Ljava/lang/String;)V
    :try_end_2d3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2a6 .. :try_end_2d3} :catch_2d3
    .catchall {:try_start_2a6 .. :try_end_2d3} :catchall_2e1

    .line 189
    :catch_2d3
    :cond_2d3
    :try_start_2d3
    monitor-exit v1
    :try_end_2d4
    .catchall {:try_start_2d3 .. :try_end_2d4} :catchall_2e1

    .line 190
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->showD2DClientInfo()V

    if-lez v6, :cond_2e9

    const/16 v1, 0xd

    .line 192
    invoke-virtual {v0, v1, v9, v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2e9

    :catchall_2e1
    move-exception v0

    .line 189
    :try_start_2e2
    monitor-exit v1
    :try_end_2e3
    .catchall {:try_start_2e2 .. :try_end_2e3} :catchall_2e1

    throw v0

    .line 125
    :pswitch_2e4
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$mshutdownclient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)V

    :cond_2e9
    :goto_2e9
    return-void

    :pswitch_data_2ea
    .packed-switch 0xc
        :pswitch_2e4
        :pswitch_9e
        :pswitch_70
        :pswitch_4c
        :pswitch_25
    .end packed-switch
.end method
