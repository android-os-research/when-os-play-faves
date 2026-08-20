.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;
.super Landroid/database/ContentObserver;
.source "SemWifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->registerForSettingsChanges()V
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

    .line 724
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    .line 727
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v0, 0x21006

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    .line 728
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIWCChannel(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 729
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIWCChannel(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object p1

    const v0, 0x87017

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmUIEnabled(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAggressiveModeEnabled(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    :cond_28
    return-void
.end method
