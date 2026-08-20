.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;

    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda1;->f$1:Z

    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda1;->f$1:Z

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda1;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->$r8$lambda$WRJOpr_hz8-wst0vnCv-VE-j_-o(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;ZZ)V

    return-void
.end method
