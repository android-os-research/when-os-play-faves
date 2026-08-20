.class public final synthetic Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

.field public final synthetic f$1:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-void
.end method


# virtual methods
.method public final onWifiStateChanged(II)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->$r8$lambda$hAM3wZB6Bmf0lzOord3e-8Z2VTk(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;II)V

    return-void
.end method
