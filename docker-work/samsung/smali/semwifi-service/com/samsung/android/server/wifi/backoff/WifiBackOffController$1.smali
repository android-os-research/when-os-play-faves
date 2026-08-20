.class Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$1;
.super Ljava/lang/Object;
.source "WifiBackOffController.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/SemSarManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$1;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackOffStarted(Ljava/lang/String;I)V
    .registers 4

    .line 66
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$1;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->-$$Nest$fgetbackOffStats(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;

    if-eqz p0, :cond_2f

    .line 68
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->reportStartTrigger(I)V

    .line 69
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBackOffStarted iface="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " type="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiBackOff.Controller"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    return-void
.end method

.method public onBackOffStopped(Ljava/lang/String;I)V
    .registers 5

    .line 75
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$1;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->-$$Nest$fgetbackOffStats(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;

    if-eqz p0, :cond_3b

    .line 77
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->reportStopTrigger(I)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackOffStopped iface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " type="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " stats="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->getTriggerInfoForCurrentNetwork()Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiBackOff.Controller"

    .line 78
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-void
.end method
