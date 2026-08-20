.class Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;
.super Ljava/lang/Object;
.source "SemTrafficTypeDet.java"


# instance fields
.field private afterLastAnomaly:I

.field private anomaliesLifeCnt:[I

.field private anomalyCnt:I

.field private continuousAnomalyCnt:I

.field private continuousNoAnomalyCnt:I

.field private flagFirstAnomaly:I

.field private maxAnomalyLife:I

.field private maxNumAnomalies:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->maxNumAnomalies:I

    .line 586
    iput p2, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->maxAnomalyLife:I

    .line 587
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomaliesLifeCnt:[I

    const/4 p1, 0x0

    .line 588
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->continuousNoAnomalyCnt:I

    .line 589
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomalyCnt:I

    .line 590
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->flagFirstAnomaly:I

    .line 591
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->afterLastAnomaly:I

    .line 592
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->continuousAnomalyCnt:I

    return-void
.end method


# virtual methods
.method anomalyFound()[I
    .registers 5

    .line 636
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomaliesLifeCnt:[I

    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomalyCnt:I

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->maxAnomalyLife:I

    aput v2, v0, v1

    const/4 v0, 0x1

    add-int/2addr v1, v0

    .line 637
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomalyCnt:I

    .line 640
    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->flagFirstAnomaly:I

    const/4 v3, 0x0

    if-ne v2, v0, :cond_22

    .line 641
    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->afterLastAnomaly:I

    if-ne v2, v0, :cond_1d

    .line 642
    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->continuousAnomalyCnt:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->continuousAnomalyCnt:I

    .line 643
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->afterLastAnomaly:I

    goto :goto_26

    .line 646
    :cond_1d
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->continuousAnomalyCnt:I

    .line 647
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->afterLastAnomaly:I

    goto :goto_26

    .line 651
    :cond_22
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->flagFirstAnomaly:I

    .line 652
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->afterLastAnomaly:I

    .line 655
    :goto_26
    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->maxNumAnomalies:I

    if-lt v1, v2, :cond_2d

    .line 656
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->reset()V

    :cond_2d
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 660
    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomalyCnt:I

    aput v2, v1, v3

    .line 661
    iget p0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->continuousAnomalyCnt:I

    aput p0, v1, v0

    return-object v1
.end method

.method dataCheck()V
    .registers 7

    .line 608
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomaliesLifeCnt:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x1

    if-lez v0, :cond_39

    .line 609
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->continuousNoAnomalyCnt:I

    if-ne v0, v2, :cond_26

    .line 611
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomalyCnt:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomalyCnt:I

    move v0, v1

    .line 612
    :goto_12
    iget v3, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->maxNumAnomalies:I

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_3e

    .line 613
    iget-object v3, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomaliesLifeCnt:[I

    add-int/lit8 v4, v0, 0x1

    aget v5, v3, v4

    sub-int/2addr v5, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v3, v0

    move v0, v4

    goto :goto_12

    :cond_26
    move v0, v1

    .line 617
    :goto_27
    iget v3, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->maxNumAnomalies:I

    if-ge v0, v3, :cond_3e

    .line 618
    iget-object v3, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomaliesLifeCnt:[I

    aget v4, v3, v0

    sub-int/2addr v4, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 623
    :cond_39
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->continuousNoAnomalyCnt:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->continuousNoAnomalyCnt:I

    .line 627
    :cond_3e
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->afterLastAnomaly:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->afterLastAnomaly:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_48

    .line 629
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->continuousAnomalyCnt:I

    :cond_48
    return-void
.end method

.method reset()V
    .registers 4

    const/4 v0, 0x0

    .line 596
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->continuousNoAnomalyCnt:I

    .line 597
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomalyCnt:I

    .line 598
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->flagFirstAnomaly:I

    .line 599
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->afterLastAnomaly:I

    .line 600
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->continuousAnomalyCnt:I

    move v1, v0

    .line 601
    :goto_c
    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->maxNumAnomalies:I

    if-ge v1, v2, :cond_17

    .line 602
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/AnomalyDet;->anomaliesLifeCnt:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_17
    return-void
.end method
