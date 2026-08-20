.class public Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "SoundAction.java"


# static fields
.field public static final MEDIA_VOLUME_DOWN:Ljava/lang/String; = "media_volume_down"

.field public static final MEDIA_VOLUME_UP:Ljava/lang/String; = "media_volume_up"

.field public static final RINGER_MODE_CHANGE:Ljava/lang/String; = "sound_vibrate_mute"

.field public static final RINGTONE_VOLUME_DOWN:Ljava/lang/String; = "ringtone_volume_down"

.field public static final RINGTONE_VOLUME_UP:Ljava/lang/String; = "ringtone_volume_up"


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;

.field public mContext:Landroid/content/Context;

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    .line 39
    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mType:Ljava/lang/String;

    return-void
.end method

.method public static createAction(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;
    .registers 3

    .line 43
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getStringResId(Ljava/lang/String;)I
    .registers 3

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_66

    goto :goto_47

    :sswitch_c
    const-string/jumbo v0, "ringtone_volume_down"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_47

    :cond_16
    const/4 v1, 0x4

    goto :goto_47

    :sswitch_18
    const-string/jumbo v0, "media_volume_up"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto :goto_47

    :cond_22
    const/4 v1, 0x3

    goto :goto_47

    :sswitch_24
    const-string/jumbo v0, "media_volume_down"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto :goto_47

    :cond_2e
    const/4 v1, 0x2

    goto :goto_47

    :sswitch_30
    const-string/jumbo v0, "sound_vibrate_mute"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto :goto_47

    :cond_3a
    const/4 v1, 0x1

    goto :goto_47

    :sswitch_3c
    const-string/jumbo v0, "ringtone_volume_up"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_46

    goto :goto_47

    :cond_46
    const/4 v1, 0x0

    :goto_47
    packed-switch v1, :pswitch_data_7c

    .line 59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong Sound Action Type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_52
    const p0, 0x104011f

    return p0

    :pswitch_56
    const p0, 0x1040117

    return p0

    :pswitch_5a
    const p0, 0x1040116

    return p0

    :pswitch_5e
    const p0, 0x1040126

    return p0

    :pswitch_62
    const p0, 0x1040120

    return p0

    :sswitch_data_66
    .sparse-switch
        -0x55236e7d -> :sswitch_3c
        -0x18e94be7 -> :sswitch_30
        0x1af46ecc -> :sswitch_24
        0x4505db45 -> :sswitch_18
        0x65f68d8a -> :sswitch_c
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_52
    .end packed-switch
.end method


# virtual methods
.method public performCornerAction(I)V
    .registers 9

    .line 65
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_9c

    .line 66
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mType:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_9e

    :goto_15
    move p1, v1

    goto :goto_52

    :sswitch_17
    const-string/jumbo v0, "ringtone_volume_down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto :goto_15

    :cond_21
    const/4 p1, 0x4

    goto :goto_52

    :sswitch_23
    const-string/jumbo v0, "media_volume_up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_15

    :cond_2d
    move p1, v2

    goto :goto_52

    :sswitch_2f
    const-string/jumbo v0, "media_volume_down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto :goto_15

    :cond_39
    move p1, v4

    goto :goto_52

    :sswitch_3b
    const-string/jumbo v0, "sound_vibrate_mute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    goto :goto_15

    :cond_45
    move p1, v5

    goto :goto_52

    :sswitch_47
    const-string/jumbo v0, "ringtone_volume_up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    goto :goto_15

    :cond_51
    move p1, v3

    :goto_52
    const/4 v0, 0x5

    const/high16 v6, 0x2000000

    packed-switch p1, :pswitch_data_b4

    .line 97
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong Sound Action Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :pswitch_60
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v4, v3, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 88
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v4, v1, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_9c

    .line 68
    :pswitch_6b
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v2, v3, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 70
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v2, v5, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_9c

    .line 74
    :pswitch_76
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v2, v3, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 76
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v2, v1, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_9c

    .line 92
    :pswitch_81
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p1

    sub-int/2addr p1, v5

    if-gez p1, :cond_8b

    goto :goto_8c

    :cond_8b
    move v4, p1

    .line 94
    :goto_8c
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v4}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_9c

    .line 80
    :pswitch_92
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v4, v3, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 82
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v4, v5, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_9c
    :goto_9c
    return-void

    nop

    :sswitch_data_9e
    .sparse-switch
        -0x55236e7d -> :sswitch_47
        -0x18e94be7 -> :sswitch_3b
        0x1af46ecc -> :sswitch_2f
        0x4505db45 -> :sswitch_23
        0x65f68d8a -> :sswitch_17
    .end sparse-switch

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_92
        :pswitch_81
        :pswitch_76
        :pswitch_6b
        :pswitch_60
    .end packed-switch
.end method
