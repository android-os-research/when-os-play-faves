.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;
.super Ljava/lang/Object;
.source "SemWifiConnectivityMonitor.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkCallbackController"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiConnectivityMonitor.NCC"


# instance fields
.field private mHasCaptivePortalCapa:Z

.field public mNetId:I

.field mWifiIconHideForEthernet:Z

.field private sDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private sNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private sNetworkCallbackDummy:Landroid/net/ConnectivityManager$NetworkCallback;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHasCaptivePortalCapa(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->mHasCaptivePortalCapa:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmHasCaptivePortalCapa(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->mHasCaptivePortalCapa:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestoreNetworkMonitorSettings(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->restoreNetworkMonitorSettings()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 2

    .line 4894
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 4887
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->mNetId:I

    const/4 p1, 0x0

    .line 4892
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->mHasCaptivePortalCapa:Z

    .line 5058
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->mWifiIconHideForEthernet:Z

    .line 4895
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->init()V

    return-void
.end method

.method private registerConnectionNetworkCallback()V
    .registers 3

    .line 4947
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->sNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_5

    return-void

    .line 4948
    :cond_5
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 4949
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    const/4 v1, 0x6

    .line 4950
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 4951
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->sNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 5040
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetCm(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->sNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private registerDefaultNetworkCallback()V
    .registers 2

    .line 5060
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->sDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_16

    .line 5061
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$3;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->sDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 5104
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetCm(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->sDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_16
    return-void
.end method

.method private requestDummyNetworkCallback()V
    .registers 3

    .line 5045
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 5046
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 5047
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->sNetworkCallbackDummy:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v1, :cond_14

    .line 5048
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$2;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->sNetworkCallbackDummy:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 5055
    :cond_14
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetCm(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->sNetworkCallbackDummy:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private restoreNetworkMonitorSettings()V
    .registers 4

    .line 4932
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v1, 0x2113a

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$2200(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4933
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v1, 0x2113b

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$2300(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4935
    :try_start_10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPreviousCaptivePortalMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    .line 4936
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setCaptivePortalMode(I)V

    .line 4937
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    iput v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->mPreviousCaptivePortalMode:I

    :cond_1e
    const-string p0, "connectivity"

    const-string v0, "dns_probe_private_ip_no_internet"

    const-string v1, "0"

    const/4 v2, 0x1

    .line 4939
    invoke-static {p0, v0, v1, v2}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_28
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_28} :catch_29

    goto :goto_40

    :catch_29
    move-exception p0

    .line 4942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to modify device_config:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiConnectivityMonitor.NCC"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    return-void
.end method


# virtual methods
.method public getDefaultCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4910
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->sDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object p0
.end method

.method public getDummyCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4905
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->sNetworkCallbackDummy:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object p0
.end method

.method public getNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4900
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->sNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object p0
.end method

.method public handleConnected()V
    .registers 1

    .line 4920
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->requestDummyNetworkCallback()V

    return-void
.end method

.method public init()V
    .registers 2

    const/4 v0, 0x0

    .line 4914
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->mHasCaptivePortalCapa:Z

    .line 4915
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->registerConnectionNetworkCallback()V

    .line 4916
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->registerDefaultNetworkCallback()V

    return-void
.end method

.method public isCaptivePortal()Z
    .registers 3

    .line 4924
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->mHasCaptivePortalCapa:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    .line 4925
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentSemWifiConfiguration(Z)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 4926
    iget-boolean p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    if-eqz p0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v0

    :cond_1c
    :goto_1c
    return v1
.end method
