.class public final Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;
.super Ljava/lang/Object;
.source "StartSequentialEffectStep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/StartSequentialEffectStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DeviceEffectMap"
.end annotation


# instance fields
.field public final mRequiredSyncCapabilities:J

.field public final mVibratorEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect$Composed;",
            ">;"
        }
    .end annotation
.end field

.field public final mVibratorIds:[I

.field public final synthetic this$0:Lcom/android/server/vibrator/StartSequentialEffectStep;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/StartSequentialEffectStep;Landroid/os/CombinedVibration$Mono;)V
    .registers 9

    .line 296
    iput-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->this$0:Lcom/android/server/vibrator/StartSequentialEffectStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iget-object v0, p1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibrators()Landroid/util/SparseArray;

    move-result-object v0

    .line 298
    new-instance v1, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    .line 299
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    const/4 v1, 0x0

    .line 300
    :goto_1f
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_51

    .line 301
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 302
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v3

    .line 303
    iget-object v4, p1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v4, v4, Lcom/android/server/vibrator/VibrationStepConductor;->deviceEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    .line 304
    invoke-virtual {p2}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object v5

    .line 303
    invoke-virtual {v4, v5, v3}, Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;->apply(Landroid/os/VibrationEffect;Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;

    move-result-object v3

    .line 305
    instance-of v4, v3, Landroid/os/VibrationEffect$Composed;

    if-eqz v4, :cond_4e

    .line 306
    iget-object v4, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    check-cast v3, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 307
    iget-object v3, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    aput v2, v3, v1

    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 310
    :cond_51
    iget-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->calculateRequiredSyncCapabilities(Landroid/util/SparseArray;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mRequiredSyncCapabilities:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vibrator/StartSequentialEffectStep;Landroid/os/CombinedVibration$Stereo;)V
    .registers 10

    .line 313
    iput-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->this$0:Lcom/android/server/vibrator/StartSequentialEffectStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iget-object v0, p1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibrators()Landroid/util/SparseArray;

    move-result-object v0

    .line 315
    invoke-virtual {p2}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object p2

    .line 316
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    const/4 v1, 0x0

    move v2, v1

    .line 317
    :goto_18
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4e

    .line 318
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 319
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 320
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v4}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v4

    .line 321
    iget-object v5, p1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v5, v5, Lcom/android/server/vibrator/VibrationStepConductor;->deviceEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    .line 322
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/VibrationEffect;

    .line 321
    invoke-virtual {v5, v6, v4}, Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;->apply(Landroid/os/VibrationEffect;Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;

    move-result-object v4

    .line 323
    instance-of v5, v4, Landroid/os/VibrationEffect$Composed;

    if-eqz v5, :cond_4b

    .line 324
    iget-object v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    check-cast v4, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 328
    :cond_4e
    iget-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    .line 329
    :goto_58
    iget-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v1, p1, :cond_6d

    .line 330
    iget-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    iget-object p2, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 332
    :cond_6d
    iget-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->calculateRequiredSyncCapabilities(Landroid/util/SparseArray;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mRequiredSyncCapabilities:J

    return-void
.end method


# virtual methods
.method public final calculateRequiredSyncCapabilities(Landroid/util/SparseArray;)J
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect$Composed;",
            ">;)J"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move v3, v0

    .line 377
    :goto_4
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    const-wide/16 v5, 0x8

    const-wide/16 v7, 0x4

    const-wide/16 v9, 0x2

    if-ge v3, v4, :cond_34

    .line 378
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/vibrator/VibrationEffectSegment;

    .line 379
    instance-of v11, v4, Landroid/os/vibrator/StepSegment;

    if-eqz v11, :cond_26

    or-long/2addr v1, v9

    goto :goto_31

    .line 381
    :cond_26
    instance-of v9, v4, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v9, :cond_2c

    or-long/2addr v1, v7

    goto :goto_31

    .line 383
    :cond_2c
    instance-of v4, v4, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v4, :cond_31

    or-long/2addr v1, v5

    :cond_31
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 388
    :cond_34
    invoke-virtual {p0, v1, v2, v9, v10}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->requireMixedTriggerCapability(JJ)Z

    move-result p1

    if-eqz p1, :cond_3c

    const/16 v0, 0x10

    .line 391
    :cond_3c
    invoke-virtual {p0, v1, v2, v7, v8}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->requireMixedTriggerCapability(JJ)Z

    move-result p1

    if-eqz p1, :cond_44

    or-int/lit8 v0, v0, 0x20

    .line 394
    :cond_44
    invoke-virtual {p0, v1, v2, v5, v6}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->requireMixedTriggerCapability(JJ)Z

    move-result p0

    if-eqz p0, :cond_4c

    or-int/lit8 v0, v0, 0x40

    :cond_4c
    const-wide/16 p0, 0x1

    or-long/2addr p0, v1

    int-to-long v0, v0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public effectAt(I)Landroid/os/VibrationEffect$Composed;
    .registers 2

    .line 364
    iget-object p0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect$Composed;

    return-object p0
.end method

.method public getRequiredSyncCapabilities()J
    .registers 3

    .line 349
    iget-wide v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mRequiredSyncCapabilities:J

    return-wide v0
.end method

.method public getVibratorIds()[I
    .registers 1

    .line 354
    iget-object p0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    return-object p0
.end method

.method public final requireMixedTriggerCapability(JJ)Z
    .registers 9

    and-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_11

    not-long p3, p3

    and-long p0, p1, p3

    cmp-long p0, p0, v2

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public size()I
    .registers 1

    .line 340
    iget-object p0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    array-length p0, p0

    return p0
.end method

.method public vibratorIdAt(I)I
    .registers 2

    .line 359
    iget-object p0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0
.end method
