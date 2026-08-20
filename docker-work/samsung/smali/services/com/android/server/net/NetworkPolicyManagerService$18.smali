.class public Lcom/android/server/net/NetworkPolicyManagerService$18;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .line 7296
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 7299
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object p1

    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 7302
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.os.action.CHARGING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 p2, 0x1

    goto :goto_25

    .line 7304
    :cond_1b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.os.action.DISCHARGING"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 7307
    :goto_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChargingState: new("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "), old("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmChargingState(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7308
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmChargingState(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v0

    if-eq p2, v0, :cond_6a

    .line 7309
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fputmChargingState(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    if-eqz p1, :cond_6a

    .line 7311
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x3ed

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 7312
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_6a
    return-void
.end method
