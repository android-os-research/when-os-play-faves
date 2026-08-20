.class public Lcom/android/server/vibrator/VibratorController$NativeWrapper;
.super Ljava/lang/Object;
.source "VibratorController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeWrapper"
.end annotation


# instance fields
.field public mNativePtr:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 434
    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    return-void
.end method

.method private static native alwaysOnDisable(JJ)V
.end method

.method private static native alwaysOnEnable(JJJJ)V
.end method

.method private static native getAmplitudeList(JI)[I
.end method

.method private static native getInfo(JLandroid/os/VibratorInfo$Builder;)Z
.end method

.method private static native getNativeFinalizer()J
.end method

.method private static native getNumberOfPrebakedHapticPattern(J)I
.end method

.method private static native hasFeature(JLjava/lang/String;)Z
.end method

.method private static native isAvailable(J)Z
.end method

.method private static native nativeInit(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)J
.end method

.method private static native off(J)V
.end method

.method private static native on(JJJ)J
.end method

.method private static native performComposedEffect(J[Landroid/os/vibrator/PrimitiveSegment;J)J
.end method

.method private static native performEffect(JJJJ)J
.end method

.method private static native performHapticEngine(J[II)V
.end method

.method private static native performPrebakedHapticPattern(JJJZ)V
.end method

.method private static native performPwleEffect(J[Landroid/os/vibrator/RampSegment;IJ)J
.end method

.method private static native sehPerformEffect(JJJLcom/android/server/vibrator/Vibration;Z)J
.end method

.method private static native setAmplitude(JF)V
.end method

.method private static native setExternalControl(JZ)V
.end method

.method private static native setFoldState(JZ)V
.end method

.method private static native setForceTouchAmplitude(JJ)V
.end method

.method private static native setFrequencyType(JJ)V
.end method

.method private static native setIntensity(JJ)V
.end method

.method private static native setTentState(JZ)V
.end method

.method private static native supportIntensityControl(J)Z
.end method

.method private static native supportsEnhancedSamsungHapticPattern(J)Z
.end method

.method private static native supportsFoldState(J)Z
.end method

.method private static native supportsFrequencyControl(J)Z
.end method

.method private static native supportsHapticEngine(J)Z
.end method

.method private static native supportsHasFeature(J)Z
.end method

.method private static native supportsPrebakedHapticPattern(J)Z
.end method

.method private static native supportsTentState(J)Z
.end method


# virtual methods
.method public alwaysOnDisable(J)V
    .registers 5

    .line 496
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnDisable(JJ)V

    return-void
.end method

.method public alwaysOnEnable(JJJ)V
    .registers 15

    .line 491
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnEnable(JJJJ)V

    return-void
.end method

.method public compose([Landroid/os/vibrator/PrimitiveSegment;J)J
    .registers 6

    .line 476
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performComposedEffect(J[Landroid/os/vibrator/PrimitiveSegment;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public composePwle([Landroid/os/vibrator/RampSegment;IJ)J
    .registers 11

    .line 481
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performPwleEffect(J[Landroid/os/vibrator/RampSegment;IJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getAmplitudeList(I)[I
    .registers 4

    .line 607
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getAmplitudeList(JI)[I

    move-result-object p0

    return-object p0
.end method

.method public getInfo(Landroid/os/VibratorInfo$Builder;)Z
    .registers 4

    .line 503
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getInfo(JLandroid/os/VibratorInfo$Builder;)Z

    move-result p0

    return p0
.end method

.method public getNumberOfPrebakedHapticPattern()I
    .registers 3

    .line 577
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getNumberOfPrebakedHapticPattern(J)I

    move-result p0

    return p0
.end method

.method public hasFeature(Ljava/lang/String;)Z
    .registers 4

    .line 623
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->hasFeature(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public init(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)V
    .registers 5

    .line 438
    invoke-static {p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->nativeInit(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    .line 439
    invoke-static {}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getNativeFinalizer()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1f

    .line 442
    const-class v0, Lcom/android/server/vibrator/VibratorController;

    .line 444
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 443
    invoke-static {v0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object p1

    .line 445
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    :cond_1f
    return-void
.end method

.method public isAvailable()Z
    .registers 3

    .line 451
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->isAvailable(J)Z

    move-result p0

    return p0
.end method

.method public off()V
    .registers 3

    .line 461
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->off(J)V

    return-void
.end method

.method public on(JJ)J
    .registers 11

    .line 456
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->on(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public perform(JJJ)J
    .registers 15

    .line 471
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performEffect(JJJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public performHapticEngine([II)V
    .registers 5

    .line 567
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performHapticEngine(J[II)V

    return-void
.end method

.method public performPrebakedHapticPattern(JJZ)V
    .registers 13

    .line 572
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performPrebakedHapticPattern(JJJZ)V

    return-void
.end method

.method public sehPerformEffect(JJLcom/android/server/vibrator/Vibration;Z)J
    .registers 7

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public setAmplitude(F)V
    .registers 4

    .line 466
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setAmplitude(JF)V

    return-void
.end method

.method public setExternalControl(Z)V
    .registers 4

    .line 486
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setExternalControl(JZ)V

    return-void
.end method

.method public setFoldState(Z)V
    .registers 4

    .line 592
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setFoldState(JZ)V

    return-void
.end method

.method public setForceTouchAmplitude(J)V
    .registers 5

    .line 582
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setForceTouchAmplitude(JJ)V

    return-void
.end method

.method public setFrequencyType(J)V
    .registers 5

    .line 562
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setFrequencyType(JJ)V

    return-void
.end method

.method public setIntensity(J)V
    .registers 5

    .line 552
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setIntensity(JJ)V

    return-void
.end method

.method public setTentState(Z)V
    .registers 4

    .line 602
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setTentState(JZ)V

    return-void
.end method

.method public supportIntensityControl()Z
    .registers 3

    .line 547
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportIntensityControl(J)Z

    move-result p0

    return p0
.end method

.method public supportsEnhancedSamsungHapticPattern()Z
    .registers 3

    .line 542
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsEnhancedSamsungHapticPattern(J)Z

    move-result p0

    return p0
.end method

.method public supportsFoldState()Z
    .registers 3

    .line 587
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsFoldState(J)Z

    move-result p0

    return p0
.end method

.method public supportsFrequencyControl()Z
    .registers 3

    .line 557
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsFrequencyControl(J)Z

    move-result p0

    return p0
.end method

.method public supportsHapticEngine()Z
    .registers 3

    .line 537
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsHapticEngine(J)Z

    move-result p0

    return p0
.end method

.method public supportsHasFeature()Z
    .registers 3

    .line 619
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsHasFeature(J)Z

    move-result p0

    return p0
.end method

.method public supportsPrebakedHapticPattern()Z
    .registers 3

    .line 532
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsPrebakedHapticPattern(J)Z

    move-result p0

    return p0
.end method

.method public supportsTentState()Z
    .registers 3

    .line 597
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsTentState(J)Z

    move-result p0

    return p0
.end method
