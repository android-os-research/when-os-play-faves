.class Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "SemWifiAwareStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AwareNetworkObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;-><init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)V

    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .registers 3

    const-string p0, "aware_data0"

    .line 172
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 173
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "interfaceAdded: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiAwareStateManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 5

    const-string v0, "aware_data0"

    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interfaceRemoved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemWifiAwareStateManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$msetLegacyScanningEnable(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;Z)V

    .line 182
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmSemWifiP2pManager(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 183
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmSemWifiP2pManager(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    move-result-object p1

    const-string v2, "aware"

    invoke-virtual {p1, v2}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->unsetAllInUsePackage(Ljava/lang/String;)V

    const-string p1, "controlOpenWifiScanTimer : cancel & start"

    .line 184
    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmSemWifiP2pManager(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->controlOpenWifiScanTimer(I)V

    .line 186
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$AwareNetworkObserver;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmSemWifiP2pManager(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->controlOpenWifiScanTimer(I)V

    :cond_4f
    return-void
.end method
