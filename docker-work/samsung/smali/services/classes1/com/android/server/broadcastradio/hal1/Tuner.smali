.class Lcom/android/server/broadcastradio/hal1/Tuner;
.super Landroid/hardware/radio/ITuner$Stub;
.source "Tuner.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BroadcastRadioService.Tuner"


# instance fields
.field public final mClientCallback:Landroid/hardware/radio/ITunerCallback;

.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public mIsClosed:Z

.field public mIsMuted:Z

.field public final mLock:Ljava/lang/Object;

.field public final mNativeContext:J

.field public mRegion:I

.field public final mTunerCallback:Lcom/android/server/broadcastradio/hal1/TunerCallback;

.field public final mWithAudio:Z


# direct methods
.method public constructor <init>(Landroid/hardware/radio/ITunerCallback;IIZI)V
    .registers 8

    .line 53
    invoke-direct {p0}, Landroid/hardware/radio/ITuner$Stub;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsClosed:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsMuted:Z

    .line 54
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    .line 55
    new-instance v1, Lcom/android/server/broadcastradio/hal1/TunerCallback;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/broadcastradio/hal1/TunerCallback;-><init>(Lcom/android/server/broadcastradio/hal1/Tuner;Landroid/hardware/radio/ITunerCallback;I)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mTunerCallback:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    .line 56
    iput p3, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mRegion:I

    .line 57
    iput-boolean p4, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mWithAudio:Z

    .line 58
    invoke-direct {p0, p2, p4, p5}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeInit(IZI)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    .line 59
    new-instance p2, Lcom/android/server/broadcastradio/hal1/Tuner$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/broadcastradio/hal1/Tuner$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/broadcastradio/hal1/Tuner;)V

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 61
    :try_start_29
    invoke-interface {p1}, Landroid/hardware/radio/ITunerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_30} :catch_31

    goto :goto_34

    .line 63
    :catch_31
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->close()V

    :goto_34
    return-void
.end method

.method private native nativeCancel(J)V
.end method

.method private native nativeCancelAnnouncement(J)V
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeFinalize(J)V
.end method

.method private native nativeGetConfiguration(JI)Landroid/hardware/radio/RadioManager$BandConfig;
.end method

.method private native nativeGetImage(JI)[B
.end method

.method private native nativeGetProgramList(JLjava/util/Map;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeInit(IZI)J
.end method

.method private native nativeIsAnalogForced(J)Z
.end method

.method private native nativeScan(JZZ)V
.end method

.method private native nativeSetAnalogForced(JZ)V
.end method

.method private native nativeSetConfiguration(JLandroid/hardware/radio/RadioManager$BandConfig;)V
.end method

.method private native nativeStartBackgroundScan(J)Z
.end method

.method private native nativeStep(JZZ)V
.end method

.method private native nativeTune(JLandroid/hardware/radio/ProgramSelector;)V
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .line 203
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 205
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeCancel(J)V

    .line 206
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public cancelAnnouncement()V
    .registers 4

    .line 211
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 213
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeCancelAnnouncement(J)V

    .line 214
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final checkConfiguredLocked()Z
    .registers 2

    .line 120
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mTunerCallback:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->isInitialConfigurationDone()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const-string p0, "BroadcastRadioService.Tuner"

    const-string v0, "Initial configuration is still pending, skipping the operation"

    .line 121
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final checkNotClosedLocked()V
    .registers 2

    .line 114
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsClosed:Z

    if-nez p0, :cond_5

    return-void

    .line 115
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Tuner is closed, no further operations are allowed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .registers 5

    .line 99
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsClosed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 101
    iput-boolean v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsClosed:Z

    .line 102
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mTunerCallback:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    invoke-virtual {v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->detach()V

    .line 103
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v1}, Landroid/hardware/radio/ITunerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 104
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeClose(J)V

    .line 105
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 69
    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeFinalize(J)V

    .line 70
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;
    .registers 5

    .line 139
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 141
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    iget v3, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mRegion:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeGetConfiguration(JI)Landroid/hardware/radio/RadioManager$BandConfig;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    .line 142
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public getImage(I)Landroid/graphics/Bitmap;
    .registers 5

    if-eqz p1, :cond_1e

    .line 224
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_5
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeGetImage(JI)[B

    move-result-object p0

    .line 226
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1b

    if-eqz p0, :cond_19

    .line 227
    array-length p1, p0

    if-nez p1, :cond_12

    goto :goto_19

    :cond_12
    const/4 p1, 0x0

    .line 231
    array-length v0, p0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return-object p0

    :catchall_1b
    move-exception p0

    .line 226
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0

    .line 220
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Image ID is missing"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getParameters(Ljava/util/List;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 299
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported by HAL 1.x"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getProgramList(Ljava/util/Map;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 246
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeGetProgramList(JLjava/util/Map;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 250
    monitor-exit v0

    return-object p0

    .line 248
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Program list is not ready"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_18
    move-exception p0

    .line 251
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public isClosed()Z
    .registers 1

    .line 110
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsClosed:Z

    return p0
.end method

.method public isConfigFlagSet(I)Z
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_14

    .line 272
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 273
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 274
    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeIsAnalogForced(J)Z

    move-result p0

    monitor-exit p1

    return p0

    :catchall_11
    move-exception p0

    .line 275
    monitor-exit p1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw p0

    .line 277
    :cond_14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported by HAL 1.x"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isConfigFlagSupported(I)Z
    .registers 2

    const/4 p0, 0x2

    if-ne p1, p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public isMuted()Z
    .registers 2

    .line 160
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mWithAudio:Z

    if-nez v0, :cond_d

    const-string p0, "BroadcastRadioService.Tuner"

    const-string v0, "Tuner did not request audio, pretending it was muted"

    .line 161
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 164
    :cond_d
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 166
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsMuted:Z

    monitor-exit v0

    return p0

    :catchall_17
    move-exception p0

    .line 167
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public scan(ZZ)V
    .registers 6

    .line 181
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 183
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkConfiguredLocked()Z

    move-result v1

    if-nez v1, :cond_e

    monitor-exit v0

    return-void

    .line 184
    :cond_e
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeScan(JZZ)V

    .line 185
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public setConfigFlag(IZ)V
    .registers 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    .line 283
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 284
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 285
    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeSetAnalogForced(JZ)V

    .line 286
    monitor-exit p1

    return-void

    :catchall_10
    move-exception p0

    .line 287
    monitor-exit p1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw p0

    .line 289
    :cond_13
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported by HAL 1.x"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 5

    if-eqz p1, :cond_18

    .line 130
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 132
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeSetConfiguration(JLandroid/hardware/radio/RadioManager$BandConfig;)V

    .line 133
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandConfig;->getRegion()I

    move-result p1

    iput p1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mRegion:I

    .line 134
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p0

    .line 128
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The argument must not be a null pointer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMuted(Z)V
    .registers 4

    .line 147
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mWithAudio:Z

    if-eqz v0, :cond_1e

    .line 150
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 152
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsMuted:Z

    if-ne v1, p1, :cond_10

    monitor-exit v0

    return-void

    .line 153
    :cond_10
    iput-boolean p1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsMuted:Z

    const-string p0, "BroadcastRadioService.Tuner"

    const-string p1, "Mute via RadioService is not implemented - please handle it via app"

    .line 154
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw p0

    .line 148
    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t operate on mute - no audio requested"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setParameters(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 294
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported by HAL 1.x"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startBackgroundScan()Z
    .registers 4

    .line 236
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 238
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeStartBackgroundScan(J)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    .line 239
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    .registers 2

    .line 256
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mTunerCallback:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V

    return-void
.end method

.method public step(ZZ)V
    .registers 6

    .line 172
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 174
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkConfiguredLocked()Z

    move-result v1

    if-nez v1, :cond_e

    monitor-exit v0

    return-void

    .line 175
    :cond_e
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeStep(JZZ)V

    .line 176
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public stopProgramListUpdates()V
    .registers 1

    .line 261
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mTunerCallback:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->stopProgramListUpdates()V

    return-void
.end method

.method public tune(Landroid/hardware/radio/ProgramSelector;)V
    .registers 5

    if-eqz p1, :cond_30

    const-string v0, "BroadcastRadioService.Tuner"

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tuning to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 196
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkConfiguredLocked()Z

    move-result v1

    if-nez v1, :cond_26

    monitor-exit v0

    return-void

    .line 197
    :cond_26
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeTune(JLandroid/hardware/radio/ProgramSelector;)V

    .line 198
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_2d

    throw p0

    .line 191
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The argument must not be a null pointer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
