.class Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$5;
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

    .line 402
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$5;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 405
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.game.gos.action.TSP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 406
    const-string v0, "set_game_mode"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "game_mode":Ljava/lang/String;
    const-string v1, "set_scan_rate"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "scan_rate":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gameServiceBroadcastReceiver: game:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " scan:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemInputDeviceManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    if-eqz v0, :cond_66

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_66

    .line 411
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$5;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcurrentGameMode(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 412
    const-string v2, "gameServiceBroadcastReceiver: game mode is not changed"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 414
    :cond_58
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$5;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcommandService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setGameMode(Ljava/lang/String;)V

    .line 415
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$5;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fputcurrentGameMode(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;Ljava/lang/String;)V

    .line 419
    :cond_66
    :goto_66
    if-eqz v1, :cond_92

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_92

    .line 420
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$5;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcurrentScanRate(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 421
    const-string v2, "gameServiceBroadcastReceiver: scan rate is not changed"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 423
    :cond_84
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$5;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcommandService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setScanRate(Ljava/lang/String;)V

    .line 424
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$5;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v2, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fputcurrentScanRate(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;Ljava/lang/String;)V

    .line 428
    .end local v0    # "game_mode":Ljava/lang/String;
    .end local v1    # "scan_rate":Ljava/lang/String;
    :cond_92
    :goto_92
    return-void
.end method
