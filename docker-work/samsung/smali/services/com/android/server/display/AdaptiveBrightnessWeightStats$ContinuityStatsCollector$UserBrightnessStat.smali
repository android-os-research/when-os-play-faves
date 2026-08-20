.class public Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessWeightStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserBrightnessStat"
.end annotation


# instance fields
.field public final mAdjustment:F

.field public final mBrightness:F

.field public final mLowerBoundary:F

.field public final mLux:F

.field public mPostTimeDuration:F

.field public final mPreTimeDuration:F

.field public final mSpline:Landroid/util/Spline;

.field public final mUpperBoundary:F


# direct methods
.method public constructor <init>(FFFLandroid/util/Spline;F)V
    .registers 7

    .line 1204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1199
    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mPostTimeDuration:F

    .line 1205
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLux:F

    .line 1206
    iput p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mBrightness:F

    .line 1207
    iput-object p4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mSpline:Landroid/util/Spline;

    .line 1208
    iput p3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mAdjustment:F

    .line 1210
    invoke-static {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smgetLowerBoundary(F)F

    move-result p2

    iput p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLowerBoundary:F

    .line 1211
    invoke-static {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smgetUpperBoundary(F)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mUpperBoundary:F

    .line 1213
    iput p5, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mPreTimeDuration:F

    return-void
.end method


# virtual methods
.method public getAdjustment()F
    .registers 1

    .line 1249
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mAdjustment:F

    return p0
.end method

.method public getBrightness()F
    .registers 1

    .line 1233
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mBrightness:F

    return p0
.end method

.method public getLux()F
    .registers 1

    .line 1229
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLux:F

    return p0
.end method

.method public getPostTimeDuration()F
    .registers 1

    .line 1241
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mPostTimeDuration:F

    return p0
.end method

.method public getPreTimeDuration()F
    .registers 1

    .line 1237
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mPreTimeDuration:F

    return p0
.end method

.method public getSpline()Landroid/util/Spline;
    .registers 1

    .line 1245
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mSpline:Landroid/util/Spline;

    return-object p0
.end method

.method public isInSameBoundary(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;)Z
    .registers 3

    .line 1217
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLowerBoundary:F

    iget p1, p1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLux:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_10

    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mUpperBoundary:F

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1254
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mBrightness:F

    iget v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mAdjustment:F

    sub-float/2addr v0, v1

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    .line 1257
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mBrightness:F

    .line 1258
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mAdjustment:F

    .line 1259
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLowerBoundary:F

    .line 1260
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLux:F

    .line 1261
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mUpperBoundary:F

    .line 1262
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v1, v2

    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mPreTimeDuration:F

    .line 1263
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x6

    aput-object v0, v1, v2

    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mPostTimeDuration:F

    .line 1264
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v0, 0x7

    aput-object p0, v1, v0

    const-string p0, "%5.1f -> %5.1f (%+6.1f) @ [%6.1f < %6.1f < %6.1f]  (%.1fs : %.1fs)"

    .line 1256
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updatePostTimeDuration(F)V
    .registers 3

    .line 1225
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mPostTimeDuration:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mPostTimeDuration:F

    return-void
.end method
