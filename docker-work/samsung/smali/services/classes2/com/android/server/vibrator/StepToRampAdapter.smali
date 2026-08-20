.class public final Lcom/android/server/vibrator/StepToRampAdapter;
.super Ljava/lang/Object;
.source "StepToRampAdapter.java"

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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertStepToRamp(Landroid/os/VibratorInfo;Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;
    .registers 9

    .line 109
    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/vibrator/StepToRampAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    move-result v5

    .line 110
    new-instance p0, Landroid/os/vibrator/RampSegment;

    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v3

    .line 111
    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v0

    long-to-int v6, v0

    move-object v1, p0

    move v4, v5

    invoke-direct/range {v1 .. v6}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    return-object p0
.end method

.method public static fillEmptyFrequency(Landroid/os/VibratorInfo;F)F
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_9

    .line 151
    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result p1

    :cond_9
    return p1
.end method

.method public static isStep(Landroid/os/vibrator/VibrationEffectSegment;)Z
    .registers 1

    .line 147
    instance-of p0, p0, Landroid/os/vibrator/StepSegment;

    return p0
.end method

.method public static splitRampSegment(Landroid/os/VibratorInfo;Landroid/os/vibrator/RampSegment;I)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibratorInfo;",
            "Landroid/os/vibrator/RampSegment;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/vibrator/RampSegment;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/vibrator/StepToRampAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    move-result v3

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/vibrator/StepToRampAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    move-result v9

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v4

    int-to-long v6, v1

    div-long/2addr v4, v6

    .line 120
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v0

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    move v11, v0

    move v13, v3

    :goto_28
    if-ge v6, v1, :cond_57

    add-long/2addr v7, v4

    long-to-float v0, v7

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v14

    long-to-float v10, v14

    div-float/2addr v0, v10

    .line 128
    invoke-static {v3, v9, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v14

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v12

    invoke-static {v10, v12, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v12

    .line 131
    new-instance v0, Landroid/os/vibrator/RampSegment;

    long-to-int v15, v4

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    .line 135
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {v0}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v11

    .line 137
    invoke-virtual {v0}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v13

    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 140
    :cond_57
    new-instance v0, Landroid/os/vibrator/RampSegment;

    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v1

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v3

    sub-long/2addr v3, v7

    long-to-int v10, v3

    move-object v5, v0

    move v6, v11

    move v7, v1

    move v8, v13

    invoke-direct/range {v5 .. v10}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    .line 140
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method


# virtual methods
.method public apply(Ljava/util/List;ILandroid/os/VibratorInfo;)I
    .registers 6
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

    .line 41
    invoke-virtual {p3, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    if-nez v0, :cond_9

    return p2

    .line 45
    :cond_9
    invoke-virtual {p0, p3, p1}, Lcom/android/server/vibrator/StepToRampAdapter;->convertStepsToRamps(Landroid/os/VibratorInfo;Ljava/util/List;)V

    .line 46
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/vibrator/StepToRampAdapter;->splitLongRampSegments(Landroid/os/VibratorInfo;Ljava/util/List;I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic apply(Ljava/util/List;ILjava/lang/Object;)I
    .registers 4

    .line 36
    check-cast p3, Landroid/os/VibratorInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/StepToRampAdapter;->apply(Ljava/util/List;ILandroid/os/VibratorInfo;)I

    move-result p0

    return p0
.end method

.method public final convertStepsToRamps(Landroid/os/VibratorInfo;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibratorInfo;",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, p0, :cond_29

    .line 54
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    .line 55
    invoke-static {v2}, Lcom/android/server/vibrator/StepToRampAdapter;->isStep(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v3

    if-eqz v3, :cond_26

    check-cast v2, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v2}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_26

    .line 56
    invoke-static {p1, v2}, Lcom/android/server/vibrator/StepToRampAdapter;->convertStepToRamp(Landroid/os/VibratorInfo;Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_29
    :goto_29
    if-ge v0, p0, :cond_76

    .line 62
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/os/vibrator/RampSegment;

    if-eqz v1, :cond_73

    add-int/lit8 v1, v0, -0x1

    :goto_35
    if-ltz v1, :cond_53

    .line 63
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v2}, Lcom/android/server/vibrator/StepToRampAdapter;->isStep(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 64
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/StepSegment;

    invoke-static {p1, v2}, Lcom/android/server/vibrator/StepToRampAdapter;->convertStepToRamp(Landroid/os/VibratorInfo;Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_35

    :cond_53
    add-int/lit8 v1, v0, 0x1

    :goto_55
    if-ge v1, p0, :cond_73

    .line 66
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v2}, Lcom/android/server/vibrator/StepToRampAdapter;->isStep(Landroid/os/vibrator/VibrationEffectSegment;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 67
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/StepSegment;

    invoke-static {p1, v2}, Lcom/android/server/vibrator/StepToRampAdapter;->convertStepToRamp(Landroid/os/VibratorInfo;Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    :cond_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_76
    return-void
.end method

.method public final splitLongRampSegments(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibratorInfo;",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I)I"
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getPwlePrimitiveDurationMax()I

    move-result p0

    if-gtz p0, :cond_7

    return p3

    .line 85
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_3c

    .line 87
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/os/vibrator/RampSegment;

    const/4 v3, 0x1

    if-nez v2, :cond_18

    goto :goto_3a

    .line 90
    :cond_18
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/RampSegment;

    .line 91
    invoke-virtual {v2}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v4

    long-to-int v4, v4

    add-int/2addr v4, p0

    sub-int/2addr v4, v3

    div-int/2addr v4, p0

    if-gt v4, v3, :cond_29

    goto :goto_3a

    .line 95
    :cond_29
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 96
    invoke-static {p1, v2, v4}, Lcom/android/server/vibrator/StepToRampAdapter;->splitRampSegment(Landroid/os/VibratorInfo;Landroid/os/vibrator/RampSegment;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    add-int/lit8 v4, v4, -0x1

    if-le p3, v1, :cond_38

    add-int/2addr p3, v4

    :cond_38
    add-int/2addr v1, v4

    add-int/2addr v0, v4

    :goto_3a
    add-int/2addr v1, v3

    goto :goto_c

    :cond_3c
    return p3
.end method
