.class public Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessWeightStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContinuityCalculator"
.end annotation


# instance fields
.field public mBrightness:F

.field public mContinuity:F

.field public mLux:F

.field public mSb:Ljava/lang/StringBuilder;

.field public mSimilarity:F

.field public mTimeDuration:F

.field public final synthetic this$0:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;)V
    .registers 2

    .line 1149
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->this$0:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 1150
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mTimeDuration:F

    .line 1151
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mSimilarity:F

    .line 1152
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mLux:F

    .line 1153
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mBrightness:F

    .line 1154
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mContinuity:F

    .line 1156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mSb:Ljava/lang/StringBuilder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;-><init>(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;)V

    return-void
.end method


# virtual methods
.method public calculate()V
    .registers 5

    .line 1159
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mTimeDuration:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b2

    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mSimilarity:F

    .line 1160
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b2

    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mSimilarity:F

    const/4 v1, 0x0

    .line 1161
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_b2

    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mLux:F

    .line 1162
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b2

    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mBrightness:F

    .line 1163
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto/16 :goto_b2

    .line 1173
    :cond_2b
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mTimeDuration:F

    cmpg-float v2, v1, v0

    if-gez v2, :cond_3e

    const/high16 v2, 0x45610000    # 3600.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3e

    const v1, -0x46ee5d4c

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    .line 1179
    :cond_3e
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->this$0:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    invoke-static {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->-$$Nest$fgetmTotalStats(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;)[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mLux:F

    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->this$0:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    invoke-static {v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->-$$Nest$fgetmBucketBoundaries(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;)[F

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smgetBucketIndex(F[F)I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getWeight()F

    move-result v0

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v0, v2

    .line 1181
    iget v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mSimilarity:F

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x46610000    # 14400.0f

    mul-float/2addr v2, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mContinuity:F

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContinuityCalculator.calculate(): mContinuity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mContinuity:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mLux: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mLux:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mBrightness: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mBrightness:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mSimilarity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mSimilarity:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " timeFactor: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mSb:Ljava/lang/StringBuilder;

    .line 1188
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AdaptiveBrightnessWeightStats"

    .line 1184
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b2
    :goto_b2
    return-void
.end method
