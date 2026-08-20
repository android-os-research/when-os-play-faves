.class public final Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;
.super Landroid/hardware/TriggerEventListener;
.source "IntelligentBatterySaverFastDrainPolicy.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MotionListener"
.end annotation


# instance fields
.field public active:Z

.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .registers 2

    .line 1013
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    const/4 p1, 0x0

    .line 1015
    iput-boolean p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->active:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 4

    .line 1028
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    monitor-enter p1

    .line 1029
    :try_start_3
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmSensorManager(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmMotionSensor(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    .line 1030
    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->active:Z

    .line 1031
    monitor-exit p1

    return-void

    :catchall_17
    move-exception p0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .registers 4

    .line 1019
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    monitor-enter p1

    const/4 v0, 0x0

    .line 1020
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->active:Z

    const-string v0, "IntelligentBatterySaverFastDrainPolicy"

    const-string/jumbo v1, "onTrigger clear MOTION_STILL bit"

    .line 1021
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$mreportClearState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)V

    .line 1023
    monitor-exit p1

    return-void

    :catchall_17
    move-exception p0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public registerLocked()Z
    .registers 5

    .line 1040
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmMotionSensor(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Landroid/hardware/Sensor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 1041
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmSensorManager(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmMotionListener(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmMotionSensor(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    goto :goto_3b

    .line 1043
    :cond_24
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmSensorManager(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmMotionListener(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmMotionSensor(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    :goto_3b
    if-eqz v0, :cond_41

    const/4 v1, 0x1

    .line 1047
    iput-boolean v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->active:Z

    goto :goto_5d

    .line 1049
    :cond_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to register for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmMotionSensor(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Landroid/hardware/Sensor;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "IntelligentBatterySaverFastDrainPolicy"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d
    return v0
.end method

.method public unregisterLocked()V
    .registers 4

    .line 1055
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmMotionSensor(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Landroid/hardware/Sensor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 1056
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmSensorManager(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmMotionListener(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmMotionSensor(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    goto :goto_32

    .line 1058
    :cond_23
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmSensorManager(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmMotionListener(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_32
    const/4 v0, 0x0

    .line 1060
    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->active:Z

    return-void
.end method
