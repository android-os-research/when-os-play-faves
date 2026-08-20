.class Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AbsoluteVolumeChangedListener"
.end annotation


# instance fields
.field public mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

.field public mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public static synthetic $r8$lambda$nXHoO1q6UPiMrQ2rIVw3Ogd-DpA(Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;Landroid/media/VolumeInfo;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->lambda$onAudioDeviceVolumeChanged$0(Landroid/media/VolumeInfo;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 4

    .line 4086
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4087
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 4088
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/HdmiDeviceInfo;Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    return-void
.end method

.method private synthetic lambda$onAudioDeviceVolumeChanged$0(Landroid/media/VolumeInfo;II)V
    .registers 4

    if-nez p3, :cond_1d

    .line 4113
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result p2

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    if-eqz p2, :cond_11

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p0

    goto :goto_15

    :cond_11
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object p0

    .line 4114
    :goto_15
    invoke-virtual {p1}, Landroid/media/VolumeInfo;->getVolumeIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->updateAvcVolume(I)V

    goto :goto_2c

    .line 4116
    :cond_1d
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 4118
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    .line 4116
    invoke-static {p2, p0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveAudioStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :goto_2c
    return-void
.end method


# virtual methods
.method public onAudioDeviceVolumeAdjusted(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;II)V
    .registers 5

    const/16 p1, -0x64

    const/4 p2, 0x1

    if-eq p3, p1, :cond_19

    const/4 p1, -0x1

    if-eq p3, p1, :cond_16

    if-eq p3, p2, :cond_13

    const/16 p1, 0x64

    if-eq p3, p1, :cond_19

    const/16 p1, 0x65

    if-eq p3, p1, :cond_19

    return-void

    :cond_13
    const/16 p1, 0x18

    goto :goto_1b

    :cond_16
    const/16 p1, 0x19

    goto :goto_1b

    :cond_19
    const/16 p1, 0xa4

    :goto_1b
    const/4 p3, 0x0

    if-eqz p4, :cond_30

    if-eq p4, p2, :cond_2a

    const/4 p2, 0x2

    if-eq p4, p2, :cond_24

    return-void

    .line 4162
    :cond_24
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendVolumeKeyEvent(IZ)V

    goto :goto_3a

    .line 4159
    :cond_2a
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendVolumeKeyEvent(IZ)V

    goto :goto_3a

    .line 4155
    :cond_30
    iget-object p4, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p4, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendVolumeKeyEvent(IZ)V

    .line 4156
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendVolumeKeyEvent(IZ)V

    :goto_3a
    return-void
.end method

.method public onAudioDeviceVolumeChanged(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;)V
    .registers 6

    .line 4100
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4101
    :try_start_5
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    .line 4102
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_29

    .line 4103
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 4105
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    .line 4106
    invoke-virtual {p2}, Landroid/media/VolumeInfo;->getVolumeIndex()I

    move-result v2

    .line 4103
    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;Landroid/media/VolumeInfo;I)V

    invoke-virtual {p1, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void

    :catchall_29
    move-exception p0

    .line 4102
    :try_start_2a
    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0
.end method
