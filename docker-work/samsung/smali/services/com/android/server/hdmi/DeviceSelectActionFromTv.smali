.class public final Lcom/android/server/hdmi/DeviceSelectActionFromTv;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "DeviceSelectActionFromTv.java"


# static fields
.field public static final LOOP_COUNTER_MAX:I = 0x14

.field public static final STATE_WAIT_FOR_DEVICE_POWER_ON:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final STATE_WAIT_FOR_DEVICE_TO_TRANSIT_TO_STANDBY:I = 0x2

.field public static final STATE_WAIT_FOR_REPORT_POWER_STATUS:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "DeviceSelect"

.field public static final TIMEOUT_POWER_ON_MS:I = 0x1388

.field public static final TIMEOUT_TRANSIT_TO_STANDBY_MS:I = 0x1388


# instance fields
.field public final mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

.field public final mIsCec20:Z

.field public mPowerStatusCounter:I

.field public final mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 6

    .line 80
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_13

    .line 81
    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    move-result v0

    if-lt v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 79
    :goto_14
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 87
    invoke-direct {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mPowerStatusCounter:I

    .line 88
    iput-object p2, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 90
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->getTargetAddress()I

    move-result p2

    .line 89
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 91
    iput-boolean p4, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mIsCec20:Z

    return-void
.end method


# virtual methods
.method public getTargetAddress()I
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    return p0
.end method

.method public final handleReportPowerStatus(I)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p1, :cond_3f

    const/16 v1, 0x1388

    const/4 v2, 0x3

    if-eq p1, v0, :cond_2e

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1e

    if-eq p1, v2, :cond_f

    const/4 p0, 0x0

    return p0

    .line 164
    :cond_f
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mPowerStatusCounter:I

    const/4 v2, 0x4

    if-ge p1, v2, :cond_1a

    .line 165
    iput v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 166
    invoke-virtual {p0, v3, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    goto :goto_1d

    .line 168
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->selectDevice()V

    :goto_1d
    return v0

    .line 181
    :cond_1e
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mPowerStatusCounter:I

    const/16 v3, 0x14

    if-ge p1, v3, :cond_2a

    .line 182
    iput v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 183
    invoke-virtual {p0, v2, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    goto :goto_2d

    .line 185
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->selectDevice()V

    :goto_2d
    return v0

    .line 172
    :cond_2e
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mPowerStatusCounter:I

    if-nez p1, :cond_3b

    .line 173
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->turnOnDevice()V

    .line 174
    iput v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 175
    invoke-virtual {p0, v2, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    goto :goto_3e

    .line 177
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->selectDevice()V

    :goto_3e
    return v0

    .line 161
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->selectDevice()V

    return v0
.end method

.method public handleTimerEvent(I)V
    .registers 4

    .line 194
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_c

    const-string p0, "DeviceSelect"

    const-string p1, "Timer in a wrong state. Ignored."

    .line 195
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 p1, 0x1

    if-eq v0, p1, :cond_26

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    goto :goto_38

    .line 208
    :cond_16
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mPowerStatusCounter:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mPowerStatusCounter:I

    .line 209
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->queryDevicePowerStatus()V

    .line 210
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x7d0

    .line 211
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    goto :goto_38

    .line 200
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isPowerStandbyOrTransient()Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 p1, 0x6

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    return-void

    .line 204
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->selectDevice()V

    :goto_38
    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6

    .line 141
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->getTargetAddress()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    .line 144
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    .line 145
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    .line 146
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    const/16 v1, 0x90

    if-ne v0, v1, :cond_25

    .line 149
    aget-byte p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->handleReportPowerStatus(I)Z

    move-result p0

    return p0

    :cond_25
    return v2
.end method

.method public final queryDevicePowerStatus()V
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    new-instance v1, Lcom/android/server/hdmi/DeviceSelectActionFromTv$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv$1;-><init>(Lcom/android/server/hdmi/DeviceSelectActionFromTv;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public final selectDevice()V
    .registers 2

    .line 226
    iget-boolean v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mIsCec20:Z

    if-nez v0, :cond_7

    .line 227
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->sendSetStreamPath()V

    :cond_7
    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    return-void
.end method

.method public final sendSetStreamPath()V
    .registers 3

    .line 235
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 236
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePath(I)V

    .line 238
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    .line 237
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetStreamPath(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method

.method public start()Z
    .registers 4

    .line 102
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->sendSetStreamPath()V

    .line 104
    iget-boolean v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mIsCec20:Z

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 105
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->queryDevicePowerStatus()V

    goto :goto_34

    .line 108
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->getTargetAddress()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    const/4 v2, -0x1

    if-eqz v0, :cond_26

    .line 111
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v0

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    if-ne v0, v2, :cond_2d

    .line 114
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->queryDevicePowerStatus()V

    goto :goto_34

    :cond_2d
    if-nez v0, :cond_34

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    return v1

    .line 120
    :cond_34
    :goto_34
    iput v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x7d0

    .line 121
    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return v1
.end method

.method public final turnOnDevice()V
    .registers 3

    .line 217
    iget-boolean v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mIsCec20:Z

    if-nez v0, :cond_1a

    .line 218
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    const/16 v1, 0x40

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendUserControlPressedAndReleased(II)V

    .line 220
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    const/16 v1, 0x6d

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendUserControlPressedAndReleased(II)V

    :cond_1a
    return-void
.end method
