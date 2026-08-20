.class public final Lcom/android/server/lights/LightsService$SvcLEDReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SvcLEDReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/LightsService;)V
    .registers 2

    .line 1062
    iput-object p1, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$SvcLEDReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService$SvcLEDReceiver;-><init>(Lcom/android/server/lights/LightsService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 1065
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    .line 1066
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 1067
    iget-object p1, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmSvcLEDThread(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object p1

    monitor-enter p1

    .line 1069
    :try_start_13
    iget-object p2, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p2}, Lcom/android/server/lights/LightsService;->-$$Nest$macquireWakeLockForLED(Lcom/android/server/lights/LightsService;)V

    const-string p2, "LightsService"

    const-string v0, "[api] onReceive : SvcLEDReceiver re-enables LightSenor and sends MSG_FORCEDSVCLEDTASK"

    .line 1070
    invoke-static {p2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iget-object p2, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/android/server/lights/LightsService;->-$$Nest$menableSvcLEDLightSensorLocked(Lcom/android/server/lights/LightsService;Z)V

    .line 1073
    iget-object p2, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p2}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmSvcLEDHandler(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1074
    iget-object p2, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p2}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmSvcLEDHandler(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 1075
    iget-object v0, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmSvcLEDHandler(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p0}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmDelayForcedSvcLEDTask(Lcom/android/server/lights/LightsService;)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1076
    monitor-exit p1

    goto :goto_4d

    :catchall_4a
    move-exception p0

    monitor-exit p1
    :try_end_4c
    .catchall {:try_start_13 .. :try_end_4c} :catchall_4a

    throw p0

    :cond_4d
    :goto_4d
    return-void
.end method
