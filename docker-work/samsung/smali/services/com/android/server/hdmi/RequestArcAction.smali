.class public abstract Lcom/android/server/hdmi/RequestArcAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "RequestArcAction.java"


# static fields
.field public static final STATE_WATING_FOR_REQUEST_ARC_REQUEST_RESPONSE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "RequestArcAction"


# instance fields
.field public final mAvrAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .registers 4

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    const/4 p1, 0x5

    .line 44
    invoke-static {p2, p1}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    .line 45
    iput p2, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    return-void
.end method


# virtual methods
.method public final disableArcTransmission()V
    .registers 5

    .line 77
    new-instance v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void
.end method

.method public final handleTimerEvent(I)V
    .registers 3

    .line 84
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-ne v0, p1, :cond_16

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    goto :goto_16

    :cond_8
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "[T] RequestArcAction."

    .line 87
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->disableArcTransmission()V

    .line 89
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    :cond_16
    :goto_16
    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6

    .line 50
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3a

    iget v0, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    const-string v3, "RequestArcAction"

    .line 51
    invoke-static {p1, v0, v3}, Lcom/android/server/hdmi/HdmiUtils;->checkCommandSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_3a

    .line 54
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-eqz v0, :cond_18

    return v2

    .line 60
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0xc4

    if-ne p1, v0, :cond_2b

    .line 62
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->disableArcTransmission()V

    .line 63
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return v1

    :cond_2b
    const/16 v0, 0xc3

    if-ne p1, v0, :cond_3a

    .line 66
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->disableArc()V

    .line 67
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return v1

    :cond_3a
    :goto_3a
    return v2
.end method
