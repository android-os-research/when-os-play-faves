.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$10;
.super Landroid/database/ContentObserver;
.source "SemWifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->registerForMptcpChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/os/Handler;)V
    .registers 3

    .line 785
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$10;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    .line 788
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$10;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmFrameworkFacade(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$10;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "mptcp_value_internal"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    move v3, v1

    :cond_17
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmMptcpEnabled(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 790
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MPTCP mode changed, enabled ? = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$10;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmMptcpEnabled(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiConnectivityMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
