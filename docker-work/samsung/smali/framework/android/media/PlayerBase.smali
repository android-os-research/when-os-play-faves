.class public abstract Landroid/media/PlayerBase;
.super Ljava/lang/Object;
.source "PlayerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/PlayerBase$PlayerIdCard;,
        Landroid/media/PlayerBase$IPlayerWrapper;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o DEBUG_APP_OPS:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PlayerBase"

.field private static greylist-max-o sService:Landroid/media/IAudioService;


# instance fields
.field private greylist-max-o mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private greylist-max-o mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field protected greylist-max-o mAttributes:Landroid/media/AudioAttributes;

.field protected greylist-max-o mAuxEffectSendLevel:F

.field private blacklist mDeviceId:I

.field private greylist-max-o mHasAppOpsPlayAudio:Z

.field private final greylist-max-o mImplType:I

.field protected greylist-max-o mLeftVolume:F

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mPanMultiplierL:F

.field private greylist-max-o mPanMultiplierR:F

.field protected greylist-max-o mPlayerIId:I

.field protected greylist-max-o mRightVolume:F

.field private greylist-max-o mStartDelayMs:I

.field private greylist-max-o mState:I

.field private blacklist mVolMultiplier:F


# direct methods
.method constructor greylist-max-o <init>(Landroid/media/AudioAttributes;I)V
    .registers 6
    .param p1, "attr"    # Landroid/media/AudioAttributes;
    .param p2, "implType"    # I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    .line 62
    iput v0, p0, Landroid/media/PlayerBase;->mRightVolume:F

    .line 63
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    .line 68
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    .line 78
    const/4 v2, -0x1

    iput v2, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    .line 82
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/PlayerBase;->mStartDelayMs:I

    .line 84
    iput v0, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    .line 86
    iput v0, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    .line 88
    iput v0, p0, Landroid/media/PlayerBase;->mVolMultiplier:F

    .line 100
    if-eqz p1, :cond_2b

    .line 103
    iput-object p1, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    .line 104
    iput p2, p0, Landroid/media/PlayerBase;->mImplType:I

    .line 105
    iput v1, p0, Landroid/media/PlayerBase;->mState:I

    .line 106
    return-void

    .line 101
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkMuteState(FF)V
    .registers 7
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .line 555
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_3
    iget v1, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    cmpl-float v2, v1, p1

    if-nez v2, :cond_11

    iget v2, p0, Landroid/media/PlayerBase;->mRightVolume:F

    cmpl-float v2, v2, p2

    if-nez v2, :cond_11

    .line 557
    monitor-exit v0

    return-void

    .line 560
    :cond_11
    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-nez v3, :cond_1d

    cmpl-float v3, p2, v2

    if-nez v3, :cond_1d

    .line 561
    const/16 v1, 0x64

    .local v1, "state":I
    goto :goto_29

    .line 562
    .end local v1    # "state":I
    :cond_1d
    cmpl-float v1, v1, v2

    if-nez v1, :cond_39

    iget v1, p0, Landroid/media/PlayerBase;->mRightVolume:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_39

    .line 563
    const/16 v1, 0xc8

    .line 567
    .restart local v1    # "state":I
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_3b

    .line 570
    :try_start_2a
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget v2, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    iget v3, p0, Landroid/media/PlayerBase;->mDeviceId:I

    invoke-interface {v0, v2, v1, v3}, Landroid/media/IAudioService;->playerEvent(III)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_35} :catch_36

    goto :goto_37

    .line 571
    :catch_36
    move-exception v0

    :goto_37
    nop

    .line 572
    return-void

    .line 565
    .end local v1    # "state":I
    :cond_39
    :try_start_39
    monitor-exit v0

    return-void

    .line 567
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public static greylist-max-o deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "streamType"    # I
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "opName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 531
    const/16 v0, 0xa

    if-eq p0, v0, :cond_26

    .line 535
    const-string v0, "Use of stream types is deprecated for operations other than volume control"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "See the documentation of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for what to use instead with android.media.AudioAttributes to qualify your playback use case"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return-void

    .line 532
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use of STREAM_ACCESSIBILITY is reserved for volume control"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o getService()Landroid/media/IAudioService;
    .registers 2

    .line 302
    sget-object v0, Landroid/media/PlayerBase;->sService:Landroid/media/IAudioService;

    if-eqz v0, :cond_5

    .line 303
    return-object v0

    .line 305
    :cond_5
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 306
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/PlayerBase;->sService:Landroid/media/IAudioService;

    .line 307
    return-object v1
.end method

.method private blacklist updatePlayerVolume()V
    .registers 5

    .line 239
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    iget v1, p0, Landroid/media/PlayerBase;->mVolMultiplier:F

    iget v2, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    mul-float/2addr v2, v1

    iget v3, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    mul-float/2addr v2, v3

    .line 241
    .local v2, "finalLeftVol":F
    iget v3, p0, Landroid/media/PlayerBase;->mRightVolume:F

    mul-float/2addr v1, v3

    iget v3, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    mul-float/2addr v1, v3

    .line 242
    .local v1, "finalRightVol":F
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_17

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/media/PlayerBase;->playerSetVolume(ZFF)V

    .line 244
    return-void

    .line 242
    .end local v1    # "finalRightVol":F
    .end local v2    # "finalLeftVol":F
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private blacklist updateState(II)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "deviceId"    # I

    .line 180
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_3
    iput p1, p0, Landroid/media/PlayerBase;->mState:I

    .line 182
    iget v1, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    .line 183
    .local v1, "piid":I
    iput p2, p0, Landroid/media/PlayerBase;->mDeviceId:I

    .line 184
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_3a

    .line 186
    :try_start_a
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, v1, p1, p2}, Landroid/media/IAudioService;->playerEvent(III)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 191
    goto :goto_39

    .line 187
    :catch_12
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PlayerBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error talking to audio service, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 189
    invoke-static {p1}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerState(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state will not be tracked for piid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_39
    return-void

    .line 184
    .end local v1    # "piid":I
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1
.end method


# virtual methods
.method greylist-max-o basePause()V
    .registers 3

    .line 215
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/PlayerBase;->updateState(II)V

    .line 216
    return-void
.end method

.method protected blacklist baseRegisterPlayer(I)V
    .registers 7
    .param p1, "sessionId"    # I

    .line 120
    :try_start_0
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v0

    new-instance v1, Landroid/media/PlayerBase$PlayerIdCard;

    iget v2, p0, Landroid/media/PlayerBase;->mImplType:I

    iget-object v3, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    new-instance v4, Landroid/media/PlayerBase$IPlayerWrapper;

    invoke-direct {v4, p0}, Landroid/media/PlayerBase$IPlayerWrapper;-><init>(Landroid/media/PlayerBase;)V

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/media/PlayerBase$PlayerIdCard;-><init>(ILandroid/media/AudioAttributes;Landroid/media/IPlayer;I)V

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    move-result v0

    iput v0, p0, Landroid/media/PlayerBase;->mPlayerIId:I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    .line 125
    goto :goto_21

    .line 123
    :catch_19
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PlayerBase"

    const-string v2, "Error talking to audio service, player will not be tracked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method

.method greylist-max-o baseRelease()V
    .registers 5

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "releasePlayer":Z
    iget-object v1, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 279
    :try_start_4
    iget v2, p0, Landroid/media/PlayerBase;->mState:I

    if-eqz v2, :cond_c

    .line 280
    const/4 v0, 0x1

    .line 281
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/PlayerBase;->mState:I

    .line 283
    :cond_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_2f

    .line 285
    if-eqz v0, :cond_22

    .line 286
    :try_start_f
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget v2, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->releasePlayer(I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_19

    goto :goto_22

    .line 288
    :catch_19
    move-exception v1

    .line 289
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PlayerBase"

    const-string v3, "Error talking to audio service, the player will still be tracked"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 290
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_22
    :goto_22
    nop

    .line 292
    :goto_23
    :try_start_23
    iget-object v1, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    if-eqz v1, :cond_2c

    .line 293
    iget-object v2, p0, Landroid/media/PlayerBase;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2c} :catch_2d

    .line 297
    :cond_2c
    goto :goto_2e

    .line 295
    :catch_2d
    move-exception v1

    .line 298
    :goto_2e
    return-void

    .line 283
    :catchall_2f
    move-exception v2

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v2
.end method

.method greylist-max-o baseSetAuxEffectSendLevel(F)I
    .registers 4
    .param p1, "level"    # F

    .line 265
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_3
    iput p1, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    .line 267
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/media/PlayerBase;->playerSetAuxEffectSendLevel(ZF)I

    move-result v0

    return v0

    .line 267
    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method greylist-max-o baseSetPan(F)V
    .registers 6
    .param p1, "pan"    # F

    .line 224
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 225
    .local v0, "p":F
    iget-object v2, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 226
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_1b

    .line 227
    sub-float v3, v1, v0

    :try_start_16
    iput v3, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    .line 228
    iput v1, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    goto :goto_20

    .line 230
    :cond_1b
    iput v1, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    .line 231
    add-float/2addr v1, v0

    iput v1, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    .line 233
    :goto_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_25

    .line 234
    invoke-direct {p0}, Landroid/media/PlayerBase;->updatePlayerVolume()V

    .line 235
    return-void

    .line 233
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method greylist-max-o baseSetStartDelayMs(I)V
    .registers 4
    .param p1, "delayMs"    # I

    .line 202
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    const/4 v1, 0x0

    :try_start_4
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/media/PlayerBase;->mStartDelayMs:I

    .line 204
    monitor-exit v0

    .line 205
    return-void

    .line 204
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v1
.end method

.method greylist-max-o baseSetVolume(FF)V
    .registers 5
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .line 255
    invoke-direct {p0, p1, p2}, Landroid/media/PlayerBase;->checkMuteState(FF)V

    .line 257
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_6
    iput p1, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    .line 259
    iput p2, p0, Landroid/media/PlayerBase;->mRightVolume:F

    .line 260
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    .line 261
    invoke-direct {p0}, Landroid/media/PlayerBase;->updatePlayerVolume()V

    .line 262
    return-void

    .line 260
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method blacklist baseStart(I)V
    .registers 3
    .param p1, "deviceId"    # I

    .line 198
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/media/PlayerBase;->updateState(II)V

    .line 199
    return-void
.end method

.method greylist-max-o baseStop()V
    .registers 3

    .line 220
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/PlayerBase;->updateState(II)V

    .line 221
    return-void
.end method

.method greylist-max-o baseUpdateAudioAttributes(Landroid/media/AudioAttributes;)V
    .registers 5
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    .line 133
    if-eqz p1, :cond_1e

    .line 137
    :try_start_2
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget v1, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    invoke-interface {v0, v1, p1}, Landroid/media/IAudioService;->playerAttributes(ILandroid/media/AudioAttributes;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    .line 140
    goto :goto_14

    .line 138
    :catch_c
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PlayerBase"

    const-string v2, "Error talking to audio service, audio attributes will not be updated"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_17
    iput-object p1, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    .line 143
    monitor-exit v0

    .line 144
    return-void

    .line 143
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_1b

    throw v1

    .line 134
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist baseUpdateDeviceId(Landroid/media/AudioDeviceInfo;)V
    .registers 8
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "deviceId":I
    if-eqz p1, :cond_7

    .line 161
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .line 164
    :cond_7
    iget-object v1, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_a
    iget v2, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    .line 166
    .local v2, "piid":I
    iput v0, p0, Landroid/media/PlayerBase;->mDeviceId:I

    .line 167
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_3c

    .line 169
    :try_start_f
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v1

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3, v0}, Landroid/media/IAudioService;->playerEvent(III)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_17} :catch_18

    .line 175
    goto :goto_3b

    .line 171
    :catch_18
    move-exception v1

    .line 172
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "PlayerBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error talking to audio service, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " device id will not be tracked for piid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3b
    return-void

    .line 167
    .end local v2    # "piid":I
    :catchall_3c
    move-exception v2

    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v2
.end method

.method blacklist baseUpdateSessionId(I)V
    .registers 5
    .param p1, "sessionId"    # I

    .line 152
    :try_start_0
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget v1, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    invoke-interface {v0, v1, p1}, Landroid/media/IAudioService;->playerSessionId(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 155
    goto :goto_12

    .line 153
    :catch_a
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PlayerBase"

    const-string v2, "Error talking to audio service, the session ID will not be updated"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method protected blacklist getCurrentOpPackageName()Ljava/lang/String;
    .registers 2

    .line 542
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPlayerIId()I
    .registers 3

    .line 110
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_3
    iget v1, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    monitor-exit v0

    return v1

    .line 112
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method protected greylist-max-o getStartDelayMs()I
    .registers 3

    .line 208
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_3
    iget v1, p0, Landroid/media/PlayerBase;->mStartDelayMs:I

    monitor-exit v0

    return v1

    .line 210
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getVolMultiplier()F
    .registers 2

    .line 548
    iget v0, p0, Landroid/media/PlayerBase;->mVolMultiplier:F

    return v0
.end method

.method abstract greylist-max-o playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
.end method

.method abstract greylist-max-o playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
.end method

.method abstract greylist-max-o playerPause()V
.end method

.method abstract greylist-max-o playerSetAuxEffectSendLevel(ZF)I
.end method

.method abstract greylist-max-o playerSetVolume(ZFF)V
.end method

.method abstract greylist-max-o playerStart()V
.end method

.method abstract greylist-max-o playerStop()V
.end method

.method public greylist-max-o setStartDelayMs(I)V
    .registers 2
    .param p1, "delayMs"    # I

    .line 315
    invoke-virtual {p0, p1}, Landroid/media/PlayerBase;->baseSetStartDelayMs(I)V

    .line 316
    return-void
.end method

.method blacklist setVolumeMultiplier(F)V
    .registers 4
    .param p1, "vol"    # F

    .line 247
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_3
    iput p1, p0, Landroid/media/PlayerBase;->mVolMultiplier:F

    .line 249
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 250
    invoke-direct {p0}, Landroid/media/PlayerBase;->updatePlayerVolume()V

    .line 251
    return-void

    .line 249
    :catchall_a
    move-exception v1

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v1
.end method
