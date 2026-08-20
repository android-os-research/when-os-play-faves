.class public final Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SystemAudioAutoInitiationAction.java"


# static fields
.field public static final RETRIES_ON_TIMEOUT:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final STATE_WAITING_FOR_SYSTEM_AUDIO_MODE_STATUS:I = 0x1


# instance fields
.field public final mAvrAddress:I

.field public mRetriesOnTimeOut:I


# direct methods
.method public static bridge synthetic -$$Nest$mhandleSystemAudioModeStatusTimeout(Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->handleSystemAudioModeStatusTimeout()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .registers 3

    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    const/4 p1, 0x1

    .line 41
    iput p1, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mRetriesOnTimeOut:I

    .line 45
    iput p2, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    return-void
.end method


# virtual methods
.method public final canChangeSystemAudio()Z
    .registers 3

    .line 139
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const-class v1, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 140
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p0

    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public final handleSystemAudioModeStatusMessage(Z)V
    .registers 6

    .line 84
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->canChangeSystemAudio()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Cannot change system audio mode in auto initiation action."

    .line 85
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return-void

    .line 92
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioControlFeatureEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_2c

    .line 95
    new-instance p1, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    .line 96
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    const/4 v3, 0x0

    invoke-direct {p1, v1, v2, v0, v3}, Lcom/android/server/hdmi/SystemAudioActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_33

    .line 100
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(Z)V

    .line 102
    :goto_33
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return-void
.end method

.method public final handleSystemAudioModeStatusTimeout()V
    .registers 6

    .line 126
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->canChangeSystemAudio()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cannot change system audio mode in auto initiation action."

    .line 127
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return-void

    .line 133
    :cond_12
    new-instance v0, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    .line 134
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioControlFeatureEnabled()Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/hdmi/SystemAudioActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return-void
.end method

.method public handleTimerEvent(I)V
    .registers 4

    .line 107
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x1

    if-eq v0, p1, :cond_9

    goto :goto_1c

    .line 113
    :cond_9
    iget v1, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mRetriesOnTimeOut:I

    if-lez v1, :cond_19

    sub-int/2addr v1, p1

    .line 114
    iput v1, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mRetriesOnTimeOut:I

    const/16 p1, 0x7d0

    .line 115
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 116
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->sendGiveSystemAudioModeStatus()V

    return-void

    .line 120
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->handleSystemAudioModeStatusTimeout()V

    :goto_1c
    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6

    .line 71
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1f

    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    .line 72
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-eq v0, v3, :cond_f

    goto :goto_1f

    .line 76
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v3, 0x7e

    if-ne v0, v3, :cond_1f

    .line 77
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->handleSystemAudioModeStatusMessage(Z)V

    return v2

    :cond_1f
    :goto_1f
    return v1
.end method

.method public final sendGiveSystemAudioModeStatus()V
    .registers 3

    .line 58
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveSystemAudioModeStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;-><init>(Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public start()Z
    .registers 3

    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v1, 0x7d0

    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 53
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->sendGiveSystemAudioModeStatus()V

    return v0
.end method
