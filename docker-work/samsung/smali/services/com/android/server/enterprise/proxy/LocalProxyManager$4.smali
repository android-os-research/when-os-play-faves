.class public Lcom/android/server/enterprise/proxy/LocalProxyManager$4;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "LocalProxyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/proxy/LocalProxyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V
    .registers 2

    .line 707
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4

    .line 710
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 711
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$sfgetsWifiProxyInfoMapCache()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    return-void

    .line 712
    :cond_e
    iget-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/proxy/LocalProxyManager;)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_17

    return-void

    .line 714
    :cond_17
    iget-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$mgetWifiManager(Lcom/android/server/enterprise/proxy/LocalProxyManager;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-nez p1, :cond_24

    return-void

    .line 717
    :cond_24
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\""

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 719
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$sfgetsWifiProxyInfoMapCache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/ProxyProperties;

    if-nez v0, :cond_3d

    return-void

    .line 722
    :cond_3d
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$sfgetmProxyLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 723
    :try_start_42
    invoke-static {v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$sfputsDefaultProxy(Lcom/samsung/android/knox/net/ProxyProperties;)V

    .line 724
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_57

    .line 726
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$smgetDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 727
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$fputmConnectedWifiSsid(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/String;)V

    .line 728
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$mhandleLocalProxyServer(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    :cond_56
    return-void

    :catchall_57
    move-exception p0

    .line 724
    :try_start_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 7

    .line 734
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 735
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$smgetDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 737
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$misDirectProxy(Lcom/android/server/enterprise/proxy/LocalProxyManager;Lcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_35

    .line 738
    iget-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$fgetmConnectedWifiSsid(Lcom/android/server/enterprise/proxy/LocalProxyManager;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$sfgetsWifiProxyInfoMapCache()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {v4}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$fgetmConnectedWifiSsid(Lcom/android/server/enterprise/proxy/LocalProxyManager;)Ljava/lang/String;

    move-result-object v4

    .line 739
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/net/ProxyProperties;

    invoke-static {v3}, Lcom/android/server/enterprise/utils/NetworkUtils;->convertToProxyInfo(Lcom/samsung/android/knox/net/ProxyProperties;)Landroid/net/ProxyInfo;

    move-result-object v3

    .line 738
    invoke-static {p1, v1, v2, v3}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$mupdateProxyInWifiConfig(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/String;ZLandroid/net/ProxyInfo;)V

    .line 741
    iget-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {p1, v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$fputmConnectedWifiSsid(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/String;)V

    .line 743
    :cond_35
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$sfgetmProxyLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 744
    :try_start_3a
    invoke-static {v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$sfputsDefaultProxy(Lcom/samsung/android/knox/net/ProxyProperties;)V

    .line 745
    monitor-exit p1
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_44

    .line 746
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$mhandleLocalProxyServer(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    goto :goto_47

    :catchall_44
    move-exception p0

    .line 745
    :try_start_45
    monitor-exit p1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p0

    :cond_47
    :goto_47
    return-void
.end method
