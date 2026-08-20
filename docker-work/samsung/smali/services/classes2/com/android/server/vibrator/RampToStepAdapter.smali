.class public final Lcom/android/server/vibrator/RampToStepAdapter;
.super Ljava/lang/Object;
.source "RampToStepAdapter.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationEffectAdapters$SegmentsAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/vibrator/VibrationEffectAdapters$SegmentsAdapter<",
        "Landroid/os/VibratorInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final mStepDuration:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/android/server/vibrator/RampToStepAdapter;->mStepDuration:I

    return-void
.end method

.method public static fillEmptyFrequency(Landroid/os/VibratorInfo;F)F
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_9

    .line 97
    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result p1

    :cond_9
    return p1
.end method


# virtual methods
.method public apply(Ljava/util/List;ILandroid/os/VibratorInfo;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I",
            "Landroid/os/VibratorInfo;",
            ")I"
        }
    .end annotation

    const-wide/16 v0, 0x400

    .line 46
    invoke-virtual {p3, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    if-eqz v0, :cond_9

    return p2

    .line 50
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_35

    .line 52
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    .line 53
    instance-of v3, v2, Landroid/os/vibrator/RampSegment;

    if-nez v3, :cond_1b

    goto :goto_32

    .line 56
    :cond_1b
    check-cast v2, Landroid/os/vibrator/RampSegment;

    invoke-virtual {p0, p3, v2}, Lcom/android/server/vibrator/RampToStepAdapter;->apply(Landroid/os/VibratorInfo;Landroid/os/vibrator/RampSegment;)Ljava/util/List;

    move-result-object v2

    .line 57
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 58
    invoke-interface {p1, v1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 59
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p2, v1, :cond_30

    add-int/2addr p2, v2

    :cond_30
    add-int/2addr v1, v2

    add-int/2addr v0, v2

    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_35
    return p2
.end method

.method public bridge synthetic apply(Ljava/util/List;ILjava/lang/Object;)I
    .registers 4

    .line 35
    check-cast p3, Landroid/os/VibratorInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/RampToStepAdapter;->apply(Ljava/util/List;ILandroid/os/VibratorInfo;)I

    move-result p0

    return p0
.end method

.method public final apply(Landroid/os/VibratorInfo;Landroid/os/vibrator/RampSegment;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibratorInfo;",
            "Landroid/os/vibrator/RampSegment;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/vibrator/StepSegment;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v0

    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/os/vibrator/StepSegment;

    .line 72
    new-instance v0, Landroid/os/vibrator/StepSegment;

    .line 73
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v2

    .line 74
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    move-result v3

    invoke-static {p1, v3}, Lcom/android/server/vibrator/RampToStepAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    move-result p1

    .line 75
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v3

    long-to-int p2, v3

    invoke-direct {v0, v2, p1, p2}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    aput-object v0, p0, v1

    .line 72
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 78
    :cond_2f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v2

    iget v4, p0, Lcom/android/server/vibrator/RampToStepAdapter;->mStepDuration:I

    int-to-long v5, v4

    add-long/2addr v2, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v2, v5

    long-to-int v2, v2

    div-int/2addr v2, v4

    :goto_41
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_75

    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 83
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    move-result v4

    invoke-static {p1, v4}, Lcom/android/server/vibrator/RampToStepAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    move-result v4

    .line 84
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v5

    invoke-static {p1, v5}, Lcom/android/server/vibrator/RampToStepAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    move-result v5

    .line 85
    new-instance v6, Landroid/os/vibrator/StepSegment;

    .line 86
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v7

    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v8

    invoke-static {v7, v8, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v7

    .line 87
    invoke-static {v4, v5, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    iget v4, p0, Lcom/android/server/vibrator/RampToStepAdapter;->mStepDuration:I

    invoke-direct {v6, v7, v3, v4}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    .line 85
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 90
    :cond_75
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v1

    long-to-int v1, v1

    iget p0, p0, Lcom/android/server/vibrator/RampToStepAdapter;->mStepDuration:I

    mul-int/2addr p0, v3

    sub-int/2addr v1, p0

    .line 91
    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result p0

    invoke-static {p1, p0}, Lcom/android/server/vibrator/RampToStepAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    move-result p0

    .line 92
    new-instance p1, Landroid/os/vibrator/StepSegment;

    invoke-virtual {p2}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result p2

    invoke-direct {p1, p2, p0, v1}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
