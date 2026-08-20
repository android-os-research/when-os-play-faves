.class public final Lcom/android/server/hdmi/OneTouchPlayAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "OneTouchPlayAction.java"


# static fields
.field public static final LOOP_COUNTER_MAX:I = 0xa

.field public static final STATE_WAITING_FOR_REPORT_POWER_STATUS:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "OneTouchPlayAction"


# instance fields
.field public final mIsCec20:Z

.field public mPowerStatusCounter:I

.field public mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

.field public final mTargetAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 6

    .line 72
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_13

    .line 74
    invoke-static {p1, p2}, Lcom/android/server/hdmi/OneTouchPlayAction;->getTargetCecVersion(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)I

    move-result v0

    if-lt v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 71
    :goto_14
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/hdmi/OneTouchPlayAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 81
    invoke-direct {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    const/4 p1, 0x0

    .line 55
    iput p1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    .line 82
    iput p2, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    .line 83
    iput-boolean p4, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mIsCec20:Z

    return-void
.end method

.method public static create(Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/OneTouchPlayAction;
    .registers 4

    if-eqz p0, :cond_b

    if-nez p2, :cond_5

    goto :goto_b

    .line 66
    :cond_5
    new-instance v0, Lcom/android/server/hdmi/OneTouchPlayAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/OneTouchPlayAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-object v0

    :cond_b
    :goto_b
    const-string p0, "OneTouchPlayAction"

    const-string p1, "Wrong arguments"

    .line 63
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTargetCecVersion(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)I
    .registers 2

    .line 190
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 193
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x5

    return p0
.end method

.method public static getTargetDevicePowerStatus(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)I
    .registers 3

    .line 200
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 203
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result p0

    return p0

    :cond_11
    return p2
.end method


# virtual methods
.method public final broadcastActiveSource()V
    .registers 5

    .line 125
    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    .line 126
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourcePath()I

    move-result v2

    const-string v3, "OneTouchPlayAction#broadcastActiveSource()"

    .line 125
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSourceFromOneDeviceType(IILjava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 132
    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 134
    :cond_23
    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setRoutingPort(I)V

    .line 135
    iget-object p0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setLocalActivePort(I)V

    return-void
.end method

.method public handleTimerEvent(I)V
    .registers 4

    .line 162
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_20

    .line 166
    iget p1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    const/16 v1, 0xa

    if-ge p1, v1, :cond_1d

    .line 167
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->queryDevicePowerStatus()V

    .line 168
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    goto :goto_20

    .line 171
    :cond_1d
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    :cond_20
    :goto_20
    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6

    .line 145
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_26

    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    .line 146
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-eq v0, v3, :cond_f

    goto :goto_26

    .line 149
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v3, 0x90

    if-ne v0, v3, :cond_26

    .line 150
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    aget-byte p1, p1, v2

    if-nez p1, :cond_25

    .line 152
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->broadcastActiveSource()V

    .line 153
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    :cond_25
    return v1

    :cond_26
    :goto_26
    return v2
.end method

.method public final queryDevicePowerStatus()V
    .registers 3

    .line 139
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method

.method public final shouldTurnOnConnectedAudioSystem()Z
    .registers 3

    .line 177
    iget-object p0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 178
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 182
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p0

    const-string/jumbo v0, "power_control_mode"

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "to_tv_and_audio_system"

    .line 184
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "broadcast"

    .line 185
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    :cond_28
    const/4 v1, 0x1

    :cond_29
    return v1
.end method

.method public start()Z
    .registers 8

    .line 89
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->source()Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 90
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildTextViewOn(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 92
    iget-boolean v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mIsCec20:Z

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget v4, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    invoke-static {v0, v4, v2}, Lcom/android/server/hdmi/OneTouchPlayAction;->getTargetDevicePowerStatus(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)I

    move-result v0

    if-nez v0, :cond_26

    move v0, v3

    goto :goto_27

    :cond_26
    move v0, v1

    .line 94
    :goto_27
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->broadcastActiveSource()V

    .line 97
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->shouldTurnOnConnectedAudioSystem()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 98
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v4

    const/4 v5, 0x5

    .line 99
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourcePath()I

    move-result v6

    .line 98
    invoke-static {v4, v5, v6, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSystemAudioModeRequest(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 102
    :cond_40
    iget-boolean v4, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mIsCec20:Z

    if-nez v4, :cond_48

    .line 103
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->queryDevicePowerStatus()V

    goto :goto_61

    .line 105
    :cond_48
    iget-object v4, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget v5, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    invoke-static {v4, v5, v2}, Lcom/android/server/hdmi/OneTouchPlayAction;->getTargetDevicePowerStatus(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)I

    move-result v4

    if-ne v4, v2, :cond_56

    .line 108
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->queryDevicePowerStatus()V

    goto :goto_61

    :cond_56
    if-nez v4, :cond_61

    if-nez v0, :cond_5d

    .line 113
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->broadcastActiveSource()V

    .line 115
    :cond_5d
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    return v3

    .line 119
    :cond_61
    :goto_61
    iput v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x7d0

    .line 120
    invoke-virtual {p0, v3, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return v3
.end method
