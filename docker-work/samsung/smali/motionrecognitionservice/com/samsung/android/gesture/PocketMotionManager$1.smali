.class Lcom/samsung/android/gesture/PocketMotionManager$1;
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

    .line 136
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketMotionManager$1;->this$0:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 159
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 139
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager$1;->this$0:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->-$$Nest$fgetaccRaw(Lcom/samsung/android/gesture/PocketMotionManager;)[[D

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketMotionManager$1;->this$0:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-static {v1}, Lcom/samsung/android/gesture/PocketMotionManager;->-$$Nest$fgetaccIndex(Lcom/samsung/android/gesture/PocketMotionManager;)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-double v3, v1

    aput-wide v3, v0, v2

    .line 140
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager$1;->this$0:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->-$$Nest$fgetaccRaw(Lcom/samsung/android/gesture/PocketMotionManager;)[[D

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketMotionManager$1;->this$0:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-static {v1}, Lcom/samsung/android/gesture/PocketMotionManager;->-$$Nest$fgetaccIndex(Lcom/samsung/android/gesture/PocketMotionManager;)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v1, v1, v3

    float-to-double v4, v1

    aput-wide v4, v0, v3

    .line 141
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager$1;->this$0:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->-$$Nest$fgetaccRaw(Lcom/samsung/android/gesture/PocketMotionManager;)[[D

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketMotionManager$1;->this$0:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-static {v1}, Lcom/samsung/android/gesture/PocketMotionManager;->-$$Nest$fgetaccIndex(Lcom/samsung/android/gesture/PocketMotionManager;)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v1, v1, v4

    float-to-double v5, v1

    aput-wide v5, v0, v4

    .line 143
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager$1;->this$0:Lcom/samsung/android/gesture/PocketMotionManager;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    float-to-double v4, v1

    invoke-static {v0, v4, v5}, Lcom/samsung/android/gesture/PocketMotionManager;->-$$Nest$fputaccYData(Lcom/samsung/android/gesture/PocketMotionManager;D)V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager$1;->this$0:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->calcAccLPF()V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager$1;->this$0:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->calcAccTilt()V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager$1;->this$0:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->calcAngle()V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager$1;->this$0:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->-$$Nest$fgetaccIndex(Lcom/samsung/android/gesture/PocketMotionManager;)I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketMotionManager;->-$$Nest$fputaccIndex(Lcom/samsung/android/gesture/PocketMotionManager;I)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager$1;->this$0:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->-$$Nest$fgetaccIndex(Lcom/samsung/android/gesture/PocketMotionManager;)I

    move-result v0

    const/16 v1, 0x24

    if-lt v0, v1, :cond_79

    .line 151
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager$1;->this$0:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/PocketMotionManager;->-$$Nest$fputaccIndex(Lcom/samsung/android/gesture/PocketMotionManager;I)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketMotionManager$1;->this$0:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-static {v0, v3}, Lcom/samsung/android/gesture/PocketMotionManager;->-$$Nest$fputisAccDataBufferFull(Lcom/samsung/android/gesture/PocketMotionManager;Z)V

    .line 155
    :cond_79
    return-void
.end method
