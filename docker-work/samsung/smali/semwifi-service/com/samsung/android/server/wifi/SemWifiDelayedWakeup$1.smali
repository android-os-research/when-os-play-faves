.class Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$1;
.super Ljava/lang/Object;
.source "SemWifiDelayedWakeup.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)V
    .registers 2

    .line 274
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScpmConfigurationName()Ljava/lang/String;
    .registers 1

    const-string p0, "WIFI_DELAYED_WAKEUP"

    return-object p0
.end method

.method public onScpmPolicyUpdated(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .registers 4

    .line 292
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$fgetisFeatureEnabled(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 295
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$fputmScpmDataProvider(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V

    .line 296
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    const-string v0, "SCPM: new config available"

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;Ljava/lang/String;)V

    .line 297
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;

    move-result-object p0

    const/4 p1, 0x3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1, v0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onScpmRegistered(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .registers 4

    .line 282
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$fgetisFeatureEnabled(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 285
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$fputmScpmDataProvider(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V

    .line 286
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    const-string v0, "SCPM: registered"

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;Ljava/lang/String;)V

    .line 287
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup;)Lcom/samsung/android/server/wifi/SemWifiDelayedWakeup$DelayedWakeupHandler;

    move-result-object p0

    const/4 p1, 0x3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1, v0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
