.class public final Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;
.super Landroid/os/Handler;
.source "WirelessKeyboardMouseShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/WirelessKeyboardMouseShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WirelessKeyboardMouseShareHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;


# direct methods
.method public constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/os/Looper;)V
    .registers 4

    .line 1404
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1405
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1410
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_30e

    goto/16 :goto_30d

    .line 1537
    :pswitch_f
    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v1, v1, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_14
    const-string v2, "WirelessKeyboardMouseShare"

    const-string/jumbo v3, "unregister by MESSAGE_NEED_HOST_ROLE message"

    .line 1538
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmUnregisterWhenConnectionFail(Lcom/android/server/input/WirelessKeyboardMouseShare;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1540
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->stopHIDDevice()Z

    .line 1542
    :cond_31
    monitor-exit v1

    goto/16 :goto_30d

    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_34

    throw v0

    .line 1518
    :pswitch_37
    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v1, v1, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1519
    :try_start_3c
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmAdapter(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_68

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmAdapter(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "WirelessKeyboardMouseShare"

    const-string/jumbo v3, "startHIDDeviceByKey need to turn on bt."

    .line 1520
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2, v6}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmNeedToTurnOnBT(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V

    .line 1522
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmAdapter(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1523
    monitor-exit v1

    return-void

    .line 1525
    :cond_68
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_89

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getDeviceListSize()I

    move-result v2

    if-nez v2, :cond_89

    .line 1526
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2, v6}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmNeedNoti(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V

    .line 1527
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 1528
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageMCF()V

    .line 1529
    monitor-exit v1

    return-void

    .line 1530
    :cond_89
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_9e

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getDeviceListSize()I

    move-result v2

    if-ge v2, v3, :cond_9e

    .line 1531
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2, v6}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmNeedNotiTablet(Lcom/android/server/input/WirelessKeyboardMouseShare;Z)V

    .line 1533
    :cond_9e
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->startHIDDevice()Z

    .line 1534
    monitor-exit v1

    goto/16 :goto_30d

    :catchall_a6
    move-exception v0

    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_3c .. :try_end_a8} :catchall_a6

    throw v0

    .line 1497
    :pswitch_a9
    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v1, v1, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1498
    :try_start_ae
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_f7

    .line 1499
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmRetryNum(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v4

    add-int/2addr v4, v6

    invoke-static {v2, v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmRetryNum(Lcom/android/server/input/WirelessKeyboardMouseShare;I)V

    const-string v2, "WirelessKeyboardMouseShare"

    .line 1500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "retry connect "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v6}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmRetryNum(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmRetryNum(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v2

    if-ge v2, v3, :cond_f0

    .line 1502
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmNextConnectedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageConnectDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_182

    .line 1504
    :cond_f0
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0, v5}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmRetryNum(Lcom/android/server/input/WirelessKeyboardMouseShare;I)V

    goto/16 :goto_182

    .line 1506
    :cond_f7
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v2

    if-eqz v2, :cond_153

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmNextConnectedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_153

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmRetryNum(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v2

    if-ge v2, v3, :cond_153

    const-string v2, "WirelessKeyboardMouseShare"

    .line 1507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "will connect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmNextConnectedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmRetryNum(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v3}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmNextConnectedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothHidDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1509
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0, v5}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmRetryNum(Lcom/android/server/input/WirelessKeyboardMouseShare;I)V

    goto :goto_182

    .line 1510
    :cond_153
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmRetryNum(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v2

    if-le v2, v4, :cond_182

    const-string v2, "WirelessKeyboardMouseShare"

    .line 1511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retry count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmRetryNum(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->stopHIDDevice()Z

    .line 1513
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0, v5}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fputmRetryNum(Lcom/android/server/input/WirelessKeyboardMouseShare;I)V

    .line 1515
    :cond_182
    :goto_182
    monitor-exit v1

    goto/16 :goto_30d

    :catchall_185
    move-exception v0

    monitor-exit v1
    :try_end_187
    .catchall {:try_start_ae .. :try_end_187} :catchall_185

    throw v0

    .line 1494
    :pswitch_188
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendReadyToConnectIntent()V

    goto/16 :goto_30d

    .line 1491
    :pswitch_18f
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendWirelessKeyboardShareStatus()V

    goto/16 :goto_30d

    .line 1487
    :pswitch_196
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-ne v1, v6, :cond_19b

    move v5, v6

    .line 1488
    :cond_19b
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmInputManager(Lcom/android/server/input/WirelessKeyboardMouseShare;)Lcom/android/server/input/InputManagerService;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/input/InputManagerService;->switchWirelessKeyboardShare(Z)V

    goto/16 :goto_30d

    :pswitch_1a6
    const-string v0, "WirelessKeyboardMouseShare"

    const-string v1, "MESSAGE_NEED_TO_INITIALIZING"

    .line 1484
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30d

    .line 1476
    :pswitch_1af
    iget v1, v1, Landroid/os/Message;->arg1:I

    int-to-byte v1, v1

    const-string v2, "WirelessKeyboardMouseShare"

    .line 1477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_SET_REPORT_RECEIVED for id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "WirelessKeyboardMouseShare"

    const-string/jumbo v2, "onSetReport(), sending successful handshake for set report"

    .line 1479
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    goto/16 :goto_30d

    .line 1438
    :pswitch_1e1
    iget v1, v1, Landroid/os/Message;->arg1:I

    int-to-byte v1, v1

    .line 1441
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmInputReportCache(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;

    .line 1442
    iget-object v3, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v3, v3, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v2, :cond_20a

    .line 1444
    :try_start_1f7
    iget-object v4, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v4

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v2, v2, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;->data:[B

    invoke-virtual {v4, v0, v6, v1, v2}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    goto/16 :goto_28c

    .line 1446
    :cond_20a
    new-instance v2, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;

    iget-object v7, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData-IA;)V

    if-ne v1, v6, :cond_23d

    const/16 v2, 0x8

    new-array v4, v2, [B

    const-string v7, "WirelessKeyboardMouseShare"

    const-string/jumbo v8, "get_report id for keyboard"

    .line 1450
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v5

    :goto_221
    if-ge v7, v2, :cond_228

    .line 1452
    aput-byte v5, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_221

    .line 1454
    :cond_228
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2, v1, v4, v6}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[BZ)V

    .line 1455
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v2, v0, v6, v1, v4}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    goto :goto_28c

    :cond_23d
    if-ne v1, v4, :cond_267

    const/4 v2, 0x4

    new-array v4, v2, [B

    const-string v7, "WirelessKeyboardMouseShare"

    const-string/jumbo v8, "get_report id for mouse"

    .line 1459
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v5

    :goto_24b
    if-ge v7, v2, :cond_252

    .line 1461
    aput-byte v5, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_24b

    .line 1463
    :cond_252
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2, v1, v4, v6}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[BZ)V

    .line 1464
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v2, v0, v6, v1, v4}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    goto :goto_28c

    :cond_267
    const-string v2, "WirelessKeyboardMouseShare"

    .line 1468
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get Report for Invalid report id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    .line 1472
    :goto_28c
    monitor-exit v3

    goto/16 :goto_30d

    :catchall_28f
    move-exception v0

    monitor-exit v3
    :try_end_291
    .catchall {:try_start_1f7 .. :try_end_291} :catchall_28f

    throw v0

    .line 1433
    :pswitch_292
    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmInputReportCache(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1434
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmOutputReportCache(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_30d

    .line 1412
    :pswitch_2a5
    new-instance v7, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    const-string v2, "Samsung HID Device"

    const-string v3, "Samsung HID Keyboard/Mouse"

    const-string v4, "Samsung"

    const/16 v5, -0x40

    sget-object v6, Lcom/android/server/input/HidConsts;->DESCRIPTOR:[B

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B[B)V

    .line 1416
    new-instance v3, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    const/4 v9, 0x2

    const/16 v10, 0xc8

    const/4 v11, 0x2

    const/16 v12, 0xc8

    const/16 v13, 0x2710

    const/16 v14, 0x2710

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;-><init>(IIIIII)V

    .line 1420
    new-instance v4, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    const/16 v16, 0x2

    const/16 v17, 0x384

    const/16 v18, 0x9

    const/16 v19, 0x384

    const/16 v20, 0x2710

    const/16 v21, 0x2710

    move-object v15, v4

    invoke-direct/range {v15 .. v21}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;-><init>(IIIIII)V

    .line 1425
    :try_start_2d7
    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmExecutor(Lcom/android/server/input/WirelessKeyboardMouseShare;)Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmCallback(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice$Callback;

    move-result-object v6

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/bluetooth/BluetoothHidDevice;->registerApp(Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothHidDevice$Callback;)Z

    move-result v0

    const-string v1, "WirelessKeyboardMouseShare"

    .line 1426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerApp()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_305
    .catch Ljava/lang/Exception; {:try_start_2d7 .. :try_end_305} :catch_306

    goto :goto_30d

    :catch_306
    const-string v0, "WirelessKeyboardMouseShare"

    const-string v1, "Can\'t registerApp"

    .line 1428
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30d
    return-void

    :pswitch_data_30e
    .packed-switch 0x1
        :pswitch_2a5
        :pswitch_292
        :pswitch_1e1
        :pswitch_1af
        :pswitch_1a6
        :pswitch_196
        :pswitch_18f
        :pswitch_188
        :pswitch_a9
        :pswitch_37
        :pswitch_f
    .end packed-switch
.end method
