.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;

.field public final synthetic f$1:Landroid/net/Network;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;Landroid/net/Network;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda3;->f$1:Landroid/net/Network;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda3;->f$1:Landroid/net/Network;

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->$r8$lambda$8X9qVVFfPx5B3_kAIBvKs3wWC3w(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;Landroid/net/Network;)V

    return-void
.end method
