.class public final Lcom/android/server/vibrator/StartSequentialEffectStep;
.super Lcom/android/server/vibrator/Step;
.source "StartSequentialEffectStep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;
    }
.end annotation


# instance fields
.field public final currentIndex:I

.field public mVibratorsOnMaxDuration:J

.field public final sequentialEffect:Landroid/os/CombinedVibration$Sequential;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLandroid/os/CombinedVibration$Sequential;I)V
    .registers 6

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/Step;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;J)V

    .line 71
    iput-object p4, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    .line 72
    iput p5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;Landroid/os/CombinedVibration$Sequential;)V
    .registers 13

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    add-long v6, v0, v2

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/vibrator/StartSequentialEffectStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLandroid/os/CombinedVibration$Sequential;I)V

    return-void
.end method


# virtual methods
.method public cancel()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    .line 159
    sget-object p0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;

    return-object p0
.end method

.method public cancelImmediately()V
    .registers 1

    return-void
.end method

.method public final createEffectToVibratorMapping(Landroid/os/CombinedVibration;)Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;
    .registers 3

    .line 186
    instance-of v0, p1, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_c

    .line 187
    new-instance v0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;

    check-cast p1, Landroid/os/CombinedVibration$Mono;

    invoke-direct {v0, p0, p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;Landroid/os/CombinedVibration$Mono;)V

    return-object v0

    .line 189
    :cond_c
    instance-of v0, p1, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_18

    .line 190
    new-instance v0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;

    check-cast p1, Landroid/os/CombinedVibration$Stereo;

    invoke-direct {v0, p0, p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;Landroid/os/CombinedVibration$Stereo;)V

    return-object v0

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVibratorOnDuration()J
    .registers 3

    .line 77
    iget-wide v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    return-wide v0
.end method

.method public nextStep()Lcom/android/server/vibrator/Step;
    .registers 8

    .line 172
    iget v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    add-int/lit8 v6, v0, 0x1

    .line 173
    iget-object v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v6, v0, :cond_12

    const/4 p0, 0x0

    return-object p0

    .line 176
    :cond_12
    iget-object v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long v3, v2, v0

    .line 178
    new-instance v0, Lcom/android/server/vibrator/StartSequentialEffectStep;

    iget-object v2, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/vibrator/StartSequentialEffectStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLandroid/os/CombinedVibration$Sequential;I)V

    return-object v0
.end method

.method public play()Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-wide/32 v2, 0x800000

    const-string v0, "StartSequentialEffectStep"

    .line 82
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 83
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v5, -0x1

    .line 84
    iput-wide v5, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    const-wide/16 v5, 0x0

    .line 90
    :try_start_15
    iget-object v0, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v0

    iget v7, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CombinedVibration;

    .line 91
    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->createEffectToVibratorMapping(Landroid/os/CombinedVibration;)Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_146

    if-nez v0, :cond_46

    .line 141
    iget-wide v7, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v0, v7, v5

    if-ltz v0, :cond_42

    cmp-long v0, v7, v5

    if-lez v0, :cond_39

    .line 146
    new-instance v0, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    invoke-direct {v0, v1}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    goto :goto_3d

    .line 147
    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/Step;

    move-result-object v0

    :goto_3d
    if-eqz v0, :cond_42

    .line 149
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_42
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v4

    .line 98
    :cond_46
    :try_start_46
    iget-object v7, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v7}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibrators()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-eqz v7, :cond_10d

    .line 99
    iget-object v7, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v7}, Lcom/android/server/vibrator/VibrationStepConductor;->getComposed()Landroid/os/VibrationEffect$Composed;

    move-result-object v7

    .line 100
    invoke-virtual {v7}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/vibrator/VibrationEffectSegment;

    .line 101
    iget-object v10, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v10}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibrators()Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/vibrator/VibratorController;
    :try_end_6f
    .catchall {:try_start_46 .. :try_end_6f} :catchall_146

    if-nez v9, :cond_8e

    .line 141
    iget-wide v7, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v0, v7, v5

    if-ltz v0, :cond_8a

    cmp-long v0, v7, v5

    if-lez v0, :cond_81

    .line 146
    new-instance v0, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    invoke-direct {v0, v1}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    goto :goto_85

    .line 147
    :cond_81
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/Step;

    move-result-object v0

    :goto_85
    if-eqz v0, :cond_8a

    .line 149
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_8a
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v4

    .line 106
    :cond_8e
    :try_start_8e
    instance-of v10, v8, Landroid/os/vibrator/StepSegment;

    const/4 v15, -0x1

    if-eqz v10, :cond_e2

    .line 107
    check-cast v8, Landroid/os/vibrator/StepSegment;

    .line 109
    invoke-static {}, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_CIRRUS_HAPTIC()Z

    move-result v10

    if-eqz v10, :cond_b2

    const-wide/16 v11, 0x0

    .line 110
    iget-object v10, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 111
    invoke-virtual {v10}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/vibrator/Vibration;->getMagnitude()I

    move-result v10

    int-to-long v13, v10

    const/16 v16, 0x0

    move-object v10, v9

    move v2, v15

    move/from16 v15, v16

    .line 110
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/vibrator/VibratorController;->performPrebakedHapticPattern(JJZ)V

    goto :goto_b3

    :cond_b2
    move v2, v15

    .line 114
    :goto_b3
    invoke-virtual {v9}, Lcom/android/server/vibrator/VibratorController;->isSupportFrequencyControl()Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 115
    invoke-virtual {v8}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v3

    float-to-long v10, v3

    invoke-virtual {v9, v10, v11}, Lcom/android/server/vibrator/VibratorController;->setFrequencyType(J)V

    .line 118
    :cond_c1
    invoke-virtual {v9}, Lcom/android/server/vibrator/VibratorController;->isSupportIntensityControl()Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 120
    invoke-virtual {v7}, Landroid/os/VibrationEffect$Composed;->semGetMagnitude()I

    move-result v3

    if-le v3, v2, :cond_d3

    invoke-virtual {v7}, Landroid/os/VibrationEffect$Composed;->semGetMagnitude()I

    move-result v2

    :goto_d1
    int-to-long v2, v2

    goto :goto_de

    .line 121
    :cond_d3
    iget-object v2, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/vibrator/Vibration;->getMagnitude()I

    move-result v2

    goto :goto_d1

    .line 119
    :goto_de
    invoke-virtual {v9, v2, v3}, Lcom/android/server/vibrator/VibratorController;->setIntensity(J)V

    goto :goto_10d

    :cond_e2
    move v2, v15

    .line 123
    instance-of v3, v8, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v3, :cond_10d

    .line 124
    invoke-virtual {v9}, Lcom/android/server/vibrator/VibratorController;->isSupportIntensityControl()Z

    move-result v3

    if-eqz v3, :cond_108

    .line 125
    invoke-virtual {v7}, Landroid/os/VibrationEffect$Composed;->semGetMagnitude()I

    move-result v3

    if-le v3, v2, :cond_f9

    .line 126
    invoke-virtual {v7}, Landroid/os/VibrationEffect$Composed;->semGetMagnitude()I

    move-result v2

    :goto_f7
    int-to-long v2, v2

    goto :goto_104

    .line 127
    :cond_f9
    iget-object v2, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/vibrator/Vibration;->getMagnitude()I

    move-result v2

    goto :goto_f7

    .line 125
    :goto_104
    invoke-virtual {v9, v2, v3}, Lcom/android/server/vibrator/VibratorController;->setIntensity(J)V

    goto :goto_10d

    :cond_108
    const/high16 v2, 0x3f800000    # 1.0f

    .line 129
    invoke-virtual {v9, v2}, Lcom/android/server/vibrator/VibratorController;->setAmplitude(F)V

    .line 135
    :cond_10d
    :goto_10d
    invoke-virtual {v1, v0, v4}, Lcom/android/server/vibrator/StartSequentialEffectStep;->startVibrating(Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;Ljava/util/List;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v0, v2, v5

    if-lez v0, :cond_126

    .line 137
    iget-object v0, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v2, v0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v0

    iget v0, v0, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-wide v7, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    invoke-interface {v2, v0, v7, v8}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->noteVibratorOn(IJ)V
    :try_end_126
    .catchall {:try_start_8e .. :try_end_126} :catchall_146

    .line 141
    :cond_126
    iget-wide v2, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v0, v2, v5

    if-ltz v0, :cond_13f

    cmp-long v0, v2, v5

    if-lez v0, :cond_136

    .line 146
    new-instance v0, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    invoke-direct {v0, v1}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    goto :goto_13a

    .line 147
    :cond_136
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/Step;

    move-result-object v0

    :goto_13a
    if-eqz v0, :cond_13f

    .line 149
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13f
    const-wide/32 v1, 0x800000

    .line 152
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v4

    :catchall_146
    move-exception v0

    .line 141
    iget-wide v2, v1, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v7, v2, v5

    if-ltz v7, :cond_160

    cmp-long v2, v2, v5

    if-lez v2, :cond_157

    .line 146
    new-instance v2, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    invoke-direct {v2, v1}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    goto :goto_15b

    .line 147
    :cond_157
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/Step;

    move-result-object v2

    :goto_15b
    if-eqz v2, :cond_160

    .line 149
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_160
    const-wide/32 v1, 0x800000

    .line 152
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 153
    throw v0
.end method

.method public final startVibrating(Lcom/android/server/vibrator/AbstractVibratorStep;Ljava/util/List;)J
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vibrator/AbstractVibratorStep;",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;)J"
        }
    .end annotation

    .line 275
    invoke-virtual {p1}, Lcom/android/server/vibrator/Step;->play()Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 276
    invoke-virtual {p1}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorOnDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_12

    return-wide v0

    .line 282
    :cond_12
    iget-object p0, p1, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getDuration()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final startVibrating(Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;Ljava/util/List;)J
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->size()I

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_f

    return-wide v4

    .line 215
    :cond_f
    new-array v6, v3, [Lcom/android/server/vibrator/AbstractVibratorStep;

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    const/16 v17, 0x0

    move/from16 v13, v17

    :goto_19
    if-ge v13, v3, :cond_41

    .line 218
    iget-object v7, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 219
    invoke-virtual {v7}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibrators()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v0, v13}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->vibratorIdAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lcom/android/server/vibrator/VibratorController;

    .line 220
    invoke-virtual {v0, v13}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->effectAt(I)Landroid/os/VibrationEffect$Composed;

    move-result-object v11

    const/4 v12, 0x0

    const-wide/16 v18, 0x0

    move-wide v8, v15

    move/from16 v20, v13

    move-wide/from16 v13, v18

    .line 218
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibrateStep(JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/AbstractVibratorStep;

    move-result-object v7

    aput-object v7, v6, v20

    add-int/lit8 v13, v20, 0x1

    goto :goto_19

    :cond_41
    const/4 v7, 0x1

    if-ne v3, v7, :cond_4b

    .line 226
    aget-object v0, v6, v17

    invoke-virtual {v1, v0, v2}, Lcom/android/server/vibrator/StartSequentialEffectStep;->startVibrating(Lcom/android/server/vibrator/AbstractVibratorStep;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0

    .line 239
    :cond_4b
    :try_start_4b
    iget-object v8, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v8, v8, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    .line 240
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->getRequiredSyncCapabilities()J

    move-result-wide v9

    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->getVibratorIds()[I

    move-result-object v0

    .line 239
    invoke-interface {v8, v9, v10, v0}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->prepareSyncedVibration(J[I)Z

    move-result v8
    :try_end_5b
    .catchall {:try_start_4b .. :try_end_5b} :catchall_d3

    move-wide v9, v4

    move/from16 v0, v17

    :goto_5e
    if-ge v0, v3, :cond_98

    .line 243
    :try_start_60
    aget-object v11, v6, v0

    .line 244
    invoke-virtual {v1, v11, v2}, Lcom/android/server/vibrator/StartSequentialEffectStep;->startVibrating(Lcom/android/server/vibrator/AbstractVibratorStep;Ljava/util/List;)J

    move-result-wide v11
    :try_end_66
    .catchall {:try_start_60 .. :try_end_66} :catchall_94

    cmp-long v13, v11, v4

    if-gez v13, :cond_8d

    const-wide/16 v3, -0x1

    if-eqz v8, :cond_79

    .line 262
    iget-object v0, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->cancelSyncedVibration()V

    .line 263
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    goto :goto_8c

    .line 267
    :cond_79
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v7

    :goto_7e
    if-ltz v0, :cond_8c

    .line 268
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/Step;

    invoke-virtual {v1}, Lcom/android/server/vibrator/Step;->cancelImmediately()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_7e

    :cond_8c
    :goto_8c
    return-wide v3

    .line 249
    :cond_8d
    :try_start_8d
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    :catchall_94
    move-exception v0

    move/from16 v17, v8

    goto :goto_d5

    :cond_98
    if-eqz v8, :cond_ac

    cmp-long v0, v9, v4

    if-lez v0, :cond_ac

    .line 255
    iget-object v0, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v3

    iget-wide v11, v3, Lcom/android/server/vibrator/Vibration;->id:J

    .line 255
    invoke-interface {v0, v11, v12}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->triggerSyncedVibration(J)Z

    move-result v17
    :try_end_ac
    .catchall {:try_start_8d .. :try_end_ac} :catchall_94

    :cond_ac
    if-eqz v8, :cond_bb

    if-nez v17, :cond_bb

    .line 262
    iget-object v0, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->cancelSyncedVibration()V

    .line 263
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    goto :goto_d2

    :cond_bb
    cmp-long v0, v9, v4

    if-gez v0, :cond_d2

    .line 267
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v7

    :goto_c4
    if-ltz v0, :cond_d2

    .line 268
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/Step;

    invoke-virtual {v1}, Lcom/android/server/vibrator/Step;->cancelImmediately()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_c4

    :cond_d2
    :goto_d2
    return-wide v9

    :catchall_d3
    move-exception v0

    move-wide v9, v4

    :goto_d5
    if-nez v17, :cond_ee

    cmp-long v1, v9, v4

    if-gez v1, :cond_f8

    .line 267
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v7

    :goto_e0
    if-ltz v1, :cond_f8

    .line 268
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/Step;

    invoke-virtual {v3}, Lcom/android/server/vibrator/Step;->cancelImmediately()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_e0

    .line 262
    :cond_ee
    iget-object v1, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v1, v1, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    invoke-interface {v1}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->cancelSyncedVibration()V

    .line 263
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    .line 271
    :cond_f8
    throw v0
.end method
