.class Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "SemInputDeviceManagerService.java"


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

    .line 375
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$3;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 378
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 379
    const-string v0, "SemInputDeviceManagerService"

    const-string v1, "shutdownBroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$3;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetrawdataService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 382
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$3;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetrawdataService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->destroy()V

    .line 384
    :cond_24
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$3;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetmonitorService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 385
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$3;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetmonitorService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->destroy()V

    .line 388
    :cond_35
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$3;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcommandService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setTspEnabled(IIZ)I

    .line 390
    :cond_40
    return-void
.end method
