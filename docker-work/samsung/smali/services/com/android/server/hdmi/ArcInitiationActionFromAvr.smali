.class public Lcom/android/server/hdmi/ArcInitiationActionFromAvr;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "ArcInitiationActionFromAvr.java"


# static fields
.field public static final STATE_ARC_INITIATED:I = 0x2

.field public static final STATE_WAITING_FOR_INITIATE_ARC_RESPONSE:I = 0x1

.field public static final TIMEOUT_MS:I = 0x3e8


# direct methods
.method public static synthetic $r8$lambda$XyiPyVpLg4-hS5tRI5ry_Jh_iG8(Lcom/android/server/hdmi/ArcInitiationActionFromAvr;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->lambda$sendInitiateArc$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    return-void
.end method

.method private synthetic lambda$sendInitiateArc$0(I)V
    .registers 3

    if-eqz p1, :cond_d

    .line 87
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    :cond_d
    return-void
.end method


# virtual methods
.method public bridge synthetic addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 2

    .line 23
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public final handleInitiateArcTimeout()V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "handleInitiateArcTimeout"

    .line 95
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return-void
.end method

.method public handleTimerEvent(I)V
    .registers 3

    .line 72
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x1

    if-eq v0, p1, :cond_9

    goto :goto_c

    .line 78
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->handleInitiateArcTimeout()V

    :goto_c
    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5

    .line 46
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    return v2

    .line 49
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-eqz v0, :cond_28

    const/16 p1, 0xc1

    if-eq v0, p1, :cond_21

    const/16 p1, 0xc2

    if-eq v0, p1, :cond_16

    return v2

    .line 59
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return v1

    :cond_21
    const/4 p1, 0x2

    .line 63
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 64
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return v1

    .line 51
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0xc0

    if-ne p1, v0, :cond_3f

    .line 52
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return v1

    :cond_3f
    return v2
.end method

.method public sendInitiateArc()V
    .registers 3

    .line 84
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildInitiateArc(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/ArcInitiationActionFromAvr$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/ArcInitiationActionFromAvr;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public start()Z
    .registers 3

    .line 37
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 38
    iput v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x3e8

    .line 39
    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 40
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;->sendInitiateArc()V

    return v1
.end method
