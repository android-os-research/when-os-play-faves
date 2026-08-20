.class public final Lcom/android/server/hdmi/SetArcTransmissionStateAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SetArcTransmissionStateAction.java"


# static fields
.field public static final STATE_WAITING_TIMEOUT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "SetArcTransmissionStateAction"


# instance fields
.field public final mAvrAddress:I

.field public final mEnabled:Z


# direct methods
.method public static bridge synthetic -$$Nest$mdisableArc(Lcom/android/server/hdmi/SetArcTransmissionStateAction;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->disableArc()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendReportArcInitiated(Lcom/android/server/hdmi/SetArcTransmissionStateAction;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->sendReportArcInitiated()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V
    .registers 5

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    const/4 p1, 0x5

    .line 51
    invoke-static {p2, p1}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    .line 52
    iput p2, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mAvrAddress:I

    .line 53
    iput-boolean p3, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public final disableArc()V
    .registers 3

    const-string v0, "SetArcTransmissionStateAction"

    const-string v1, "Disabling ARC"

    .line 117
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->disableArc()V

    .line 120
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mAvrAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportArcTerminated(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method

.method public handleTimerEvent(I)V
    .registers 3

    .line 145
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-ne v0, p1, :cond_b

    const/4 p1, 0x1

    if-eq v0, p1, :cond_8

    goto :goto_b

    .line 149
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    :cond_b
    :goto_b
    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5

    .line 126
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    return v2

    .line 130
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-nez v0, :cond_27

    .line 132
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0xc1

    if-ne p1, v0, :cond_27

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Feature aborted for <Report Arc Initiated>"

    .line 134
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->disableArc()V

    .line 136
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return v1

    :cond_27
    return v2
.end method

.method public final sendReportArcInitiated()V
    .registers 3

    .line 92
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mAvrAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportArcInitiated(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 93
    new-instance v1, Lcom/android/server/hdmi/SetArcTransmissionStateAction$2;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction$2;-><init>(Lcom/android/server/hdmi/SetArcTransmissionStateAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public start()Z
    .registers 5

    .line 59
    iget-boolean v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mEnabled:Z

    if-eqz v0, :cond_17

    .line 61
    new-instance v0, Lcom/android/server/hdmi/RequestSadAction;

    .line 62
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    const/4 v2, 0x5

    new-instance v3, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;

    invoke-direct {v3, p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;-><init>(Lcom/android/server/hdmi/SetArcTransmissionStateAction;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/hdmi/RequestSadAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILcom/android/server/hdmi/RequestSadAction$RequestSadCallback;)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_1d

    .line 84
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->disableArc()V

    .line 85
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    :goto_1d
    const/4 p0, 0x1

    return p0
.end method
