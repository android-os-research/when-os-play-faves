.class public abstract Lcom/android/server/hdmi/SystemAudioAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SystemAudioAction.java"


# static fields
.field public static final MAX_SEND_RETRY_COUNT:I = 0x2

.field public static final OFF_TIMEOUT_MS:I = 0x7d0

.field public static final ON_TIMEOUT_MS:I = 0x1388

.field public static final STATE_CHECK_ROUTING_IN_PRGRESS:I = 0x1

.field public static final STATE_WAIT_FOR_SET_SYSTEM_AUDIO_MODE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "SystemAudioAction"


# instance fields
.field public final mAvrLogicalAddress:I

.field public mSendRetryCount:I

.field public mTargetAudioStatus:Z


# direct methods
.method public static bridge synthetic -$$Nest$msendSystemAudioModeRequestInternal(Lcom/android/server/hdmi/SystemAudioAction;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->sendSystemAudioModeRequestInternal()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 5

    .line 63
    invoke-direct {p0, p1, p4}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mSendRetryCount:I

    const/4 p1, 0x5

    .line 64
    invoke-static {p2, p1}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    .line 65
    iput p2, p0, Lcom/android/server/hdmi/SystemAudioAction;->mAvrLogicalAddress:I

    .line 66
    iput-boolean p3, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    return-void
.end method


# virtual methods
.method public final getSystemAudioModeRequestParam()I
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->isValid()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 112
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object p0

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    return p0

    .line 114
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePath()I

    move-result p0

    const v0, 0xffff

    if-eq p0, v0, :cond_27

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    return p0
.end method

.method public final handleSendSystemAudioModeRequestTimeout()V
    .registers 4

    .line 120
    iget-boolean v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mSendRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mSendRetryCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_e

    goto :goto_12

    .line 127
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->sendSystemAudioModeRequest()V

    return-void

    :cond_12
    :goto_12
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "[T]:wait for <Set System Audio Mode>."

    .line 122
    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SystemAudioAction;->setSystemAudioMode(Z)V

    const/4 v0, 0x1

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    return-void
.end method

.method public final handleTimerEvent(I)V
    .registers 3

    .line 178
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x2

    if-eq v0, p1, :cond_9

    return-void

    .line 183
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->handleSendSystemAudioModeRequestTimeout()V

    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 7

    .line 136
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mAvrLogicalAddress:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    return v2

    .line 139
    :cond_a
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    return v2

    .line 141
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x5

    if-nez v0, :cond_32

    .line 142
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0x70

    if-ne v0, v4, :cond_32

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Failed to start system audio mode request."

    .line 144
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/SystemAudioAction;->setSystemAudioMode(Z)V

    .line 146
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    return v1

    .line 149
    :cond_32
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v4, 0x72

    if-ne v0, v4, :cond_6d

    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mAvrLogicalAddress:I

    const-string v4, "SystemAudioAction"

    .line 150
    invoke-static {p1, v0, v4}, Lcom/android/server/hdmi/HdmiUtils;->checkCommandSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    goto :goto_6d

    .line 153
    :cond_45
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p1

    .line 154
    iget-boolean v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    if-ne p1, v0, :cond_54

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/SystemAudioAction;->setSystemAudioMode(Z)V

    .line 156
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return v1

    .line 159
    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected system audio mode request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    :cond_6d
    :goto_6d
    return v2
.end method

.method public removeSystemAudioActionInProgress()V
    .registers 2

    .line 172
    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 173
    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void
.end method

.method public sendSystemAudioModeRequest()V
    .registers 3

    .line 71
    const-class v0, Lcom/android/server/hdmi/RoutingControlAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 v1, 0x1

    .line 73
    iput v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v1, 0x0

    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/RoutingControlAction;

    .line 76
    new-instance v1, Lcom/android/server/hdmi/SystemAudioAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SystemAudioAction$1;-><init>(Lcom/android/server/hdmi/SystemAudioAction;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addOnFinishedCallback(Lcom/android/server/hdmi/HdmiCecFeatureAction;Ljava/lang/Runnable;)V

    return-void

    .line 84
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->sendSystemAudioModeRequestInternal()V

    return-void
.end method

.method public final sendSystemAudioModeRequestInternal()V
    .registers 5

    .line 89
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mAvrLogicalAddress:I

    .line 90
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->getSystemAudioModeRequestParam()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    .line 88
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSystemAudioModeRequest(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 91
    new-instance v1, Lcom/android/server/hdmi/SystemAudioAction$2;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SystemAudioAction$2;-><init>(Lcom/android/server/hdmi/SystemAudioAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    const/4 v0, 0x2

    .line 101
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 102
    iget-boolean v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    if-eqz v1, :cond_22

    const/16 v1, 0x1388

    goto :goto_24

    :cond_22
    const/16 v1, 0x7d0

    :goto_24
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method

.method public setSystemAudioMode(Z)V
    .registers 2

    .line 131
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(Z)V

    return-void
.end method
