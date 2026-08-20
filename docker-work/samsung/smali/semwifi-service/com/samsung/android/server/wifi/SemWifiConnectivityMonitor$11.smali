.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$11;
.super Ljava/lang/Object;
.source "SemWifiConnectivityMonitor.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/wcm/BssidStatistics$IBssidStatisticsCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->updateCurrentBssid(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 2

    .line 957
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$11;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setRssiTargetHistory([Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;)V
    .registers 2

    .line 960
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$11;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetRssiTargetHistoryList(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;[Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;)V

    return-void
.end method
