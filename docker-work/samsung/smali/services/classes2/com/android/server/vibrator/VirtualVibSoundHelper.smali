.class public Lcom/android/server/vibrator/VirtualVibSoundHelper;
.super Ljava/lang/Object;
.source "VirtualVibSoundHelper.java"


# static fields
.field public static final LOOP_COUNT:I = 0x14

.field public static final TAG:Ljava/lang/String; = "VibratorManagerService"

.field public static final VIRTUAL_VIBRATION_SOUND_ALLOWANCE:Ljava/lang/String; = "virtual_vibration_sound_allowance"


# instance fields
.field public mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

.field public mIsVirtualSoundPlaying:Z

.field public final mSettingsController:Lcom/android/server/vibrator/VibrationSettings;

.field public final mSoundPool:Landroid/media/SoundPool;

.field public mStreamId:I

.field public final mVirtualSoundId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vibrator/VibrationSettings;)V
    .registers 5

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSettingsController:Lcom/android/server/vibrator/VibrationSettings;

    .line 43
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 45
    new-instance p1, Landroid/media/SoundPool$Builder;

    invoke-direct {p1}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object p1

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0xd

    .line 46
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    const/4 v0, 0x4

    .line 48
    invoke-virtual {p2, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    const-string v0, "VIRTUAL_VIB_SOUND"

    .line 49
    invoke-virtual {p2, v0}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    .line 50
    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSoundPool:Landroid/media/SoundPool;

    const/4 p2, 0x0

    .line 51
    iput-boolean p2, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mIsVirtualSoundPlaying:Z

    const-string v0, "/system/media/audio/ui/VIB_Vibration_Call.ogg"

    .line 52
    invoke-virtual {p1, v0, p2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mVirtualSoundId:I

    return-void
.end method


# virtual methods
.method public playVirtualSoundIfNeeded(Ljava/lang/String;Landroid/os/VibrationAttributes;Z)V
    .registers 11

    if-nez p3, :cond_3

    return-void

    :cond_3
    const-string p3, "VIRTUAL_VIB_SOUND"

    .line 58
    invoke-virtual {p2, p3}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_17

    iget-object p3, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string/jumbo v0, "virtual_vibration_sound_allowance"

    .line 59
    invoke-virtual {p3, p1, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_17

    return-void

    .line 62
    :cond_17
    iget-object p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSettingsController:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/vibrator/VibrationSettings;->shouldSoundForRingerMode(I)Z

    move-result p1

    const-string p2, "VibratorManagerService"

    if-eqz p1, :cond_78

    .line 63
    iget-object p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSoundPool:Landroid/media/SoundPool;

    if-eqz p1, :cond_72

    iget p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mVirtualSoundId:I

    if-nez p1, :cond_2e

    goto :goto_72

    .line 68
    :cond_2e
    iget-object p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSettingsController:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationSettings;->getRingtoneVolumeScale()F

    move-result v3

    const/4 p1, 0x0

    cmpg-float p1, v3, p1

    if-gtz p1, :cond_3a

    return-void

    .line 72
    :cond_3a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "play virtual sound: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " volume"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mIsVirtualSoundPlaying:Z

    .line 76
    iget-object p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSoundPool:Landroid/media/SoundPool;

    iget p2, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mVirtualSoundId:I

    const-string/jumbo p3, "stv_virtual_vib_sound"

    invoke-virtual {p1, p2, p3}, Landroid/media/SoundPool;->semSetSituationType(ILjava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mVirtualSoundId:I

    const/4 v4, 0x0

    const/16 v5, 0x14

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, v3

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mStreamId:I

    goto :goto_7e

    :cond_72
    :goto_72
    const-string p0, "cannot play virtual sound"

    .line 64
    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_78
    const-string/jumbo p0, "skip virtual sound: shouldSoundForRingerMode false"

    .line 79
    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7e
    return-void
.end method

.method public stopVirtualSound(Ljava/lang/String;)V
    .registers 5

    .line 84
    iget-boolean v0, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mIsVirtualSoundPlaying:Z

    if-eqz v0, :cond_3a

    .line 85
    iget-object v0, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSoundPool:Landroid/media/SoundPool;

    const-string v1, "VibratorManagerService"

    if-eqz v0, :cond_35

    iget v0, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mVirtualSoundId:I

    if-nez v0, :cond_f

    goto :goto_35

    .line 90
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop virtual sound : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mIsVirtualSoundPlaying:Z

    .line 92
    iget-object p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSoundPool:Landroid/media/SoundPool;

    iget p0, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mStreamId:I

    invoke-virtual {p1, p0}, Landroid/media/SoundPool;->stop(I)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2e} :catch_2f

    goto :goto_3a

    :catch_2f
    const-string p0, "failed stopping virtual sound"

    .line 94
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    :cond_35
    :goto_35
    const-string p0, "cannot stop virtual sound"

    .line 86
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    :goto_3a
    return-void
.end method
