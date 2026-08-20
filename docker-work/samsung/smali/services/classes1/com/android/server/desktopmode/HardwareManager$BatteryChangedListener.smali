.class public Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;
.super Landroid/content/BroadcastReceiver;
.source "HardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/HardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatteryChangedListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/HardwareManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/HardwareManager;)V
    .registers 2

    .line 762
    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/HardwareManager;Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;-><init>(Lcom/android/server/desktopmode/HardwareManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 792
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 793
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->updateWiredChargingStatus(Lcom/android/server/desktopmode/State;Landroid/content/Intent;)V

    return-void
.end method

.method public register()V
    .registers 8

    .line 766
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/HardwareManager;)Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    .line 768
    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    .line 769
    invoke-virtual {p0, v1, v0}, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->updateWiredChargingStatus(Lcom/android/server/desktopmode/State;Landroid/content/Intent;)V

    return-void
.end method

.method public unregister()V
    .registers 2

    .line 773
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/HardwareManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 774
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/server/desktopmode/IStateManager;->setWiredCharging(Z)V

    return-void
.end method

.method public final updateWiredChargingStatus(Lcom/android/server/desktopmode/State;Landroid/content/Intent;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 v0, -0x1

    const-string/jumbo v1, "plugged"

    .line 781
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_13

    const/4 v1, 0x2

    if-ne p2, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 784
    :cond_13
    :goto_13
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isWiredCharging()Z

    move-result p1

    if-eq p1, v0, :cond_3f

    .line 785
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_36

    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isWiredCharging="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_36
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/server/desktopmode/IStateManager;->setWiredCharging(Z)V

    :cond_3f
    return-void
.end method
