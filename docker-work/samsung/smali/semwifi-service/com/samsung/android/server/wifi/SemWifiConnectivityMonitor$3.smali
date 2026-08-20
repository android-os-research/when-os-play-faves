.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$3;
.super Ljava/lang/Object;
.source "SemWifiConnectivityMonitor.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V
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

    .line 395
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanResultUpdated(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const-string p1, "WifiConnectivityMonitor"

    const-string v0, "onScanResultUpdated"

    .line 398
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mcheckCountryCodeFromScanResults(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    return-void
.end method
