.class public final Lcom/android/server/hdmi/RoutingControlAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "RoutingControlAction.java"


# static fields
.field public static final STATE_WAIT_FOR_ROUTING_INFORMATION:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "RoutingControlAction"

.field public static final TIMEOUT_ROUTING_INFORMATION_MS:I = 0x3e8


# instance fields
.field public mCurrentRoutingPath:I

.field public final mNotifyInputChange:Z


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 4

    .line 59
    invoke-direct {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 60
    iput p2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    if-nez p3, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 65
    :goto_a
    iput-boolean p1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mNotifyInputChange:Z

    return-void
.end method


# virtual methods
.method public handleTimerEvent(I)V
    .registers 4

    .line 110
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const-string v1, "CEC"

    if-ne v0, p1, :cond_31

    if-nez v0, :cond_9

    goto :goto_31

    :cond_9
    const/4 v0, 0x1

    if-eq p1, v0, :cond_26

    .line 121
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid timeoutState ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 116
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->updateActiveInput()V

    .line 117
    invoke-virtual {p0}, Lcom/android/server/hdmi/RoutingControlAction;->sendSetStreamPath()V

    const/4 p1, 0x0

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    return-void

    :cond_31
    :goto_31
    const-string p0, "Timer in a wrong state. Ignored."

    .line 111
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5

    .line 77
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    .line 78
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    .line 79
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2d

    const/16 v1, 0x81

    if-ne v0, v1, :cond_2d

    .line 84
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result p1

    .line 85
    iget v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiUtils;->isInActiveRoutingPath(II)Z

    move-result v0

    if-nez v0, :cond_1e

    return v2

    .line 88
    :cond_1e
    iput p1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    .line 90
    const-class p1, Lcom/android/server/hdmi/RoutingControlAction;

    invoke-virtual {p0, p1, p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 91
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return v2

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public final sendSetStreamPath()V
    .registers 3

    .line 104
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetStreamPath(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method

.method public start()Z
    .registers 3

    const/4 v0, 0x1

    .line 70
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v1, 0x3e8

    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return v0
.end method

.method public final updateActiveInput()V
    .registers 3

    .line 98
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setPrevPortId(I)V

    .line 100
    iget v1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    iget-boolean p0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mNotifyInputChange:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveInput(IZ)V

    return-void
.end method
