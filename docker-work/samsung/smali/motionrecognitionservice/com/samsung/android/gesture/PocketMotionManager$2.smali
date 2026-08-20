.class Lcom/samsung/android/gesture/PocketMotionManager$2;
.super Ljava/lang/Object;
.source "PocketMotionManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/PocketMotionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/PocketMotionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/PocketMotionManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gesture/PocketMotionManager;

    .line 252
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketMotionManager$2;->this$0:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 263
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 255
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    .line 256
    .local v0, "tiltData":I
    invoke-static {}, Lcom/samsung/android/gesture/PocketMotionManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tilt is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 258
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketMotionManager$2;->this$0:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/gesture/PocketMotionManager;->setTiltDetectorFlag(Z)V

    .line 259
    :cond_28
    return-void
.end method
