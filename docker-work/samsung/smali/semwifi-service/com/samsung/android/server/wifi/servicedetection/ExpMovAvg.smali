.class Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;
.super Ljava/lang/Object;
.source "SemTrafficTypeDet.java"


# instance fields
.field public dataCnt:I

.field private expFactor:F

.field private initMavLen:I

.field public mavResult:F


# direct methods
.method constructor <init>()V
    .registers 1

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method ExpMovAvg(IF)V
    .registers 4

    const/4 v0, 0x0

    .line 492
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->dataCnt:I

    .line 493
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->initMavLen:I

    .line 494
    iput p2, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->expFactor:F

    return-void
.end method

.method reset()V
    .registers 2

    const/4 v0, 0x0

    .line 498
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->dataCnt:I

    const/4 v0, 0x0

    .line 499
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->mavResult:F

    return-void
.end method

.method run(F)F
    .registers 5

    .line 504
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->dataCnt:I

    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->initMavLen:I

    if-ge v0, v1, :cond_12

    .line 505
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->mavResult:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    add-float/2addr v1, p1

    add-int/lit8 p1, v0, 0x1

    int-to-float p1, p1

    div-float/2addr v1, p1

    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->mavResult:F

    goto :goto_1e

    .line 508
    :cond_12
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->expFactor:F

    mul-float/2addr p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->mavResult:F

    mul-float/2addr v2, v1

    add-float/2addr p1, v2

    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->mavResult:F

    :goto_1e
    add-int/lit8 v0, v0, 0x1

    .line 510
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->dataCnt:I

    .line 512
    iget p0, p0, Lcom/samsung/android/server/wifi/servicedetection/ExpMovAvg;->mavResult:F

    return p0
.end method
