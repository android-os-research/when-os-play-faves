.class public Lcom/android/server/BatteryService$27;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->sendWirelessPowerSharingIntentLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;

.field public final synthetic val$batteryRxConnected:Z

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;ZLandroid/content/Intent;)V
    .registers 4

    .line 2874
    iput-object p1, p0, Lcom/android/server/BatteryService$27;->this$0:Lcom/android/server/BatteryService;

    iput-boolean p2, p0, Lcom/android/server/BatteryService$27;->val$batteryRxConnected:Z

    iput-object p3, p0, Lcom/android/server/BatteryService$27;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2877
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending ACTION_WIRELESS_POWER_SHARING_CONNECTED. connected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService$27;->val$batteryRxConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    iget-object v0, p0, Lcom/android/server/BatteryService$27;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmContext(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService$27;->val$intent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2881
    :try_start_27
    iget-boolean v0, p0, Lcom/android/server/BatteryService$27;->val$batteryRxConnected:Z

    if-eqz v0, :cond_35

    .line 2882
    iget-object p0, p0, Lcom/android/server/BatteryService$27;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmBatteryStats(Lcom/android/server/BatteryService;)Lcom/android/internal/app/IBatteryStats;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->noteStartTxPowerSharing()V

    goto :goto_48

    .line 2884
    :cond_35
    iget-object p0, p0, Lcom/android/server/BatteryService$27;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmBatteryStats(Lcom/android/server/BatteryService;)Lcom/android/internal/app/IBatteryStats;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->noteStopTxPowerSharing()V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3e} :catch_3f

    goto :goto_48

    .line 2887
    :catch_3f
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Failed to note battery stats in BatteryService"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_48
    return-void
.end method
