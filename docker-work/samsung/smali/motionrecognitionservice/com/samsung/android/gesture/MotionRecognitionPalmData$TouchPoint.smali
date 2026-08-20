.class Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;
.super Ljava/lang/Object;
.source "MotionRecognitionPalmData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionPalmData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchPoint"
.end annotation


# instance fields
.field major:F

.field minor:F

.field x:F

.field y:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;->x:F

    .line 286
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;->y:F

    .line 287
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;->major:F

    .line 288
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;->minor:F

    .line 289
    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 5
    .param p1, "inX"    # F
    .param p2, "inY"    # F
    .param p3, "inMajor"    # F
    .param p4, "inMinor"    # F

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;->x:F

    .line 279
    iput p2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;->y:F

    .line 280
    iput p3, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;->major:F

    .line 281
    iput p4, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmData$TouchPoint;->minor:F

    .line 282
    return-void
.end method
