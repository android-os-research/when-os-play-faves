.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$13;
.super Ljava/lang/Object;
.source "SemWifiConnectivityMonitor.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getNetworkRemovedListener()Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;
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

    .line 3121
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$13;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkRemoved(Landroid/net/wifi/WifiConfiguration;)V
    .registers 5

    .line 3124
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$13;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const v0, 0x2104b

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public onNetworkReset()V
    .registers 1

    return-void
.end method
