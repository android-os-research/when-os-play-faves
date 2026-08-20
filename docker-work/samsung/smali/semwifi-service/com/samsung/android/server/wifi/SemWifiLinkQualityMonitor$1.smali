.class Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$1;
.super Ljava/lang/Object;
.source "SemWifiLinkQualityMonitor.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWifiUsabilityStats(IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V
    .registers 4

    if-eqz p2, :cond_18

    .line 87
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmLinkQualityMonitorHandler(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmLinkQualityMonitorHandler(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p0, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_18
    return-void
.end method
