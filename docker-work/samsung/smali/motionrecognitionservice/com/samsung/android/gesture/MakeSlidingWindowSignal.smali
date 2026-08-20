.class Lcom/samsung/android/gesture/MakeSlidingWindowSignal;
.super Ljava/lang/Object;
.source "ElevatorModeEvent.java"


# static fields
.field static final winSizeForMean:I = 0xc


# instance fields
.field firstCallForMean:Z

.field idx:I

.field mean:F

.field windowForMean:[F


# direct methods
.method constructor <init>()V
    .registers 2

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->firstCallForMean:Z

    .line 491
    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->windowForMean:[F

    return-void
.end method


# virtual methods
.method LPF_meanWindow(FI)F
    .registers 7
    .param p1, "input"    # F
    .param p2, "winSize"    # I

    .line 495
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->firstCallForMean:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->idx:I

    if-ne v0, p2, :cond_b

    .line 496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->firstCallForMean:Z

    .line 499
    :cond_b
    iget v0, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->idx:I

    rem-int/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->idx:I

    .line 500
    iget-object v1, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->windowForMean:[F

    aget v2, v1, v0

    .line 501
    .local v2, "prevData":F
    aput p1, v1, v0

    .line 503
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->firstCallForMean:Z

    if-eqz v1, :cond_26

    .line 504
    iget v1, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->mean:F

    int-to-float v3, v0

    mul-float/2addr v1, v3

    add-float/2addr v1, p1

    add-int/lit8 v3, v0, 0x1

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->mean:F

    goto :goto_30

    .line 507
    :cond_26
    iget v1, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->mean:F

    int-to-float v3, p2

    mul-float/2addr v1, v3

    sub-float/2addr v1, v2

    add-float/2addr v1, p1

    int-to-float v3, p2

    div-float/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->mean:F

    .line 509
    :goto_30
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->idx:I

    .line 511
    iget v0, p0, Lcom/samsung/android/gesture/MakeSlidingWindowSignal;->mean:F

    return v0
.end method
