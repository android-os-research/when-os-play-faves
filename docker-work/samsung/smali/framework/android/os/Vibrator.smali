.class public abstract Landroid/os/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Vibrator$SemMagnitudeTypes;,
        Landroid/os/Vibrator$OnVibratorStateChangedListener;,
        Landroid/os/Vibrator$VibrationIntensity;,
        Landroid/os/Vibrator$VibrationEffectSupport;
    }
.end annotation


# static fields
.field public static final whitelist SEM_SUPPORTED_VIBRATION_NONE:I = 0x0

.field public static final whitelist SEM_SUPPORTED_VIBRATION_TYPE_A:I = 0x1

.field public static final whitelist SEM_SUPPORTED_VIBRATION_TYPE_B:I = 0x2

.field public static final whitelist SEM_SUPPORTED_VIBRATION_TYPE_C:I = 0x3

.field public static final whitelist SEM_SUPPORTED_VIBRATION_TYPE_D:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Vibrator"

.field public static final whitelist VIBRATION_EFFECT_SUPPORT_NO:I = 0x2

.field public static final whitelist VIBRATION_EFFECT_SUPPORT_UNKNOWN:I = 0x0

.field public static final whitelist VIBRATION_EFFECT_SUPPORT_YES:I = 0x1

.field public static final greylist-max-o VIBRATION_INTENSITY_HIGH:I = 0x5

.field public static final greylist-max-o VIBRATION_INTENSITY_LOW:I = 0x1

.field public static final greylist-max-o VIBRATION_INTENSITY_MEDIUM:I = 0x3

.field public static final blacklist VIBRATION_INTENSITY_MEDIUM_HIGH:I = 0x4

.field public static final blacklist VIBRATION_INTENSITY_MEDIUM_LOW:I = 0x2

.field public static final greylist-max-o VIBRATION_INTENSITY_OFF:I


# instance fields
.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private final blacklist mResources:Landroid/content/res/Resources;

.field private volatile blacklist mVibrationConfig:Landroid/os/vibrator/VibrationConfig;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Vibrator;->mResources:Landroid/content/res/Resources;

    .line 160
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mResources:Landroid/content/res/Resources;

    .line 168
    return-void
.end method

.method private blacklist convertMagnitudeType(Landroid/os/Vibrator$SemMagnitudeTypes;)Landroid/os/VibrationEffect$SemMagnitudeType;
    .registers 4
    .param p1, "magnitudeType"    # Landroid/os/Vibrator$SemMagnitudeTypes;

    .line 919
    invoke-static {}, Landroid/os/VibrationEffect$SemMagnitudeType;->values()[Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private blacklist getConfig()Landroid/os/vibrator/VibrationConfig;
    .registers 4

    .line 181
    iget-object v0, p0, Landroid/os/Vibrator;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    if-nez v0, :cond_20

    .line 182
    iget-object v0, p0, Landroid/os/Vibrator;->mResources:Landroid/content/res/Resources;

    .line 183
    .local v0, "resources":Landroid/content/res/Resources;
    if-nez v0, :cond_19

    .line 184
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 185
    .local v1, "ctx":Landroid/content/Context;
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    move-object v0, v2

    .line 189
    .end local v1    # "ctx":Landroid/content/Context;
    :cond_19
    new-instance v1, Landroid/os/vibrator/VibrationConfig;

    invoke-direct {v1, v0}, Landroid/os/vibrator/VibrationConfig;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Landroid/os/Vibrator;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 191
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_20
    iget-object v0, p0, Landroid/os/Vibrator;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    return-object v0
.end method


# virtual methods
.method public whitelist addVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 732
    return-void
.end method

.method public whitelist addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 747
    return-void
.end method

.method public final varargs whitelist areAllEffectsSupported([I)I
    .registers 8
    .param p1, "effectIds"    # [I

    .line 587
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    .line 588
    .local v0, "info":Landroid/os/VibratorInfo;
    const/4 v1, 0x1

    .line 589
    .local v1, "allSupported":I
    array-length v2, p1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_1a

    aget v4, p1, v3

    .line 590
    .local v4, "effectId":I
    invoke-virtual {v0, v4}, Landroid/os/VibratorInfo;->isEffectSupported(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1c

    .line 596
    const/4 v1, 0x0

    goto :goto_17

    .line 592
    :pswitch_14
    const/4 v2, 0x2

    return v2

    .line 594
    :pswitch_16
    nop

    .line 589
    .end local v4    # "effectId":I
    :goto_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 600
    :cond_1a
    return v1

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_16
        :pswitch_14
    .end packed-switch
.end method

.method public final varargs whitelist areAllPrimitivesSupported([I)Z
    .registers 8
    .param p1, "primitiveIds"    # [I

    .line 643
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    .line 644
    .local v0, "info":Landroid/os/VibratorInfo;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_15

    aget v4, p1, v3

    .line 645
    .local v4, "primitiveId":I
    invoke-virtual {v0, v4}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    move-result v5

    if-nez v5, :cond_12

    .line 646
    return v2

    .line 644
    .end local v4    # "primitiveId":I
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 649
    :cond_15
    const/4 v1, 0x1

    return v1
.end method

.method public varargs whitelist areEffectsSupported([I)[I
    .registers 6
    .param p1, "effectIds"    # [I

    .line 551
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    .line 552
    .local v0, "info":Landroid/os/VibratorInfo;
    array-length v1, p1

    new-array v1, v1, [I

    .line 553
    .local v1, "supported":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    array-length v3, p1

    if-ge v2, v3, :cond_16

    .line 554
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroid/os/VibratorInfo;->isEffectSupported(I)I

    move-result v3

    aput v3, v1, v2

    .line 553
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 556
    .end local v2    # "i":I
    :cond_16
    return-object v1
.end method

.method public varargs whitelist arePrimitivesSupported([I)[Z
    .registers 6
    .param p1, "primitiveIds"    # [I

    .line 622
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    .line 623
    .local v0, "info":Landroid/os/VibratorInfo;
    array-length v1, p1

    new-array v1, v1, [Z

    .line 624
    .local v1, "supported":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    array-length v3, p1

    if-ge v2, v3, :cond_16

    .line 625
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 624
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 627
    .end local v2    # "i":I
    :cond_16
    return-object v1
.end method

.method public abstract whitelist cancel()V
.end method

.method public abstract blacklist cancel(I)V
.end method

.method public blacklist getDefaultVibrationIntensity(I)I
    .registers 3
    .param p1, "usage"    # I

    .line 202
    invoke-direct {p0}, Landroid/os/Vibrator;->getConfig()Landroid/os/vibrator/VibrationConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v0

    return v0
.end method

.method public blacklist getFrequencyProfile()Landroid/os/vibrator/VibratorFrequencyProfile;
    .registers 3

    .line 295
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v0

    .line 296
    .local v0, "frequencyProfile":Landroid/os/VibratorInfo$FrequencyProfile;
    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 297
    const/4 v1, 0x0

    return-object v1

    .line 299
    :cond_10
    new-instance v1, Landroid/os/vibrator/VibratorFrequencyProfile;

    invoke-direct {v1, v0}, Landroid/os/vibrator/VibratorFrequencyProfile;-><init>(Landroid/os/VibratorInfo$FrequencyProfile;)V

    return-object v1
.end method

.method public blacklist getHapticChannelMaximumAmplitude()F
    .registers 2

    .line 314
    invoke-direct {p0}, Landroid/os/Vibrator;->getConfig()Landroid/os/vibrator/VibrationConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/vibrator/VibrationConfig;->getHapticChannelMaximumAmplitude()F

    move-result v0

    return v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 212
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getId()I

    move-result v0

    return v0
.end method

.method protected blacklist getInfo()Landroid/os/VibratorInfo;
    .registers 2

    .line 176
    sget-object v0, Landroid/os/VibratorInfo;->EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

    return-object v0
.end method

.method public blacklist getMaxMagnitude()I
    .registers 2

    .line 835
    const/16 v0, 0x270f

    return v0
.end method

.method protected blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 854
    iget-object v0, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public varargs whitelist getPrimitiveDurations([I)[I
    .registers 6
    .param p1, "primitiveIds"    # [I

    .line 668
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    .line 669
    .local v0, "info":Landroid/os/VibratorInfo;
    array-length v1, p1

    new-array v1, v1, [I

    .line 670
    .local v1, "durations":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    array-length v3, p1

    if-ge v2, v3, :cond_16

    .line 671
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroid/os/VibratorInfo;->getPrimitiveDuration(I)I

    move-result v3

    aput v3, v1, v2

    .line 670
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 673
    .end local v2    # "i":I
    :cond_16
    return-object v1
.end method

.method public blacklist getQFactor()F
    .registers 2

    .line 277
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getQFactor()F

    move-result v0

    return v0
.end method

.method public blacklist getResonantFrequency()F
    .registers 2

    .line 264
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result v0

    return v0
.end method

.method public abstract whitelist hasAmplitudeControl()Z
.end method

.method public blacklist hasExternalControl()Z
    .registers 4

    .line 251
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public blacklist hasFrequencyControl()Z
    .registers 4

    .line 239
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    const-wide/16 v1, 0x600

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public abstract whitelist hasVibrator()Z
.end method

.method public whitelist isVibrating()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 701
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 759
    return-void
.end method

.method public whitelist semGetNumberOfSupportedPatterns()I
    .registers 2

    .line 847
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist semGetSupportedVibrationType()I
    .registers 2

    .line 821
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semIsHapticSupported()Z
    .registers 2

    .line 862
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semIsVibrating()Z
    .registers 2

    .line 932
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V
    .registers 12
    .param p1, "type"    # I
    .param p2, "repeat"    # I
    .param p3, "attributes"    # Landroid/media/AudioAttributes;
    .param p4, "magnitudeType"    # Landroid/os/Vibrator$SemMagnitudeTypes;

    .line 908
    nop

    .line 910
    :try_start_1
    invoke-direct {p0, p4}, Landroid/os/Vibrator;->convertMagnitudeType(Landroid/os/Vibrator$SemMagnitudeTypes;)Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v0

    .line 909
    invoke-static {p1, p2, v0}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v4

    .line 911
    .local v4, "effect":Landroid/os/VibrationEffect;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v3, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    const-string/jumbo v5, "semVibrate"

    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0, p3}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 912
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v6

    .line 911
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1f} :catch_20

    .line 915
    .end local v4    # "effect":Landroid/os/VibrationEffect;
    goto :goto_28

    .line 913
    :catch_20
    move-exception v0

    .line 914
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    const-string v1, "Vibrator"

    const-string v2, "Failed to create VibrationEffect"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 916
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :goto_28
    return-void
.end method

.method public blacklist setAlwaysOnEffect(ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z
    .registers 10
    .param p1, "alwaysOnId"    # I
    .param p2, "effect"    # Landroid/os/VibrationEffect;
    .param p3, "attributes"    # Landroid/os/VibrationAttributes;

    .line 331
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z

    move-result v0

    return v0
.end method

.method public blacklist setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "alwaysOnId"    # I
    .param p4, "effect"    # Landroid/os/VibrationEffect;
    .param p5, "attributes"    # Landroid/os/VibrationAttributes;

    .line 340
    const-string v0, "Vibrator"

    const-string v1, "Always-on effects aren\'t supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateWatchConnectionState(Z)V
    .registers 2
    .param p1, "state"    # Z

    .line 925
    return-void
.end method

.method public abstract blacklist vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
.end method

.method public whitelist vibrate(J)V
    .registers 4
    .param p1, "milliseconds"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 355
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 356
    return-void
.end method

.method public whitelist vibrate(JLandroid/media/AudioAttributes;)V
    .registers 7
    .param p1, "milliseconds"    # J
    .param p3, "attributes"    # Landroid/media/AudioAttributes;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 376
    const/4 v0, -0x1

    .line 377
    :try_start_1
    invoke-static {p1, p2, v0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 378
    .local v0, "effect":Landroid/os/VibrationEffect;
    invoke-virtual {p0, v0, p3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_8} :catch_9

    .line 381
    .end local v0    # "effect":Landroid/os/VibrationEffect;
    goto :goto_11

    .line 379
    :catch_9
    move-exception v0

    .line 380
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    const-string v1, "Vibrator"

    const-string v2, "Failed to create VibrationEffect"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :goto_11
    return-void
.end method

.method public whitelist vibrate(Landroid/os/VibrationEffect;)V
    .registers 3
    .param p1, "vibe"    # Landroid/os/VibrationEffect;

    .line 464
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    .line 465
    return-void
.end method

.method public whitelist vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    .registers 4
    .param p1, "vibe"    # Landroid/os/VibrationEffect;
    .param p2, "attributes"    # Landroid/media/AudioAttributes;

    .line 492
    nop

    .line 493
    if-nez p2, :cond_d

    .line 494
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    goto :goto_16

    .line 495
    :cond_d
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0, p2}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    .line 492
    :goto_16
    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    .line 497
    return-void
.end method

.method public whitelist vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V
    .registers 9
    .param p1, "vibe"    # Landroid/os/VibrationEffect;
    .param p2, "attributes"    # Landroid/os/VibrationAttributes;

    .line 513
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 514
    return-void
.end method

.method public whitelist vibrate([JI)V
    .registers 4
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    .line 409
    return-void
.end method

.method public whitelist vibrate([JILandroid/media/AudioAttributes;)V
    .registers 7
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I
    .param p3, "attributes"    # Landroid/media/AudioAttributes;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 442
    const-string v0, "Vibrator"

    const/4 v1, -0x1

    if-lt p2, v1, :cond_17

    array-length v1, p1

    if-ge p2, v1, :cond_17

    .line 449
    :try_start_8
    invoke-static {p1, p2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_f} :catch_10

    .line 452
    goto :goto_16

    .line 450
    :catch_10
    move-exception v1

    .line 451
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    const-string v2, "Failed to create VibrationEffect"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :goto_16
    return-void

    .line 443
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrate called with repeat index out of bounds (pattern.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method
