.class public final Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
.super Lcom/android/server/hdmi/HdmiCecLocalDevice;
.source "HdmiCecLocalDeviceTv.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HdmiCecLocalDeviceTv"


# instance fields
.field public mArcEstablished:Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field public final mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

.field public final mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

.field public mPrevPortId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

.field public mSkipRoutingControl:Z

.field public mSystemAudioControlFeatureEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSystemAudioMute:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSystemAudioVolume:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

.field public final mTvInputs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Msmb6QsMvPNAnyeKpauClLZcxes([B)Landroid/media/AudioDescriptor;
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->lambda$notifyArcStatusToAudioService$0([B)Landroid/media/AudioDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSelectRequestBuffer(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)Lcom/android/server/hdmi/SelectRequestBuffer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$maddTvInput(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addTvInput(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveTvInput(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeTvInput(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetSelectRequestBuffer(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->resetSelectRequestBuffer()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 5

    const/4 v0, 0x0

    .line 159
    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 74
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    .line 79
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    const/4 v1, -0x1

    .line 93
    iput v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioVolume:I

    .line 96
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioMute:Z

    .line 107
    new-instance v2, Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/DelayedMessageBuffer;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    .line 112
    new-instance v2, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    .line 135
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    .line 160
    iput v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mPrevPortId:I

    .line 161
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v1

    const-string/jumbo v2, "system_audio_control"

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_38

    move v0, v2

    :cond_38
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioControlFeatureEnabled:Z

    .line 164
    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    invoke-direct {v0, p1, p0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    return-void
.end method

.method public static isTailOfActivePath(II)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/16 v1, 0xc

    :goto_6
    if-ltz v1, :cond_1a

    shr-int v2, p1, v1

    and-int/lit8 v2, v2, 0xf

    if-nez v2, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    shr-int v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    if-eq v3, v2, :cond_17

    return v0

    :cond_17
    add-int/lit8 v1, v1, -0x4

    goto :goto_6

    :cond_1a
    return v0
.end method

.method public static synthetic lambda$notifyArcStatusToAudioService$0([B)Landroid/media/AudioDescriptor;
    .registers 4

    .line 856
    new-instance v0, Landroid/media/AudioDescriptor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Landroid/media/AudioDescriptor;-><init>(II[B)V

    return-object v0
.end method


# virtual methods
.method public final addTvInput(Ljava/lang/String;I)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 140
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public announceClearTimerRecordingResult(II)V
    .registers 3

    .line 1180
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeClearTimerRecordingResult(II)V

    return-void
.end method

.method public announceOneTouchRecordResult(II)V
    .registers 3

    .line 1172
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeOneTouchRecordResult(II)V

    return-void
.end method

.method public announceTimerRecordingResult(II)V
    .registers 3

    .line 1176
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeTimerRecordingResult(II)V

    return-void
.end method

.method public broadcastMenuLanguage(Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 521
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 524
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    .line 523
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetMenuLanguageCommand(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 526
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final canStartArcUpdateAction(IZ)Z
    .registers 6

    .line 1036
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 1038
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    if-ne p1, v2, :cond_3b

    .line 1039
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isConnectedToArcPort(I)Z

    move-result p1

    if-eqz p1, :cond_3b

    const/4 p1, 0x1

    if-eqz p2, :cond_3a

    .line 1041
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnected(I)Z

    move-result p2

    if-eqz p2, :cond_39

    .line 1042
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcFeatureEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_39

    .line 1043
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isDirectConnectAddress(I)Z

    move-result p0

    if-eqz p0, :cond_39

    move v1, p1

    :cond_39
    return v1

    :cond_3a
    return p1

    :cond_3b
    return v1
.end method

.method public changeArcFeatureEnabled(IZ)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 878
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 879
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_c

    return-void

    .line 882
    :cond_c
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 883
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 884
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v0

    if-eq v0, p1, :cond_1e

    goto :goto_33

    :cond_1e
    if-eqz p2, :cond_29

    .line 887
    iget-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    if-nez p1, :cond_29

    const/4 p1, 0x1

    .line 888
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(Z)V

    goto :goto_33

    :cond_29
    if-nez p2, :cond_33

    .line 889
    iget-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    if-eqz p1, :cond_33

    const/4 p1, 0x0

    .line 890
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(Z)V

    :cond_33
    :goto_33
    return-void
.end method

.method public changeMute(Z)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 983
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 984
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    move-result v0

    if-nez v0, :cond_12

    goto :goto_58

    :cond_12
    const-string v0, "[A]:Change mute:%b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 989
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 990
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 991
    :try_start_24
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioMute:Z

    if-ne v1, p1, :cond_31

    const-string p0, "No need to change mute."

    new-array p1, v3, [Ljava/lang/Object;

    .line 992
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 993
    monitor-exit v0

    return-void

    .line 995
    :cond_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_55

    .line 996
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v0

    if-nez v0, :cond_40

    const-string p0, "[A]:System audio is not activated."

    new-array p1, v3, [Ljava/lang/Object;

    .line 997
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1002
    :cond_40
    const-class v0, Lcom/android/server/hdmi/VolumeControlAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 1003
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    .line 1004
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->getMuteKey(Z)I

    move-result p1

    .line 1003
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendUserControlPressedAndReleased(II)V

    return-void

    :catchall_55
    move-exception p0

    .line 995
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p0

    :cond_58
    :goto_58
    return-void
.end method

.method public changeSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 744
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 745
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    const-class v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_30

    .line 750
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_23

    .line 752
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(Z)V

    const/4 p1, 0x3

    .line 753
    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void

    .line 757
    :cond_23
    new-instance v1, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    .line 758
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/server/hdmi/SystemAudioActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 757
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void

    .line 746
    :cond_30
    :goto_30
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(Z)V

    const/4 p1, 0x6

    .line 747
    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void
.end method

.method public changeVolume(III)V
    .registers 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 949
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 950
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    if-eqz p2, :cond_65

    .line 954
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_65

    :cond_1b
    add-int/2addr p1, p2

    .line 960
    invoke-static {p1, p3}, Lcom/android/server/hdmi/VolumeControlAction;->scaleToCecVolume(II)I

    move-result p1

    .line 961
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 964
    :try_start_23
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioVolume:I

    const/4 v2, 0x0

    if-ne p1, v1, :cond_33

    .line 966
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 967
    invoke-static {v1, p3}, Lcom/android/server/hdmi/VolumeControlAction;->scaleToCustomVolume(II)I

    move-result p1

    .line 966
    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->setAudioStatus(ZI)V

    .line 968
    monitor-exit v0

    return-void

    .line 970
    :cond_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_23 .. :try_end_34} :catchall_62

    .line 972
    const-class p1, Lcom/android/server/hdmi/VolumeControlAction;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 973
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_55

    .line 974
    new-instance p1, Lcom/android/server/hdmi/VolumeControlAction;

    .line 975
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p3

    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p3

    if-lez p2, :cond_4e

    move v2, v0

    :cond_4e
    invoke-direct {p1, p0, p3, v2}, Lcom/android/server/hdmi/VolumeControlAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    .line 974
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_61

    .line 977
    :cond_55
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/VolumeControlAction;

    if-lez p2, :cond_5e

    move v2, v0

    :cond_5e
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/VolumeControlAction;->handleVolumeChange(Z)V

    :goto_61
    return-void

    :catchall_62
    move-exception p0

    .line 970
    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw p0

    :cond_65
    :goto_65
    return-void
.end method

.method public final checkRecordSource([B)Z
    .registers 2

    if-eqz p1, :cond_a

    .line 1463
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiRecordSources;->checkRecordSource([B)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final checkRecorder(I)Z
    .registers 3

    .line 1457
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_14

    .line 1458
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiUtils;->isEligibleAddressForDevice(II)Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public final checkTimerRecordingSource(I[B)Z
    .registers 3

    if-eqz p2, :cond_a

    .line 1499
    invoke-static {p1, p2}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSource(I[B)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public clearTimerRecording(II[B)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1504
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1505
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    const-string v1, "HdmiCecLocalDeviceTv"

    if-nez v0, :cond_18

    const-string p2, "Can not start one touch record. CEC control is disabled."

    .line 1506
    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xa2

    .line 1507
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    return-void

    .line 1511
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    move-result v0

    if-nez v0, :cond_38

    .line 1512
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid recorder address:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xa0

    .line 1513
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    return-void

    .line 1518
    :cond_38
    invoke-virtual {p0, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkTimerRecordingSource(I[B)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 1519
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid record source."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xa1

    .line 1520
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    return-void

    .line 1525
    :cond_5c
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->sendClearTimerMessage(II[B)V

    return-void
.end method

.method public computeDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;
    .registers 4

    .line 1590
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo()Ljava/util/List;

    move-result-object v0

    .line 1591
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiPortInfo;

    .line 1592
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcFeatureEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    move p0, v2

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    .line 1598
    :goto_24
    sget-object v0, Landroid/hardware/hdmi/DeviceFeatures;->NO_FEATURES_SUPPORTED:Landroid/hardware/hdmi/DeviceFeatures;

    invoke-virtual {v0}, Landroid/hardware/hdmi/DeviceFeatures;->toBuilder()Landroid/hardware/hdmi/DeviceFeatures$Builder;

    move-result-object v0

    .line 1599
    invoke-virtual {v0, v2}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setRecordTvScreenSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    move-result-object v0

    .line 1600
    invoke-virtual {v0, p0}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setArcTxSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    move-result-object p0

    .line 1601
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setSetAudioVolumeLevelSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    move-result-object p0

    .line 1602
    invoke-virtual {p0}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->build()Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object p0

    return-object p0
.end method

.method public deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 243
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 244
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    if-nez p1, :cond_14

    const/4 p1, 0x3

    .line 246
    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void

    .line 249
    :cond_14
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    .line 250
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isAlreadyActiveSource(Landroid/hardware/hdmi/HdmiDeviceInfo;ILandroid/hardware/hdmi/IHdmiControlCallback;)Z

    move-result v1

    if-eqz v1, :cond_1f

    return-void

    :cond_1f
    const-string v1, "HdmiCecLocalDeviceTv#deviceSelect()"

    if-nez v0, :cond_3d

    .line 254
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleSelectInternalSource()V

    .line 256
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result p1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActiveSource(IILjava/lang/String;)V

    .line 258
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePath(I)V

    const/4 p1, 0x0

    .line 259
    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void

    .line 262
    :cond_3d
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 263
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActiveSource(Landroid/hardware/hdmi/HdmiDeviceInfo;Ljava/lang/String;)V

    const/4 p1, 0x6

    .line 264
    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void

    .line 267
    :cond_4d
    const-class v0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 268
    new-instance v0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void
.end method

.method public disableArc()V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 825
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 826
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Set Arc Status[old:%b new:false]"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 828
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->enableAudioReturnChannel(Z)V

    .line 829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->notifyArcStatusToAudioService(ZLjava/util/List;)V

    .line 830
    iput-boolean v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    return-void
.end method

.method public final disableArcIfExist()V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1340
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1341
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    .line 1345
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->disableArc()V

    .line 1348
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAllRunningArcAction()V

    .line 1349
    const-class v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcEstablished()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1350
    new-instance v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/hdmi/RequestArcTerminationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    :cond_2a
    return-void
.end method

.method public disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1295
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1296
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->unregisterTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    .line 1301
    const-class v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 1302
    const-class v0, Lcom/android/server/hdmi/HotplugDetectionAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 1303
    const-class v0, Lcom/android/server/hdmi/PowerStatusMonitorAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 1305
    const-class v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 1306
    const-class v0, Lcom/android/server/hdmi/TimerRecordingAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 1307
    const-class v0, Lcom/android/server/hdmi/NewDeviceAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 1308
    const-class v0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 1310
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->disableSystemAudioIfExist()V

    .line 1311
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->disableArcIfExist()V

    .line 1313
    invoke-super {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 1314
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->clearDeviceInfoList()V

    .line 1315
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    const p1, 0xffff

    .line 1316
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePath(I)V

    .line 1317
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->checkIfPendingActionsCleared()V

    return-void
.end method

.method public final disableSystemAudioIfExist()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1322
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1323
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    .line 1328
    :cond_a
    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 1329
    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 1330
    const-class v0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 1331
    const-class v0, Lcom/android/server/hdmi/VolumeControlAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 1333
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x0

    .line 1334
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(Z)V

    :cond_2a
    return-void
.end method

.method public dispatchMessage(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 227
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 228
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandby()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isWakeUpMessageReceived()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .line 229
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->handleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 p0, -0x1

    return p0

    .line 232
    :cond_1d
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0
.end method

.method public displayOsd(I)V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1391
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1392
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->displayOsd(I)V

    return-void
.end method

.method public displayOsd(II)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1397
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1398
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->displayOsd(II)V

    return-void
.end method

.method public doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 363
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 365
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->isValidPortId(I)Z

    move-result v0

    const/4 v1, 0x6

    if-nez v0, :cond_10

    .line 366
    invoke-virtual {p0, p2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void

    .line 369
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    move-result v0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1b

    .line 370
    invoke-virtual {p0, p2, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void

    .line 373
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 374
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-nez v0, :cond_31

    .line 375
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePortId(I)V

    .line 376
    invoke-virtual {p0, p2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void

    .line 379
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_43

    .line 380
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v0

    goto :goto_4b

    :cond_43
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v0

    .line 381
    :goto_4b
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePath(I)V

    .line 382
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    if-eqz v1, :cond_55

    .line 383
    iput-boolean v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    return-void

    .line 386
    :cond_55
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result p1

    .line 387
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IILandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 1637
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mArcEstablished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mArcFeatureEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSystemAudioMute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioMute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSystemAudioControlFeatureEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioControlFeatureEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSkipRoutingControl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPrevPortId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mPrevPortId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enableArc(Ljava/util/List;)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 815
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 816
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Set Arc Status[old:%b new:true]"

    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 818
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->enableAudioReturnChannel(Z)V

    .line 819
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->notifyArcStatusToAudioService(ZLjava/util/List;)V

    .line 820
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    return-void
.end method

.method public enableAudioReturnChannel(Z)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 838
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 839
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 841
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->enableAudioReturnChannel(IZ)V

    :cond_12
    return-void
.end method

.method public findAudioReceiverAddress()I
    .registers 1

    const/4 p0, 0x5

    return p0
.end method

.method public findKeyReceiverAddress()I
    .registers 2

    .line 413
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->isValid()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 414
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object p0

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    return p0

    .line 416
    :cond_11
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePath()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 418
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    return p0

    :cond_26
    const/4 p0, -0x1

    return p0
.end method

.method public getAutoWakeup()Z
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1286
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1287
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p0

    const-string/jumbo v0, "tv_wake_on_one_touch_play"

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1194
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1195
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPowerStatus()I
    .registers 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 407
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 408
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPowerStatus()I

    move-result p0

    return p0
.end method

.method public getPreferredAddress()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getPrevPortId()I
    .registers 2

    .line 323
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_3
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mPrevPortId:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 325
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getRcFeatures()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1580
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1581
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p0

    const-string/jumbo v1, "rc_profile_tv"

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p0

    .line 1583
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getRcProfile()I
    .registers 1
    .annotation build Lcom/android/server/hdmi/Constants$RcProfile;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getSafeAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2

    .line 1204
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getSafeCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSystemAudioOutputDevice()Landroid/media/AudioDeviceAttributes;
    .registers 1

    .line 1211
    sget-object p0, Lcom/android/server/hdmi/HdmiControlService;->AUDIO_OUTPUT_DEVICE_HDMI_ARC:Landroid/media/AudioDeviceAttributes;

    return-object p0
.end method

.method public handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 9
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 432
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 433
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 434
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v1

    .line 435
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_36

    .line 437
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleNewDeviceAtTheTailOfActivePath(I)Z

    move-result v1

    if-nez v1, :cond_78

    new-array v1, v3, [Ljava/lang/Object;

    .line 438
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "Device info %X not found; buffering the command"

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_78

    .line 441
    :cond_36
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isInputReady(I)Z

    move-result v5

    if-nez v5, :cond_5f

    .line 442
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_48

    goto :goto_5f

    :cond_48
    new-array v0, v3, [Ljava/lang/Object;

    .line 448
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Input not ready for device: %X; buffering the command"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_78

    .line 443
    :cond_5f
    :goto_5f
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object p1

    invoke-virtual {p1, v0, v4}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateDevicePowerStatus(II)V

    .line 445
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(II)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object p1

    const/4 v0, 0x0

    .line 446
    invoke-static {p0, v0}, Lcom/android/server/hdmi/ActiveSourceHandler;->create(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/ActiveSourceHandler;

    move-result-object p0

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/ActiveSourceHandler;->process(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V

    :cond_78
    :goto_78
    const/4 p0, -0x1

    return p0
.end method

.method public handleGetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 512
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 513
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->broadcastMenuLanguage(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_29

    .line 514
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to respond to <Get Menu Language>: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiCecLocalDeviceTv"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    const/4 p0, -0x1

    return p0
.end method

.method public handleImageViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 677
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 679
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0
.end method

.method public handleInactiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 458
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 462
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_11

    return v2

    .line 465
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isProhibitMode()Z

    move-result v0

    if-eqz v0, :cond_18

    return v2

    .line 468
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getPrevPortId()I

    move-result v0

    if-eq v0, v2, :cond_44

    .line 472
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v1

    .line 473
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    .line 472
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    if-nez p1, :cond_2f

    return v2

    .line 477
    :cond_2f
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result p1

    if-ne p1, v0, :cond_3c

    return v2

    :cond_3c
    const/4 p1, 0x0

    .line 482
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 483
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setPrevPortId(I)V

    goto :goto_58

    .line 487
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    const p1, 0xffff

    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePath(I)V

    .line 489
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    sget-object p1, Landroid/hardware/hdmi/HdmiDeviceInfo;->INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    :goto_58
    return v2
.end method

.method public handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1011
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1013
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->canStartArcUpdateAction(IZ)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_2a

    .line 1014
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 1017
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return v2

    .line 1020
    :cond_1b
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isConnectedToArcPort(I)Z

    move-result p1

    if-nez p1, :cond_28

    .line 1021
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->displayOsd(I)V

    :cond_28
    const/4 p0, 0x4

    return p0

    .line 1028
    :cond_2a
    const-class v0, Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 1029
    new-instance v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    .line 1030
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    .line 1031
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return v2
.end method

.method public handleMenuStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public final handleNewDeviceAtTheTailOfActivePath(I)Z
    .registers 4

    .line 582
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePath()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isTailOfActivePath(II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 583
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result p1

    .line 584
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePath(I)V

    .line 585
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePath()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IILandroid/hardware/hdmi/IHdmiControlCallback;)V

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public handleRecordStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1130
    const-class v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1131
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    const/4 v1, 0x0

    .line 1133
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    .line 1134
    invoke-virtual {v0}, Lcom/android/server/hdmi/OneTouchRecordAction;->getRecorderAddress()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    if-eq v0, v1, :cond_26

    .line 1136
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    const/16 v0, 0x30

    .line 1135
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    :cond_26
    const/4 p0, 0x2

    return p0

    .line 1144
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    .line 1145
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->invokeRecordRequestListener(I)[B

    move-result-object v0

    .line 1146
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startOneTouchRecord(I[B)I

    move-result p0

    return p0
.end method

.method public handleRemoveActiveRoutingPath(I)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1217
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1219
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePath()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isTailOfActivePath(II)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 1220
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result p1

    .line 1221
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePath()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IILandroid/hardware/hdmi/IHdmiControlCallback;)V

    :cond_1f
    return-void
.end method

.method public handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 639
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 640
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    move-result v0

    if-nez v0, :cond_d

    const/4 p0, 0x4

    return p0

    .line 645
    :cond_d
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->isAudioStatusMute(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    .line 646
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getAudioStatusVolume(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p1

    .line 647
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioStatus(ZI)V

    const/4 p0, -0x1

    return p0
.end method

.method public handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 5

    .line 535
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 536
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v0

    .line 537
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    .line 538
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    const/4 v2, 0x2

    aget-byte p1, p1, v2

    .line 540
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->isInDeviceList(II)Z

    move-result v2

    if-nez v2, :cond_25

    .line 541
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleNewDeviceAtTheTailOfActivePath(I)Z

    .line 543
    :cond_25
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(II)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startNewDeviceAction(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V

    const/4 p0, -0x1

    return p0
.end method

.method public handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 498
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 500
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    if-ne p1, v0, :cond_28

    .line 501
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 503
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePath()I

    move-result p0

    .line 502
    invoke-static {v0, p0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    .line 501
    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :cond_28
    const/4 p0, -0x1

    return p0
.end method

.method public handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 622
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 624
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    .line 625
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v0

    .line 626
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePath()I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiUtils;->isAffectingActiveRoutingPath(II)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 627
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 628
    const-class v0, Lcom/android/server/hdmi/RoutingControlAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    const/4 v0, 0x2

    .line 629
    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result p1

    .line 630
    new-instance v0, Lcom/android/server/hdmi/RoutingControlAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/hdmi/RoutingControlAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    :cond_2f
    const/4 p0, -0x1

    return p0
.end method

.method public final handleSelectInternalSource()V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 273
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 275
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 276
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    if-eq v0, v1, :cond_4d

    .line 278
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 279
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    const-string v2, "HdmiCecLocalDeviceTv#handleSelectInternalSource()"

    .line 277
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveSource(IILjava/lang/String;)V

    .line 281
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    return-void

    .line 287
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    .line 286
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 288
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :cond_4d
    return-void
.end method

.method public handleSetAudioVolumeLevel(Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;)I
    .registers 3

    .line 1163
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 1166
    :cond_a
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->getAudioVolumeLevel()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->setStreamMusicVolume(II)V

    const/4 p0, -0x1

    return p0
.end method

.method public handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1075
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1076
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    .line 1077
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isMessageForSystemAudio(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v1, :cond_32

    .line 1078
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 1080
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_45

    .line 1082
    :cond_1b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid <Set System Audio Mode> message:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_32
    if-eqz v0, :cond_45

    .line 1085
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioControlFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_45

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p1, p0, v3

    const-string p1, "Ignoring <Set System Audio Mode> message because the System Audio Control feature is disabled: %s"

    .line 1086
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 1090
    :cond_45
    :goto_45
    const-class v1, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 1091
    new-instance v1, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    .line 1092
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1093
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    const/4 p0, -0x1

    return p0
.end method

.method public handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1101
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1102
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isMessageForSystemAudio(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_22

    .line 1103
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid <System Audio Mode Status> message:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 1107
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioControlFeatureEnabled()Z

    move-result v0

    .line 1108
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p1

    .line 1112
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    if-nez v3, :cond_34

    .line 1114
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(Z)V

    goto :goto_47

    :cond_34
    if-eq p1, v0, :cond_44

    .line 1116
    new-instance p1, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p1, p0, v2, v0, v3}, Lcom/android/server/hdmi/SystemAudioActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_47

    .line 1119
    :cond_44
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(Z)V

    :goto_47
    return v1
.end method

.method public handleTerminateArc(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1056
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1057
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_10

    .line 1058
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->disableArc()V

    return v1

    .line 1064
    :cond_10
    const-class v0, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 1065
    new-instance v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    .line 1066
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    .line 1067
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return v1
.end method

.method public handleTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 655
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 667
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAutoWakeup()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 668
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    :cond_e
    const/4 p0, -0x1

    return p0
.end method

.method public handleTimerClearedStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 4

    .line 1152
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 1153
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 1154
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    const/4 p0, -0x1

    return p0
.end method

.method public handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public hasSystemAudioDevice()Z
    .registers 1

    .line 1199
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getSafeAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isArcEstablished()Z
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 867
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 868
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    move v0, v1

    .line 869
    :goto_9
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 870
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1e
    return v1
.end method

.method public isArcFeatureEnabled(I)Z
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 896
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 897
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public isConnected(I)Z
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 847
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 848
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->isConnected(I)Z

    move-result p0

    return p0
.end method

.method public final isDirectConnectAddress(I)Z
    .registers 2

    const p0, 0xf000

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isInputReady(I)Z
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 152
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 153
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isMessageForSystemAudio(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4

    .line 1184
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1185
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_25

    .line 1186
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 1187
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result p1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_25

    .line 1188
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    if-eqz p0, :cond_25

    const/4 p0, 0x1

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return p0
.end method

.method public isPowerStandbyOrTransient()Z
    .registers 1

    .line 1386
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result p0

    return p0
.end method

.method public isProhibitMode()Z
    .registers 1

    .line 1382
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isProhibitMode()Z

    move-result p0

    return p0
.end method

.method public isSystemAudioActivated()Z
    .registers 2

    .line 790
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasSystemAudioDevice()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 793
    :cond_8
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result p0

    return p0
.end method

.method public isSystemAudioControlFeatureEnabled()Z
    .registers 2

    .line 808
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 809
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioControlFeatureEnabled:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 810
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final launchDeviceDiscovery()V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 684
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 685
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->clearDeviceInfoList()V

    .line 686
    new-instance v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;)V

    .line 726
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void
.end method

.method public launchRoutingControl(Z)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1233
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1235
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_28

    if-nez p1, :cond_4e

    .line 1236
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isProhibitMode()Z

    move-result p1

    if-nez p1, :cond_4e

    .line 1237
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result p1

    .line 1238
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePath(I)V

    .line 1239
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePath()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IILandroid/hardware/hdmi/IHdmiControlCallback;)V

    goto :goto_4e

    .line 1242
    :cond_28
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    .line 1243
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePath(I)V

    if-nez p1, :cond_4e

    .line 1244
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    const/16 v1, 0x82

    .line 1245
    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->isBuffered(I)Z

    move-result p1

    if-nez p1, :cond_4e

    .line 1246
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 1248
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    .line 1247
    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    .line 1246
    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public final notifyArcStatusToAudioService(ZLjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 853
    new-instance v7, Landroid/media/AudioDeviceAttributes;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$$ExternalSyntheticLambda0;-><init>()V

    .line 856
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 858
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Ljava/util/List;

    const/4 v1, 0x2

    const/16 v2, 0xa

    const-string v3, ""

    const-string v4, ""

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 859
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p0

    invoke-virtual {p0, v7, p1}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;I)V

    return-void
.end method

.method public onAddressAllocated(II)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 170
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 171
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo()Ljava/util/List;

    move-result-object p1

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiPortInfo;

    .line 173
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_d

    .line 175
    :cond_27
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->registerTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    .line 176
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 178
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 179
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    .line 177
    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 176
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 181
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 183
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v1

    .line 182
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 181
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 184
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 185
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    move-result v0

    .line 184
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->addCecSwitch(I)V

    .line 186
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    const/4 p1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, p1, :cond_7d

    move p1, v1

    goto :goto_7e

    :cond_7d
    move p1, v0

    .line 187
    :goto_7e
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    if-eqz p2, :cond_85

    if-eq p2, v1, :cond_85

    move v0, v1

    .line 188
    :cond_85
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->launchRoutingControl(Z)V

    .line 190
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->resetSelectRequestBuffer()V

    .line 191
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->launchDeviceDiscovery()V

    .line 192
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->startQueuedActions()V

    .line 193
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    const/16 p2, 0x82

    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/DelayedMessageBuffer;->isBuffered(I)Z

    move-result p1

    if-nez p1, :cond_ac

    .line 194
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 196
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    .line 195
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRequestActiveSource(I)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    .line 194
    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :cond_ac
    return-void
.end method

.method public onHotplug(IZ)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1256
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    if-nez p2, :cond_e

    .line 1259
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->removeCecSwitches(I)V

    .line 1265
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v0

    if-ne p1, v0, :cond_41

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1266
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, p1

    const-string p1, "Port ID:%d, 5v=%b"

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_3a

    .line 1268
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(Z)V

    goto :goto_41

    .line 1270
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->onNewAvrAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 1275
    :cond_41
    :goto_41
    const-class p1, Lcom/android/server/hdmi/HotplugDetectionAction;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 1276
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_56

    .line 1280
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HotplugDetectionAction;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAllDevicesNow()V

    :cond_56
    return-void
.end method

.method public onNewAvrAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 731
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 732
    new-instance v0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 733
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isDirectConnectAddress(I)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 p1, 0x0

    .line 734
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(Z)V

    goto :goto_3e

    .line 735
    :cond_1e
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnected(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcFeatureEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_3e

    const-class p1, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    .line 736
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_3e

    const/4 p1, 0x1

    .line 737
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(Z)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public onStandby(ZI)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1365
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1367
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result p2

    if-nez p2, :cond_c

    return-void

    .line 1370
    :cond_c
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 1371
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p2

    const-string/jumbo v0, "tv_send_standby_on_sleep"

    invoke-virtual {p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-nez p1, :cond_35

    if-eqz v0, :cond_35

    .line 1375
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 1377
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    const/16 p2, 0xf

    .line 1376
    invoke-static {p0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    .line 1375
    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :cond_35
    return-void
.end method

.method public processAllDelayedMessages()V
    .registers 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1619
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1620
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {p0}, Lcom/android/server/hdmi/DelayedMessageBuffer;->processAllMessages()V

    return-void
.end method

.method public processDelayedActiveSource(I)V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1631
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1632
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->processActiveSource(I)V

    return-void
.end method

.method public processDelayedMessages(I)V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1625
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1626
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->processMessagesForDevice(I)V

    return-void
.end method

.method public final removeAllRunningArcAction()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1357
    const-class v0, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 1358
    const-class v0, Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 1359
    const-class v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    return-void
.end method

.method public final removeTvInput(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 146
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final resetSelectRequestBuffer()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 208
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 209
    sget-object v0, Lcom/android/server/hdmi/SelectRequestBuffer;->EMPTY_BUFFER:Lcom/android/server/hdmi/SelectRequestBuffer;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSelectRequestBuffer(Lcom/android/server/hdmi/SelectRequestBuffer;)V

    return-void
.end method

.method public final sendClearTimerMessage(II[B)V
    .registers 5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3f

    const/4 v0, 0x2

    if-eq p2, v0, :cond_32

    const/4 v0, 0x3

    if-eq p2, v0, :cond_25

    .line 1548
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid source type:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "HdmiCecLocalDeviceTv"

    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xa1

    .line 1549
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    return-void

    .line 1545
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p2

    .line 1544
    invoke-static {p2, p1, p3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildClearExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p2

    goto :goto_4b

    .line 1540
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p2

    .line 1539
    invoke-static {p2, p1, p3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildClearAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p2

    goto :goto_4b

    .line 1535
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p2

    .line 1534
    invoke-static {p2, p1, p3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildClearDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p2

    .line 1554
    :goto_4b
    iget-object p3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;I)V

    invoke-virtual {p3, p2, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public sendStandby(I)V
    .registers 3

    .line 1607
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    if-nez p1, :cond_d

    return-void

    .line 1611
    :cond_d
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p1

    .line 1612
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 1614
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    .line 1613
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    .line 1612
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method

.method public setAudioStatus(ZI)V
    .registers 5

    .line 935
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_23

    .line 939
    :cond_f
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 940
    :try_start_12
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioMute:Z

    .line 941
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioVolume:I

    const/4 v1, 0x2

    if-eqz p1, :cond_1b

    const/16 p2, 0x65

    .line 942
    :cond_1b
    invoke-virtual {p0, v1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->displayOsd(II)V

    .line 944
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_20

    throw p0

    :cond_23
    :goto_23
    return-void
.end method

.method public setPreferredAddress(I)V
    .registers 2

    const-string p0, "HdmiCecLocalDeviceTv"

    const-string p1, "Preferred addres will not be stored for TV"

    .line 219
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPrevPortId(I)V
    .registers 3

    .line 333
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_3
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mPrevPortId:I

    .line 335
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setSelectRequestBuffer(Lcom/android/server/hdmi/SelectRequestBuffer;)V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 202
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 203
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    return-void
.end method

.method public setSystemAudioControlFeatureEnabled(Z)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 798
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 799
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 800
    :try_start_6
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioControlFeatureEnabled:Z

    .line 801
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_14

    .line 802
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasSystemAudioDevice()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 803
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->changeSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    :cond_13
    return-void

    :catchall_14
    move-exception p0

    .line 801
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public setSystemAudioMode(Z)V
    .registers 7

    .line 763
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioControlFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    if-eqz p1, :cond_11

    const-string p0, "Cannot turn on system audio mode because the System Audio Control feature is disabled."

    new-array p1, v1, [Ljava/lang/Object;

    .line 764
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_11
    const-string v0, "System Audio Mode change[old:%b new:%b]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 768
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 769
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 768
    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 770
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateAudioManagerForSystemAudio(Z)V

    .line 771
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 772
    :try_start_32
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result v2

    if-eq v2, p1, :cond_44

    .line 773
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->setSystemAudioActivated(Z)V

    .line 774
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->announceSystemAudioModeChange(Z)V

    :cond_44
    if-eqz p1, :cond_4e

    .line 776
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    if-nez v2, :cond_4e

    .line 777
    invoke-virtual {p0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(Z)V

    goto :goto_53

    :cond_4e
    if-nez p1, :cond_53

    .line 779
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(Z)V

    .line 781
    :cond_53
    :goto_53
    monitor-exit v0

    return-void

    :catchall_55
    move-exception p0

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_32 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public startArcAction(Z)V
    .registers 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 902
    const-class v0, Lcom/android/server/hdmi/RequestArcTerminationAction;

    const-class v1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 903
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    const-string v3, "HdmiCecLocalDeviceTv"

    if-nez v2, :cond_15

    const-string p0, "Failed to start arc action; No AVR device."

    .line 905
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 908
    :cond_15
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v4

    invoke-virtual {p0, v4, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->canStartArcUpdateAction(IZ)Z

    move-result v4

    if-nez v4, :cond_35

    const-string v0, "Failed to start arc action; ARC configuration check failed."

    .line 909
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_34

    .line 910
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isConnectedToArcPort(I)Z

    move-result p1

    if-nez p1, :cond_34

    const/4 p1, 0x1

    .line 911
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->displayOsd(I)V

    :cond_34
    return-void

    :cond_35
    if-eqz p1, :cond_4d

    .line 918
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 919
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_62

    .line 920
    new-instance p1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/RequestArcInitiationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_62

    .line 923
    :cond_4d
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 924
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_62

    .line 925
    new-instance p1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/RequestArcTerminationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    :cond_62
    :goto_62
    return-void
.end method

.method public startNewDeviceAction(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V
    .registers 5

    .line 562
    const-class v0, Lcom/android/server/hdmi/NewDeviceAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/NewDeviceAction;

    .line 571
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/NewDeviceAction;->isActionOf(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)Z

    move-result v1

    if-eqz v1, :cond_a

    return-void

    .line 576
    :cond_1d
    new-instance v0, Lcom/android/server/hdmi/NewDeviceAction;

    iget v1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    iget p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/hdmi/NewDeviceAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;III)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void
.end method

.method public startOneTouchRecord(I[B)I
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1405
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1406
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "HdmiCecLocalDeviceTv"

    if-nez v0, :cond_19

    const-string p2, "Can not start one touch record. CEC control is disabled."

    .line 1407
    invoke-static {v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x33

    .line 1408
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    return v1

    .line 1412
    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1413
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid recorder address:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x31

    .line 1414
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    return v1

    .line 1419
    :cond_39
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecordSource([B)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid record source."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x32

    .line 1421
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    const/4 p0, 0x2

    return p0

    .line 1426
    :cond_5e
    new-instance v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/OneTouchRecordAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I[B)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1427
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Start new [One Touch Record]-Target:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", recordSource:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1427
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public startRoutingControl(IILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 392
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    if-ne p1, p2, :cond_6

    return-void

    .line 398
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    .line 397
    invoke-static {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    .line 399
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 400
    const-class p1, Lcom/android/server/hdmi/RoutingControlAction;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 401
    new-instance p1, Lcom/android/server/hdmi/RoutingControlAction;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/hdmi/RoutingControlAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void
.end method

.method public startTimerRecording(II[B)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1468
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1469
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    const-string v1, "HdmiCecLocalDeviceTv"

    if-nez v0, :cond_17

    const-string p2, "Can not start one touch record. CEC control is disabled."

    .line 1470
    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x3

    .line 1471
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    return-void

    .line 1476
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1477
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid recorder address:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 1478
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    return-void

    .line 1483
    :cond_36
    invoke-virtual {p0, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkTimerRecordingSource(I[B)Z

    move-result v0

    if-nez v0, :cond_59

    .line 1484
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid record source."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    .line 1485
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    return-void

    .line 1491
    :cond_59
    new-instance v0, Lcom/android/server/hdmi/TimerRecordingAction;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/TimerRecordingAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II[B)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1493
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Start [Timer Recording]-Target:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", SourceType:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", RecordSource:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1494
    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1493
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopOneTouchRecord(I)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1434
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1435
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    const-string v1, "HdmiCecLocalDeviceTv"

    if-nez v0, :cond_18

    const-string v0, "Can not stop one touch record. CEC control is disabled."

    .line 1436
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x33

    .line 1437
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    return-void

    .line 1441
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    move-result v0

    if-nez v0, :cond_38

    .line 1442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid recorder address:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x31

    .line 1443
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    return-void

    .line 1449
    :cond_38
    const-class v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 1450
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 1452
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    .line 1451
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRecordOff(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    .line 1450
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1453
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stop [One Touch Record]-Target:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateActiveInput(IZ)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 340
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 342
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePath(I)V

    if-eqz p2, :cond_33

    .line 346
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object p2

    .line 347
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    iget p2, p2, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    invoke-virtual {v0, p2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    if-nez p2, :cond_2e

    .line 350
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceInfoByPort(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    if-nez p2, :cond_2e

    .line 354
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    move-result p2

    invoke-static {p1, p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->hardwarePort(II)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    .line 357
    :cond_2e
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    :cond_33
    return-void
.end method

.method public updateActiveSource(IILjava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 294
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 295
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(II)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;Ljava/lang/String;)V

    return-void
.end method

.method public updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 300
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 302
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 305
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;Ljava/lang/String;)V

    .line 306
    iget p2, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 307
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 308
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    if-eq p2, v0, :cond_3e

    .line 309
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-virtual {p2, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    move-result p2

    if-ne p1, p2, :cond_3e

    .line 310
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setPrevPortId(I)V

    :cond_3e
    return-void
.end method

.method public final updateAudioManagerForSystemAudio(Z)V
    .registers 4

    .line 785
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setHdmiSystemAudioSupported(Z)I

    move-result p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 786
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "[A]UpdateSystemAudio mode[on=%b] output=[%X]"

    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
