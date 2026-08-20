.class Lcom/samsung/android/gesture/PocketProximityManager$7;
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

    .line 807
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketProximityManager$7;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 825
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 810
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 811
    .local v0, "mProx":F
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSensorChanged : proxVal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager$7;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxDelayTime(J)V

    .line 814
    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v2, v0, v2

    if-nez v2, :cond_34

    .line 815
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager$7;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateOut()V

    goto :goto_3f

    .line 816
    :cond_34
    const/high16 v2, 0x41300000    # 11.0f

    cmpl-float v2, v0, v2

    if-nez v2, :cond_3f

    .line 817
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager$7;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateIn()V

    .line 818
    :cond_3f
    :goto_3f
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_58

    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/gesture/PocketDeviceManager;->setScreenOnTime(J)V

    .line 819
    :cond_58
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    .line 821
    return-void
.end method
