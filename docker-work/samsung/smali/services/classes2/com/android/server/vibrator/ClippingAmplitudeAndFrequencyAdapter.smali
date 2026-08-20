.class public final Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;
.super Ljava/lang/Object;
.source "ClippingAmplitudeAndFrequencyAdapter.java"

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


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2b

    .line 42
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    .line 43
    instance-of v3, v2, Landroid/os/vibrator/StepSegment;

    if-eqz v3, :cond_1b

    .line 44
    check-cast v2, Landroid/os/vibrator/StepSegment;

    invoke-virtual {p0, v2, p3}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->apply(Landroid/os/vibrator/StepSegment;Landroid/os/VibratorInfo;)Landroid/os/vibrator/StepSegment;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 45
    :cond_1b
    instance-of v3, v2, Landroid/os/vibrator/RampSegment;

    if-eqz v3, :cond_28

    .line 46
    check-cast v2, Landroid/os/vibrator/RampSegment;

    invoke-virtual {p0, v2, p3}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->apply(Landroid/os/vibrator/RampSegment;Landroid/os/VibratorInfo;)Landroid/os/vibrator/RampSegment;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_28
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2b
    return p2
.end method

.method public bridge synthetic apply(Ljava/util/List;ILjava/lang/Object;)I
    .registers 4

    .line 35
    check-cast p3, Landroid/os/VibratorInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->apply(Ljava/util/List;ILandroid/os/VibratorInfo;)I

    move-result p0

    return p0
.end method

.method public final apply(Landroid/os/vibrator/RampSegment;Landroid/os/VibratorInfo;)Landroid/os/vibrator/RampSegment;
    .registers 10

    .line 61
    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampFrequency(Landroid/os/VibratorInfo;F)F

    move-result v4

    .line 62
    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampFrequency(Landroid/os/VibratorInfo;F)F

    move-result v5

    .line 63
    new-instance v0, Landroid/os/vibrator/RampSegment;

    .line 64
    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v1

    invoke-virtual {p0, p2, v4, v1}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampAmplitude(Landroid/os/VibratorInfo;FF)F

    move-result v2

    .line 65
    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v1

    invoke-virtual {p0, p2, v5, v1}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampAmplitude(Landroid/os/VibratorInfo;FF)F

    move-result v3

    .line 68
    invoke-virtual {p1}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide p0

    long-to-int v6, p0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    return-object v0
.end method

.method public final apply(Landroid/os/vibrator/StepSegment;Landroid/os/VibratorInfo;)Landroid/os/vibrator/StepSegment;
    .registers 6

    .line 53
    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampFrequency(Landroid/os/VibratorInfo;F)F

    move-result v0

    .line 54
    new-instance v1, Landroid/os/vibrator/StepSegment;

    .line 55
    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v2

    invoke-virtual {p0, p2, v0, v2}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampAmplitude(Landroid/os/VibratorInfo;FF)F

    move-result p0

    .line 57
    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide p1

    long-to-int p1, p1

    invoke-direct {v1, p0, v0, p1}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    return-object v1
.end method

.method public final clampAmplitude(Landroid/os/VibratorInfo;FF)F
    .registers 4

    .line 80
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object p0

    .line 81
    invoke-virtual {p0}, Landroid/os/VibratorInfo$FrequencyProfile;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    return p3

    .line 86
    :cond_b
    invoke-virtual {p0, p2}, Landroid/os/VibratorInfo$FrequencyProfile;->getMaxAmplitude(F)F

    move-result p0

    invoke-static {p3, p0}, Landroid/util/MathUtils;->min(FF)F

    move-result p0

    return p0
.end method

.method public final clampFrequency(Landroid/os/VibratorInfo;F)F
    .registers 4

    .line 72
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object p0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1f

    if-nez p0, :cond_10

    goto :goto_1f

    .line 76
    :cond_10
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    .line 74
    :cond_1f
    :goto_1f
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result p0

    return p0
.end method
