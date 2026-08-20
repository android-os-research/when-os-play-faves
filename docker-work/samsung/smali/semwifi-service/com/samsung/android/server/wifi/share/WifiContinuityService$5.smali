.class Lcom/samsung/android/server/wifi/share/WifiContinuityService$5;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiContinuityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiContinuityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V
    .registers 2

    .line 248
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$5;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 2
    .param p1    # Landroid/net/Network;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 251
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 252
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$5;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fputisConnected(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Z)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 5
    .param p1    # Landroid/net/Network;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/NetworkCapabilities;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 258
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 259
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$5;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetisConnected(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    :cond_c
    const/4 p1, 0x1

    const/16 v0, 0x11

    .line 263
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    .line 265
    invoke-static {}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_23

    const-string p1, "SemWifi.Continuity"

    const-string p2, "captive portal network"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_23
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$5;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetwifiManagerProxy(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_6b

    .line 269
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$5;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetconfigManager(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_6b

    .line 271
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$5;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetconfigLock(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 272
    :try_start_42
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$5;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetaddedNetworkIds(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Ljava/util/Set;

    move-result-object v0

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 273
    monitor-exit p2

    goto :goto_6b

    :catchall_53
    move-exception p0

    monitor-exit p2
    :try_end_55
    .catchall {:try_start_42 .. :try_end_55} :catchall_53

    throw p0

    :cond_56
    const/16 v0, 0x10

    .line 276
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p2

    if-nez p2, :cond_6c

    .line 278
    invoke-static {}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_6b

    const-string p1, "SemWifi.Continuity"

    const-string p2, "internet unavailable"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    :goto_6b
    move p1, v1

    .line 281
    :cond_6c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$5;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    const/16 p2, 0x8

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sendMessage(II)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3
    .param p1    # Landroid/net/Network;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 286
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 287
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$5;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fputisConnected(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Z)V

    .line 288
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$5;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sendMessage(I)V

    .line 289
    invoke-static {}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_1c

    const-string p0, "SemWifi.Continuity"

    const-string p1, "Wi-Fi network is lost"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return-void
.end method
