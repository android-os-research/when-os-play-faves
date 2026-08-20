.class Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;
.super Ljava/lang/Object;
.source "SemWifiApTetheredClientInfo.java"

# interfaces
.implements Landroid/net/TetheringManager$TetheringEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientsChanged(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/TetheredClient;",
            ">;)V"
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;Ljava/util/Collection;)V

    .line 96
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .registers 6

    .line 127
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError ifName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetmTetheredInfaceState(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_3f

    .line 129
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 130
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->onTetherError(Ljava/lang/String;)V

    .line 132
    :cond_3f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetmTetheredInfaceState(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Ljava/util/HashMap;

    move-result-object p0

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onTetherableInterfacesChanged(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/TetheringInterface;",
            ">;)V"
        }
    .end annotation

    .line 136
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringInterface;

    .line 137
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTetherableInterfacesChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetmTetheredInfaceState(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/TetheringInterface;->getInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_4f

    .line 139
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 140
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/TetheringInterface;->getInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->untethered(Ljava/lang/String;)V

    .line 142
    :cond_4f
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetmTetheredInfaceState(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/TetheringInterface;->getInterface()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5f
    return-void
.end method

.method public onTetheredInterfacesChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onTetheredInterfacesChanged(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/TetheringInterface;",
            ">;)V"
        }
    .end annotation

    .line 148
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringInterface;

    .line 149
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTetheredInterfacesChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v0}, Landroid/net/TetheringInterface;->getType()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/net/TetheringInterface;->getInterface()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 151
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetmTetheredInfaceState(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/TetheringInterface;->getInterface()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/TetheringInterface;->getInterface()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->tethered(Ljava/lang/String;)V

    goto :goto_4

    :cond_53
    return-void
.end method

.method public onUpstreamChanged(Landroid/net/Network;)V
    .registers 7

    .line 101
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 102
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_e1

    const/4 v0, 0x1

    .line 104
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5a

    .line 105
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpstreamChanged to Wi-Fi id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->upstreamChangedToWifi(Landroid/net/Network;)V

    .line 107
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result p0

    if-eqz p0, :cond_e1

    .line 108
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->setIsCellularUpstream(Z)V

    goto/16 :goto_e1

    .line 110
    :cond_5a
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_aa

    .line 111
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpstreamChanged to Cellular id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":Dun cap:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->upstreamChangedToCellular(Landroid/net/Network;)V

    .line 113
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result p0

    if-eqz p0, :cond_e1

    .line 114
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->setIsCellularUpstream(Z)V

    goto :goto_e1

    .line 116
    :cond_aa
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_e1

    .line 117
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpstreamChanged to Bluetooth id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result p0

    if-eqz p0, :cond_e1

    .line 119
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->setIsCellularUpstream(Z)V

    :cond_e1
    :goto_e1
    return-void
.end method
