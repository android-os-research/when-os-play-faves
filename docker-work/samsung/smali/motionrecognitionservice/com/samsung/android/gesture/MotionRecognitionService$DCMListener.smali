.class final Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DCMListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener$SensorDCMListener;
    }
.end annotation


# instance fields
.field public mDCMListener:Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener$SensorDCMListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1656
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener$SensorDCMListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener$SensorDCMListener;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener$SensorDCMListener-IA;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener;->mDCMListener:Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener$SensorDCMListener;

    .line 1657
    return-void
.end method
