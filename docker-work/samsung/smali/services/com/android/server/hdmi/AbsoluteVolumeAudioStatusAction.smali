.class public final Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "AbsoluteVolumeAudioStatusAction.java"


# static fields
.field public static final STATE_MONITOR_AUDIO_STATUS:I = 0x2

.field public static final STATE_WAIT_FOR_INITIAL_AUDIO_STATUS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "AbsoluteVolumeAudioStatusAction"


# instance fields
.field public mInitialAudioStatusRetriesLeft:I

.field public mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

.field public final mTargetAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .registers 3

    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    const/4 p1, 0x2

    .line 30
    iput p1, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mInitialAudioStatusRetriesLeft:I

    .line 41
    iput p2, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mTargetAddress:I

    return-void
.end method


# virtual methods
.method public final handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5

    .line 71
    iget v0, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mTargetAddress:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    if-ne v0, v1, :cond_6c

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_10

    goto :goto_6c

    .line 75
    :cond_10
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->isAudioStatusMute(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    .line 76
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getAudioStatusVolume(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p1

    .line 77
    new-instance v1, Lcom/android/server/hdmi/AudioStatus;

    invoke-direct {v1, p1, v0}, Lcom/android/server/hdmi/AudioStatus;-><init>(IZ)V

    .line 78
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_31

    .line 79
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getService()Lcom/android/server/hdmi/HdmiControlService;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->enableAbsoluteVolumeControl(Lcom/android/server/hdmi/AudioStatus;)V

    .line 80
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    goto :goto_69

    :cond_31
    if-ne p1, v0, :cond_69

    .line 82
    invoke-virtual {v1}, Lcom/android/server/hdmi/AudioStatus;->getVolume()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

    invoke-virtual {v0}, Lcom/android/server/hdmi/AudioStatus;->getVolume()I

    move-result v0

    if-eq p1, v0, :cond_4e

    .line 83
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getService()Lcom/android/server/hdmi/HdmiControlService;

    move-result-object p1

    invoke-virtual {v1}, Lcom/android/server/hdmi/AudioStatus;->getVolume()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->notifyAvcVolumeChange(I)V

    .line 85
    :cond_4e
    invoke-virtual {v1}, Lcom/android/server/hdmi/AudioStatus;->getMute()Z

    move-result p1

    iget-object v0, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

    invoke-virtual {v0}, Lcom/android/server/hdmi/AudioStatus;->getMute()Z

    move-result v0

    if-eq p1, v0, :cond_69

    .line 86
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getService()Lcom/android/server/hdmi/HdmiControlService;

    move-result-object p1

    invoke-virtual {v1}, Lcom/android/server/hdmi/AudioStatus;->getMute()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->notifyAvcMuteChange(Z)V

    .line 89
    :cond_69
    :goto_69
    iput-object v1, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

    return v2

    :cond_6c
    :goto_6c
    const/4 p0, 0x0

    return p0
.end method

.method public handleTimerEvent(I)V
    .registers 3

    .line 96
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_5

    return-void

    .line 98
    :cond_5
    iget p1, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mInitialAudioStatusRetriesLeft:I

    if-lez p1, :cond_10

    add-int/lit8 p1, p1, -0x1

    .line 99
    iput p1, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mInitialAudioStatusRetriesLeft:I

    .line 100
    invoke-virtual {p0}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->sendGiveAudioStatus()V

    :cond_10
    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4

    .line 62
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    .line 64
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p0

    return p0
.end method

.method public final sendGiveAudioStatus()V
    .registers 3

    .line 56
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 57
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveAudioStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method

.method public start()Z
    .registers 2

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 47
    invoke-virtual {p0}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->sendGiveAudioStatus()V

    return v0
.end method

.method public updateVolume(I)V
    .registers 4

    .line 52
    new-instance v0, Lcom/android/server/hdmi/AudioStatus;

    iget-object v1, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

    invoke-virtual {v1}, Lcom/android/server/hdmi/AudioStatus;->getMute()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/hdmi/AudioStatus;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

    return-void
.end method
