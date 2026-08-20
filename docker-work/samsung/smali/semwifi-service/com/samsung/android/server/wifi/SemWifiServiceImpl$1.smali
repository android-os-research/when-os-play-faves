.class Lcom/samsung/android/server/wifi/SemWifiServiceImpl$1;
.super Ljava/lang/Object;
.source "SemWifiServiceImpl.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$handleBootCompleted$3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V
    .registers 2

    .line 282
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApMacAddress()Ljava/lang/String;
    .registers 2

    .line 304
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 306
    :cond_e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApEnabledWithDualBand()Z

    move-result p0

    if-eqz p0, :cond_21

    const-string p0, "wlan2"

    .line 307
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getMHSMacFromInterface(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 309
    :cond_21
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getMHSMacFromInterface()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentNetworkScore()[I
    .registers 6

    .line 285
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmWifiConnectivityMonitor(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getOpenNetworkQosScores()[I

    move-result-object v0

    if-eqz v0, :cond_34

    .line 287
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_34

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 291
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmWifiConnectivityMonitor(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getOpenNetworkQosNoInternetStatus()Z

    move-result p0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p0, :cond_23

    move p0, v3

    goto :goto_24

    :cond_23
    move p0, v4

    :goto_24
    aput p0, v1, v4

    aget p0, v0, v4

    const/4 v4, 0x1

    aput p0, v1, v4

    aget p0, v0, v4

    aput p0, v1, v3

    aget p0, v0, v3

    aput p0, v1, v2

    return-object v1

    :cond_34
    const-string p0, "SemWifiService"

    const-string v0, "getCurrentNetworkScore - invalid score data"

    .line 297
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;
    .registers 1

    .line 315
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0
.end method
