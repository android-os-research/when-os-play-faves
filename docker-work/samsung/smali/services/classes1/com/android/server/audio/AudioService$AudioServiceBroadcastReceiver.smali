.class public Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public static synthetic $r8$lambda$CSAh1QWZNBPAdG3Jj2MciOqtIQM(Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->lambda$onReceive$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$DZ4TvRclgDlx5NA5696YCl6WllQ(Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->lambda$onReceive$0(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n0ulPI95qgOBoU4rq6UTzWEIoBs()V
    .registers 0

    invoke-static {}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->lambda$onReceive$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$qimFMM2yzrnYdr4deJcFo-E8tqc(Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->lambda$onReceive$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$zR-e7Q9MBSyrb8ZhDGUkAAi7X4I()V
    .registers 0

    invoke-static {}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->lambda$onReceive$1()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 9561
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/Intent;)V
    .registers 2

    .line 9607
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->receiveBtEvent(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$onReceive$1()V
    .registers 1

    const-string/jumbo v0, "screen_state=on"

    .line 9617
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$onReceive$2()V
    .registers 3

    .line 9620
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/audio/SoundAliveHelper;->notifyDVFSToSoundAlive(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static synthetic lambda$onReceive$3()V
    .registers 1

    const-string/jumbo v0, "screen_state=off"

    .line 9628
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$onReceive$4()V
    .registers 2

    .line 9631
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/samsung/android/server/audio/SoundAliveHelper;->notifyDVFSToSoundAlive(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    .line 9564
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DOCK_EVENT"

    .line 9569
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_47

    const-string p1, "android.intent.extra.DOCK_STATE"

    .line 9570
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v4, :cond_28

    const/4 p2, 0x2

    if-eq p1, p2, :cond_26

    if-eq p1, v2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    goto :goto_29

    :cond_20
    const/16 v3, 0x9

    goto :goto_29

    :cond_23
    const/16 v3, 0x8

    goto :goto_29

    :cond_26
    const/4 v3, 0x6

    goto :goto_29

    :cond_28
    const/4 v3, 0x7

    :goto_29
    if-eq p1, v2, :cond_40

    if-nez p1, :cond_35

    .line 9592
    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDockState(Lcom/android/server/audio/AudioService;)I

    move-result p2

    if-eq p2, v2, :cond_40

    .line 9595
    :cond_35
    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p2

    const-string v0, "ACTION_DOCK_EVENT intent"

    invoke-virtual {p2, v2, v3, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 9603
    :cond_40
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmDockState(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_22b

    :cond_47
    const-string v1, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 9604
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_223

    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 9605
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    goto/16 :goto_223

    :cond_59
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 9612
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 9613
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMonitorRotation(Lcom/android/server/audio/AudioService;)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 9614
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    .line 9617
    :cond_6c
    new-instance p1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9619
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDvfsHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/DvfsHelper;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/samsung/android/server/audio/DvfsHelper;->setScreenOn(Z)V

    .line 9620
    new-instance p1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;)V

    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_22b

    :cond_87
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 9622
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 9623
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMonitorRotation(Lcom/android/server/audio/AudioService;)Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 9625
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->disable()V

    .line 9628
    :cond_9a
    new-instance p1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9630
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDvfsHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/DvfsHelper;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/samsung/android/server/audio/DvfsHelper;->setScreenOn(Z)V

    .line 9631
    new-instance p1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;)V

    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_22b

    :cond_b5
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 9633
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 9634
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$mhandleConfigurationChanged(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V

    goto/16 :goto_22b

    :cond_c4
    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 9635
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "android.intent.extra.user_handle"

    if-eqz v1, :cond_152

    .line 9636
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmUserSwitchedReceived(Lcom/android/server/audio/AudioService;)Z

    move-result p1

    if-eqz p1, :cond_df

    .line 9639
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastBecomingNoisy()V

    .line 9641
    :cond_df
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1, v4}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmUserSwitchedReceived(Lcom/android/server/audio/AudioService;Z)V

    .line 9643
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMediaFocusControl(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    .line 9645
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSupportsMicPrivacyToggle(Lcom/android/server/audio/AudioService;)Z

    move-result p1

    if-eqz p1, :cond_111

    .line 9646
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSensorPrivacyManagerInternal(Lcom/android/server/audio/AudioService;)Landroid/hardware/SensorPrivacyManagerInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 9647
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$mgetCurrentUserId(Lcom/android/server/audio/AudioService;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmMicMuteFromPrivacyToggle(Lcom/android/server/audio/AudioService;Z)V

    .line 9649
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$mgetCurrentUserId(Lcom/android/server/audio/AudioService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/audio/AudioService;->-$$Nest$msetMicrophoneMuteNoCallerCheck(Lcom/android/server/audio/AudioService;I)V

    .line 9653
    :cond_111
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1, v4}, Lcom/android/server/audio/AudioService;->-$$Nest$mreadAudioSettings(Lcom/android/server/audio/AudioService;Z)V

    .line 9655
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v6

    const/16 v7, 0xa

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmStreamStates(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object p1

    aget-object v11, p1, v2

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 9661
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    if-eqz p1, :cond_22b

    .line 9662
    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 9663
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_USER_SWITCHED :: userId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AS.AudioService"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9664
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0, p1, v4}, Lcom/android/server/audio/AudioService;->-$$Nest$mupdateThemeSound(Lcom/android/server/audio/AudioService;IZ)V

    goto/16 :goto_22b

    :cond_152
    const-string v1, "android.intent.action.USER_BACKGROUND"

    .line 9666
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "no_record_audio"

    const/4 v6, -0x1

    if-eqz v1, :cond_17a

    .line 9668
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_171

    .line 9671
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    .line 9672
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0, p2}, Lcom/android/server/audio/AudioService;->-$$Nest$mkillBackgroundUserProcessesWithRecordAudioPermission(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V

    .line 9674
    :cond_171
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0, v2, v4, p1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    goto/16 :goto_22b

    :cond_17a
    const-string v1, "android.intent.action.USER_FOREGROUND"

    .line 9676
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18f

    .line 9678
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 9679
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object p1

    invoke-virtual {p1, v2, v3, p0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    goto/16 :goto_22b

    :cond_18f
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 9681
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d3

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 9682
    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xc

    if-eq p1, p2, :cond_1c1

    .line 9683
    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmIsBluetoothCastState(Lcom/android/server/audio/AudioService;)Z

    move-result p2

    if-eqz p2, :cond_1c1

    .line 9684
    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2, v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmIsBluetoothCastState(Lcom/android/server/audio/AudioService;Z)V

    .line 9685
    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x8000

    const/4 v5, 0x0

    const-string v3, "0"

    const-string/jumbo v4, "remote_submix"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->updateDeviceQuickConnection(ZILjava/lang/String;Ljava/lang/String;I)V

    :cond_1c1
    const/16 p2, 0xa

    if-eq p1, p2, :cond_1c9

    const/16 p2, 0xd

    if-ne p1, p2, :cond_22b

    .line 9693
    :cond_1c9
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectAllBluetoothProfiles()V

    goto :goto_22b

    :cond_1d3
    const-string v1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    .line 9699
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21d

    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    .line 9700
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e4

    goto :goto_21d

    :cond_1e4
    const-string p1, "android.intent.action.PACKAGES_SUSPENDED"

    .line 9702
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22b

    const-string p1, "android.intent.extra.changed_uid_list"

    .line 9703
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p1

    const-string v0, "android.intent.extra.changed_package_list"

    .line 9705
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_21c

    if-eqz p1, :cond_21c

    .line 9706
    array-length v0, p2

    array-length v1, p1

    if-eq v0, v1, :cond_201

    goto :goto_21c

    .line 9710
    :cond_201
    :goto_201
    array-length v0, p1

    if-ge v3, v0, :cond_22b

    .line 9711
    aget-object v0, p2, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_219

    .line 9712
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMediaFocusControl(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    aget-object v1, p2, v3

    aget v2, p1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->noFocusForSuspendedApp(Ljava/lang/String;I)V

    :cond_219
    add-int/lit8 v3, v3, 0x1

    goto :goto_201

    :cond_21c
    :goto_21c
    return-void

    .line 9701
    :cond_21d
    :goto_21d
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0, p1, p2}, Lcom/android/server/audio/AudioService;->-$$Nest$mhandleAudioEffectBroadcast(Lcom/android/server/audio/AudioService;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_22b

    .line 9607
    :cond_223
    :goto_223
    new-instance p1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_22b
    :goto_22b
    return-void
.end method
