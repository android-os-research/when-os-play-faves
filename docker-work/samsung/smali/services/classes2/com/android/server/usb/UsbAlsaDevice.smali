.class public final Lcom/android/server/usb/UsbAlsaDevice;
.super Ljava/lang/Object;
.source "UsbAlsaDevice.java"


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "UsbAlsaDevice"


# instance fields
.field public mAudioService:Landroid/media/IAudioService;

.field public final mCardNum:I

.field public final mDeviceAddress:Ljava/lang/String;

.field public mDeviceDescription:Ljava/lang/String;

.field public mDeviceName:Ljava/lang/String;

.field public final mDeviceNum:I

.field public final mHasInput:Z

.field public final mHasOutput:Z

.field public mInputState:I

.field public final mIsDock:Z

.field public final mIsInputHeadset:Z

.field public final mIsOutputHeadset:Z

.field public mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

.field public mOutputState:I

.field public mSelected:Z


# direct methods
.method public constructor <init>(Landroid/media/IAudioService;IILjava/lang/String;ZZZZZ)V
    .registers 11

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mSelected:Z

    const-string v0, ""

    .line 58
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceDescription:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    .line 65
    iput p2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    .line 66
    iput p3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    .line 67
    iput-object p4, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceAddress:Ljava/lang/String;

    .line 68
    iput-boolean p5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    .line 69
    iput-boolean p6, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    .line 70
    iput-boolean p7, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    .line 71
    iput-boolean p8, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    .line 72
    iput-boolean p9, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 8

    monitor-enter p0

    .line 361
    :try_start_1
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    const-string p4, "card"

    const-wide v0, 0x10500000001L

    .line 363
    iget v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string p4, "device"

    const-wide v0, 0x10500000002L

    .line 364
    iget v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string p4, "name"

    const-wide v0, 0x10900000003L

    .line 365
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-string p4, "has_output"

    const-wide v0, 0x10800000004L

    .line 366
    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string p4, "has_input"

    const-wide v0, 0x10800000005L

    .line 367
    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string p4, "address"

    const-wide v0, 0x10900000006L

    .line 368
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 370
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_52

    .line 371
    monitor-exit p0

    return-void

    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 392
    instance-of v0, p1, Lcom/android/server/usb/UsbAlsaDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 395
    :cond_6
    check-cast p1, Lcom/android/server/usb/UsbAlsaDevice;

    .line 396
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    iget v2, p1, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    if-ne v0, v2, :cond_33

    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    iget v2, p1, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    if-ne v0, v2, :cond_33

    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    iget-boolean v2, p1, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    if-ne v0, v2, :cond_33

    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    iget-boolean v2, p1, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    if-ne v0, v2, :cond_33

    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    iget-boolean v2, p1, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    if-ne v0, v2, :cond_33

    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    iget-boolean v2, p1, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    if-ne v0, v2, :cond_33

    iget-boolean p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    iget-boolean p1, p1, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    if-ne p0, p1, :cond_33

    const/4 v1, 0x1

    :cond_33
    return v1
.end method

.method public getAlsaCardDeviceString()Ljava/lang/String;
    .registers 3

    .line 100
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    if-ltz v0, :cond_e

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    if-gez v1, :cond_9

    goto :goto_e

    .line 105
    :cond_9
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->makeAlsaAddressString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 101
    :cond_e
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid alsa card or device alsaCard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " alsaDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UsbAlsaDevice"

    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCardNum()I
    .registers 1

    .line 79
    iget p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    return p0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceAddress:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getDeviceName()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 379
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDeviceNum()I
    .registers 1

    .line 86
    iget p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    return p0
.end method

.method public hasInput()Z
    .registers 1

    .line 119
    iget-boolean p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    return p0
.end method

.method public hasOutput()Z
    .registers 1

    .line 112
    iget-boolean p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    return p0
.end method

.method public hashCode()I
    .registers 4

    .line 412
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 413
    iget v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 414
    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 415
    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 416
    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 417
    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 418
    iget-boolean p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    xor-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method public isDock()Z
    .registers 1

    .line 140
    iget-boolean p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    return p0
.end method

.method public isInputHeadset()Z
    .registers 1

    .line 126
    iget-boolean p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    return p0
.end method

.method public final declared-synchronized isInputJackConnected()Z
    .registers 2

    monitor-enter p0

    .line 147
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 148
    monitor-exit p0

    return v0

    .line 150
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->isInputJackConnected()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isOutputHeadset()Z
    .registers 1

    .line 133
    iget-boolean p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    return p0
.end method

.method public final declared-synchronized isOutputJackConnected()Z
    .registers 2

    monitor-enter p0

    .line 157
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 158
    monitor-exit p0

    return v0

    .line 160
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->isOutputJackConnected()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeviceNameAndDescription(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 383
    :try_start_1
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    .line 384
    iput-object p2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceDescription:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    .line 385
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 179
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mSelected:Z

    const/4 v1, 0x0

    .line 180
    iput v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mInputState:I

    .line 181
    iput v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mOutputState:I

    .line 182
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->startJackDetect()V

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(Z)V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 184
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized startJackDetect()V
    .registers 2

    monitor-enter p0

    .line 166
    :try_start_1
    invoke-static {p0}, Lcom/android/server/usb/UsbAlsaJackDetector;->startJackDetect(Lcom/android/server/usb/UsbAlsaDevice;)Lcom/android/server/usb/UsbAlsaJackDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 167
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 2

    monitor-enter p0

    .line 188
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->stopJackDetect()V

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(Z)V

    .line 190
    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mSelected:Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 191
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized stopJackDetect()V
    .registers 2

    monitor-enter p0

    .line 171
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

    if-eqz v0, :cond_8

    .line 172
    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->pleaseStop()V

    :cond_8
    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 175
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toShortString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 375
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[card:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-object v0

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 350
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbAlsaDevice: [card: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasOutput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasInput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_43

    monitor-exit p0

    return-object v0

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateWiredDeviceConnectionState(Z)V
    .registers 12

    monitor-enter p0

    .line 197
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mSelected:Z

    if-nez v0, :cond_f

    const-string p1, "UsbAlsaDevice"

    const-string/jumbo v0, "updateWiredDeviceConnectionState on unselected AlsaDevice!"

    .line 198
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1ad

    .line 199
    monitor-exit p0

    return-void

    .line 201
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->getAlsaCardDeviceString()Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_1ad

    if-nez v0, :cond_17

    .line 203
    monitor-exit p0

    return-void

    :cond_17
    const/high16 v1, -0x7e000000

    const v2, -0x7ffff000

    const/high16 v3, 0x4000000

    const/16 v4, 0x4000

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_f1

    .line 207
    :try_start_24
    iget-object v7, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v7}, Landroid/media/IAudioService;->getMode()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_36

    iget-object v7, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v7}, Landroid/media/IAudioService;->getMode()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_f1

    :cond_36
    const-string v7, "UsbAlsaDevice"

    const-string/jumbo v8, "updateWiredDeviceConnectionState: DURING PHONE CALL -> Change the order"

    .line 208
    invoke-static {v7, v8}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-boolean v7, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    if-eqz v7, :cond_7d

    .line 211
    iget-boolean v7, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    if-eqz v7, :cond_47

    goto :goto_48

    :cond_47
    move v1, v2

    .line 213
    :goto_48
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->isInputJackConnected()Z

    move-result v2

    const-string v7, "UsbAlsaDevice"

    .line 214
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INPUT JACK connected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_68

    if-eqz v2, :cond_68

    move v2, v5

    goto :goto_69

    :cond_68
    move v2, v6

    .line 216
    :goto_69
    iget v7, p0, Lcom/android/server/usb/UsbAlsaDevice;->mInputState:I

    if-eq v2, v7, :cond_7d

    .line 217
    iput v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mInputState:I

    .line 218
    new-instance v7, Landroid/media/AudioDeviceAttributes;

    iget-object v8, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-direct {v7, v1, v0, v8}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    const-string v8, "UsbAlsaDevice"

    invoke-interface {v1, v7, v2, v8}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 225
    :cond_7d
    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    if-eqz v1, :cond_1ab

    .line 226
    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    if-eqz v1, :cond_88

    const/16 v3, 0x1000

    goto :goto_8e

    .line 227
    :cond_88
    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    if-eqz v1, :cond_8d

    goto :goto_8e

    :cond_8d
    move v3, v4

    :goto_8e
    const-string v1, "UsbAlsaDevice"

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pre-call device:0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " addr:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " name:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->isOutputJackConnected()Z

    move-result v1

    const-string v2, "UsbAlsaDevice"

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OUTPUT JACK connected: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_da

    if-eqz v1, :cond_da

    goto :goto_db

    :cond_da
    move v5, v6

    .line 238
    :goto_db
    iget p1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mOutputState:I

    if-eq v5, p1, :cond_1ab

    .line 239
    iput v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mOutputState:I

    .line 240
    new-instance p1, Landroid/media/AudioDeviceAttributes;

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-direct {p1, v3, v0, v1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    const-string v1, "UsbAlsaDevice"

    invoke-interface {v0, p1, v5, v1}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    goto/16 :goto_1ab

    :cond_f1
    const-string v7, "UsbAlsaDevice"

    const-string/jumbo v8, "updateWiredDeviceConnectionState: Order is kept as AOSP"

    .line 247
    invoke-static {v7, v8}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-boolean v7, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    if-eqz v7, :cond_165

    .line 250
    iget-boolean v7, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    if-eqz v7, :cond_102

    goto :goto_103

    :cond_102
    move v3, v4

    :goto_103
    const-string v4, "UsbAlsaDevice"

    .line 254
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pre-call device:0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " addr:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->isOutputJackConnected()Z

    move-result v4

    const-string v7, "UsbAlsaDevice"

    .line 259
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OUTPUT JACK connected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_150

    if-eqz v4, :cond_150

    move v4, v5

    goto :goto_151

    :cond_150
    move v4, v6

    .line 261
    :goto_151
    iget v7, p0, Lcom/android/server/usb/UsbAlsaDevice;->mOutputState:I

    if-eq v4, v7, :cond_165

    .line 262
    iput v4, p0, Lcom/android/server/usb/UsbAlsaDevice;->mOutputState:I

    .line 263
    new-instance v7, Landroid/media/AudioDeviceAttributes;

    iget-object v8, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-direct {v7, v3, v0, v8}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    const-string v8, "UsbAlsaDevice"

    invoke-interface {v3, v7, v4, v8}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 270
    :cond_165
    iget-boolean v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    if-eqz v3, :cond_1ab

    .line 271
    iget-boolean v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    if-eqz v3, :cond_16e

    goto :goto_16f

    :cond_16e
    move v1, v2

    .line 274
    :goto_16f
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->isInputJackConnected()Z

    move-result v2

    const-string v3, "UsbAlsaDevice"

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INPUT JACK connected: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_18e

    if-eqz v2, :cond_18e

    goto :goto_18f

    :cond_18e
    move v5, v6

    .line 277
    :goto_18f
    iget p1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mInputState:I

    if-eq v5, p1, :cond_1ab

    .line 278
    iput v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mInputState:I

    .line 279
    new-instance p1, Landroid/media/AudioDeviceAttributes;

    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-direct {p1, v1, v0, v2}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    const-string v1, "UsbAlsaDevice"

    invoke-interface {v0, p1, v5, v1}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    :try_end_1a3
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_1a3} :catch_1a4
    .catchall {:try_start_24 .. :try_end_1a3} :catchall_1ad

    goto :goto_1ab

    :catch_1a4
    :try_start_1a4
    const-string p1, "UsbAlsaDevice"

    const-string v0, "RemoteException in setWiredDeviceConnectionState"

    .line 286
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ab
    .catchall {:try_start_1a4 .. :try_end_1ab} :catchall_1ad

    .line 288
    :cond_1ab
    :goto_1ab
    monitor-exit p0

    return-void

    :catchall_1ad
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateWiredDeviceConnectionStateByBundle(Z)V
    .registers 10

    monitor-enter p0

    :try_start_1
    const-string v0, "UsbAlsaDevice"

    const-string/jumbo v1, "updateWiredDeviceConnectionStateByBundle()"

    .line 293
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->getAlsaCardDeviceString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    const-string p1, "UsbAlsaDevice"

    const-string v0, "no alsaCardDeviceString"

    .line 297
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_118

    .line 298
    monitor-exit p0

    return-void

    :cond_18
    const/high16 v1, -0x7e000000

    const/high16 v2, 0x4000000

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_a1

    .line 307
    :try_start_20
    iget-object v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v5}, Landroid/media/IAudioService;->getMode()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_32

    iget-object v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v5}, Landroid/media/IAudioService;->getMode()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_a1

    .line 308
    :cond_32
    iget-boolean v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    if-eqz v5, :cond_69

    const-string v5, "UsbAlsaDevice"

    .line 309
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INPUT addr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5a

    move v5, v3

    goto :goto_5b

    :cond_5a
    move v5, v4

    .line 311
    :goto_5b
    new-instance v6, Landroid/media/AudioDeviceAttributes;

    iget-object v7, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-direct {v6, v1, v0, v7}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    const-string v7, "UsbAlsaDevice"

    invoke-interface {v1, v6, v5, v7}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 316
    :cond_69
    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    if-eqz v1, :cond_116

    const-string v1, "UsbAlsaDevice"

    .line 317
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OUTPUT addr:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_90

    goto :goto_91

    :cond_90
    move v3, v4

    .line 319
    :goto_91
    new-instance p1, Landroid/media/AudioDeviceAttributes;

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-direct {p1, v2, v0, v1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    const-string v1, "UsbAlsaDevice"

    invoke-interface {v0, p1, v3, v1}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    goto/16 :goto_116

    .line 324
    :cond_a1
    iget-boolean v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    if-eqz v5, :cond_d8

    const-string v5, "UsbAlsaDevice"

    .line 325
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OUTPUT addr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_c9

    move v5, v3

    goto :goto_ca

    :cond_c9
    move v5, v4

    .line 327
    :goto_ca
    new-instance v6, Landroid/media/AudioDeviceAttributes;

    iget-object v7, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-direct {v6, v2, v0, v7}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    const-string v7, "UsbAlsaDevice"

    invoke-interface {v2, v6, v5, v7}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 331
    :cond_d8
    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    if-eqz v2, :cond_116

    const-string v2, "UsbAlsaDevice"

    .line 332
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INPUT addr:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_ff

    goto :goto_100

    :cond_ff
    move v3, v4

    .line 334
    :goto_100
    new-instance p1, Landroid/media/AudioDeviceAttributes;

    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-direct {p1, v1, v0, v2}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    const-string v1, "UsbAlsaDevice"

    invoke-interface {v0, p1, v3, v1}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    :try_end_10e
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_10e} :catch_10f
    .catchall {:try_start_20 .. :try_end_10e} :catchall_118

    goto :goto_116

    :catch_10f
    :try_start_10f
    const-string p1, "UsbAlsaDevice"

    const-string v0, "RemoteException in updateWiredDeviceConnectionStateByBundle"

    .line 340
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_116
    .catchall {:try_start_10f .. :try_end_116} :catchall_118

    .line 342
    :cond_116
    :goto_116
    monitor-exit p0

    return-void

    :catchall_118
    move-exception p1

    monitor-exit p0

    throw p1
.end method
