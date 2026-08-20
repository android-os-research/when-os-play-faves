.class public Landroid/media/audiofx/HapticGenerator;
.super Landroid/media/audiofx/AudioEffect;
.source "HapticGenerator.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "HapticGenerator"


# instance fields
.field private blacklist mVolumeControlEffect:Landroid/media/audiofx/AudioEffect;


# direct methods
.method private constructor blacklist <init>(I)V
    .registers 6
    .param p1, "audioSession"    # I

    .line 85
    sget-object v0, Landroid/media/audiofx/HapticGenerator;->EFFECT_TYPE_HAPTIC_GENERATOR:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/HapticGenerator;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 86
    new-instance v0, Landroid/media/audiofx/AudioEffect;

    sget-object v1, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    .line 88
    const-string v3, "119341a0-8469-11df-81f9-0002a5d5c51b"

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    iput-object v0, p0, Landroid/media/audiofx/HapticGenerator;->mVolumeControlEffect:Landroid/media/audiofx/AudioEffect;

    .line 91
    return-void
.end method

.method public static whitelist create(I)Landroid/media/audiofx/HapticGenerator;
    .registers 2
    .param p0, "audioSession"    # I

    .line 72
    new-instance v0, Landroid/media/audiofx/HapticGenerator;

    invoke-direct {v0, p0}, Landroid/media/audiofx/HapticGenerator;-><init>(I)V

    return-object v0
.end method

.method public static whitelist isAvailable()Z
    .registers 1

    .line 53
    invoke-static {}, Landroid/media/AudioManager;->isHapticPlaybackSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_HAPTIC_GENERATOR:Ljava/util/UUID;

    .line 54
    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->isEffectTypeAvailable(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 53
    :goto_11
    return v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1

    .line 128
    invoke-virtual {p0}, Landroid/media/audiofx/HapticGenerator;->release()V

    .line 129
    return-void
.end method

.method public whitelist release()V
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/media/audiofx/HapticGenerator;->mVolumeControlEffect:Landroid/media/audiofx/AudioEffect;

    if-eqz v0, :cond_7

    .line 118
    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 120
    :cond_7
    invoke-super {p0}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 121
    return-void
.end method

.method public whitelist setEnabled(Z)I
    .registers 5
    .param p1, "enabled"    # Z

    .line 102
    invoke-super {p0, p1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result v0

    .line 103
    .local v0, "ret":I
    if-nez v0, :cond_17

    .line 104
    iget-object v1, p0, Landroid/media/audiofx/HapticGenerator;->mVolumeControlEffect:Landroid/media/audiofx/AudioEffect;

    if-eqz v1, :cond_10

    .line 105
    invoke-virtual {v1, p1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result v1

    if-eqz v1, :cond_17

    .line 106
    :cond_10
    const-string v1, "HapticGenerator"

    const-string v2, "Failed to enable volume control effect for HapticGenerator"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_17
    return v0
.end method
