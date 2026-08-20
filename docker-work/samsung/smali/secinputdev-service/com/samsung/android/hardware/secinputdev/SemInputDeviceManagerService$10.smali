.class Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$10;
.super Ljava/lang/Object;
.source "SemInputDeviceManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    .line 611
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$10;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "event"    # I

    .line 614
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 618
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x10055

    if-ne v0, v1, :cond_55

    .line 619
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$10;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcurrentPowerState(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const-string v3, "SemInputDeviceManagerService"

    if-eq v0, v1, :cond_4a

    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$10;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcurrentPowerState(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_21

    goto :goto_4a

    .line 625
    :cond_21
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    .line 626
    .local v0, "mode":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$10;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcurrentPowerState(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3b

    .line 627
    const-string v1, "onSensorChanged: keep: on ~ off"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$10;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fputkeepProxLpScanMode(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)V

    .line 629
    return-void

    .line 632
    :cond_3b
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$10;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcommandService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setProxLpScanMode(I)V

    .line 633
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$10;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fputkeepProxLpScanMode(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)V

    goto :goto_55

    .line 620
    .end local v0    # "mode":I
    :cond_4a
    :goto_4a
    const-string v0, "onSensorChanged: skip: screen on"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$10;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v0, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fputkeepProxLpScanMode(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)V

    .line 622
    return-void

    .line 635
    :cond_55
    :goto_55
    return-void
.end method
