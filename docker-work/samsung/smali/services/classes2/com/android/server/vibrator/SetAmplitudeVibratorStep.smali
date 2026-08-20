.class public final Lcom/android/server/vibrator/SetAmplitudeVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "SetAmplitudeVibratorStep.java"


# static fields
.field public static final REPEATING_EFFECT_ON_DURATION:I = 0x1388


# instance fields
.field public mNextOffTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .registers 9

    .line 50
    invoke-direct/range {p0 .. p8}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    .line 51
    iput-wide p7, p0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mNextOffTime:J

    return-void
.end method


# virtual methods
.method public acceptVibratorCompleteCallback(I)Z
    .registers 8

    .line 56
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_15

    .line 57
    iput-boolean v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mNextOffTime:J

    .line 63
    :cond_15
    iget-wide v2, p0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mNextOffTime:J

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

.method public final getVibratorOnDuration(Landroid/os/VibrationEffect$Composed;I)J
    .registers 13

    .line 169
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 171
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v2

    const-wide/16 v3, 0x0

    move v5, p2

    :cond_f
    if-ge v5, v1, :cond_40

    .line 175
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/vibrator/VibrationEffectSegment;

    .line 176
    instance-of v7, v6, Landroid/os/vibrator/StepSegment;

    if-eqz v7, :cond_40

    move-object v7, v6

    check-cast v7, Landroid/os/vibrator/StepSegment;

    .line 177
    invoke-virtual {v7}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_28

    goto :goto_40

    .line 180
    :cond_28
    invoke-virtual {v6}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v6

    add-long/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v1, :cond_37

    if-ltz v2, :cond_37

    const/4 v5, -0x1

    move v9, v5

    move v5, v2

    move v2, v9

    :cond_37
    if-ne v5, p2, :cond_f

    const-wide/16 p0, 0x1388

    .line 188
    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_40
    :goto_40
    if-ne v5, v1, :cond_52

    .line 191
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result p1

    if-gez p1, :cond_52

    .line 194
    iget-object p0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->getRampDownDuration()I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v3, p0

    :cond_52
    return-wide v3
.end method

.method public play()Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-wide/32 v7, 0x800000

    const-string v1, "SetAmplitudeVibratorStep"

    .line 71
    invoke-static {v7, v8, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 73
    :try_start_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 74
    iget-wide v3, v0, Lcom/android/server/vibrator/Step;->startTime:J

    sub-long v3, v1, v3

    .line 80
    iget-boolean v5, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    const/4 v6, 0x1

    const-wide/16 v9, 0x0

    if-eqz v5, :cond_43

    cmp-long v5, v3, v9

    if-gez v5, :cond_43

    neg-long v1, v3

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->turnVibratorBackOn(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mNextOffTime:J

    new-array v3, v6, [Lcom/android/server/vibrator/Step;

    const/4 v4, 0x0

    .line 84
    new-instance v5, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;

    iget-object v10, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v11, v0, Lcom/android/server/vibrator/Step;->startTime:J

    iget-object v13, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v14, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v15, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    move-object v9, v5

    move-wide/from16 v16, v1

    invoke-direct/range {v9 .. v17}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_3f
    .catchall {:try_start_a .. :try_end_3f} :catchall_c8

    .line 133
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 88
    :cond_43
    :try_start_43
    iget-object v3, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    iget v4, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    .line 89
    instance-of v4, v3, Landroid/os/vibrator/StepSegment;

    if-nez v4, :cond_73

    const-string v1, "VibrationThread"

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring wrong segment for a SetAmplitudeVibratorStep: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v0, v6}, Lcom/android/server/vibrator/AbstractVibratorStep;->skipToNextSteps(I)Ljava/util/List;

    move-result-object v0
    :try_end_6f
    .catchall {:try_start_43 .. :try_end_6f} :catchall_c8

    .line 133
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 95
    :cond_73
    :try_start_73
    move-object v4, v3

    check-cast v4, Landroid/os/vibrator/StepSegment;

    .line 96
    invoke-virtual {v4}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v11

    cmp-long v5, v11, v9

    if-nez v5, :cond_86

    .line 98
    invoke-virtual {v0, v6}, Lcom/android/server/vibrator/AbstractVibratorStep;->skipToNextSteps(I)Ljava/util/List;

    move-result-object v0
    :try_end_82
    .catchall {:try_start_73 .. :try_end_82} :catchall_c8

    .line 133
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 101
    :cond_86
    :try_start_86
    invoke-virtual {v4}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_9b

    .line 103
    iget-wide v4, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->previousStepVibratorOffTimeout:J

    cmp-long v4, v4, v1

    if-lez v4, :cond_b3

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    .line 106
    iput-wide v1, v0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mNextOffTime:J

    goto :goto_b3

    .line 112
    :cond_9b
    iget-object v5, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v6, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    invoke-virtual {v0, v5, v6}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->getVibratorOnDuration(Landroid/os/VibrationEffect$Composed;I)J

    move-result-wide v5

    cmp-long v9, v5, v9

    if-lez v9, :cond_b3

    .line 115
    invoke-virtual {v0, v5, v6, v4}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->startVibrating(JLandroid/os/vibrator/StepSegment;)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    add-long/2addr v1, v5

    const-wide/16 v4, 0x3e8

    add-long/2addr v1, v4

    .line 119
    iput-wide v1, v0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mNextOffTime:J

    .line 130
    :cond_b3
    :goto_b3
    iget-wide v1, v0, Lcom/android/server/vibrator/Step;->startTime:J

    invoke-virtual {v3}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v3

    add-long v2, v1, v3

    .line 131
    iget-wide v4, v0, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->mNextOffTime:J

    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(JJI)Ljava/util/List;

    move-result-object v0
    :try_end_c4
    .catchall {:try_start_86 .. :try_end_c4} :catchall_c8

    .line 133
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_c8
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 134
    throw v0
.end method

.method public final startVibrating(J)J
    .registers 6

    .line 160
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object p0

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/vibrator/VibratorController;->on(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final startVibrating(JLandroid/os/vibrator/StepSegment;)J
    .registers 6

    .line 206
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->isSupportIntensityControl()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 207
    invoke-virtual {p3}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1b

    .line 208
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p3}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/server/vibrator/VibratorController;->setAmplitude(F)V

    .line 211
    :cond_1b
    iget-object p3, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object p0

    iget-wide v0, p0, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/android/server/vibrator/VibratorController;->on(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final turnVibratorBackOn(J)J
    .registers 9

    .line 138
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->getVibratorOnDuration(Landroid/os/VibrationEffect$Composed;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_11

    .line 141
    iget-wide p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->previousStepVibratorOffTimeout:J

    return-wide p0

    :cond_11
    add-long/2addr v0, p1

    .line 144
    iget-object p1, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorController;->getCurrentAmplitude()F

    move-result p1

    .line 145
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;->startVibrating(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    cmp-long p2, v4, v2

    if-lez p2, :cond_25

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/AbstractVibratorStep;->changeAmplitude(F)V

    .line 150
    :cond_25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    add-long/2addr p0, v0

    const-wide/16 v0, 0x3e8

    add-long/2addr p0, v0

    return-wide p0
.end method
