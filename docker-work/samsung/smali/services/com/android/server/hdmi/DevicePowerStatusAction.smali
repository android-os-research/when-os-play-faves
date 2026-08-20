.class public final Lcom/android/server/hdmi/DevicePowerStatusAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "DevicePowerStatusAction.java"


# static fields
.field public static final STATE_WAITING_FOR_REPORT_POWER_STATUS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "DevicePowerStatusAction"


# instance fields
.field public mRetriesOnTimeout:I

.field public final mTargetAddress:I


# direct methods
.method public static synthetic $r8$lambda$hqA39diJpBJrt9RPe7CkmwT246o(Lcom/android/server/hdmi/DevicePowerStatusAction;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DevicePowerStatusAction;->lambda$queryDevicePowerStatus$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 4

    .line 58
    invoke-direct {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    const/4 p1, 0x1

    .line 45
    iput p1, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mRetriesOnTimeout:I

    .line 59
    iput p2, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mTargetAddress:I

    return-void
.end method

.method public static create(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/DevicePowerStatusAction;
    .registers 4

    if-eqz p0, :cond_b

    if-nez p2, :cond_5

    goto :goto_b

    .line 53
    :cond_5
    new-instance v0, Lcom/android/server/hdmi/DevicePowerStatusAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/DevicePowerStatusAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-object v0

    :cond_b
    :goto_b
    const-string p0, "DevicePowerStatusAction"

    const-string p1, "Wrong arguments"

    .line 50
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$queryDevicePowerStatus$0(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    const/4 p1, -0x1

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    :cond_7
    return-void
.end method


# virtual methods
.method public handleTimerEvent(I)V
    .registers 3

    .line 111
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_17

    .line 115
    iget p1, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mRetriesOnTimeout:I

    if-lez p1, :cond_13

    sub-int/2addr p1, v0

    .line 116
    iput p1, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mRetriesOnTimeout:I

    .line 117
    invoke-virtual {p0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->start()Z

    return-void

    :cond_13
    const/4 p1, -0x1

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    :cond_17
    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6

    .line 97
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_21

    iget v0, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mTargetAddress:I

    .line 98
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-eq v0, v3, :cond_f

    goto :goto_21

    .line 101
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v3, 0x90

    if-ne v0, v3, :cond_21

    .line 102
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    aget-byte p1, p1, v2

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    return v1

    :cond_21
    :goto_21
    return v2
.end method

.method public final queryDevicePowerStatus()V
    .registers 3

    .line 84
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/DevicePowerStatusAction$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DevicePowerStatusAction$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/DevicePowerStatusAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public start()Z
    .registers 5

    .line 64
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 65
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-lt v1, v2, :cond_2b

    .line 66
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mTargetAddress:I

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 69
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    move-result v1

    if-lt v1, v2, :cond_2b

    .line 70
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2b

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    return v3

    .line 77
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->queryDevicePowerStatus()V

    .line 78
    iput v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x7d0

    .line 79
    invoke-virtual {p0, v3, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return v3
.end method
