.class Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;
.super Landroid/os/Handler;
.source "SemWifiLinkQualityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinkQualityMonitorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Landroid/os/Looper;)V
    .registers 3

    .line 111
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 112
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_2b

    .line 118
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 119
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/WifiUsabilityStatsEntry;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Landroid/net/wifi/WifiUsabilityStatsEntry;)V

    .line 120
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mupdateLinkLayerStats(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkQosQuery(JJJ)Z

    :cond_2b
    :goto_2b
    return-void
.end method
