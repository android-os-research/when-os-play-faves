.class Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener$SensorDCMListener;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorDCMListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener$SensorDCMListener-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener$SensorDCMListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .line 1662
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 1666
    return-void
.end method
