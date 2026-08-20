.class Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$1;
.super Ljava/lang/Object;
.source "SemWifiTwtMonitor.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .registers 2

    .line 290
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWifiUsabilityStats(IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V
    .registers 4

    if-eqz p2, :cond_11

    .line 295
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtHandler(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    move-result-object p0

    const/16 p1, 0x9

    invoke-static {p0, p1, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    return-void
.end method
