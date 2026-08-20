.class public Lcom/android/server/lights/LightsService$4;
.super Ljava/lang/Object;
.source "LightsService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/LightsService;)V
    .registers 2

    .line 1033
    iput-object p1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7

    .line 1036
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    float-to-int p1, p1

    const-string v1, "LightsService"

    .line 1038
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SvcLED] onSensorChanged : light value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object v1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmSvcLEDThread(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v1

    monitor-enter v1

    .line 1041
    :try_start_23
    iget-object v2, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmSvcLEDHandler(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1043
    iget-object v2, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2, v0}, Lcom/android/server/lights/LightsService;->-$$Nest$menableSvcLEDLightSensorLocked(Lcom/android/server/lights/LightsService;Z)V

    .line 1044
    iget-object v0, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0, p1}, Lcom/android/server/lights/LightsService;->-$$Nest$msetSvcLedLightLocked(Lcom/android/server/lights/LightsService;I)V

    .line 1045
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_6a

    .line 1048
    iget-object p1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmAlarmManagerForSvcLED(Lcom/android/server/lights/LightsService;)Landroid/app/AlarmManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmUpdateSvcLEDPendingIntent(Lcom/android/server/lights/LightsService;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1049
    invoke-static {}, Lcom/android/server/lights/LightsService;->-$$Nest$sfgetmSvcLedState()I

    move-result p1

    if-eqz p1, :cond_69

    .line 1050
    iget-object p1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmAlarmManagerForSvcLED(Lcom/android/server/lights/LightsService;)Landroid/app/AlarmManager;

    move-result-object p1

    const/4 v0, 0x3

    .line 1051
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmUpdateSvcLEDDelay(Lcom/android/server/lights/LightsService;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iget-object p0, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p0}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmUpdateSvcLEDPendingIntent(Lcom/android/server/lights/LightsService;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 1050
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_69
    return-void

    :catchall_6a
    move-exception p0

    .line 1045
    :try_start_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw p0
.end method
