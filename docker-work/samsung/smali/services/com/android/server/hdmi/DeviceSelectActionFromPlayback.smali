.class public final Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "DeviceSelectActionFromPlayback.java"


# static fields
.field public static final LOOP_COUNTER_MAX:I = 0x2

.field public static final STATE_WAIT_FOR_ACTIVE_SOURCE_MESSAGE_AFTER_ROUTING_CHANGE:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final STATE_WAIT_FOR_ACTIVE_SOURCE_MESSAGE_AFTER_SET_STREAM_PATH:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final STATE_WAIT_FOR_DEVICE_POWER_ON:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final STATE_WAIT_FOR_DEVICE_TO_TRANSIT_TO_STANDBY:I = 0x2

.field public static final STATE_WAIT_FOR_REPORT_POWER_STATUS:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "DeviceSelectActionFromPlayback"

.field public static final TIMEOUT_POWER_ON_MS:I = 0x1388

.field public static final TIMEOUT_TRANSIT_TO_STANDBY_MS:I = 0x1388


# instance fields
.field public final mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

.field public final mIsCec20:Z

.field public mPowerStatusCounter:I

.field public final mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 6

    .line 91
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_13

    .line 92
    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    move-result v0

    if-lt v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 90
    :goto_14
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 98
    invoke-direct {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mPowerStatusCounter:I

    .line 99
    iput-object p2, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->getTargetAddress()I

    move-result p2

    .line 100
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 102
    iput-boolean p4, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mIsCec20:Z

    return-void
.end method


# virtual methods
.method public getTargetAddress()I
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    return p0
.end method

.method public final getTargetPath()I
    .registers 1

    .line 110
    iget-object p0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p0

    return p0
.end method

.method public final handleReportPowerStatus(I)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p1, :cond_3d

    const/16 v1, 0x1388

    const/4 v2, 0x3

    if-eq p1, v0, :cond_2c

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1e

    if-eq p1, v2, :cond_f

    const/4 p0, 0x0

    return p0

    .line 180
    :cond_f
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mPowerStatusCounter:I

    const/4 v2, 0x4

    if-ge p1, v2, :cond_1a

    .line 181
    iput v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 182
    invoke-virtual {p0, v3, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    goto :goto_1d

    .line 184
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->selectDevice()V

    :goto_1d
    return v0

    .line 197
    :cond_1e
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mPowerStatusCounter:I

    if-ge p1, v3, :cond_28

    .line 198
    iput v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 199
    invoke-virtual {p0, v2, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    goto :goto_2b

    .line 201
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->selectDevice()V

    :goto_2b
    return v0

    .line 188
    :cond_2c
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mPowerStatusCounter:I

    if-nez p1, :cond_39

    .line 189
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->sendRoutingChange()V

    .line 190
    iput v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 191
    invoke-virtual {p0, v2, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    goto :goto_3c

    .line 193
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->selectDevice()V

    :goto_3c
    return v0

    .line 177
    :cond_3d
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->selectDevice()V

    return v0
.end method

.method public handleTimerEvent(I)V
    .registers 6

    .line 216
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_c

    const-string p0, "DeviceSelectActionFromPlayback"

    const-string p1, "Timer in a wrong state. Ignored."

    .line 217
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/16 p1, 0x7d0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_36

    const/4 v2, 0x3

    if-eq v0, v2, :cond_28

    const/4 v2, 0x4

    const/4 v3, 0x5

    if-eq v0, v2, :cond_1f

    if-eq v0, v3, :cond_1b

    goto :goto_3e

    .line 237
    :cond_1b
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    goto :goto_3e

    .line 232
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->sendSetStreamPath()V

    .line 233
    iput v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 234
    invoke-virtual {p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    goto :goto_3e

    .line 226
    :cond_28
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mPowerStatusCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mPowerStatusCounter:I

    .line 227
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->queryDevicePowerStatus()V

    .line 228
    iput v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 229
    invoke-virtual {p0, v1, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    goto :goto_3e

    .line 222
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->selectDevice()V

    .line 223
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    :goto_3e
    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6

    .line 157
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->getTargetAddress()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    .line 160
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    .line 161
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    const/16 v1, 0x82

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1d

    .line 164
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    return v3

    .line 167
    :cond_1d
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-ne v1, v3, :cond_2c

    const/16 v1, 0x90

    if-ne v0, v1, :cond_2c

    .line 169
    aget-byte p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->handleReportPowerStatus(I)Z

    move-result p0

    return p0

    :cond_2c
    return v2
.end method

.method public final queryDevicePowerStatus()V
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    new-instance v1, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback$1;-><init>(Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public final selectDevice()V
    .registers 3

    .line 209
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->sendRoutingChange()V

    const/4 v0, 0x4

    .line 210
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v1, 0x7d0

    .line 211
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method

.method public final sendRoutingChange()V
    .registers 4

    .line 243
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    .line 244
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v1

    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->getTargetPath()I

    move-result v2

    .line 243
    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method

.method public final sendSetStreamPath()V
    .registers 3

    .line 248
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    .line 249
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->getTargetPath()I

    move-result v1

    .line 248
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetStreamPath(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method

.method public start()Z
    .registers 5

    .line 116
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->sendRoutingChange()V

    .line 118
    iget-boolean v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mIsCec20:Z

    const/16 v1, 0x7d0

    const/4 v2, 0x1

    if-nez v0, :cond_e

    .line 119
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->queryDevicePowerStatus()V

    goto :goto_38

    .line 122
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    .line 123
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->getTargetAddress()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    const/4 v3, -0x1

    if-eqz v0, :cond_28

    .line 125
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v0

    goto :goto_29

    :cond_28
    move v0, v3

    :goto_29
    if-ne v0, v3, :cond_2f

    .line 128
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->queryDevicePowerStatus()V

    goto :goto_38

    :cond_2f
    if-nez v0, :cond_38

    const/4 v0, 0x4

    .line 130
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 131
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return v2

    .line 136
    :cond_38
    :goto_38
    iput v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 137
    invoke-virtual {p0, v2, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return v2
.end method
