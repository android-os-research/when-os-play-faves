.class public final Lcom/android/server/vibrator/SemHapticStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "SemHapticStep.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SemHapticStep"


# instance fields
.field public mNextOffTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .registers 9

    .line 37
    invoke-direct/range {p0 .. p8}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    .line 38
    iput-wide p7, p0, Lcom/android/server/vibrator/SemHapticStep;->mNextOffTime:J

    return-void
.end method


# virtual methods
.method public acceptVibratorCompleteCallback(I)Z
    .registers 8

    .line 43
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_15

    .line 44
    iput-boolean v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/vibrator/SemHapticStep;->mNextOffTime:J

    .line 50
    :cond_15
    iget-wide v2, p0, Lcom/android/server/vibrator/SemHapticStep;->mNextOffTime:J

    iget-wide v4, p0, Lcom/android/server/vibrator/Step;->startTime:J

    cmp-long p1, v2, v4

    if-gez p1, :cond_29

    iget-object p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->getCurrentAmplitude()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    return v1
.end method

.method public play()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    const-wide/32 v0, 0x800000

    const-string v2, "SemHapticStep"

    .line 55
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 57
    :try_start_8
    iget-object v3, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    .line 58
    instance-of v4, v3, Landroid/os/vibrator/SemHapticSegment;

    const/4 v5, 0x1

    if-nez v4, :cond_37

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring wrong segment for a SemHapticSegment: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0, v5}, Lcom/android/server/vibrator/AbstractVibratorStep;->skipToNextSteps(I)Ljava/util/List;

    move-result-object p0
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_a2

    .line 83
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 63
    :cond_37
    :try_start_37
    check-cast v3, Landroid/os/vibrator/SemHapticSegment;

    .line 65
    iget-object v4, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v4}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v4

    .line 66
    invoke-virtual {v4}, Lcom/android/server/vibrator/Vibration;->getMagnitude()I

    move-result v6

    .line 67
    invoke-virtual {v3}, Landroid/os/vibrator/SemHapticSegment;->getSepIndex()I

    move-result v3

    .line 68
    invoke-virtual {v4}, Lcom/android/server/vibrator/Vibration;->getTimeOut()J

    move-result-wide v7

    .line 69
    iget-object v9, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v9}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v9

    const/4 v10, -0x1

    if-le v9, v10, :cond_56

    move v9, v5

    goto :goto_57

    :cond_56
    const/4 v9, 0x0

    .line 70
    :goto_57
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "sepIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", intensity="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", repeat="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0, v3, v6, v9}, Lcom/android/server/vibrator/SemHapticStep;->startVibrating(IIZ)V

    if-eqz v9, :cond_90

    .line 75
    invoke-virtual {v4}, Lcom/android/server/vibrator/Vibration;->getEngineData()[I

    move-result-object v2

    if-nez v2, :cond_90

    const-wide v2, 0x7fffffffffffec77L

    .line 76
    iput-wide v2, p0, Lcom/android/server/vibrator/SemHapticStep;->mNextOffTime:J

    move v11, v10

    goto :goto_96

    .line 79
    :cond_90
    iget-wide v2, p0, Lcom/android/server/vibrator/Step;->startTime:J

    add-long/2addr v2, v7

    iput-wide v2, p0, Lcom/android/server/vibrator/SemHapticStep;->mNextOffTime:J

    move v11, v5

    .line 81
    :goto_96
    iget-wide v9, p0, Lcom/android/server/vibrator/SemHapticStep;->mNextOffTime:J

    move-object v6, p0

    move-wide v7, v9

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(JJI)Ljava/util/List;

    move-result-object p0
    :try_end_9e
    .catchall {:try_start_37 .. :try_end_9e} :catchall_a2

    .line 83
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_a2
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 84
    throw p0
.end method

.method public final startVibrating(IIZ)V
    .registers 12

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Turning on vibrator "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemHapticStep"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/android/server/vibrator/Vibration;->getEngineData()[I

    move-result-object v1

    if-nez v1, :cond_3a

    .line 91
    iget-object v2, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    int-to-long v3, p1

    int-to-long v5, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/vibrator/VibratorController;->performPrebakedHapticPattern(JJZ)V

    goto :goto_49

    .line 93
    :cond_3a
    iget-object p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/Vibration;->getEngineData()[I

    move-result-object p1

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorController;->performHapticEngine([II)V

    :goto_49
    return-void
.end method
