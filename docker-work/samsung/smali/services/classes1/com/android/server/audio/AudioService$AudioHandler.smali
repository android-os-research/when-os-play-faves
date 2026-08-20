.class public Lcom/android/server/audio/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public static synthetic $r8$lambda$011v5fPOnV5gl5T_t-frtQvQRY4(Lcom/android/server/audio/AudioService$AudioHandler;Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService$AudioHandler;->lambda$persistVolume$0(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PmC4AEB1d3UXhO9J_akmq-4_nac(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->lambda$persistVolume$1(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 9029
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 9030
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)V
    .registers 3

    .line 9033
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 9034
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private synthetic lambda$persistVolume$0(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .registers 5

    .line 9084
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettings(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SettingsAdapter;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object p0

    .line 9085
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v1

    .line 9086
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexDividedBy10(I)I

    move-result p1

    const/4 p2, -0x2

    .line 9084
    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/android/server/audio/SettingsAdapter;->putSystemIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static synthetic lambda$persistVolume$1(I)V
    .registers 1

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 9127
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_359

    const/4 v1, 0x1

    if-eq v0, v1, :cond_34f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_345

    const/4 v2, 0x3

    if-eq v0, v2, :cond_33b

    const/4 v2, 0x4

    if-eq v0, v2, :cond_335

    const/4 v2, 0x5

    if-eq v0, v2, :cond_327

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-eq v0, v2, :cond_304

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2b2

    const/16 v2, 0x32

    if-eq v0, v2, :cond_2a1

    packed-switch v0, :pswitch_data_366

    packed-switch v0, :pswitch_data_3a4

    packed-switch v0, :pswitch_data_3b8

    .line 9397
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$mhandleCustomMessage(Lcom/android/server/audio/AudioService;Landroid/os/Message;)V

    goto/16 :goto_364

    .line 9219
    :pswitch_2f
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->onInitSpatializer()V

    .line 9220
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioEventWakeLock(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_364

    .line 9214
    :pswitch_3f
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$monInitStreamsAndVolumes(Lcom/android/server/audio/AudioService;)V

    .line 9215
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioEventWakeLock(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_364

    .line 9208
    :pswitch_4f
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmPlaybackMonitor(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_5a

    goto :goto_5b

    :cond_5a
    move v1, v3

    :goto_5b
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->disableAudioForUid(ZI)V

    .line 9210
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioEventWakeLock(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_364

    .line 9391
    :pswitch_6b
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$mdispatchDeviceVolumeBehavior(Lcom/android/server/audio/AudioService;Landroid/media/AudioDeviceAttributes;I)V

    goto/16 :goto_364

    .line 9387
    :pswitch_78
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$mupdateActiveAssistantServiceUids(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_364

    .line 9384
    :pswitch_7f
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-array v0, v1, [I

    iget p1, p1, Landroid/os/Message;->arg1:I

    aput p1, v0, v3

    invoke-static {p0, v0}, Lcom/android/server/audio/AudioService;->-$$Nest$monRemoveAssistantServiceUids(Lcom/android/server/audio/AudioService;[I)V

    goto/16 :goto_364

    .line 9380
    :pswitch_8c
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-array v0, v1, [I

    iget p1, p1, Landroid/os/Message;->arg1:I

    aput p1, v0, v3

    invoke-static {p0, v0}, Lcom/android/server/audio/AudioService;->-$$Nest$monAddAssistantServiceUids(Lcom/android/server/audio/AudioService;[I)V

    goto/16 :goto_364

    .line 9228
    :pswitch_99
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onPersistSpatialAudioDeviceSettings()V

    goto/16 :goto_364

    .line 9224
    :pswitch_a0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSpatializerHelper(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SpatializerHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->onInitSensors()V

    goto/16 :goto_364

    .line 9376
    :pswitch_ab
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onRoutingUpdatedFromAudioThread()V

    goto/16 :goto_364

    .line 9372
    :pswitch_b2
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->dispatchMode(I)V

    goto/16 :goto_364

    .line 9367
    :pswitch_bb
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->queueOnBluetoothActiveDeviceChanged(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    goto/16 :goto_364

    .line 9309
    :pswitch_ca
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$monRecordingConfigChange(Lcom/android/server/audio/AudioService;Ljava/util/List;)V

    goto/16 :goto_364

    .line 9361
    :pswitch_d5
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9362
    :try_start_de
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p1, v3}, Lcom/android/server/audio/AudioService;->onUpdateAudioMode(IILjava/lang/String;Z)V

    .line 9363
    monitor-exit v0

    goto/16 :goto_364

    :catchall_ee
    move-exception p0

    monitor-exit v0
    :try_end_f0
    .catchall {:try_start_de .. :try_end_f0} :catchall_ee

    throw p0

    .line 9357
    :pswitch_f1
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$monUpdateAccessibilityServiceUids(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_364

    .line 9353
    :pswitch_f8
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$monReinitVolumes(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    goto/16 :goto_364

    .line 9349
    :pswitch_103
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$monUpdateVolumeStatesForAudioDevice(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V

    goto/16 :goto_364

    .line 9343
    :pswitch_110
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 9344
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 9345
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 9343
    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$msendBroadcastToAll(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    goto/16 :goto_364

    .line 9317
    :pswitch_12b
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9319
    :try_start_134
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->checkAndResetBtSco()V

    .line 9322
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_144

    .line 9323
    monitor-exit v0

    goto/16 :goto_364

    .line 9327
    :cond_144
    check-cast p1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 9328
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_153

    .line 9329
    monitor-exit v0

    goto/16 :goto_364

    .line 9331
    :cond_153
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->isActive()Z

    move-result v1

    .line 9332
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmPlaybackMonitor(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getUid()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/audio/PlaybackActivityMonitor;->isPlaybackActiveForUid(I)Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setPlaybackActive(Z)V

    .line 9333
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmRecordMonitor(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/RecordingActivityMonitor;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getUid()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/audio/RecordingActivityMonitor;->isRecordingActiveForUid(I)Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setRecordingActive(Z)V

    .line 9334
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmPlaybackMonitor(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getUid()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/audio/PlaybackActivityMonitor;->isSoundPoolActiveForUid(I)Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setSoundPoolActive(Z)V

    .line 9335
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->isActive()Z

    move-result p1

    if-eq v1, p1, :cond_1a2

    .line 9336
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v1, -0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 9337
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 9336
    invoke-virtual {p1, v1, v2, p0, v3}, Lcom/android/server/audio/AudioService;->onUpdateAudioMode(IILjava/lang/String;Z)V

    .line 9339
    :cond_1a2
    monitor-exit v0

    goto/16 :goto_364

    :catchall_1a5
    move-exception p0

    monitor-exit v0
    :try_end_1a7
    .catchall {:try_start_134 .. :try_end_1a7} :catchall_1a5

    throw p0

    .line 9313
    :pswitch_1a8
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSystemServer(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SystemServerAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/audio/SystemServerAdapter;->sendMicrophoneMuteChangedIntent()V

    goto/16 :goto_364

    .line 9306
    :pswitch_1b3
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$monPlaybackConfigChange(Lcom/android/server/audio/AudioService;Ljava/util/List;)V

    goto/16 :goto_364

    .line 9302
    :pswitch_1be
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$monCheckVolumeCecOnHdmiConnection(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V

    goto/16 :goto_364

    .line 9298
    :pswitch_1cb
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$monObserveDevicesForAllStreams(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_364

    .line 9288
    :pswitch_1d4
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monSetVolumeIndexOnDevice(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V

    const-string/jumbo v0, "muteMediaStreamOfSpeaker"

    .line 9290
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    iget-object v1, v1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    .line 9291
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_364

    .line 9292
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x3

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIIII)V

    goto/16 :goto_364

    .line 9284
    :pswitch_1fa
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$monUpdateRingerModeServiceInt(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_364

    .line 9280
    :pswitch_201
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$monEnableSurroundFormats(Lcom/android/server/audio/AudioService;Ljava/util/ArrayList;)V

    goto/16 :goto_364

    .line 9157
    :pswitch_20c
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_213

    goto :goto_214

    :cond_213
    move v1, v3

    :goto_214
    invoke-static {p0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monDispatchAudioServerStateChange(Lcom/android/server/audio/AudioService;Z)V

    goto/16 :goto_364

    .line 9276
    :pswitch_219
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->onNotifyVolumeEvent(Landroid/media/audiopolicy/IAudioPolicyCallback;I)V

    goto/16 :goto_364

    .line 9257
    :pswitch_224
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$monAccessoryPlugMediaUnmute(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_364

    .line 9253
    :pswitch_22d
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    goto/16 :goto_364

    .line 9272
    :pswitch_234
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$monDynPolicyMixStateUpdate(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    goto/16 :goto_364

    .line 9268
    :pswitch_241
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$monUnmuteStream(Lcom/android/server/audio/AudioService;II)V

    goto/16 :goto_364

    .line 9261
    :pswitch_24c
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 9262
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettings(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SettingsAdapter;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "unsafe_volume_music_active_ms"

    const/4 v2, -0x2

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/android/server/audio/SettingsAdapter;->putSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_364

    .line 9249
    :pswitch_263
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onSystemReady()V

    goto/16 :goto_364

    .line 9161
    :pswitch_26a
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSfxHelper(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SoundEffectsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/audio/SoundEffectsHelper;->unloadSoundEffects()V

    goto/16 :goto_364

    .line 9245
    :pswitch_275
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->onPersistSafeVolumeState(I)V

    goto/16 :goto_364

    .line 9241
    :pswitch_27c
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v2, 0xd

    if-ne v0, v2, :cond_283

    goto :goto_284

    :cond_283
    move v1, v3

    :goto_284
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v1, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$monConfigureSafeVolume(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V

    goto/16 :goto_364

    .line 9236
    :pswitch_28d
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$monCheckMusicActive(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    goto/16 :goto_364

    .line 9134
    :pswitch_298
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    goto/16 :goto_364

    .line 9232
    :cond_2a1
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSpatializerHelper(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SpatializerHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmHasSpatializerEffect(Lcom/android/server/audio/AudioService;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/audio/SpatializerHelper;->reset(Z)V

    goto/16 :goto_364

    .line 9184
    :cond_2b2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 9185
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 9186
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 9194
    new-instance v2, Landroid/media/MediaMetrics$Item;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio.forceUse."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9195
    invoke-static {v1}, Landroid/media/AudioSystem;->forceUseUsageToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v4, "setForceUse"

    .line 9196
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v3, Landroid/media/MediaMetrics$Property;->FORCE_USE_DUE_TO:Landroid/media/MediaMetrics$Key;

    .line 9197
    invoke-virtual {v2, v3, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v3, Landroid/media/MediaMetrics$Property;->FORCE_USE_MODE:Landroid/media/MediaMetrics$Key;

    .line 9199
    invoke-static {p1}, Landroid/media/AudioSystem;->forceUseConfigToString(I)Ljava/lang/String;

    move-result-object v4

    .line 9198
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    .line 9200
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 9201
    sget-object v2, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    invoke-direct {v3, v1, p1, v0}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 9203
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setForceUse(II)I

    goto :goto_364

    .line 9166
    :cond_304
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    .line 9167
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSystemReady(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_31a

    .line 9168
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSfxHelper(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SoundEffectsHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->loadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    goto :goto_364

    :cond_31a
    const-string p0, "AS.AudioService"

    const-string v0, "[schedule]loadSoundEffects() called before boot complete"

    .line 9170
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_364

    .line 9172
    invoke-virtual {p1, v3}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->run(Z)V

    goto :goto_364

    .line 9179
    :cond_327
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSfxHelper(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SoundEffectsHelper;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->playSoundEffect(II)V

    goto :goto_364

    .line 9153
    :cond_335
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onAudioServerDied()V

    goto :goto_364

    .line 9149
    :cond_33b
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->persistRingerMode(I)V

    goto :goto_364

    .line 9142
    :cond_345
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/audio/AudioService$VolumeGroupState;

    .line 9143
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->-$$Nest$mpersistVolumeGroup(Lcom/android/server/audio/AudioService$VolumeGroupState;I)V

    goto :goto_364

    .line 9138
    :cond_34f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    goto :goto_364

    .line 9130
    :cond_359
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    :cond_364
    :goto_364
    return-void

    nop

    :pswitch_data_366
    .packed-switch 0xa
        :pswitch_298
        :pswitch_28d
        :pswitch_27c
        :pswitch_27c
        :pswitch_275
        :pswitch_26a
        :pswitch_263
        :pswitch_24c
        :pswitch_241
        :pswitch_234
        :pswitch_22d
        :pswitch_224
        :pswitch_219
        :pswitch_20c
        :pswitch_201
        :pswitch_1fa
        :pswitch_1d4
        :pswitch_1cb
        :pswitch_1be
        :pswitch_1b3
        :pswitch_1a8
        :pswitch_12b
        :pswitch_110
        :pswitch_103
        :pswitch_f8
        :pswitch_f1
        :pswitch_d5
        :pswitch_ca
        :pswitch_bb
    .end packed-switch

    :pswitch_data_3a4
    .packed-switch 0x28
        :pswitch_b2
        :pswitch_ab
        :pswitch_a0
        :pswitch_99
        :pswitch_8c
        :pswitch_7f
        :pswitch_78
        :pswitch_6b
    .end packed-switch

    :pswitch_data_3b8
    .packed-switch 0x64
        :pswitch_4f
        :pswitch_3f
        :pswitch_2f
    .end packed-switch
.end method

.method public final onNotifyVolumeEvent(Landroid/media/audiopolicy/IAudioPolicyCallback;I)V
    .registers 3

    .line 9119
    :try_start_0
    invoke-interface {p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyVolumeAdjust(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public final onPersistSafeVolumeState(I)V
    .registers 4

    .line 9111
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettings(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SettingsAdapter;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "audio_safe_volume_state"

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/server/audio/SettingsAdapter;->putGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final persistRingerMode(I)V
    .registers 4

    .line 9104
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmUseFixedVolume(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 9107
    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettings(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SettingsAdapter;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "mode_ringer"

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/server/audio/SettingsAdapter;->putGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .registers 11

    .line 9053
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmUseFixedVolume(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 9056
    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmIsSingleVolume(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-$$Nest$fgetmStreamType(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    return-void

    .line 9059
    :cond_19
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-$$Nest$mhasValidSettingsName(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 9061
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexDividedBy10(I)I

    move-result v4

    .line 9062
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-$$Nest$fgetmStreamType(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6f

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3f

    .line 9064
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    const/16 v2, 0x2fb

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string/jumbo v6, "persist.audio.sysvolume"

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_6f

    .line 9067
    :cond_3f
    invoke-static {p2}, Lcom/samsung/android/server/audio/AudioHelper;->isWiredDeviceType(I)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v0, 0x4

    if-ne p2, v0, :cond_5a

    .line 9069
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    const/16 v2, 0x2fb

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string/jumbo v6, "persist.audio.headsetsysvolume"

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_6f

    :cond_5a
    const/16 v0, 0x8

    if-ne p2, v0, :cond_6f

    .line 9073
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    const/16 v2, 0x2fb

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string/jumbo v6, "persist.audio.hphonesysvolume"

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 9083
    :cond_6f
    :goto_6f
    new-instance v0, Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    .line 9089
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, p2}, Lcom/android/server/audio/AudioService;->-$$Nest$mshouldSkipDeviceAlias(Lcom/android/server/audio/AudioService;I)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 9090
    new-instance v0, Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda1;-><init>()V

    .line 9093
    :cond_81
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceAliasManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/DeviceAliasManager;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-$$Nest$fgetmStreamType(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    invoke-virtual {v1, p2, v2, v0}, Lcom/samsung/android/server/audio/DeviceAliasManager;->apply(IILcom/samsung/android/server/audio/DeviceAliasManager$DeviceAliasRunner;)V

    .line 9095
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettings(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SettingsAdapter;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object p0

    .line 9096
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v1

    .line 9097
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexDividedBy10(I)I

    move-result p1

    const/4 p2, -0x2

    .line 9095
    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/android/server/audio/SettingsAdapter;->putSystemIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_a6
    return-void
.end method

.method public final setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .registers 5

    .line 9040
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 9043
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_29

    .line 9045
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-$$Nest$fgetmStreamType(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v1

    if-eq v0, v1, :cond_26

    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v0

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-$$Nest$fgetmStreamType(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-ne v1, v2, :cond_26

    .line 9047
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmStreamStates(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_29
    return-void
.end method
