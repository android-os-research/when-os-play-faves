.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SemWifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->requestDummyNetworkCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;)V
    .registers 2

    .line 5048
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$2;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLost(Landroid/net/Network;)V
    .registers 2

    .line 5051
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$2;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetCm(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/ConnectivityManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
