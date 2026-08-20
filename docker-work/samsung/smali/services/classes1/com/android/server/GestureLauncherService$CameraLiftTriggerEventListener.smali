.class public final Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;
.super Landroid/hardware/TriggerEventListener;
.source "GestureLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureLauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CameraLiftTriggerEventListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method public constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .registers 2

    .line 868
    iput-object p1, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;-><init>(Lcom/android/server/GestureLauncherService;)V

    return-void
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .registers 5

    .line 873
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->-$$Nest$fgetmCameraLiftRegistered(Lcom/android/server/GestureLauncherService;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 878
    :cond_9
    iget-object p1, p1, Landroid/hardware/TriggerEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->-$$Nest$fgetmCameraLiftTriggerSensor(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;

    move-result-object v0

    if-ne p1, v0, :cond_76

    .line 879
    iget-object p1, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {p1}, Lcom/android/server/GestureLauncherService;->-$$Nest$fgetmContext(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 880
    iget-object p1, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {p1}, Lcom/android/server/GestureLauncherService;->-$$Nest$fgetmContext(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    .line 882
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/GestureLauncherService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    .line 883
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    .line 884
    iget-object v1, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->-$$Nest$fgetmPowerManager(Lcom/android/server/GestureLauncherService;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v0, :cond_43

    if-nez v1, :cond_63

    .line 892
    :cond_43
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 894
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->-$$Nest$fgetmContext(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3dd

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 895
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->-$$Nest$fgetmUiEventLogger(Lcom/android/server/GestureLauncherService;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object v0

    sget-object v1, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_CAMERA_LIFT:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 901
    :cond_63
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->-$$Nest$fgetmCameraLiftTriggerListener(Lcom/android/server/GestureLauncherService;)Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->-$$Nest$fgetmCameraLiftTriggerSensor(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result p0

    invoke-static {v0, p0}, Lcom/android/server/GestureLauncherService;->-$$Nest$fputmCameraLiftRegistered(Lcom/android/server/GestureLauncherService;Z)V

    :cond_76
    return-void
.end method
