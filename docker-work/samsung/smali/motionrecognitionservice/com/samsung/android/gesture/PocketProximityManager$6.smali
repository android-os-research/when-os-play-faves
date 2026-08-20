.class Lcom/samsung/android/gesture/PocketProximityManager$6;
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

    .line 765
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketProximityManager$6;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 788
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 769
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager$6;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fputphysicalProx(Lcom/samsung/android/gesture/PocketProximityManager;F)V

    .line 770
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSensorChanged : physicalProxVal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager$6;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetphysicalProx(Lcom/samsung/android/gesture/PocketProximityManager;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager$6;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_69

    .line 773
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager$6;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetisRunningPhysicalProxySensorForA71_5g(Lcom/samsung/android/gesture/PocketProximityManager;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_69

    .line 774
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager$6;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetphysicalProx(Lcom/samsung/android/gesture/PocketProximityManager;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5b

    .line 775
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager$6;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateOut()V

    .line 776
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "physicalProx out"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager$6;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterPhysicalProximitySensorForA71_5g()V

    .line 779
    :cond_5b
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager$6;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetwakeUpReason(Lcom/samsung/android/gesture/PocketProximityManager;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_69

    .line 780
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketProximityManager$6;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterPhysicalProximitySensorForA71_5g()V

    .line 784
    :cond_69
    return-void
.end method
