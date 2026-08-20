.class Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;
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

    .line 341
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 344
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 345
    const-string v0, "status"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 346
    .local v0, "extra_status":I
    const/4 v2, 0x0

    .line 347
    .local v2, "status":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_1a

    const/4 v4, 0x5

    if-ne v0, v4, :cond_1b

    .line 349
    :cond_1a
    const/4 v2, 0x1

    .line 352
    :cond_1b
    const-string v4, "plugged"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 354
    .local v1, "type":I
    const/high16 v4, 0x10000

    if-ne v1, v4, :cond_26

    .line 355
    const/4 v2, 0x1

    .line 358
    :cond_26
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v5}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcurrentChargingStatus(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)I

    move-result v5

    if-ne v2, v5, :cond_36

    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v5}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcurrentChargingType(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)I

    move-result v5

    if-eq v1, v5, :cond_7a

    .line 359
    :cond_36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chargerBroadcastReceiver: state is changed type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SemInputDeviceManagerService"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v5, 0x1

    if-ne v2, v5, :cond_6b

    if-eq v1, v5, :cond_61

    if-eq v1, v3, :cond_61

    if-ne v1, v4, :cond_6b

    .line 363
    :cond_61
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcommandService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setChargerMode(II)V

    goto :goto_7a

    .line 365
    :cond_6b
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcommandService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcurrentChargingType(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setChargerMode(II)V

    .line 369
    :cond_7a
    :goto_7a
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v3, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fputcurrentChargingStatus(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)V

    .line 370
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v3, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fputcurrentChargingType(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)V

    .line 372
    .end local v0    # "extra_status":I
    .end local v1    # "type":I
    .end local v2    # "status":I
    :cond_84
    return-void
.end method
