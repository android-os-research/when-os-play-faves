.class public final Lcom/android/server/vibrator/Vibration$DebugInfo;
.super Ljava/lang/Object;
.source "Vibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/Vibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DebugInfo"
.end annotation


# instance fields
.field public final mAttrs:Landroid/os/VibrationAttributes;

.field public final mDurationMs:J

.field public final mEffect:Landroid/os/CombinedVibration;

.field public final mEndTimeDebug:J

.field public final mOpPkg:Ljava/lang/String;

.field public final mOriginalEffect:Landroid/os/CombinedVibration;

.field public final mReason:Ljava/lang/String;

.field public final mScale:F

.field public final mStartTimeDebug:J

.field public final mStatus:Lcom/android/server/vibrator/Vibration$Status;

.field public final mUid:I


# direct methods
.method public constructor <init>(JJJLandroid/os/CombinedVibration;Landroid/os/CombinedVibration;FLandroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 15

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-wide p1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStartTimeDebug:J

    .line 263
    iput-wide p3, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEndTimeDebug:J

    .line 264
    iput-wide p5, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mDurationMs:J

    .line 265
    iput-object p7, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEffect:Landroid/os/CombinedVibration;

    .line 266
    iput-object p8, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mOriginalEffect:Landroid/os/CombinedVibration;

    .line 267
    iput p9, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mScale:F

    .line 268
    iput-object p10, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mAttrs:Landroid/os/VibrationAttributes;

    .line 269
    iput p11, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mUid:I

    .line 270
    iput-object p12, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mOpPkg:Ljava/lang/String;

    .line 271
    iput-object p13, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mReason:Ljava/lang/String;

    .line 272
    iput-object p14, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    return-void
.end method


# virtual methods
.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Mono;)V
    .registers 7

    .line 355
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 356
    invoke-virtual {p4}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object p4

    const-wide v0, 0x20b00000001L

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/VibrationEffect;)V

    .line 357
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Sequential;)V
    .registers 10

    .line 338
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const/4 v0, 0x0

    .line 339
    :goto_5
    invoke-virtual {p4}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4a

    .line 340
    invoke-virtual {p4}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CombinedVibration;

    .line 341
    instance-of v2, v1, Landroid/os/CombinedVibration$Mono;

    const-wide v3, 0x20b00000001L

    if-eqz v2, :cond_28

    .line 342
    check-cast v1, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {p0, p1, v3, v4, v1}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Mono;)V

    goto :goto_31

    .line 344
    :cond_28
    instance-of v2, v1, Landroid/os/CombinedVibration$Stereo;

    if-eqz v2, :cond_31

    .line 345
    check-cast v1, Landroid/os/CombinedVibration$Stereo;

    invoke-virtual {p0, p1, v3, v4, v1}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Stereo;)V

    :cond_31
    :goto_31
    const-wide v1, 0x20500000002L

    .line 348
    invoke-virtual {p4}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 350
    :cond_4a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Stereo;)V
    .registers 9

    .line 362
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const/4 v0, 0x0

    .line 363
    :goto_5
    invoke-virtual {p4}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    const-wide v1, 0x20500000002L

    .line 364
    invoke-virtual {p4}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x20b00000001L

    .line 365
    invoke-virtual {p4}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/VibrationEffect;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 367
    :cond_34
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration;)V
    .registers 6

    .line 331
    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v0

    .line 332
    invoke-virtual {v0, p4}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object p4

    .line 333
    invoke-virtual {p4}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object p4

    check-cast p4, Landroid/os/CombinedVibration$Sequential;

    .line 330
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Sequential;)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/VibrationEffect;)V
    .registers 9

    .line 372
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 373
    check-cast p4, Landroid/os/VibrationEffect$Composed;

    .line 374
    invoke-virtual {p4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    const-wide v2, 0x10b00000001L

    .line 375
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/VibrationEffectSegment;)V

    goto :goto_e

    :cond_23
    const-wide v0, 0x10500000002L

    .line 377
    invoke-virtual {p4}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 378
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/PrebakedSegment;)V
    .registers 7

    .line 416
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 417
    invoke-virtual {p4}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result p0

    const-wide v0, 0x10500000001L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 418
    invoke-virtual {p4}, Landroid/os/vibrator/PrebakedSegment;->getEffectStrength()I

    move-result p0

    const-wide v0, 0x10500000002L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 419
    invoke-virtual {p4}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result p0

    const-wide v0, 0x10500000003L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 420
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/PrimitiveSegment;)V
    .registers 7

    .line 425
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 426
    invoke-virtual {p4}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result p0

    const-wide v0, 0x10500000001L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 427
    invoke-virtual {p4}, Landroid/os/vibrator/PrimitiveSegment;->getScale()F

    move-result p0

    const-wide v0, 0x10200000002L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 428
    invoke-virtual {p4}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result p0

    const-wide v0, 0x10500000003L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 429
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/RampSegment;)V
    .registers 9

    .line 405
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 406
    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 407
    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result p0

    const-wide v0, 0x10200000002L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 408
    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result p0

    const-wide v0, 0x10200000003L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 409
    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    move-result p0

    const-wide v0, 0x10200000004L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 410
    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result p0

    const-wide v0, 0x10200000005L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 411
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/StepSegment;)V
    .registers 9

    .line 397
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 398
    invoke-virtual {p4}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 399
    invoke-virtual {p4}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result p0

    const-wide v0, 0x10200000002L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 400
    invoke-virtual {p4}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result p0

    const-wide v0, 0x10200000003L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 401
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/VibrationEffectSegment;)V
    .registers 7

    .line 383
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 384
    instance-of v0, p4, Landroid/os/vibrator/StepSegment;

    if-eqz v0, :cond_13

    const-wide v0, 0x10b00000003L

    .line 385
    check-cast p4, Landroid/os/vibrator/StepSegment;

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/StepSegment;)V

    goto :goto_3f

    .line 386
    :cond_13
    instance-of v0, p4, Landroid/os/vibrator/RampSegment;

    if-eqz v0, :cond_22

    const-wide v0, 0x10b00000004L

    .line 387
    check-cast p4, Landroid/os/vibrator/RampSegment;

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/RampSegment;)V

    goto :goto_3f

    .line 388
    :cond_22
    instance-of v0, p4, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v0, :cond_31

    const-wide v0, 0x10b00000001L

    .line 389
    check-cast p4, Landroid/os/vibrator/PrebakedSegment;

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/PrebakedSegment;)V

    goto :goto_3f

    .line 390
    :cond_31
    instance-of v0, p4, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v0, :cond_3f

    const-wide v0, 0x10b00000002L

    .line 391
    check-cast p4, Landroid/os/vibrator/PrimitiveSegment;

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/PrimitiveSegment;)V

    .line 393
    :cond_3f
    :goto_3f
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    .line 306
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 307
    iget-wide v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStartTimeDebug:J

    const-wide v2, 0x10300000001L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 308
    iget-wide v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEndTimeDebug:J

    const-wide v2, 0x10300000002L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 309
    iget-wide v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mDurationMs:J

    const-wide v2, 0x10300000007L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 310
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-wide v1, 0x10500000006L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10b00000005L

    .line 312
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 313
    iget-object v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mAttrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 314
    iget-object v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mAttrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getAudioUsage()I

    move-result v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 315
    iget-object v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mAttrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v2

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 316
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 318
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEffect:Landroid/os/CombinedVibration;

    if-eqz v0, :cond_72

    const-wide v1, 0x10b00000003L

    .line 319
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration;)V

    .line 321
    :cond_72
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mOriginalEffect:Landroid/os/CombinedVibration;

    if-eqz v0, :cond_7e

    const-wide v1, 0x10b00000004L

    .line 322
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration;)V

    .line 325
    :cond_7e
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startTime: "

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/vibrator/Vibration;->-$$Nest$sfgetDEBUG_DATE_FORMAT()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStartTimeDebug:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 279
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endTime: "

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEndTimeDebug:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2c

    const/4 v1, 0x0

    goto :goto_3b

    .line 282
    :cond_2c
    invoke-static {}, Lcom/android/server/vibrator/Vibration;->-$$Nest$sfgetDEBUG_DATE_FORMAT()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEndTimeDebug:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 281
    :goto_3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", durationMs: "

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mDurationMs:J

    .line 284
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", status: "

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 286
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", effect: "

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEffect:Landroid/os/CombinedVibration;

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originalEffect: "

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mOriginalEffect:Landroid/os/CombinedVibration;

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scale: "

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mScale:F

    .line 292
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%.2f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", attrs: "

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mAttrs:Landroid/os/VibrationAttributes;

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uid: "

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mUid:I

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", opPkg: "

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mOpPkg:Ljava/lang/String;

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason: "

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mReason:Ljava/lang/String;

    .line 300
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
