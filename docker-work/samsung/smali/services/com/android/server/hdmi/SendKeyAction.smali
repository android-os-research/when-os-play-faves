.class public final Lcom/android/server/hdmi/SendKeyAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SendKeyAction.java"


# static fields
.field public static final AWAIT_LONGPRESS_MS:I = 0x190

.field public static final AWAIT_RELEASE_KEY_MS:I = 0x3e8

.field public static final STATE_CHECKING_LONGPRESS:I = 0x1

.field public static final STATE_PROCESSING_KEYCODE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "SendKeyAction"


# instance fields
.field public mLastKeycode:I

.field public mLastSendKeyTime:J

.field public final mTargetAddress:I


# direct methods
.method public static synthetic $r8$lambda$wW8_gvOaS8QB0d_Lz4Utua6EztQ(Lcom/android/server/hdmi/SendKeyAction;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/SendKeyAction;->lambda$sendKeyUp$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)V
    .registers 4

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 80
    iput p2, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    .line 81
    iput p3, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    return-void
.end method

.method private synthetic lambda$sendKeyUp$0(I)V
    .registers 3

    .line 182
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result p1

    .line 183
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->findAudioReceiverAddress()I

    move-result v0

    .line 181
    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveAudioStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method


# virtual methods
.method public final getCurrentTime()J
    .registers 3

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public handleTimerEvent(I)V
    .registers 4

    .line 198
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_17

    if-eq p1, v1, :cond_10

    const-string p0, "SendKeyAction"

    const-string p1, "Not in a valid state"

    .line 213
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 209
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    .line 210
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    goto :goto_30

    .line 201
    :cond_17
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 202
    iput v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 203
    iget p1, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    .line 204
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    .line 205
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    :goto_30
    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public processKeyEvent(IZ)V
    .registers 7

    .line 110
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const-string p0, "SendKeyAction"

    const-string p1, "Not in a valid state"

    .line 111
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    if-eqz p2, :cond_51

    .line 117
    iget p2, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    if-eq p1, p2, :cond_2c

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    .line 120
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->isRepeatableKey(I)Z

    move-result p2

    if-nez p2, :cond_42

    .line 121
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    .line 122
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return-void

    .line 129
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long p2, v0, v2

    if-ltz p2, :cond_42

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    .line 131
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    .line 134
    :cond_42
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {p2}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 135
    iget p2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x3e8

    invoke-virtual {p0, p2, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 136
    iput p1, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    goto :goto_5b

    .line 140
    :cond_51
    iget p2, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    if-ne p1, p2, :cond_5b

    .line 141
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    .line 142
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public final sendKeyDown(I)V
    .registers 4

    .line 148
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->androidKeyToCecKey(I)[B

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 155
    :cond_7
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2d

    .line 156
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    if-eqz v0, :cond_2d

    .line 157
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    invoke-static {v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    new-instance v0, Lcom/android/server/hdmi/SendKeyAction$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/SendKeyAction$1;-><init>(Lcom/android/server/hdmi/SendKeyAction;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    goto :goto_3a

    .line 169
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    invoke-static {v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :goto_3a
    return-void
.end method

.method public final sendKeyUp()V
    .registers 3

    .line 177
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecKeycode;->isVolumeKeycode(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 178
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getService()Lcom/android/server/hdmi/HdmiControlService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isAbsoluteVolumeControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 179
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/SendKeyAction$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SendKeyAction$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/SendKeyAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    goto :goto_36

    .line 185
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :goto_36
    return-void
.end method

.method public start()Z
    .registers 3

    .line 86
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    .line 89
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecKeycode;->isRepeatableKey(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1b

    .line 90
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    .line 91
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return v1

    .line 94
    :cond_1b
    iput v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x190

    .line 95
    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return v1
.end method
