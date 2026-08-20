.class public Lcom/android/server/hdmi/TimerRecordingAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "TimerRecordingAction.java"


# static fields
.field public static final STATE_WAITING_FOR_TIMER_STATUS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "TimerRecordingAction"

.field public static final TIMER_STATUS_TIMEOUT_MS:I = 0x1d4c0


# instance fields
.field public final mRecordSource:[B

.field public final mRecorderAddress:I

.field public final mSourceType:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmRecorderAddress(Lcom/android/server/hdmi/TimerRecordingAction;)I
    .registers 1

    iget p0, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    return p0
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II[B)V
    .registers 5

    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 49
    iput p2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    .line 50
    iput p3, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mSourceType:I

    .line 51
    iput-object p4, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecordSource:[B

    return-void
.end method

.method public static bytesToInt([B)I
    .registers 5

    .line 148
    array-length v0, p0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_18

    const/4 v0, 0x0

    move v1, v0

    .line 152
    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_17

    rsub-int/lit8 v2, v0, 0x3

    mul-int/lit8 v2, v2, 0x8

    .line 154
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_17
    return v1

    .line 149
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid data size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 2

    .line 33
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public final handleFeatureAbort(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6

    .line 128
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 129
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x34

    if-eq v1, v2, :cond_16

    const/16 v2, 0x97

    if-eq v1, v2, :cond_16

    const/16 v2, 0xa2

    if-eq v1, v2, :cond_16

    return v0

    :cond_16
    const/4 v0, 0x1

    .line 138
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Feature Abort] for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reason:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TimerRecordingAction"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p1

    iget v1, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    invoke-virtual {p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 142
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return v0
.end method

.method public handleTimerEvent(I)V
    .registers 4

    .line 161
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_2a

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timeout in invalid state:[Expected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Actual:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TimerRecordingAction"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 166
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p1

    iget v0, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 168
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return-void
.end method

.method public final handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 7

    .line 113
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    .line 115
    array-length v0, p1

    const-string v1, "TimerRecordingAction"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_28

    array-length v0, p1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_f

    goto :goto_28

    .line 119
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid [Timer Status Data]:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 116
    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget v3, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    invoke-static {p1}, Lcom/android/server/hdmi/TimerRecordingAction;->bytesToInt([B)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received [Timer Status Data]:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_4d
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return v2
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5

    .line 98
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_24

    .line 99
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    iget v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    if-eq v0, v2, :cond_f

    goto :goto_24

    .line 103
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v2, 0x35

    if-eq v0, v2, :cond_1a

    return v1

    .line 105
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/TimerRecordingAction;->handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p0

    return p0

    .line 107
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/TimerRecordingAction;->handleFeatureAbort(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p0

    return p0

    :cond_24
    :goto_24
    return v1
.end method

.method public final sendTimerMessage()V
    .registers 4

    .line 62
    iget v0, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mSourceType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_32

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    const/4 v2, 0x3

    if-eq v0, v2, :cond_18

    .line 76
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 78
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return-void

    .line 72
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecordSource:[B

    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    goto :goto_3e

    .line 68
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecordSource:[B

    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    goto :goto_3e

    .line 64
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecordSource:[B

    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 81
    :goto_3e
    new-instance v1, Lcom/android/server/hdmi/TimerRecordingAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/TimerRecordingAction$1;-><init>(Lcom/android/server/hdmi/TimerRecordingAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public start()Z
    .registers 1

    .line 56
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->sendTimerMessage()V

    const/4 p0, 0x1

    return p0
.end method
