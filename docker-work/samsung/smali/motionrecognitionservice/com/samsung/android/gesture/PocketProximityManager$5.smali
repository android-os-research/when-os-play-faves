.class Lcom/samsung/android/gesture/PocketProximityManager$5;
.super Ljava/lang/Object;
.source "PocketProximityManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/PocketProximityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/PocketProximityManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/PocketProximityManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gesture/PocketProximityManager;

    .line 731
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketProximityManager$5;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 745
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 735
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager$5;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fputphysicalProx(Lcom/samsung/android/gesture/PocketProximityManager;F)V

    .line 736
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSensorChanged : physicalProxVal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager$5;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetphysicalProx(Lcom/samsung/android/gesture/PocketProximityManager;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager$5;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3c

    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager$5;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_41

    .line 739
    :cond_3c
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager$5;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterPhysicalProximitySensor()V

    .line 741
    :cond_41
    return-void
.end method
