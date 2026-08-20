.class public final Lcom/android/server/hdmi/RequestArcInitiationAction;
.super Lcom/android/server/hdmi/RequestArcAction;
.source "RequestArcInitiationAction.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RequestArcInitiationAction"


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/RequestArcAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    return-void
.end method


# virtual methods
.method public start()Z
    .registers 4

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v1, 0x7d0

    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 45
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    .line 44
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRequestArcInitiation(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 46
    new-instance v2, Lcom/android/server/hdmi/RequestArcInitiationAction$1;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/RequestArcInitiationAction$1;-><init>(Lcom/android/server/hdmi/RequestArcInitiationAction;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return v0
.end method
