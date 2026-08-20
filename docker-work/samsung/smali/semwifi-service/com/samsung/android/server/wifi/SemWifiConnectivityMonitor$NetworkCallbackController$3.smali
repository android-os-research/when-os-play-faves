.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SemWifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->registerDefaultNetworkCallback()V
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

    .line 5061
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$3;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 7

    .line 5064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Def NetworkCallback(onAvailable) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor.NCC"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5065
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$3;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetCm(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_d4

    .line 5067
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$3;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v3, 0x1

    invoke-static {v2, p1, v0, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$maddDefaultNetworkChangeEventToString(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/Network;Landroid/net/NetworkCapabilities;Z)V

    .line 5068
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$3;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-boolean p1, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->mWifiIconHideForEthernet:Z

    const/4 v2, 0x3

    const/4 v4, 0x0

    if-eqz p1, :cond_49

    .line 5069
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-nez p1, :cond_49

    .line 5070
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$3;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mchangeWifiIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 5071
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$3;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iput-boolean v4, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->mWifiIconHideForEthernet:Z

    .line 5074
    :cond_49
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 5075
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$3;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1, v4, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mchangeWifiIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZ)V

    .line 5076
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$3;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iput-boolean v3, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->mWifiIconHideForEthernet:Z

    goto :goto_cd

    .line 5078
    :cond_5b
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_82

    const-string p1, "MOBILE Network Connected."

    .line 5079
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5080
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$3;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsMobileActiveNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result p1

    if-nez p1, :cond_81

    .line 5081
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$3;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIsMobileActiveNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 5082
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$3;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const p1, 0x21040

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    :cond_81
    return-void

    .line 5085
    :cond_82
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_cd

    .line 5086
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmInitialResultSentToSystemUi()Z

    move-result p1

    if-eqz p1, :cond_cd

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$3;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a3

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$3;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result p1

    if-ne p1, v2, :cond_cd

    .line 5088
    :cond_a3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$3;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$3;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLevel2State(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    move-result-object v0

    if-eq p1, v0, :cond_bf

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$3;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misInvalidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result p1

    if-eqz p1, :cond_cd

    .line 5089
    :cond_bf
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$3;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1, v3, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mchangeWifiIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZ)V

    .line 5090
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$3;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1, v4, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendBroadcastWCMTestResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZ)V

    .line 5094
    :cond_cd
    :goto_cd
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$3;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIsMobileActiveNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    :cond_d4
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 4

    .line 5100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Def NetworkCallback(onLost) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor.NCC"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5101
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$3;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$maddDefaultNetworkChangeEventToString(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/Network;Landroid/net/NetworkCapabilities;Z)V

    return-void
.end method
