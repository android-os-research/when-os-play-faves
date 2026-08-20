.class public Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SystemAudioInitiationActionFromAvr.java"


# static fields
.field public static final MAX_RETRY_COUNT:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final STATE_WAITING_FOR_ACTIVE_SOURCE:I = 0x1

.field public static final STATE_WAITING_FOR_TV_SUPPORT:I = 0x2


# instance fields
.field public mSendRequestActiveSourceRetryCount:I

.field public mSendSetSystemAudioModeRetryCount:I


# direct methods
.method public static synthetic $r8$lambda$g7RxMDJIknSFDuSIgKML4mC57hY(Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->lambda$sendRequestActiveSource$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hN8NEa7_2UGfRU2CczIm2QRcDPI(Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->lambda$queryTvSystemAudioModeSupport$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$pm4vUWFI4LIQTGYLkrXQEeInY2Y(Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;ZII)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->lambda$sendSetSystemAudioMode$1(ZII)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mSendRequestActiveSourceRetryCount:I

    .line 36
    iput p1, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mSendSetSystemAudioModeRetryCount:I

    return-void
.end method

.method private synthetic lambda$queryTvSystemAudioModeSupport$2(Z)V
    .registers 3

    if-eqz p1, :cond_16

    .line 136
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    move-result p1

    if-eqz p1, :cond_12

    const/16 p1, 0xf

    .line 137
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->sendSetSystemAudioMode(ZI)V

    .line 139
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    goto :goto_21

    .line 141
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 142
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    :goto_21
    return-void
.end method

.method private synthetic lambda$sendRequestActiveSource$0(I)V
    .registers 3

    if-eqz p1, :cond_1a

    .line 90
    iget p1, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mSendRequestActiveSourceRetryCount:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_f

    add-int/lit8 p1, p1, 0x1

    .line 91
    iput p1, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mSendRequestActiveSourceRetryCount:I

    .line 92
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->sendRequestActiveSource()V

    goto :goto_1a

    .line 94
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 95
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    :cond_1a
    :goto_1a
    return-void
.end method

.method private synthetic lambda$sendSetSystemAudioMode$1(ZII)V
    .registers 5

    if-eqz p3, :cond_1a

    .line 105
    iget p3, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mSendSetSystemAudioModeRetryCount:I

    const/4 v0, 0x5

    if-ge p3, v0, :cond_f

    add-int/lit8 p3, p3, 0x1

    .line 106
    iput p3, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mSendSetSystemAudioModeRetryCount:I

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->sendSetSystemAudioMode(ZI)V

    goto :goto_1a

    .line 109
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 110
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    :cond_1a
    :goto_1a
    return-void
.end method


# virtual methods
.method public bridge synthetic addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 2

    .line 25
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public final handleActiveSourceTimeout()V
    .registers 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Cannot get active source."

    .line 117
    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 121
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/16 v1, 0xf

    .line 122
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourcePath()I

    move-result v2

    const-string v3, "SystemAudioInitiationActionFromAvr#handleActiveSourceTimeout()"

    .line 121
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSourceFromOneDeviceType(IILjava/lang/String;)V

    const/4 v0, 0x2

    .line 124
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 125
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->queryTvSystemAudioModeSupport()V

    goto :goto_33

    .line 127
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 129
    :goto_33
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return-void
.end method

.method public handleTimerEvent(I)V
    .registers 3

    .line 75
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x1

    if-eq v0, p1, :cond_9

    goto :goto_c

    .line 81
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->handleActiveSourceTimeout()V

    :goto_c
    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5

    .line 57
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-eq v0, v2, :cond_a

    return v1

    .line 60
    :cond_a
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_10

    return v1

    .line 63
    :cond_10
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 65
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)I

    const/4 p1, 0x2

    .line 66
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 67
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->queryTvSystemAudioModeSupport()V

    return v2
.end method

.method public final queryTvSystemAudioModeSupport()V
    .registers 3

    .line 133
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->queryTvSystemAudioModeSupport(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;)V

    return-void
.end method

.method public sendRequestActiveSource()V
    .registers 3

    .line 87
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRequestActiveSource(I)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public sendSetSystemAudioMode(ZI)V
    .registers 5

    .line 102
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, p2, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;ZI)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public start()Z
    .registers 4

    .line 44
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    const/4 v1, 0x1

    const v2, 0xffff

    if-ne v0, v2, :cond_1b

    .line 45
    iput v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x7d0

    .line 46
    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 47
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->sendRequestActiveSource()V

    goto :goto_21

    :cond_1b
    const/4 v0, 0x2

    .line 49
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 50
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->queryTvSystemAudioModeSupport()V

    :goto_21
    return v1
.end method
