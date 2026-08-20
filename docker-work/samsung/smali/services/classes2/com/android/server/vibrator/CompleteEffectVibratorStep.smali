.class public final Lcom/android/server/vibrator/CompleteEffectVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "CompleteEffectVibratorStep.java"


# instance fields
.field public final mCancelled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JZLcom/android/server/vibrator/VibratorController;J)V
    .registers 17

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p5

    move-wide v7, p6

    .line 38
    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    move v1, p4

    .line 40
    iput-boolean v1, v0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public cancel()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    .line 52
    iget-boolean v0, p0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/vibrator/Step;

    const/4 v1, 0x0

    .line 54
    new-instance v2, Lcom/android/server/vibrator/TurnOffVibratorStep;

    iget-object v3, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object p0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-direct {v2, v3, v4, v5, p0}, Lcom/android/server/vibrator/TurnOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;)V

    aput-object v2, v0, v1

    .line 54
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 57
    :cond_1c
    invoke-super {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->cancel()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isCleanUp()Z
    .registers 1

    .line 47
    iget-boolean p0, p0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    return p0
.end method

.method public play()Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-wide/32 v1, 0x800000

    const-string v3, "CompleteEffectVibratorStep"

    .line 62
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 69
    :try_start_a
    iget-boolean v3, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    if-eqz v3, :cond_17

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    .line 73
    sget-object v0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_99

    .line 111
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 76
    :cond_17
    :try_start_17
    iget-object v3, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibratorController;->getCurrentAmplitude()F

    move-result v3

    .line 77
    iget-wide v4, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->previousStepVibratorOffTimeout:J

    const-wide/16 v6, 0x3e8

    sub-long/2addr v4, v6

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 80
    iget-object v6, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v6, v6, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 82
    invoke-virtual {v6}, Lcom/android/server/vibrator/VibrationSettings;->getRampDownDuration()I

    move-result v6

    int-to-long v6, v6

    .line 81
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 83
    iget-object v6, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v6, v6, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v6}, Lcom/android/server/vibrator/VibrationSettings;->getRampStepDuration()I

    move-result v6

    int-to-long v6, v6

    const v8, 0x3a83126f    # 0.001f

    cmpg-float v8, v3, v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ltz v8, :cond_75

    cmp-long v8, v4, v6

    if-gtz v8, :cond_4b

    goto :goto_75

    .line 103
    :cond_4b
    div-long v6, v4, v6

    long-to-float v6, v6

    div-float v16, v3, v6

    sub-float v15, v3, v16

    .line 106
    iget-boolean v3, v0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    if-eqz v3, :cond_57

    goto :goto_59

    :cond_57
    iget-wide v4, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->previousStepVibratorOffTimeout:J

    :goto_59
    move-wide/from16 v18, v4

    new-array v3, v10, [Lcom/android/server/vibrator/Step;

    .line 107
    new-instance v4, Lcom/android/server/vibrator/RampOffVibratorStep;

    iget-object v12, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v13, v0, Lcom/android/server/vibrator/Step;->startTime:J

    iget-object v0, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    move-object v11, v4

    move-object/from16 v17, v0

    invoke-direct/range {v11 .. v19}, Lcom/android/server/vibrator/RampOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JFFLcom/android/server/vibrator/VibratorController;J)V

    aput-object v4, v3, v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_71
    .catchall {:try_start_17 .. :try_end_71} :catchall_99

    .line 111
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 87
    :cond_75
    :goto_75
    :try_start_75
    iget-boolean v3, v0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    if-eqz v3, :cond_82

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    .line 90
    sget-object v0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;
    :try_end_7e
    .catchall {:try_start_75 .. :try_end_7e} :catchall_99

    .line 111
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_82
    :try_start_82
    new-array v3, v10, [Lcom/android/server/vibrator/Step;

    .line 92
    new-instance v4, Lcom/android/server/vibrator/TurnOffVibratorStep;

    iget-object v5, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v6, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->previousStepVibratorOffTimeout:J

    iget-object v0, v0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-direct {v4, v5, v6, v7, v0}, Lcom/android/server/vibrator/TurnOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;)V

    aput-object v4, v3, v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_95
    .catchall {:try_start_82 .. :try_end_95} :catchall_99

    .line 111
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_99
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 112
    throw v0
.end method
