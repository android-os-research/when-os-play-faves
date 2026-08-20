.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;

.field public final synthetic f$1:Landroid/net/Network;

.field public final synthetic f$2:Landroid/net/NetworkCapabilities;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda2;->f$1:Landroid/net/Network;

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda2;->f$2:Landroid/net/NetworkCapabilities;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda2;->f$1:Landroid/net/Network;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda2;->f$2:Landroid/net/NetworkCapabilities;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->$r8$lambda$lyrUah8RDHfjB8nIN2uSQ2m77z0(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void
.end method
