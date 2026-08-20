.class public Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessWeightStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AdaptiveBrightnessWeightStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeStatsCollector"
.end annotation


# instance fields
.field public final mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public final mBucketBoundaries:[F

.field public final mTimeStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

.field public final mTransientStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([FLcom/android/server/display/BrightnessMappingStrategy;)V
    .registers 6

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    .line 665
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    .line 667
    array-length p1, p1

    new-array p1, p1, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTimeStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    const/4 p1, 0x0

    .line 668
    :goto_12
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTimeStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    array-length v1, v0

    if-ge p1, v1, :cond_22

    .line 669
    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;-><init>(FF)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    .line 672
    :cond_22
    iput-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    return-void
.end method


# virtual methods
.method public getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    .registers 1

    .line 767
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTimeStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    return-object p0
.end method

.method public initTransientStats()V
    .registers 4

    .line 678
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 680
    :goto_6
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 681
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 682
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_18
    return-void
.end method

.method public summarize()V
    .registers 7

    const/4 v0, 0x0

    .line 747
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 754
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 755
    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v5

    add-float/2addr v3, v5

    .line 756
    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getBrightness()F

    move-result v5

    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v4

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    goto :goto_17

    :cond_33
    div-float/2addr v2, v3

    .line 762
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTimeStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->set(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 775
    :goto_c
    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    array-length v5, v4

    const/4 v6, 0x1

    if-ge v3, v5, :cond_29

    new-array v5, v6, [Ljava/lang/Object;

    .line 776
    aget v4, v4, v3

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%9d"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_29
    move v3, v2

    move v4, v3

    .line 780
    :goto_2b
    iget-object v5, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_45

    .line 781
    iget-object v5, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v4, :cond_42

    move v4, v5

    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_45
    move v3, v2

    :goto_46
    if-ge v3, v4, :cond_8b

    move v5, v2

    .line 788
    :goto_49
    iget-object v7, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_81

    .line 789
    iget-object v7, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 790
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const-string v9, "%9s"

    if-ge v3, v8, :cond_71

    new-array v8, v6, [Ljava/lang/Object;

    .line 792
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v8, v2

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7e

    :cond_71
    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "-"

    aput-object v8, v7, v2

    .line 794
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7e
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 797
    :cond_81
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 800
    :cond_8b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 801
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 803
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 805
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateTransientStats(FFFLandroid/util/Spline;)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 688
    iget-object v4, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    invoke-static {v1, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smgetBucketIndex(F[F)I

    move-result v4

    .line 689
    iget-object v5, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    aget v5, v5, v4

    .line 692
    invoke-static {v5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smgetLowerBoundary(F)F

    move-result v6

    .line 693
    invoke-static {v5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smgetUpperBoundary(F)F

    move-result v7

    .line 696
    iget-object v8, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    .line 697
    invoke-static {v6, v8}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smgetBucketIndex(F[F)I

    move-result v8

    iget-object v9, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x0

    .line 696
    invoke-static {v8, v10, v9}, Landroid/util/MathUtils;->constrain(III)I

    move-result v8

    .line 698
    iget-object v9, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    .line 699
    invoke-static {v7, v9}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smgetBucketIndex(F[F)I

    move-result v9

    iget-object v11, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    .line 698
    invoke-static {v9, v10, v11}, Landroid/util/MathUtils;->constrain(III)I

    move-result v9

    .line 701
    iget-object v10, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    aget v11, v10, v8

    cmpg-float v11, v11, v6

    if-gez v11, :cond_48

    .line 702
    array-length v11, v10

    add-int/lit8 v11, v11, -0x2

    if-gt v8, v11, :cond_48

    add-int/lit8 v8, v8, 0x1

    .line 706
    :cond_48
    aget v10, v10, v9

    cmpl-float v10, v10, v7

    if-lez v10, :cond_52

    if-lez v9, :cond_52

    add-int/lit8 v9, v9, -0x1

    .line 712
    :cond_52
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateTransientStats: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " < "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, "  b:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " t:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "s"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "AdaptiveBrightnessWeightStats"

    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8d
    if-gt v8, v9, :cond_fa

    .line 717
    iget-object v10, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 718
    iget-object v12, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v12, :cond_f3

    .line 719
    iget-object v13, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    aget v13, v13, v8

    move-object/from16 v14, p4

    .line 720
    invoke-static {v13, v14, v12}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smgetBrightnessForSpline(FLandroid/util/Spline;Lcom/android/server/display/BrightnessMappingStrategy;)F

    move-result v12

    if-ne v4, v8, :cond_d4

    .line 723
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateTransientStats: b: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " ambientLux:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " currentBucketLux:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " mBrightnessMapper: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_d4
    invoke-static {v13, v6, v5, v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smgetDistributionRatio(FFFF)F

    move-result v0

    .line 730
    invoke-static {v12, v10}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smfindBrightnessIndex(FLjava/util/ArrayList;)I

    move-result v13

    if-ltz v13, :cond_e9

    .line 733
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    mul-float/2addr v0, v3

    invoke-virtual {v10, v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->updateWeight(F)V

    goto :goto_f5

    .line 735
    :cond_e9
    new-instance v13, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    mul-float/2addr v0, v3

    invoke-direct {v13, v12, v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;-><init>(FF)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f5

    :cond_f3
    move-object/from16 v14, p4

    :goto_f5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto :goto_8d

    :cond_fa
    return-void
.end method
