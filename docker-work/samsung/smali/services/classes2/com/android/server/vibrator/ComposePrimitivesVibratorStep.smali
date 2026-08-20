.class public final Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "ComposePrimitivesVibratorStep.java"


# static fields
.field public static final DEFAULT_COMPOSITION_SIZE_LIMIT:I = 0x64


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .registers 18

    move-wide v0, p2

    move-wide/from16 v7, p7

    .line 46
    invoke-static {p2, p3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-void
.end method


# virtual methods
.method public play()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    const-wide/32 v0, 0x800000

    const-string v2, "ComposePrimitivesStep"

    .line 52
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 56
    :try_start_8
    iget-object v2, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getCompositionSizeMax()I

    move-result v2

    .line 57
    iget-object v3, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    if-lez v2, :cond_19

    goto :goto_1b

    :cond_19
    const/16 v2, 0x64

    :goto_1b
    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;->unrollPrimitiveSegments(Landroid/os/VibrationEffect$Composed;II)Ljava/util/List;

    move-result-object v2

    .line 60
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_50

    const-string v2, "VibrationThread"

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring wrong segment for a ComposePrimitivesStep: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 62
    invoke-virtual {v4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->segmentIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 63
    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/AbstractVibratorStep;->skipToNextSteps(I)Ljava/util/List;

    move-result-object p0
    :try_end_4c
    .catchall {:try_start_8 .. :try_end_4c} :catchall_76

    .line 76
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 70
    :cond_50
    :try_start_50
    iget-object v3, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 71
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/vibrator/PrimitiveSegment;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/vibrator/PrimitiveSegment;

    .line 72
    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/server/vibrator/Vibration;->id:J

    .line 70
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/vibrator/VibratorController;->on([Landroid/os/vibrator/PrimitiveSegment;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    .line 74
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/AbstractVibratorStep;->nextSteps(I)Ljava/util/List;

    move-result-object p0
    :try_end_72
    .catchall {:try_start_50 .. :try_end_72} :catchall_76

    .line 76
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_76
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 77
    throw p0
.end method

.method public final unrollPrimitiveSegments(Landroid/os/VibrationEffect$Composed;II)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibrationEffect$Composed;",
            "II)",
            "Ljava/util/List<",
            "Landroid/os/vibrator/PrimitiveSegment;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 97
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v1

    .line 99
    :goto_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, p3, :cond_32

    if-ne p2, v0, :cond_1c

    if-ltz v1, :cond_32

    move p2, v1

    .line 108
    :cond_1c
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    .line 109
    instance-of v3, v2, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v3, :cond_32

    .line 110
    check-cast v2, Landroid/os/vibrator/PrimitiveSegment;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_11

    :cond_32
    return-object p0
.end method
