.class Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;
.super Ljava/lang/Object;
.source "SemTrafficTypeDet.java"


# instance fields
.field private dataBuffer:[F

.field public dataCnt:J

.field private dataIdx:I

.field public mavResult:F

.field private winLen:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->winLen:I

    const/4 v0, 0x0

    .line 530
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    const/4 v0, 0x0

    .line 531
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataIdx:I

    const-wide/16 v0, 0x0

    .line 532
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    .line 533
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataBuffer:[F

    return-void
.end method


# virtual methods
.method reset()V
    .registers 4

    const/4 v0, 0x0

    .line 537
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    const-wide/16 v1, 0x0

    .line 538
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    const/4 v1, 0x0

    .line 539
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataIdx:I

    .line 540
    :goto_a
    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->winLen:I

    if-ge v1, v2, :cond_15

    .line 541
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataBuffer:[F

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_15
    return-void
.end method

.method run(F)F
    .registers 9

    .line 546
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->winLen:I

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-gez v3, :cond_1f

    .line 547
    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    iget v3, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataIdx:I

    int-to-float v4, v3

    mul-float/2addr v2, v4

    add-float/2addr v2, p1

    add-int/lit8 v4, v3, 0x1

    int-to-float v4, v4

    div-float/2addr v2, v4

    iput v2, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 548
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataBuffer:[F

    aput p1, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 549
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataIdx:I

    goto :goto_4d

    .line 552
    :cond_1f
    iget v3, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataIdx:I

    if-lt v3, v2, :cond_39

    .line 554
    iget v3, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    int-to-float v4, v2

    mul-float/2addr v3, v4

    add-float/2addr v3, p1

    iget-object v4, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataBuffer:[F

    const/4 v5, 0x0

    aget v6, v4, v5

    sub-float/2addr v3, v6

    int-to-float v2, v2

    div-float/2addr v3, v2

    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 555
    aput p1, v4, v5

    add-int/lit8 v5, v5, 0x1

    .line 556
    iput v5, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataIdx:I

    goto :goto_4d

    .line 558
    :cond_39
    iget v4, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    add-float/2addr v4, p1

    iget-object v5, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataBuffer:[F

    aget v6, v5, v3

    sub-float/2addr v4, v6

    int-to-float v2, v2

    div-float/2addr v4, v2

    iput v4, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    .line 559
    aput p1, v5, v3

    add-int/lit8 v3, v3, 0x1

    .line 560
    iput v3, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataIdx:I

    :goto_4d
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 564
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->dataCnt:J

    .line 565
    iget p0, p0, Lcom/samsung/android/server/wifi/servicedetection/MovAvgWindow;->mavResult:F

    return p0
.end method
