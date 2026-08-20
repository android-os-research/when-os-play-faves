.class public Lcom/android/server/input/WirelessKeyboardMouseShare$4;
.super Landroid/bluetooth/BluetoothHidDevice$Callback;
.source "WirelessKeyboardMouseShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/WirelessKeyboardMouseShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;


# direct methods
.method public constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V
    .registers 2

    .line 1231
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 7

    const-string v0, "WirelessKeyboardMouseShare"

    .line 1235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAppStatusChanged: pluggedDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-nez p1, :cond_12

    move-object p1, v2

    goto :goto_16

    .line 1236
    :cond_12
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " registered="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1235
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter p1

    if-eqz p2, :cond_3e

    .line 1239
    :try_start_2f
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object p2

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5d

    .line 1241
    :cond_3e
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;)V

    .line 1242
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object p2

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->setToLocalTablet(Z)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_55

    goto :goto_56

    :cond_55
    move v2, v3

    :goto_56
    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    .line 1243
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1245
    :goto_5d
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 1246
    monitor-exit p1

    return-void

    :catchall_64
    move-exception p0

    monitor-exit p1
    :try_end_66
    .catchall {:try_start_2f .. :try_end_66} :catchall_64

    throw p0
.end method

.method public onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 13

    const-string v0, "WirelessKeyboardMouseShare"

    .line 1251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectionStateChanged: device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-nez p1, :cond_12

    move-object v3, v2

    goto :goto_16

    .line 1252
    :cond_12
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_16
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1251
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_34

    .line 1255
    :try_start_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    goto/16 :goto_1b7

    :cond_34
    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ne p2, v1, :cond_7a

    .line 1259
    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmAddIndex(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4a

    .line 1260
    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getFirstEmptySlot()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmAddIndex(Lcom/android/server/input/WirelessKeyboardMouseShare;I)V

    .line 1262
    :cond_4a
    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmAddIndex(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v5

    invoke-static {v4, p1, v5}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$maddPairedDevicesListLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;I)I

    move-result v4

    if-nez v4, :cond_7b

    .line 1264
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mdisconnectBT(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;)V

    .line 1265
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    .line 1266
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 1267
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmFocusedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mexistBluetoothDeviceLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_78

    .line 1268
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmFocusedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageConnectDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 1270
    :cond_78
    monitor-exit v0

    return-void

    :cond_7a
    move v4, v3

    .line 1274
    :cond_7b
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v5, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmConnectionState(Lcom/android/server/input/WirelessKeyboardMouseShare;I)V

    const/4 v5, 0x6

    const/16 v6, 0xb

    const/4 v7, 0x1

    if-ne p2, v1, :cond_117

    .line 1277
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1278
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c8

    .line 1279
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;)V

    .line 1280
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmLastestConnectedName(Lcom/android/server/input/WirelessKeyboardMouseShare;Ljava/lang/String;)V

    const-string p2, "WirelessKeyboardMouseShare"

    .line 1281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mPluggedDevice is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_c8
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmFocusedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;)V

    .line 1284
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1, v3}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmToLocalTablet(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V

    .line 1285
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmToLocalTablet(Lcom/android/server/input/WirelessKeyboardMouseShare;)Z

    move-result p2

    if-eqz p2, :cond_e2

    move p2, v7

    goto :goto_e3

    :cond_e2
    move p2, v3

    :goto_e3
    invoke-virtual {p1, v5, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1286
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1287
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    if-ne v4, v1, :cond_fb

    .line 1289
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1, v7}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmFinishNewDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V

    .line 1290
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageMCF()V

    .line 1292
    :cond_fb
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1, v3}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmUnregisterWhenConnectionFail(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V

    .line 1293
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1b5

    .line 1294
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_1b5

    :cond_117
    if-nez p2, :cond_1b0

    .line 1298
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmToLocalTablet(Lcom/android/server/input/WirelessKeyboardMouseShare;)Z

    move-result p2

    if-eq p2, v7, :cond_133

    .line 1299
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmKeyboard(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->clear(Z)V

    .line 1300
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmMouse(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->clear(Z)V

    .line 1302
    :cond_133
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmDisconnectWithoutUnregister(Lcom/android/server/input/WirelessKeyboardMouseShare;)Z

    move-result p2

    if-nez p2, :cond_184

    .line 1303
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    if-eqz p2, :cond_155

    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_155

    .line 1304
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->stopHIDDevice()Z

    goto :goto_184

    .line 1306
    :cond_155
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_16a

    .line 1307
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1309
    :cond_16a
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1, v7}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmUnregisterWhenConnectionFail(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V

    .line 1310
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1311
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object p2

    const-wide/16 v8, 0x1388

    invoke-virtual {p2, p1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1314
    :cond_184
    :goto_184
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1, v3}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmDisconnectWithoutUnregister(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V

    .line 1315
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1, v7}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmToLocalTablet(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V

    .line 1316
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;)V

    .line 1317
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmToLocalTablet(Lcom/android/server/input/WirelessKeyboardMouseShare;)Z

    move-result p2

    if-eqz p2, :cond_1a3

    move p2, v7

    goto :goto_1a4

    :cond_1a3
    move p2, v3

    :goto_1a4
    invoke-virtual {p1, v5, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1318
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1319
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 1322
    :cond_1b0
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0, v7}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmProtocol(Lcom/android/server/input/WirelessKeyboardMouseShare;B)V

    .line 1324
    :cond_1b5
    :goto_1b5
    monitor-exit v0

    return-void

    :goto_1b7
    monitor-exit v0
    :try_end_1b8
    .catchall {:try_start_2f .. :try_end_1b8} :catchall_31

    throw p0
.end method

.method public onGetReport(Landroid/bluetooth/BluetoothDevice;BBI)V
    .registers 8

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p2, v1, :cond_13

    .line 1350
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object p0

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_8e

    :cond_13
    const-string p4, "WirelessKeyboardMouseShare"

    const/4 v2, 0x2

    if-ne p2, v2, :cond_70

    if-eq p3, v1, :cond_39

    .line 1353
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onGetReport(), output report for invalid id = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    goto :goto_8e

    .line 1356
    :cond_39
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmOutputReportCache(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;

    if-nez p2, :cond_64

    const/16 p2, 0x8

    new-array v0, p2, [B

    const-string/jumbo v1, "get_report id for keyboard"

    .line 1361
    invoke-static {p4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, 0x0

    move v1, p4

    :goto_53
    if-ge v1, p2, :cond_5a

    .line 1363
    aput-byte p4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 1365
    :cond_5a
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p0

    invoke-virtual {p0, p1, v2, p3, v0}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    goto :goto_8e

    .line 1367
    :cond_64
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p0

    iget-object p2, p2, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;->data:[B

    invoke-virtual {p0, p1, v2, p3, p2}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    goto :goto_8e

    .line 1371
    :cond_70
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGetReport(), unsupported report type = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    :goto_8e
    return-void
.end method

.method public onInterruptData(Landroid/bluetooth/BluetoothDevice;B[B)V
    .registers 4

    .line 1329
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "intr data: reportId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " data="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WirelessKeyboardMouseShare"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSetProtocol(Landroid/bluetooth/BluetoothDevice;B)V
    .registers 4

    .line 1334
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "protocol set to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WirelessKeyboardMouseShare"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmProtocol(Lcom/android/server/input/WirelessKeyboardMouseShare;B)V

    return-void
.end method

.method public onSetReport(Landroid/bluetooth/BluetoothDevice;BB[B)V
    .registers 8

    const-string v0, "WirelessKeyboardMouseShare"

    const/4 v1, 0x2

    if-eq p2, v1, :cond_25

    .line 1381
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "onSetReport(), unsupported report type = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p0

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    goto :goto_57

    :cond_25
    const/4 p2, 0x1

    const/4 v2, 0x0

    if-eq p3, p2, :cond_45

    if-ne p3, v1, :cond_3b

    const-string/jumbo p2, "onSetReport(), mouse report id, sending successful handshake for set report"

    .line 1386
    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    return-void

    .line 1390
    :cond_3b
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    goto :goto_57

    .line 1392
    :cond_45
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHandler(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    move-result-object p0

    const/4 p1, 0x4

    .line 1393
    invoke-static {p4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 1392
    invoke-virtual {p0, p1, p3, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1393
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_57
    return-void
.end method

.method public onVirtualCableUnplug(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    .line 1341
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1342
    :try_start_5
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;)V

    const-string p0, "WirelessKeyboardMouseShare"

    const-string/jumbo v0, "onVirtualCableUnplug mPluggedDevice is null"

    .line 1343
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    monitor-exit p1

    return-void

    :catchall_15
    move-exception p0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p0
.end method
