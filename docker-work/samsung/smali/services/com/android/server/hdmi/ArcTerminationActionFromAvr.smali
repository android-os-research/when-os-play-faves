.class public Lcom/android/server/hdmi/ArcTerminationActionFromAvr;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "ArcTerminationActionFromAvr.java"


# static fields
.field public static final STATE_ARC_TERMINATED:I = 0x2

.field public static final STATE_WAITING_FOR_INITIATE_ARC_RESPONSE:I = 0x1

.field public static final TIMEOUT_MS:I = 0x3e8


# direct methods
.method public static synthetic $r8$lambda$k5UGkbFVCieuTxKQDBl6X0NQFo0(Lcom/android/server/hdmi/ArcTerminationActionFromAvr;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->lambda$sendTerminateArc$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    return-void
.end method

.method private synthetic lambda$sendTerminateArc$0(I)V
    .registers 4

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_d

    .line 79
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    :cond_d
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Terminate ARC was not successfully sent."

    .line 81
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    :cond_17
    return-void
.end method


# virtual methods
.method public bridge synthetic addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 2

    .line 23
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public final handleTerminateArcTimeout()V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "handleTerminateArcTimeout"

    .line 88
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return-void
.end method

.method public handleTimerEvent(I)V
    .registers 3

    .line 61
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x1

    if-eq v0, p1, :cond_9

    goto :goto_c

    .line 67
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->handleTerminateArcTimeout()V

    :goto_c
    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5

    .line 46
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    return v1

    .line 49
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result p1

    const/16 v0, 0xc2

    if-eq p1, v0, :cond_10

    return v1

    :cond_10
    const/4 p1, 0x2

    .line 51
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 52
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->processArcTermination()V

    .line 53
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return v2
.end method

.method public sendTerminateArc()V
    .registers 3

    .line 73
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildTerminateArc(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/ArcTerminationActionFromAvr$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/ArcTerminationActionFromAvr;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public start()Z
    .registers 3

    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v1, 0x3e8

    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 40
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->sendTerminateArc()V

    return v0
.end method
