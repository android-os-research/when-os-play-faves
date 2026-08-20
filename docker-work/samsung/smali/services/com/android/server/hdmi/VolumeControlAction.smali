.class public final Lcom/android/server/hdmi/VolumeControlAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "VolumeControlAction.java"


# static fields
.field public static final MAX_VOLUME:I = 0x64

.field public static final STATE_WAIT_FOR_NEXT_VOLUME_PRESS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "VolumeControlAction"

.field public static final UNKNOWN_AVR_VOLUME:I = -0x1


# instance fields
.field public final mAvrAddress:I

.field public mIsVolumeUp:Z

.field public mLastAvrMute:Z

.field public mLastAvrVolume:I

.field public mLastKeyUpdateTime:J

.field public mSentKeyPressed:Z


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V
    .registers 4

    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 75
    iput p2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    .line 76
    iput-boolean p3, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    const/4 p1, -0x1

    .line 77
    iput p1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    .line 79
    iput-boolean p1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    .line 81
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->updateLastKeyUpdateTime()V

    return-void
.end method

.method public static scaleToCecVolume(II)I
    .registers 2

    mul-int/lit8 p0, p0, 0x64

    .line 59
    div-int/2addr p0, p1

    return p0
.end method

.method public static scaleToCustomVolume(II)I
    .registers 2

    mul-int/2addr p0, p1

    .line 70
    div-int/lit8 p0, p0, 0x64

    return p0
.end method


# virtual methods
.method public clear()V
    .registers 5

    .line 185
    invoke-super {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->clear()V

    .line 186
    iget-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    if-eqz v0, :cond_a

    .line 187
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->sendVolumeKeyReleased()V

    .line 189
    :cond_a
    iget v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    .line 190
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    iget v3, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioStatus(ZI)V

    .line 191
    iput v1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    :cond_1f
    return-void
.end method

.method public final handleFeatureAbort(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4

    .line 173
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    const/16 v1, 0x44

    if-ne p1, v1, :cond_12

    .line 177
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    const/4 p0, 0x1

    return p0

    :cond_12
    return v0
.end method

.method public final handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 7

    .line 141
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->isAudioStatusMute(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    .line 142
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getAudioStatusVolume(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p1

    .line 143
    iput p1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    .line 144
    iput-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/VolumeControlAction;->shouldUpdateAudioVolume(Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_34

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 146
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "Force volume change[mute:%b, volume=%d]"

    invoke-static {v3, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioStatus(ZI)V

    const/4 p1, -0x1

    .line 148
    iput p1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    .line 149
    iput-boolean v4, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    :cond_34
    return v2
.end method

.method public handleTimerEvent(I)V
    .registers 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    return-void

    .line 202
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastKeyUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long p1, v0, v2

    if-ltz p1, :cond_15

    .line 203
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    goto :goto_1b

    .line 205
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->sendVolumeKeyPressed()V

    .line 206
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->resetTimer()V

    :goto_1b
    return-void
.end method

.method public handleVolumeChange(Z)V
    .registers 5

    .line 109
    iget-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    if-eq v0, p1, :cond_25

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 110
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Volume Key Status Changed[old:%b new:%b]"

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->sendVolumeKeyReleased()V

    .line 112
    iput-boolean p1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    .line 113
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->sendVolumeKeyPressed()V

    .line 114
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->resetTimer()V

    .line 116
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->updateLastKeyUpdateTime()V

    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5

    .line 127
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_24

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    iget v2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    if-eq v0, v2, :cond_f

    goto :goto_24

    .line 131
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v2, 0x7a

    if-eq v0, v2, :cond_1a

    return v1

    .line 133
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/VolumeControlAction;->handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p0

    return p0

    .line 135
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/VolumeControlAction;->handleFeatureAbort(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p0

    return p0

    :cond_24
    :goto_24
    return v1
.end method

.method public final resetTimer()V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    const/4 v0, 0x1

    const/16 v1, 0x12c

    .line 105
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method

.method public final sendVolumeKeyPressed()V
    .registers 4

    .line 97
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    .line 98
    iget-boolean v2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    if-eqz v2, :cond_d

    const/16 v2, 0x41

    goto :goto_f

    :cond_d
    const/16 v2, 0x42

    .line 97
    :goto_f
    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    return-void
.end method

.method public final sendVolumeKeyReleased()V
    .registers 3

    .line 121
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    .line 120
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    return-void
.end method

.method public final shouldUpdateAudioVolume(Z)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    return v0

    .line 162
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getService()Lcom/android/server/hdmi/HdmiControlService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p1

    const/4 v1, 0x3

    .line 163
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 164
    iget-boolean p0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    const/4 v3, 0x0

    if-eqz p0, :cond_23

    .line 165
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    if-ne v2, p0, :cond_21

    goto :goto_22

    :cond_21
    move v0, v3

    :goto_22
    return v0

    :cond_23
    if-nez v2, :cond_26

    goto :goto_27

    :cond_26
    move v0, v3

    :goto_27
    return v0
.end method

.method public start()Z
    .registers 2

    const/4 v0, 0x1

    .line 90
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 91
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->sendVolumeKeyPressed()V

    .line 92
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->resetTimer()V

    return v0
.end method

.method public final updateLastKeyUpdateTime()V
    .registers 3

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastKeyUpdateTime:J

    return-void
.end method
