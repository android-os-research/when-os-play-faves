.class public final Lcom/android/server/vibrator/VibrationStepConductor;
.super Ljava/lang/Object;
.source "VibrationStepConductor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final CALLBACKS_EXTRA_TIMEOUT:J = 0x3e8L

.field public static final DEBUG:Z = false

.field public static final EMPTY_STEP_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation
.end field

.field public static final RAMP_OFF_AMPLITUDE_MIN:F = 0.001f

.field public static final TAG:Ljava/lang/String; = "VibrationThread"


# instance fields
.field public final deviceEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

.field public mCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

.field public mCancelledImmediately:Z

.field public mComposed:Landroid/os/VibrationEffect$Composed;

.field public mDynamicEffectLoop:I

.field public final mLock:Ljava/lang/Object;

.field public final mNextSteps:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingOnVibratorCompleteSteps:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingVibrateSteps:I

.field public mRemainingStartSequentialEffectSteps:I

.field public mSignalCancelImmediate:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSignalCancelStatus:Lcom/android/server/vibrator/Vibration$Status;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mSignalVibratorsComplete:Landroid/util/IntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSuccessfulVibratorOnSteps:I

.field public final mVibration:Lcom/android/server/vibrator/Vibration;

.field public final mVibrators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vibrator/VibratorController;",
            ">;"
        }
    .end annotation
.end field

.field public final vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

.field public final vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/VibrationSettings;Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;Landroid/util/SparseArray;Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vibrator/Vibration;",
            "Lcom/android/server/vibrator/VibrationSettings;",
            "Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vibrator/VibratorController;",
            ">;",
            "Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;",
            ")V"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibrators:Landroid/util/SparseArray;

    .line 73
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    .line 74
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

    const/4 v1, 0x0

    .line 87
    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    .line 90
    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 92
    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    const/4 v0, -0x1

    .line 596
    iput v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mDynamicEffectLoop:I

    .line 101
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/Vibration;

    .line 102
    iput-object p2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 103
    iput-object p3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->deviceEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    .line 104
    iput-object p5, p0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    .line 106
    invoke-virtual {p1}, Lcom/android/server/vibrator/Vibration;->getEffect()Landroid/os/CombinedVibration;

    move-result-object p2

    .line 108
    iput v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mDynamicEffectLoop:I

    .line 109
    iget-object p3, p1, Lcom/android/server/vibrator/Vibration;->reason:Ljava/lang/String;

    if-eqz p3, :cond_5c

    const-string p5, "DynamicEffect_"

    invoke-virtual {p3, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5c

    .line 111
    :try_start_46
    iget-object p1, p1, Lcom/android/server/vibrator/Vibration;->reason:Ljava/lang/String;

    const-string p3, ""

    invoke-virtual {p1, p5, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mDynamicEffectLoop:I
    :try_end_54
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_54} :catch_55

    goto :goto_5c

    :catch_55
    const-string p1, "VibrationThread"

    const-string p3, "Failed to parse DynamicEffect reason."

    .line 113
    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    :goto_5c
    move p1, v1

    .line 118
    :goto_5d
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_7f

    .line 119
    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/os/CombinedVibration;->hasVibrator(I)Z

    move-result p3

    if-eqz p3, :cond_7c

    .line 120
    iget-object p3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p5

    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p3, p5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7c
    add-int/lit8 p1, p1, 0x1

    goto :goto_5d

    .line 123
    :cond_7f
    new-instance p1, Landroid/util/IntArray;

    iget-object p3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    invoke-direct {p1, p3}, Landroid/util/IntArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    .line 126
    instance-of p1, p2, Landroid/os/CombinedVibration$Mono;

    if-eqz p1, :cond_9b

    .line 127
    check-cast p2, Landroid/os/CombinedVibration$Mono;

    .line 128
    invoke-virtual {p2}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object p1

    check-cast p1, Landroid/os/VibrationEffect$Composed;

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mComposed:Landroid/os/VibrationEffect$Composed;

    goto :goto_ad

    .line 129
    :cond_9b
    instance-of p1, p2, Landroid/os/CombinedVibration$Stereo;

    if-eqz p1, :cond_ad

    .line 131
    check-cast p2, Landroid/os/CombinedVibration$Stereo;

    .line 132
    invoke-virtual {p2}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/VibrationEffect$Composed;

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mComposed:Landroid/os/VibrationEffect$Composed;

    :cond_ad
    :goto_ad
    return-void
.end method

.method public static expectIsVibrationThread(Z)V
    .registers 3

    .line 577
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/vibrator/VibrationThread;

    if-eq v0, p0, :cond_1e

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread caller assertion failed, expected isVibrationThread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VibrationStepConductor"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void
.end method

.method public static toSequential(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$Sequential;
    .registers 2

    .line 562
    instance-of v0, p0, Landroid/os/CombinedVibration$Sequential;

    if-eqz v0, :cond_7

    .line 563
    check-cast p0, Landroid/os/CombinedVibration$Sequential;

    return-object p0

    .line 565
    :cond_7
    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v0

    .line 566
    invoke-virtual {v0, p0}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object p0

    .line 567
    invoke-virtual {p0}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object p0

    check-cast p0, Landroid/os/CombinedVibration$Sequential;

    return-object p0
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 343
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/Vibration$Status;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$Status;Z)V

    return-void
.end method

.method public calculateVibrationStatus()Lcom/android/server/vibrator/Vibration$Status;
    .registers 2

    .line 221
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 222
    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 225
    :cond_8
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

    if-eqz v0, :cond_d

    return-object v0

    .line 228
    :cond_d
    iget v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    if-gtz v0, :cond_20

    iget v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRemainingStartSequentialEffectSteps:I

    if-lez v0, :cond_16

    goto :goto_20

    .line 233
    :cond_16
    iget p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSuccessfulVibratorOnSteps:I

    if-lez p0, :cond_1d

    .line 234
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->FINISHED:Lcom/android/server/vibrator/Vibration$Status;

    return-object p0

    .line 237
    :cond_1d
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/Vibration$Status;

    return-object p0

    .line 230
    :cond_20
    :goto_20
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    return-object p0
.end method

.method public getComposed()Landroid/os/VibrationEffect$Composed;
    .registers 1

    .line 592
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mComposed:Landroid/os/VibrationEffect$Composed;

    return-object p0
.end method

.method public getVibration()Lcom/android/server/vibrator/Vibration;
    .registers 1

    .line 195
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/Vibration;

    return-object p0
.end method

.method public getVibrators()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vibrator/VibratorController;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibrators:Landroid/util/SparseArray;

    return-object p0
.end method

.method public final hasPendingNotifySignalLocked()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 436
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 437
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 439
    :cond_8
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

    if-ne v0, v2, :cond_20

    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    if-eqz v0, :cond_20

    :cond_16
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    .line 441
    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result p0

    if-lez p0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :cond_20
    :goto_20
    return v1
.end method

.method public isFinished()Z
    .registers 3

    .line 204
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 205
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 207
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    if-eqz v0, :cond_d

    return v1

    .line 213
    :cond_d
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method

.method public nextVibrateStep(JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/AbstractVibratorStep;
    .registers 18

    move-object v1, p0

    .line 142
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    .line 143
    invoke-static {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 145
    :cond_9
    invoke-virtual {p4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, p5

    if-lt v3, v0, :cond_23

    .line 146
    iget v0, v1, Lcom/android/server/vibrator/VibrationStepConductor;->mDynamicEffectLoop:I

    if-le v0, v2, :cond_1d

    const/4 v3, 0x0

    sub-int/2addr v0, v2

    .line 148
    iput v0, v1, Lcom/android/server/vibrator/VibrationStepConductor;->mDynamicEffectLoop:I

    goto :goto_23

    .line 150
    :cond_1d
    invoke-virtual {p4}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v0

    move v6, v0

    goto :goto_24

    :cond_23
    :goto_23
    move v6, v3

    :goto_24
    if-gez v6, :cond_33

    .line 155
    new-instance v8, Lcom/android/server/vibrator/CompleteEffectVibratorStep;

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    move-wide v2, p1

    move-object v5, p3

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/vibrator/CompleteEffectVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JZLcom/android/server/vibrator/VibratorController;J)V

    return-object v8

    .line 159
    :cond_33
    invoke-virtual {p4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/VibrationEffectSegment;

    .line 160
    instance-of v2, v0, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v2, :cond_4e

    .line 161
    new-instance v9, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-object v9

    .line 164
    :cond_4e
    instance-of v2, v0, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v2, :cond_5f

    .line 165
    new-instance v9, Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-object v9

    .line 168
    :cond_5f
    instance-of v2, v0, Landroid/os/vibrator/RampSegment;

    if-eqz v2, :cond_70

    .line 169
    new-instance v9, Lcom/android/server/vibrator/ComposePwleVibratorStep;

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/ComposePwleVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-object v9

    .line 172
    :cond_70
    instance-of v0, v0, Landroid/os/vibrator/SemHapticSegment;

    if-eqz v0, :cond_81

    .line 173
    new-instance v9, Lcom/android/server/vibrator/SemHapticStep;

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/SemHapticStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-object v9

    .line 177
    :cond_81
    new-instance v9, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-object v9
.end method

.method public notifyCancelled(Lcom/android/server/vibrator/Vibration$Status;Z)V
    .registers 6

    .line 353
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 354
    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    :cond_8
    if-eqz p1, :cond_16

    .line 360
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    :cond_16
    const-string v0, "VibrationThread"

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vibration cancel requested with bad status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", using CANCELLED_UNKNOWN_REASON to ensure cancellation."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    sget-object p1, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_UNKNOWN_REASON:Lcom/android/server/vibrator/Vibration$Status;

    .line 365
    :cond_33
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_3c

    .line 366
    :try_start_38
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    if-nez v1, :cond_40

    :cond_3c
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

    if-eqz v1, :cond_42

    .line 372
    :cond_40
    monitor-exit v0

    return-void

    .line 374
    :cond_42
    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    or-int/2addr p2, v2

    iput-boolean p2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    if-nez v1, :cond_4b

    .line 376
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 385
    :cond_4b
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 386
    monitor-exit v0

    return-void

    :catchall_52
    move-exception p0

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_38 .. :try_end_54} :catchall_52

    throw p0
.end method

.method public notifySyncedVibrationComplete()V
    .registers 5

    .line 426
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 427
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 428
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    iget-object v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 430
    :cond_1a
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 431
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public notifyVibratorComplete(I)V
    .registers 4

    .line 404
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    .line 406
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 407
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final pollNext()Lcom/android/server/vibrator/Step;
    .registers 2

    .line 291
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 292
    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 297
    :cond_8
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 298
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/Step;

    return-object p0

    .line 300
    :cond_19
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/Step;

    return-object p0
.end method

.method public prepareToStart()V
    .registers 4

    .line 183
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 184
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 186
    :cond_8
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/Vibration;

    invoke-virtual {v0}, Lcom/android/server/vibrator/Vibration;->getEffect()Landroid/os/CombinedVibration;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->toSequential(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$Sequential;

    move-result-object v0

    .line 187
    iget v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    .line 189
    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRemainingStartSequentialEffectSteps:I

    .line 190
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    new-instance v2, Lcom/android/server/vibrator/StartSequentialEffectStep;

    invoke-direct {v2, p0, v0}, Lcom/android/server/vibrator/StartSequentialEffectStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;Landroid/os/CombinedVibration$Sequential;)V

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public final processAllNotifySignals()V
    .registers 7

    .line 449
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 450
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    :cond_8
    const/4 v0, 0x0

    .line 457
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 458
    :try_start_c
    iget-boolean v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1f

    .line 459
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    if-eqz v0, :cond_1c

    const-string v0, "VibrationThread"

    const-string v3, "Immediate cancellation signal processed twice"

    .line 460
    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_1c
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

    goto :goto_21

    :cond_1f
    move v1, v0

    move-object v0, v4

    .line 466
    :goto_21
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

    iget-object v5, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

    if-eq v3, v5, :cond_28

    move-object v0, v3

    :cond_28
    if-nez v1, :cond_3d

    .line 469
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v3

    if-lez v3, :cond_3d

    .line 471
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    .line 472
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->clear()V

    .line 474
    :cond_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_c .. :try_end_3e} :catchall_4f

    if-eqz v1, :cond_44

    .line 481
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationStepConductor;->processCancelImmediately(Lcom/android/server/vibrator/Vibration$Status;)V

    return-void

    :cond_44
    if-eqz v0, :cond_49

    .line 485
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationStepConductor;->processCancel(Lcom/android/server/vibrator/Vibration$Status;)V

    :cond_49
    if-eqz v4, :cond_4e

    .line 488
    invoke-virtual {p0, v4}, Lcom/android/server/vibrator/VibrationStepConductor;->processVibratorsComplete([I)V

    :cond_4e
    return-void

    :catchall_4f
    move-exception p0

    .line 474
    :try_start_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public processCancel(Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 3

    .line 499
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 500
    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 503
    :cond_8
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 506
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 508
    :goto_f
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->pollNext()Lcom/android/server/vibrator/Step;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 509
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->cancel()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    :cond_1d
    const/4 v0, 0x0

    .line 512
    iput v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    .line 513
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {p0, p1}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public processCancelImmediately(Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 4

    .line 522
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 523
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 526
    :cond_8
    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    .line 527
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 529
    :goto_c
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->pollNext()Lcom/android/server/vibrator/Step;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 530
    invoke-virtual {p1}, Lcom/android/server/vibrator/Step;->cancelImmediately()V

    goto :goto_c

    :cond_16
    const/4 p1, 0x0

    .line 532
    iput p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    return-void
.end method

.method public final processVibratorsComplete([I)V
    .registers 8

    .line 544
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 545
    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 548
    :cond_8
    array-length v0, p1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_31

    aget v2, p1, v1

    .line 549
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 550
    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 551
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vibrator/Step;

    .line 552
    invoke-virtual {v4, v2}, Lcom/android/server/vibrator/Step;->acceptVibratorCompleteCallback(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 553
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 554
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v2, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_31
    return-void
.end method

.method public runNextStep()V
    .registers 8

    .line 308
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 309
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 314
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->pollNext()Lcom/android/server/vibrator/Step;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 316
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->play()Ljava/util/List;

    move-result-object v2

    .line 317
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->getVibratorOnDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_21

    .line 318
    iget v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSuccessfulVibratorOnSteps:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSuccessfulVibratorOnSteps:I

    .line 320
    :cond_21
    instance-of v3, v0, Lcom/android/server/vibrator/StartSequentialEffectStep;

    if-eqz v3, :cond_2a

    .line 321
    iget v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRemainingStartSequentialEffectSteps:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRemainingStartSequentialEffectSteps:I

    .line 323
    :cond_2a
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->isCleanUp()Z

    move-result v0

    if-nez v0, :cond_35

    .line 324
    iget v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    :cond_35
    const/4 v0, 0x0

    .line 326
    :goto_36
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4f

    .line 327
    iget v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vibrator/Step;

    invoke-virtual {v4}, Lcom/android/server/vibrator/Step;->isCleanUp()Z

    move-result v4

    xor-int/2addr v4, v1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 329
    :cond_4f
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {p0, v2}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    :cond_54
    return-void
.end method

.method public waitUntilNextStepIsDue()Z
    .registers 8

    .line 253
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 254
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 257
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->processAllNotifySignals()V

    .line 258
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    return v2

    .line 263
    :cond_11
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    return v1

    .line 266
    :cond_1a
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/Step;

    if-nez v0, :cond_25

    return v1

    .line 270
    :cond_25
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->calculateWaitTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_30

    return v1

    .line 274
    :cond_30
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_33
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->hasPendingNotifySignalLocked()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 279
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_42

    return v2

    .line 282
    :cond_3b
    :try_start_3b
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_40} :catch_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_42

    .line 285
    :catch_40
    :try_start_40
    monitor-exit v0

    return v2

    :catchall_42
    move-exception p0

    .line 286
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_42

    throw p0
.end method
