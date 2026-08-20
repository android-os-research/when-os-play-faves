.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;

.field public final synthetic f$1:Landroid/net/LinkProperties;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;Landroid/net/LinkProperties;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda0;->f$1:Landroid/net/LinkProperties;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda0;->f$1:Landroid/net/LinkProperties;

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->$r8$lambda$z0dehjdyzKWT6t46l6S2JLvTU6I(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;Landroid/net/LinkProperties;)V

    return-void
.end method
