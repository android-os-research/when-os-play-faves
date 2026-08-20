.class public Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessWeightStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AdaptiveBrightnessWeightStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeightStat"
.end annotation


# instance fields
.field public mBrightness:F

.field public mWeight:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mBrightness:F

    .line 617
    iput p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    return-void
.end method


# virtual methods
.method public getBrightness()F
    .registers 1

    .line 632
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mBrightness:F

    return p0
.end method

.method public getWeight()F
    .registers 1

    .line 636
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    return p0
.end method

.method public set(FF)V
    .registers 3

    .line 627
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mBrightness:F

    .line 628
    iput p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 647
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v1, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_19

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "%.1f"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_54

    :cond_19
    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v1, v0, v1

    const-string v4, "%d"

    if-gez v1, :cond_2f

    new-array v1, v2, [Ljava/lang/Object;

    float-to-int v0, v0

    .line 648
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_54

    :cond_2f
    const/high16 v1, 0x447a0000    # 1000.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_43

    new-array v1, v2, [Ljava/lang/Object;

    float-to-int v0, v0

    .line 649
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_54

    :cond_43
    new-array v1, v2, [Ljava/lang/Object;

    const/high16 v2, 0x45610000    # 3600.0f

    div-float/2addr v0, v2

    .line 650
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "%.1fh"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 652
    :goto_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mBrightness:F

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateWeight(F)V
    .registers 3

    .line 623
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    return-void
.end method

.method public valid()Z
    .registers 2

    .line 640
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_12

    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method
