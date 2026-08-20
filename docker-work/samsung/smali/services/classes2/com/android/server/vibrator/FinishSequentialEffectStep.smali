.class public final Lcom/android/server/vibrator/FinishSequentialEffectStep;
.super Lcom/android/server/vibrator/Step;
.source "FinishSequentialEffectStep.java"


# instance fields
.field public final startedStep:Lcom/android/server/vibrator/StartSequentialEffectStep;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V
    .registers 5

    .line 36
    iget-object v0, p1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/vibrator/Step;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;J)V

    .line 37
    iput-object p1, p0, Lcom/android/server/vibrator/FinishSequentialEffectStep;->startedStep:Lcom/android/server/vibrator/StartSequentialEffectStep;

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

    .line 65
    invoke-virtual {p0}, Lcom/android/server/vibrator/FinishSequentialEffectStep;->cancelImmediately()V

    .line 66
    sget-object p0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;

    return-object p0
.end method

.method public cancelImmediately()V
    .registers 2

    .line 71
    iget-object p0, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object p0

    iget p0, p0, Lcom/android/server/vibrator/Vibration;->uid:I

    invoke-interface {v0, p0}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->noteVibratorOff(I)V

    return-void
.end method

.method public isCleanUp()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public play()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    const-wide/32 v0, 0x800000

    const-string v2, "FinishSequentialEffectStep"

    .line 48
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 54
    :try_start_8
    iget-object v2, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v3, v2, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    iget v2, v2, Lcom/android/server/vibrator/Vibration;->uid:I

    invoke-interface {v3, v2}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->noteVibratorOff(I)V

    .line 55
    iget-object p0, p0, Lcom/android/server/vibrator/FinishSequentialEffectStep;->startedStep:Lcom/android/server/vibrator/StartSequentialEffectStep;

    invoke-virtual {p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/Step;

    move-result-object p0

    if-nez p0, :cond_20

    .line 56
    sget-object p0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;

    goto :goto_2a

    :cond_20
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/server/vibrator/Step;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 57
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_2e

    .line 59
    :goto_2a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_2e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 60
    throw p0
.end method
