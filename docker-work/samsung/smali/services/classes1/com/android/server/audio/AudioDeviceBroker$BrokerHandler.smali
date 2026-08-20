.class public Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
.super Landroid/os/Handler;
.source "AudioDeviceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrokerHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioDeviceBroker;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;)V
    .registers 2

    .line 1365
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    .line 1369
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x16

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_52d

    const/16 v4, 0x17

    if-eq v0, v4, :cond_4ec

    const/4 v4, -0x1

    packed-switch v0, :pswitch_data_5c6

    const/4 v1, 0x3

    packed-switch v0, :pswitch_data_5d8

    packed-switch v0, :pswitch_data_5ec

    packed-switch v0, :pswitch_data_600

    packed-switch v0, :pswitch_data_60e

    const-string v0, "AS.AudioDeviceBroker"

    .line 1672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_577

    .line 1642
    :pswitch_37
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1644
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmModeOwnerPid(Lcom/android/server/audio/AudioDeviceBroker;)I

    move-result v1

    if-eqz v1, :cond_72

    .line 1645
    sget-object v1, Lcom/android/server/audio/AudioService;->sScoPreventionLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_CHECK_ABNORMAL_SCO skipped to remove SCO client mode 0 pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mModeOwnerPid = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmModeOwnerPid(Lcom/android/server/audio/AudioDeviceBroker;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v0, "AS.AudioDeviceBroker"

    .line 1647
    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v0

    .line 1645
    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    goto/16 :goto_577

    .line 1650
    :cond_72
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1651
    :try_start_79
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmCommunicationRouteClients(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v3

    :cond_84
    :goto_84
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 1652
    invoke-virtual {v5}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_84

    add-int/lit8 v4, v4, 0x1

    .line 1654
    invoke-virtual {v5}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getPid()I

    move-result v6

    if-ne v0, v6, :cond_84

    .line 1655
    invoke-virtual {v5}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->unregisterDeathRecipient()V

    .line 1656
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v6}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmCommunicationRouteClients(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    .line 1658
    sget-object v6, Lcom/android/server/audio/AudioService;->sScoPreventionLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v7, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MSG_CHECK_ABNORMAL_SCO removed SCO client pid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    invoke-virtual {v5}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getPid()I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v5, "AS.AudioDeviceBroker"

    invoke-virtual {v7, v5}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v5

    .line 1658
    invoke-virtual {v6, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    goto :goto_84

    .line 1663
    :cond_d7
    monitor-exit v1
    :try_end_d8
    .catchall {:try_start_79 .. :try_end_d8} :catchall_10f

    if-nez v4, :cond_577

    .line 1664
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/BtHelper;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_577

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/BtHelper;->isScoStateInternal()Z

    move-result v0

    if-eqz v0, :cond_577

    .line 1665
    sget-object v0, Lcom/android/server/audio/AudioService;->sScoPreventionLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v2, "MSG_CHECK_ABNORMAL_SCO stopScoUsingVirtualVoiceCall()"

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.AudioDeviceBroker"

    .line 1666
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 1665
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1667
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/BtHelper;->forceCloseSco()V

    goto/16 :goto_577

    :catchall_10f
    move-exception p0

    .line 1663
    :try_start_110
    monitor-exit v1
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_10f

    throw p0

    .line 1623
    :pswitch_112
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->checkRCVStateForSARTest()V

    goto/16 :goto_577

    .line 1637
    :pswitch_119
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->disconnectAllBluetoothProfiles()V

    goto/16 :goto_577

    .line 1617
    :pswitch_120
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_577

    .line 1629
    :pswitch_12b
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1630
    :try_start_132
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceInventory;->onSetDeviceConnectionStateForceByUser(Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;)V

    .line 1632
    monitor-exit v0

    goto/16 :goto_577

    :catchall_142
    move-exception p0

    monitor-exit v0
    :try_end_144
    .catchall {:try_start_132 .. :try_end_144} :catchall_142

    throw p0

    .line 1612
    :pswitch_145
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v2, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmContext(Lcom/android/server/audio/AudioDeviceBroker;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v5}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBrokerHandler(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    move-result-object v5

    sget-object v6, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v1, v6, v1

    invoke-direct {v2, v4, v5, v1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    invoke-static {v0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fputmDualA2dpManager(Lcom/android/server/audio/AudioDeviceBroker;Lcom/samsung/android/server/audio/DualA2dpVolumeManager;)V

    goto/16 :goto_577

    .line 1449
    :pswitch_161
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;

    .line 1450
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1451
    :try_start_16c
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v4

    iget v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mIndex:I

    iget v6, v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mMaxIndex:I

    iget v7, v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mStreamType:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/audio/BtHelper;->setLeAudioVolume(III)V

    .line 1452
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->isDualModeActive()Z

    move-result v4

    if-eqz v4, :cond_192

    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mStreamType:I

    if-ne v4, v1, :cond_192

    .line 1454
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget v0, v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mIndex:I

    invoke-virtual {v1, v0}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeIndex(I)V

    .line 1456
    :cond_192
    monitor-exit v2

    goto/16 :goto_577

    :catchall_195
    move-exception p0

    monitor-exit v2
    :try_end_197
    .catchall {:try_start_16c .. :try_end_197} :catchall_195

    throw p0

    .line 1568
    :pswitch_198
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    .line 1569
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_1a2

    goto/16 :goto_577

    .line 1570
    :cond_1a2
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "msg: onBluetoothActiveDeviceChange  state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " addr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1576
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " prof="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " supprNoisy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mSupprNoisy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " src="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mEventSource:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v4, "AS.AudioDeviceBroker"

    .line 1581
    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 1570
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1582
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1583
    :try_start_1fd
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioDeviceInventory;->setBluetoothActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)I

    .line 1584
    monitor-exit v1

    goto/16 :goto_577

    :catchall_209
    move-exception p0

    monitor-exit v1
    :try_end_20b
    .catchall {:try_start_1fd .. :try_end_20b} :catchall_209

    throw p0

    .line 1520
    :pswitch_20c
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1521
    :try_start_211
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_218
    .catchall {:try_start_211 .. :try_end_218} :catchall_22a

    .line 1522
    :try_start_218
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Lcom/android/server/audio/BtHelper;->onScoAudioStateChanged(I)V

    .line 1523
    monitor-exit v1
    :try_end_224
    .catchall {:try_start_218 .. :try_end_224} :catchall_227

    .line 1524
    :try_start_224
    monitor-exit v0
    :try_end_225
    .catchall {:try_start_224 .. :try_end_225} :catchall_22a

    goto/16 :goto_577

    :catchall_227
    move-exception p0

    .line 1523
    :try_start_228
    monitor-exit v1
    :try_end_229
    .catchall {:try_start_228 .. :try_end_229} :catchall_227

    :try_start_229
    throw p0

    :catchall_22a
    move-exception p0

    .line 1524
    monitor-exit v0
    :try_end_22c
    .catchall {:try_start_229 .. :try_end_22c} :catchall_22a

    throw p0

    .line 1496
    :pswitch_22d
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1497
    :try_start_232
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_239
    .catchall {:try_start_232 .. :try_end_239} :catchall_249

    .line 1498
    :try_start_239
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monUpdateCommunicationRouteClient(Lcom/android/server/audio/AudioDeviceBroker;Ljava/lang/String;)V

    .line 1499
    monitor-exit v1
    :try_end_243
    .catchall {:try_start_239 .. :try_end_243} :catchall_246

    .line 1500
    :try_start_243
    monitor-exit v0
    :try_end_244
    .catchall {:try_start_243 .. :try_end_244} :catchall_249

    goto/16 :goto_577

    :catchall_246
    move-exception p0

    .line 1499
    :try_start_247
    monitor-exit v1
    :try_end_248
    .catchall {:try_start_247 .. :try_end_248} :catchall_246

    :try_start_248
    throw p0

    :catchall_249
    move-exception p0

    .line 1500
    monitor-exit v0
    :try_end_24b
    .catchall {:try_start_248 .. :try_end_24b} :catchall_249

    throw p0

    .line 1486
    :pswitch_24c
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1487
    :try_start_251
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_258
    .catchall {:try_start_251 .. :try_end_258} :catchall_272

    .line 1488
    :try_start_258
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;

    .line 1489
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v5, v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mCb:Landroid/os/IBinder;

    iget v6, v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mPid:I

    iget-object v7, v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    iget v8, v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mScoAudioMode:I

    iget-object v9, v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationClientInfo;->mEventSource:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/audio/AudioDeviceBroker;->setCommunicationRouteForClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 1491
    monitor-exit v1
    :try_end_26c
    .catchall {:try_start_258 .. :try_end_26c} :catchall_26f

    .line 1492
    :try_start_26c
    monitor-exit v0
    :try_end_26d
    .catchall {:try_start_26c .. :try_end_26d} :catchall_272

    goto/16 :goto_577

    :catchall_26f
    move-exception p0

    .line 1491
    :try_start_270
    monitor-exit v1
    :try_end_271
    .catchall {:try_start_270 .. :try_end_271} :catchall_26f

    :try_start_271
    throw p0

    :catchall_272
    move-exception p0

    .line 1492
    monitor-exit v0
    :try_end_274
    .catchall {:try_start_271 .. :try_end_274} :catchall_272

    throw p0

    .line 1504
    :pswitch_275
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1505
    :try_start_27a
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_281
    .catchall {:try_start_27a .. :try_end_281} :catchall_291

    .line 1506
    :try_start_281
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monUpdateCommunicationRoute(Lcom/android/server/audio/AudioDeviceBroker;Ljava/lang/String;)V

    .line 1507
    monitor-exit v1
    :try_end_28b
    .catchall {:try_start_281 .. :try_end_28b} :catchall_28e

    .line 1508
    :try_start_28b
    monitor-exit v0
    :try_end_28c
    .catchall {:try_start_28b .. :try_end_28c} :catchall_291

    goto/16 :goto_577

    :catchall_28e
    move-exception p0

    .line 1507
    :try_start_28f
    monitor-exit v1
    :try_end_290
    .catchall {:try_start_28f .. :try_end_290} :catchall_28e

    :try_start_290
    throw p0

    :catchall_291
    move-exception p0

    .line 1508
    monitor-exit v0
    :try_end_293
    .catchall {:try_start_290 .. :try_end_293} :catchall_291

    throw p0

    .line 1607
    :pswitch_294
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1608
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->onSaveClearPreferredDevicesForCapturePreset(I)V

    goto/16 :goto_577

    .line 1600
    :pswitch_2a1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1601
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 1603
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->onSaveSetPreferredDevicesForCapturePreset(ILjava/util/List;)V

    goto/16 :goto_577

    .line 1597
    :pswitch_2b2
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$mcheckMessagesMuteMusic(Lcom/android/server/audio/AudioDeviceBroker;I)V

    goto/16 :goto_577

    .line 1512
    :pswitch_2b9
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1513
    :try_start_2be
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2c5
    .catchall {:try_start_2be .. :try_end_2c5} :catchall_2d5

    .line 1514
    :try_start_2c5
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    invoke-static {v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monCommunicationRouteClientDied(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V

    .line 1515
    monitor-exit v1
    :try_end_2cf
    .catchall {:try_start_2c5 .. :try_end_2cf} :catchall_2d2

    .line 1516
    :try_start_2cf
    monitor-exit v0
    :try_end_2d0
    .catchall {:try_start_2cf .. :try_end_2d0} :catchall_2d5

    goto/16 :goto_577

    :catchall_2d2
    move-exception p0

    .line 1515
    :try_start_2d3
    monitor-exit v1
    :try_end_2d4
    .catchall {:try_start_2d3 .. :try_end_2d4} :catchall_2d2

    :try_start_2d4
    throw p0

    :catchall_2d5
    move-exception p0

    .line 1516
    monitor-exit v0
    :try_end_2d7
    .catchall {:try_start_2d4 .. :try_end_2d7} :catchall_2d5

    throw p0

    .line 1593
    :pswitch_2d8
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1594
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->onSaveRemovePreferredDevices(I)V

    goto/16 :goto_577

    .line 1587
    :pswitch_2e5
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1588
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 1590
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->onSaveSetPreferredDevices(ILjava/util/List;)V

    goto/16 :goto_577

    .line 1469
    :pswitch_2f6
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1470
    :try_start_2fb
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_302
    .catchall {:try_start_2fb .. :try_end_302} :catchall_34c

    .line 1471
    :try_start_302
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4, v5}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fputmModeOwnerPid(Lcom/android/server/audio/AudioDeviceBroker;I)V

    .line 1472
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmReceiverSupported(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_31a

    .line 1473
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4, v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fputmCurrentCallPathType(Lcom/android/server/audio/AudioDeviceBroker;I)V

    .line 1475
    :cond_31a
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmModeOwnerPid(Lcom/android/server/audio/AudioDeviceBroker;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v5}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmRequestScoPid(Lcom/android/server/audio/AudioDeviceBroker;)I

    move-result v5

    if-eq v4, v5, :cond_32d

    .line 1476
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->resetRequestBtSco()V

    .line 1478
    :cond_32d
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eq v4, v2, :cond_345

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$misSpeakerphoneActive(Lcom/android/server/audio/AudioDeviceBroker;)Z

    move-result v2

    if-eqz v2, :cond_33d

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_345

    .line 1479
    :cond_33d
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v4, "setNewModeOwner"

    invoke-static {v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monUpdateCommunicationRouteClient(Lcom/android/server/audio/AudioDeviceBroker;Ljava/lang/String;)V

    .line 1481
    :cond_345
    monitor-exit v1
    :try_end_346
    .catchall {:try_start_302 .. :try_end_346} :catchall_349

    .line 1482
    :try_start_346
    monitor-exit v0
    :try_end_347
    .catchall {:try_start_346 .. :try_end_347} :catchall_34c

    goto/16 :goto_577

    :catchall_349
    move-exception p0

    .line 1481
    :try_start_34a
    monitor-exit v1
    :try_end_34b
    .catchall {:try_start_34a .. :try_end_34b} :catchall_349

    :try_start_34b
    throw p0

    :catchall_34c
    move-exception p0

    .line 1482
    monitor-exit v0
    :try_end_34e
    .catchall {:try_start_34b .. :try_end_34e} :catchall_34c

    throw p0

    .line 1459
    :pswitch_34f
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1460
    :try_start_356
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeIndex(I)V

    .line 1461
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->isDualModeActive()Z

    move-result v2

    if-eqz v2, :cond_37e

    .line 1463
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v5}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmAudioService(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioService;

    move-result-object v5

    .line 1464
    invoke-virtual {v5, v1}, Lcom/android/server/audio/AudioService;->getMaxVssVolumeForStream(I)I

    move-result v5

    .line 1463
    invoke-virtual {v2, v4, v5, v1}, Lcom/android/server/audio/BtHelper;->setLeAudioVolume(III)V

    .line 1466
    :cond_37e
    monitor-exit v0

    goto/16 :goto_577

    :catchall_381
    move-exception p0

    monitor-exit v0
    :try_end_383
    .catchall {:try_start_356 .. :try_end_383} :catchall_381

    throw p0

    .line 1443
    :pswitch_384
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1444
    :try_start_38b
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v5}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v5

    .line 1445
    invoke-virtual {v5}, Lcom/android/server/audio/AudioDeviceInventory;->isHearingAidConnected()Z

    move-result v5

    .line 1444
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/audio/BtHelper;->setHearingAidVolume(IIZ)V

    .line 1446
    monitor-exit v0

    goto/16 :goto_577

    :catchall_3a5
    move-exception p0

    monitor-exit v0
    :try_end_3a7
    .catchall {:try_start_38b .. :try_end_3a7} :catchall_3a5

    throw p0

    .line 1399
    :pswitch_3a8
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1400
    :try_start_3af
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->onReportNewRoutes()V

    .line 1401
    monitor-exit v0

    goto/16 :goto_577

    :catchall_3bb
    move-exception p0

    monitor-exit v0
    :try_end_3bd
    .catchall {:try_start_3af .. :try_end_3bd} :catchall_3bb

    throw p0

    .line 1436
    :pswitch_3be
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1437
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monSendBecomingNoisyIntent(Lcom/android/server/audio/AudioDeviceBroker;I)V

    goto/16 :goto_577

    .line 1426
    :pswitch_3c7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1427
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1428
    :try_start_3d2
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/audio/BtHelper;->getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 1429
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v5}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v5

    new-instance v6, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-direct {v6, v0, v4, v2}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    invoke-virtual {v5, v6, v3}, Lcom/android/server/audio/AudioDeviceInventory;->onBluetoothA2dpDeviceConfigChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    .line 1432
    monitor-exit v1

    goto/16 :goto_577

    :catchall_3ed
    move-exception p0

    monitor-exit v1
    :try_end_3ef
    .catchall {:try_start_3d2 .. :try_end_3ef} :catchall_3ed

    throw p0

    .line 1421
    :pswitch_3f0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1422
    :try_start_3f7
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v4}, Lcom/android/server/audio/AudioDeviceInventory;->onMakeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V

    .line 1423
    monitor-exit v0

    goto/16 :goto_577

    :catchall_409
    move-exception p0

    monitor-exit v0
    :try_end_40b
    .catchall {:try_start_3f7 .. :try_end_40b} :catchall_409

    throw p0

    .line 1413
    :pswitch_40c
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1414
    :try_start_411
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_418
    .catchall {:try_start_411 .. :try_end_418} :catchall_428

    .line 1415
    :try_start_418
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    .line 1416
    monitor-exit v1
    :try_end_422
    .catchall {:try_start_418 .. :try_end_422} :catchall_425

    .line 1417
    :try_start_422
    monitor-exit v0
    :try_end_423
    .catchall {:try_start_422 .. :try_end_423} :catchall_428

    goto/16 :goto_577

    :catchall_425
    move-exception p0

    .line 1416
    :try_start_426
    monitor-exit v1
    :try_end_427
    .catchall {:try_start_426 .. :try_end_427} :catchall_425

    :try_start_427
    throw p0

    :catchall_428
    move-exception p0

    .line 1417
    monitor-exit v0
    :try_end_42a
    .catchall {:try_start_427 .. :try_end_42a} :catchall_428

    throw p0

    .line 1404
    :pswitch_42b
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1405
    :try_start_432
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    .line 1406
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v5}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v5

    .line 1407
    iget v6, v2, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    if-ne v6, v1, :cond_444

    iget-boolean v1, v2, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    if-eqz v1, :cond_44e

    .line 1408
    :cond_444
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmAudioService(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->getBluetoothContextualVolumeStream()I

    move-result v4

    .line 1406
    :cond_44e
    invoke-virtual {v5, v2, v4}, Lcom/android/server/audio/AudioDeviceInventory;->onSetBtActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;I)V

    .line 1410
    monitor-exit v0

    goto/16 :goto_577

    :catchall_454
    move-exception p0

    monitor-exit v0
    :try_end_456
    .catchall {:try_start_432 .. :try_end_456} :catchall_454

    throw p0

    .line 1528
    :pswitch_457
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1529
    :try_start_45e
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceInventory;->onToggleHdmi()V

    .line 1530
    monitor-exit v1

    goto/16 :goto_577

    :catchall_46a
    move-exception p0

    monitor-exit v1
    :try_end_46c
    .catchall {:try_start_45e .. :try_end_46c} :catchall_46a

    throw p0

    .line 1394
    :pswitch_46d
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    const/4 v6, 0x5

    if-ne v0, v6, :cond_477

    goto :goto_478

    :cond_477
    move v2, v3

    :goto_478
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v4, v5, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monSetForceUse(Lcom/android/server/audio/AudioDeviceBroker;IIZLjava/lang/String;)V

    goto/16 :goto_577

    .line 1388
    :pswitch_481
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1389
    :try_start_488
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->onBroadcastScoConnectionState(I)V

    .line 1390
    monitor-exit v0

    goto/16 :goto_577

    :catchall_496
    move-exception p0

    monitor-exit v0
    :try_end_498
    .catchall {:try_start_488 .. :try_end_498} :catchall_496

    throw p0

    .line 1382
    :pswitch_499
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1383
    :try_start_4a0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceInventory;->onSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V

    .line 1385
    monitor-exit v0

    goto/16 :goto_577

    :catchall_4b0
    move-exception p0

    monitor-exit v0
    :try_end_4b2
    .catchall {:try_start_4a0 .. :try_end_4b2} :catchall_4b0

    throw p0

    .line 1371
    :pswitch_4b3
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1372
    :try_start_4b8
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_4bf
    .catchall {:try_start_4b8 .. :try_end_4bf} :catchall_4e9

    .line 1373
    :try_start_4bf
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$minitRoutingStrategyIds(Lcom/android/server/audio/AudioDeviceBroker;)V

    .line 1374
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->updateActiveCommunicationDevice()V

    .line 1375
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceInventory;->onRestoreDevices()V

    .line 1376
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->onAudioServerDiedRestoreA2dp()V

    .line 1377
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    const-string v4, "MSG_RESTORE_DEVICES"

    invoke-static {v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monUpdateCommunicationRoute(Lcom/android/server/audio/AudioDeviceBroker;Ljava/lang/String;)V

    .line 1378
    monitor-exit v1
    :try_end_4e3
    .catchall {:try_start_4bf .. :try_end_4e3} :catchall_4e6

    .line 1379
    :try_start_4e3
    monitor-exit v0
    :try_end_4e4
    .catchall {:try_start_4e3 .. :try_end_4e4} :catchall_4e9

    goto/16 :goto_577

    :catchall_4e6
    move-exception p0

    .line 1378
    :try_start_4e7
    monitor-exit v1
    :try_end_4e8
    .catchall {:try_start_4e7 .. :try_end_4e8} :catchall_4e6

    :try_start_4e8
    throw p0

    :catchall_4e9
    move-exception p0

    .line 1379
    monitor-exit v0
    :try_end_4eb
    .catchall {:try_start_4e8 .. :try_end_4eb} :catchall_4e9

    throw p0

    .line 1555
    :cond_4ec
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v2, :cond_50b

    .line 1556
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1557
    :try_start_4f7
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v1, v2, v4}, Lcom/android/server/audio/BtHelper;->onBtProfileConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1558
    monitor-exit v0

    goto :goto_577

    :catchall_508
    move-exception p0

    monitor-exit v0
    :try_end_50a
    .catchall {:try_start_4f7 .. :try_end_50a} :catchall_508

    throw p0

    .line 1560
    :cond_50b
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1561
    :try_start_510
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_517
    .catchall {:try_start_510 .. :try_end_517} :catchall_52a

    .line 1562
    :try_start_517
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v4}, Lcom/android/server/audio/BtHelper;->onHeadsetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V

    .line 1563
    monitor-exit v1
    :try_end_525
    .catchall {:try_start_517 .. :try_end_525} :catchall_527

    .line 1564
    :try_start_525
    monitor-exit v0
    :try_end_526
    .catchall {:try_start_525 .. :try_end_526} :catchall_52a

    goto :goto_577

    :catchall_527
    move-exception p0

    .line 1563
    :try_start_528
    monitor-exit v1
    :try_end_529
    .catchall {:try_start_528 .. :try_end_529} :catchall_527

    :try_start_529
    throw p0

    :catchall_52a
    move-exception p0

    .line 1564
    monitor-exit v0
    :try_end_52c
    .catchall {:try_start_529 .. :try_end_52c} :catchall_52a

    throw p0

    .line 1533
    :cond_52d
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v2, :cond_558

    .line 1534
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1535
    :try_start_538
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioDeviceInventory;->onBtProfileDisconnected(I)V

    .line 1537
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eq v2, v1, :cond_54b

    const/16 v1, 0x1a

    if-ne v2, v1, :cond_553

    .line 1539
    :cond_54b
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v2, "postBtProfileDisconnected"

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->removeBleCommunicationRouteClient(Ljava/lang/String;)V

    .line 1542
    :cond_553
    monitor-exit v0

    goto :goto_577

    :catchall_555
    move-exception p0

    monitor-exit v0
    :try_end_557
    .catchall {:try_start_538 .. :try_end_557} :catchall_555

    throw p0

    .line 1544
    :cond_558
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1545
    :try_start_55d
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_564
    .catchall {:try_start_55d .. :try_end_564} :catchall_5c3

    .line 1546
    :try_start_564
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->disconnectHeadset()V

    .line 1548
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v4, "postBtProfileDisconnected"

    invoke-static {v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$mremoveScoCommunicationRouteClient(Lcom/android/server/audio/AudioDeviceBroker;Ljava/lang/String;)V

    .line 1550
    monitor-exit v1
    :try_end_576
    .catchall {:try_start_564 .. :try_end_576} :catchall_5c0

    .line 1551
    :try_start_576
    monitor-exit v0
    :try_end_577
    .catchall {:try_start_576 .. :try_end_577} :catchall_5c3

    .line 1677
    :cond_577
    :goto_577
    invoke-static {}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$sfgetMESSAGES_MUTE_MUSIC()Ljava/util/Set;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_590

    .line 1678
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    const/16 v1, 0x23

    const/16 v2, 0x64

    invoke-static {v0, v1, v3, v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$msendMsg(Lcom/android/server/audio/AudioDeviceBroker;III)V

    .line 1680
    :cond_590
    invoke-static {}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$sfgetMESSAGES_SAR_RCV_CONTROL()Ljava/util/Set;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    .line 1681
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a5

    .line 1682
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postSarControl()V

    .line 1685
    :cond_5a5
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$smisMessageHandledUnderWakelock(I)Z

    move-result p1

    if-eqz p1, :cond_5bf

    .line 1687
    :try_start_5ad
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {p0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fgetmBrokerEventWakeLock(Lcom/android/server/audio/AudioDeviceBroker;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5b6
    .catch Ljava/lang/Exception; {:try_start_5ad .. :try_end_5b6} :catch_5b7

    goto :goto_5bf

    :catch_5b7
    move-exception p0

    const-string p1, "AS.AudioDeviceBroker"

    const-string v0, "Exception releasing wakelock"

    .line 1689
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5bf
    :goto_5bf
    return-void

    :catchall_5c0
    move-exception p0

    .line 1550
    :try_start_5c1
    monitor-exit v1
    :try_end_5c2
    .catchall {:try_start_5c1 .. :try_end_5c2} :catchall_5c0

    :try_start_5c2
    throw p0

    :catchall_5c3
    move-exception p0

    .line 1551
    monitor-exit v0
    :try_end_5c5
    .catchall {:try_start_5c2 .. :try_end_5c5} :catchall_5c3

    throw p0

    :pswitch_data_5c6
    .packed-switch 0x1
        :pswitch_4b3
        :pswitch_499
        :pswitch_481
        :pswitch_46d
        :pswitch_46d
        :pswitch_457
        :pswitch_42b
    .end packed-switch

    :pswitch_data_5d8
    .packed-switch 0x9
        :pswitch_40c
        :pswitch_3f0
        :pswitch_3c7
        :pswitch_3be
        :pswitch_3a8
        :pswitch_384
        :pswitch_34f
        :pswitch_2f6
    .end packed-switch

    :pswitch_data_5ec
    .packed-switch 0x20
        :pswitch_2e5
        :pswitch_2d8
        :pswitch_2b9
        :pswitch_2b2
        :pswitch_3a8
        :pswitch_2a1
        :pswitch_294
        :pswitch_275
    .end packed-switch

    :pswitch_data_600
    .packed-switch 0x2a
        :pswitch_24c
        :pswitch_22d
        :pswitch_20c
        :pswitch_198
        :pswitch_161
    .end packed-switch

    :pswitch_data_60e
    .packed-switch 0x2f7
        :pswitch_145
        :pswitch_12b
        :pswitch_120
        :pswitch_119
        :pswitch_112
        :pswitch_37
    .end packed-switch
.end method
