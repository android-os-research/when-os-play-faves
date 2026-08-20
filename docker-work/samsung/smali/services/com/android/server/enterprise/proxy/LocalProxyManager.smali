.class public Lcom/android/server/enterprise/proxy/LocalProxyManager;
.super Ljava/lang/Object;
.source "LocalProxyManager.java"

# interfaces
.implements Lcom/android/server/enterprise/proxy/ProxyManagerCallbacks;


# static fields
.field public static final CLEAR_PROXY_CACHE_ACTION:Ljava/lang/String; = "clearCache"

.field public static final SET_PROXY_CREDENTIALS_ACTION:Ljava/lang/String; = "setProxyCredentials"

.field public static final TAG:Ljava/lang/String; = "LocalProxyManager"

.field public static final mNetworkCallbackLock:Ljava/lang/Object;

.field public static final mProxyLock:Ljava/lang/Object;

.field public static volatile sDefaultProxy:Lcom/samsung/android/knox/net/ProxyProperties;

.field public static volatile sGlobalProxy:Lcom/samsung/android/knox/net/ProxyProperties;

.field public static volatile sInstance:Lcom/android/server/enterprise/proxy/LocalProxyManager;

.field public static volatile sIsLocalProxyServerRunning:Z

.field public static volatile sIsNetworkCallbackRunning:Z

.field public static volatile sLocalProxyInfo:Landroid/net/ProxyInfo;

.field public static final sLocalProxyManagerLock:Ljava/lang/Object;

.field public static volatile sPendinOperationsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile sWifiBackCompatCredentialsMapCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/net/AuthConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile sWifiProxyInfoMapCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/net/ProxyProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public DBG:Z

.field public mCallbackService:Lcom/android/net/IProxyCallback;

.field public mConnectedWifiSsid:Ljava/lang/String;

.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mContext:Landroid/content/Context;

.field public mLastCredentialsCallback:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

.field public mLastCredentialsResponse:Landroid/os/Bundle;

.field public mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mProxyConnection:Landroid/content/ServiceConnection;

.field public mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$0_MrjwYOHNhG75ImrSXqgN3imSo(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$setGlobalProxy$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$6PrXIpAX1esIr_Ruk3dzdGmG2cw(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$stopLocalProxyServer$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$AXTNb61b8O7SagICeSVgRS5wDsE(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/String;ZLandroid/net/ProxyInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$updateProxyInWifiConfig$2(Ljava/lang/String;ZLandroid/net/ProxyInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HtygKRKS0NEC--aVo6i0i1GGjkY(Lcom/android/server/enterprise/proxy/LocalProxyManager;Landroid/net/ProxyInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$setGlobalProxyPac$1(Landroid/net/ProxyInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JOrv3uTnmpXhzdfbiDwhu4gbGf0(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$startLocalProxyServer$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$LM5A5gV32MrgEQpTzOGjBpabyuM(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$unregisterNetworkCallback$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$TUZIH5dTi1R-Ssa5XCBhtR01sxU(Ljava/lang/String;Lcom/samsung/android/knox/net/AuthConfig;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$updateWifiBackCompatCredentialsCache$10(Ljava/lang/String;Lcom/samsung/android/knox/net/AuthConfig;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZbrRZURWIHVouKC6Kokj8vlvyTA(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$refreshCredentialsDialogFails$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$a8yRnDflefpJRLCdTpGNO6U0POw(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$clearProxyServerCache$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$iaRZ-1AanFJB3ORcJ44QkQ8p_3E(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$showCredentialsDialogNotification$14(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m0Mxc43qxSiR6ht0DVk3q0mE7rk(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$removeDefaultProxyFromWifiNetwork$3(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nonOEPEXM-azj4fZnH0NCzaX4Bw(Ljava/lang/String;Lcom/samsung/android/knox/net/ProxyProperties;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$updateWifiProxyCache$8(Ljava/lang/String;Lcom/samsung/android/knox/net/ProxyProperties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pIV5z7EE5Dpjo3So-Mp_MfMJWl8(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$getAppUidBrowserList$12(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uFlQhOIKBUnmw1Dh7967tNNs2nQ(Lcom/android/server/enterprise/proxy/LocalProxyManager;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$setProxyCredentials$16(Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vlUl8-W_n3bZ4ElT62HlxOlIn2I(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$clearNotificationDialog$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$xOPUJpLGO-p0nSFkY7DceaHM_Gs(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/knox/net/ProxyProperties;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$dumpEnterpriseProxyCache$9(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/knox/net/ProxyProperties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xh1WQ_ERs-qkHSgDOfgY1G4sKDE(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$registerNetworkCallback$6()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetDBG(Lcom/android/server/enterprise/proxy/LocalProxyManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbackService(Lcom/android/server/enterprise/proxy/LocalProxyManager;)Lcom/android/net/IProxyCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mCallbackService:Lcom/android/net/IProxyCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectedWifiSsid(Lcom/android/server/enterprise/proxy/LocalProxyManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectedWifiSsid:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/enterprise/proxy/LocalProxyManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCallbackService(Lcom/android/server/enterprise/proxy/LocalProxyManager;Lcom/android/net/IProxyCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mCallbackService:Lcom/android/net/IProxyCallback;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmConnectedWifiSsid(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectedWifiSsid:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mexecutePendingOperations(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->executePendingOperations()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetWifiManager(Lcom/android/server/enterprise/proxy/LocalProxyManager;)Landroid/net/wifi/WifiManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleLocalProxyServer(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->handleLocalProxyServer()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misDirectProxy(Lcom/android/server/enterprise/proxy/LocalProxyManager;Lcom/samsung/android/knox/net/ProxyProperties;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->isDirectProxy(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetLocalProxyPort(Lcom/android/server/enterprise/proxy/LocalProxyManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->setLocalProxyPort(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateProxyInWifiConfig(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/String;ZLandroid/net/ProxyInfo;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateProxyInWifiConfig(Ljava/lang/String;ZLandroid/net/ProxyInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetmProxyLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsWifiProxyInfoMapCache()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputsDefaultProxy(Lcom/samsung/android/knox/net/ProxyProperties;)V
    .registers 1

    sput-object p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sDefaultProxy:Lcom/samsung/android/knox/net/ProxyProperties;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputsIsLocalProxyServerRunning(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsLocalProxyServerRunning:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;
    .registers 1

    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyManagerLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    .line 74
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiBackCompatCredentialsMapCache:Ljava/util/Map;

    const/4 v0, 0x0

    .line 76
    sput-boolean v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsLocalProxyServerRunning:Z

    .line 77
    sput-boolean v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsNetworkCallbackRunning:Z

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNetworkCallbackLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sPendinOperationsList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectedWifiSsid:Ljava/lang/String;

    .line 706
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const-string v0, "LocalProxyManager"

    const-string v1, "Initializing LocalProxyManager"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    .line 104
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public static getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;
    .registers 2

    .line 128
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sDefaultProxy:Lcom/samsung/android/knox/net/ProxyProperties;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 130
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;
    .registers 2

    .line 122
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sGlobalProxy:Lcom/samsung/android/knox/net/ProxyProperties;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 124
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/proxy/LocalProxyManager;
    .registers 3

    .line 89
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sInstance:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    if-nez v0, :cond_17

    .line 91
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyManagerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_7
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sInstance:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    if-nez v0, :cond_12

    .line 94
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sInstance:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 96
    :cond_12
    monitor-exit v1

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    return-object v0
.end method

.method private synthetic lambda$clearNotificationDialog$15()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 933
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "LocalProxyManager"

    const/16 v2, 0x3e1

    invoke-virtual {p0, v1, v2, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic lambda$clearProxyServerCache$11()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 845
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mCallbackService:Lcom/android/net/IProxyCallback;

    if-nez v0, :cond_f

    .line 846
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sPendinOperationsList:Ljava/util/List;

    const-string v1, "clearCache"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->bindProxyService()V

    goto :goto_27

    .line 850
    :cond_f
    :try_start_f
    invoke-interface {v0}, Lcom/android/net/IProxyCallback;->clearProxyServerCache()V

    .line 851
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mCallbackService:Lcom/android/net/IProxyCallback;

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->isAnyEnterpriseProxySet()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/net/IProxyCallback;->setEnterpriseProxy(Z)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1b} :catch_1c

    goto :goto_27

    :catch_1c
    move-exception p0

    const-string v0, "LocalProxyManager"

    const-string v1, "Failed to clear proxy server cache"

    .line 853
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_27
    return-void
.end method

.method public static synthetic lambda$dumpEnterpriseProxyCache$9(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/knox/net/ProxyProperties;)V
    .registers 5

    if-eqz p1, :cond_65

    if-eqz p2, :cond_65

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiProxy for ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Host: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 698
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Port: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 699
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PAC file url: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 700
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_65
    return-void
.end method

.method private synthetic lambda$getAppUidBrowserList$12(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 864
    sget-object v0, Landroid/sec/enterprise/proxy/EnterpriseProxyConstants;->LOCAL_ENTERPRISE_PROXY_WHITELIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 867
    :try_start_12
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v2

    const/16 v3, 0x80

    const/4 v4, 0x0

    .line 868
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 869
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_26

    goto :goto_6

    .line 872
    :cond_26
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2f} :catch_30

    goto :goto_6

    :catch_30
    move-exception v1

    const-string v2, "LocalProxyManager"

    const-string v3, "Failed to get browser uid list"

    .line 874
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_3c
    return-void
.end method

.method private synthetic lambda$refreshCredentialsDialogFails$13()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 887
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.PROXY_REFRESH_CREDENTIALS_DIALOG_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.mdm"

    .line 888
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 889
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic lambda$registerNetworkCallback$6()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 550
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 551
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v2, 0xc

    .line 552
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 553
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 555
    sget-object p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNetworkCallbackLock:Ljava/lang/Object;

    monitor-enter p0

    .line 556
    :try_start_20
    sput-boolean v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsNetworkCallbackRunning:Z

    .line 557
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_24

    throw v0
.end method

.method private synthetic lambda$removeDefaultProxyFromWifiNetwork$3(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 351
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_4

    :cond_17
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 354
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateProxyInWifiConfig(Ljava/lang/String;ZLandroid/net/ProxyInfo;)V

    goto :goto_4

    :cond_1d
    return-void
.end method

.method private synthetic lambda$setGlobalProxy$0()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 271
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    return-void
.end method

.method private synthetic lambda$setGlobalProxyPac$1(Landroid/net/ProxyInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearProxyServerCache()V

    return-void
.end method

.method private synthetic lambda$setProxyCredentials$16(Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 945
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mCallbackService:Lcom/android/net/IProxyCallback;

    if-nez v0, :cond_14

    .line 946
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mLastCredentialsCallback:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    .line 947
    iput-object p2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mLastCredentialsResponse:Landroid/os/Bundle;

    .line 948
    sget-object p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sPendinOperationsList:Ljava/util/List;

    const-string/jumbo p2, "setProxyCredentials"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 949
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->bindProxyService()V

    goto :goto_23

    .line 952
    :cond_14
    :try_start_14
    invoke-interface {v0, p2, p1}, Lcom/android/net/IProxyCallback;->onCredentialsReceived(Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_23

    :catch_18
    move-exception p0

    const-string p1, "LocalProxyManager"

    const-string p2, "Faield to set received credentials"

    .line 954
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_23
    return-void
.end method

.method private synthetic lambda$showCredentialsDialogNotification$14(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 900
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x50800000

    .line 901
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdm"

    const-string v2, "com.samsung.android.mdm.EnterpriseProxyAuthDialog"

    .line 903
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "proxy"

    .line 905
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 907
    iget-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x14000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 910
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 913
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    .line 914
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040a7a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 913
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x108008a

    .line 915
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 916
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 917
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 919
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "LocalProxyManager"

    const/16 v2, 0x3e1

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic lambda$startLocalProxyServer$4()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 490
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->bindToLocalProxyServer()V

    return-void
.end method

.method private synthetic lambda$stopLocalProxyServer$5()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 499
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->unbindLocalProxyServer()V

    return-void
.end method

.method private synthetic lambda$unregisterNetworkCallback$7()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 568
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 569
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNetworkCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 570
    :try_start_d
    sput-boolean v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsNetworkCallbackRunning:Z

    .line 571
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_14

    .line 572
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->handleLocalProxyServer()V

    return-void

    :catchall_14
    move-exception p0

    .line 571
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p0
.end method

.method private synthetic lambda$updateProxyInWifiConfig$2(Ljava/lang/String;ZLandroid/net/ProxyInfo;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 300
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_c

    .line 301
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\""

    const-string v4, ""

    .line 302
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    goto :goto_c

    .line 306
    :cond_33
    sget-object v2, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 307
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p1

    .line 308
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->setWifiConfigProxyProperties(Landroid/net/wifi/WifiConfiguration;ZLandroid/net/ProxyInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p3

    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$3;

    invoke-direct {v0, p0, p2}, Lcom/android/server/enterprise/proxy/LocalProxyManager$3;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Z)V

    .line 307
    invoke-virtual {p1, p3, v0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_4b
    return-void
.end method

.method public static synthetic lambda$updateWifiBackCompatCredentialsCache$10(Ljava/lang/String;Lcom/samsung/android/knox/net/AuthConfig;)V
    .registers 3

    .line 777
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 778
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiBackCompatCredentialsMapCache:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public static synthetic lambda$updateWifiProxyCache$8(Ljava/lang/String;Lcom/samsung/android/knox/net/ProxyProperties;)V
    .registers 4

    if-nez p0, :cond_f

    .line 609
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_5
    sget-object p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    monitor-exit v0

    goto :goto_18

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0

    .line 613
    :cond_f
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 614
    :try_start_12
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    monitor-exit v0

    :goto_18
    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw p0
.end method


# virtual methods
.method public final declared-synchronized bindProxyService()V
    .registers 5

    monitor-enter p0

    .line 205
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.proxyhandler"

    const-string v2, "com.android.proxyhandler.ProxyService"

    .line 206
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    new-instance v1, Lcom/android/server/enterprise/proxy/LocalProxyManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$2;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 220
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    const v3, 0x40000005    # 2.0000012f

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 222
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized bindToLocalProxyServer()V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "LocalProxyManager"

    const-string v1, "Starting enterprise proxy server"

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_15

    const-string v0, "LocalProxyManager"

    const-string v1, "No context for binding"

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_32

    .line 161
    monitor-exit p0

    return-void

    .line 164
    :cond_15
    :try_start_15
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.proxyhandler"

    const-string v2, "com.android.proxyhandler.ProxyService"

    .line 165
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    new-instance v1, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 196
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    const v3, 0x40000005    # 2.0000012f

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_30
    .catchall {:try_start_15 .. :try_end_30} :catchall_32

    .line 198
    monitor-exit p0

    return-void

    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearNotificationDialog()V
    .registers 3

    .line 930
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    const-string v1, "LocalProxyManager"

    if-eqz v0, :cond_b

    const-string v0, "Clear notification dialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_b
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_18

    .line 932
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_1d

    :cond_18
    const-string p0, "NotificationManager is null"

    .line 937
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    return-void
.end method

.method public clearProxyServerCache()V
    .registers 2

    .line 844
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final clearWifiProxyCache()V
    .registers 5

    .line 589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 590
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 591
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 593
    :cond_25
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 594
    :try_start_28
    sget-object v2, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const/4 v2, 0x0

    .line 595
    sput-object v2, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sDefaultProxy:Lcom/samsung/android/knox/net/ProxyProperties;

    .line 596
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_35

    .line 597
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->removeDefaultProxyFromWifiNetwork(Ljava/util/List;)V

    return-void

    :catchall_35
    move-exception p0

    .line 596
    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public dumpEnterpriseProxyCache(Ljava/io/PrintWriter;)V
    .registers 7

    .line 677
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object p0

    const-string v0, "PAC file url: "

    const-string v1, "Port: "

    const-string v2, "Host: "

    if-eqz p0, :cond_58

    const-string v3, "\nEnforced GlobalProxy:"

    .line 679
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 681
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "\n"

    .line 683
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 685
    :cond_58
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object p0

    if-eqz p0, :cond_aa

    const-string v3, "Enforced WifiProxy:"

    .line 687
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "\n\n"

    .line 691
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 693
    :cond_aa
    sget-object p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    if-eqz p0, :cond_c0

    sget-object p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c0

    .line 694
    sget-object p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda9;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_c0
    return-void
.end method

.method public final executePendingOperations()V
    .registers 5

    .line 365
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sPendinOperationsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 366
    :cond_9
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sPendinOperationsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 367
    iget-boolean v2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v2, :cond_35

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execute pending operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocalProxyManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_35
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "clearCache"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string/jumbo v2, "setProxyCredentials"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    goto :goto_f

    .line 376
    :cond_4a
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mLastCredentialsResponse:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mLastCredentialsCallback:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->setProxyCredentials(Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V

    .line 377
    sget-object v2, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sPendinOperationsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_f

    .line 372
    :cond_57
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearProxyServerCache()V

    .line 373
    sget-object v2, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sPendinOperationsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_60
    return-void
.end method

.method public getAppUidBrowserList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 862
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 863
    new-instance v1, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/util/List;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-object v0
.end method

.method public getAppUidFromSocketPortNumber(I)Ljava/lang/String;
    .registers 3

    const-string v0, "/proc/net/tcp"

    .line 976
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getAppUidFromTcpFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "/proc/net/tcp6"

    .line 980
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getAppUidFromTcpFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public final getAppUidFromTcpFile(Ljava/lang/String;I)Ljava/lang/String;
    .registers 12

    const-string p0, "LocalProxyManager"

    .line 645
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 647
    :try_start_7
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_c} :catch_79
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_60

    .line 648
    :try_start_c
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v3, 0x0

    .line 652
    :cond_12
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_52

    .line 653
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    add-int/2addr v3, v5

    if-le v3, v5, :cond_12

    const-string v6, " +"

    .line 656
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    .line 657
    aget-object v7, v4, v6

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 658
    aget-object v6, v4, v6

    add-int/2addr v7, v5

    .line 659
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 658
    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 660
    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    const/16 p2, 0x8

    .line 661
    aget-object p2, v4, p2
    :try_end_51
    .catchall {:try_start_c .. :try_end_51} :catchall_56

    move-object v0, p2

    .line 666
    :cond_52
    :try_start_52
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_55} :catch_79
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_60

    goto :goto_96

    :catchall_56
    move-exception p2

    .line 647
    :try_start_57
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_5f

    :catchall_5b
    move-exception v1

    :try_start_5c
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5f
    throw p2
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_5c .. :try_end_60} :catch_79
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_60} :catch_60

    :catch_60
    move-exception p2

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_96

    :catch_79
    move-exception p2

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_96
    return-object v0
.end method

.method public final getAuthConfigOrNull(Lcom/samsung/android/knox/net/ProxyProperties;Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/ProxyProperties;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/AuthConfig;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_36

    .line 534
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getAuthConfigList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_36

    .line 536
    :cond_e
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_28

    .line 537
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    move-result p2

    if-eq p2, p3, :cond_32

    :cond_28
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_36

    .line 538
    :cond_32
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getAuthConfigList()Ljava/util/List;

    move-result-object p0

    :cond_36
    :goto_36
    return-object p0
.end method

.method public final getConnectivityManagerService()Landroid/net/ConnectivityManager;
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 109
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 111
    :cond_10
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public getCurrentAppliedProxy()Lcom/samsung/android/knox/net/ProxyProperties;
    .registers 4

    .line 794
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0

    .line 795
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v1

    const-string v2, "LocalProxyManager"

    if-eqz v1, :cond_17

    .line 798
    iget-boolean p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz p0, :cond_15

    const-string p0, "Get current applied global proxy"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move-object v0, v1

    goto :goto_24

    :cond_17
    if-eqz v0, :cond_23

    .line 801
    iget-boolean p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz p0, :cond_24

    const-string p0, "Get current applied default proxy"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :cond_24
    :goto_24
    return-object v0
.end method

.method public getGlobalProxyCache()Lcom/samsung/android/knox/net/ProxyProperties;
    .registers 1

    .line 839
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object p0

    return-object p0
.end method

.method public getLocalProxyInfo()Landroid/net/ProxyInfo;
    .registers 1

    .line 241
    sget-object p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyInfo:Landroid/net/ProxyInfo;

    return-object p0
.end method

.method public getProxyCredentials(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    .line 809
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->readAuthConfigFromProxyCache(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6b

    .line 811
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6b

    .line 813
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/AuthConfig;

    .line 814
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/AuthConfig;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 815
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/AuthConfig;->getPort()I

    move-result v3

    .line 817
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/AuthConfig;->getUsername()Ljava/lang/String;

    move-result-object v4

    .line 818
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/AuthConfig;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 820
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, ":"

    if-eqz v5, :cond_4b

    if-ne v3, p2, :cond_4b

    .line 821
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v1, p0

    goto :goto_78

    .line 823
    :cond_4b
    sget-object v5, Lcom/samsung/android/knox/net/AuthConfig;->ANY_HOST:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    sget v2, Lcom/samsung/android/knox/net/AuthConfig;->ANY_PORT:I

    if-ne v3, v2, :cond_11

    .line 825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_11

    .line 829
    :cond_6b
    iget-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectedWifiSsid:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getProxyCredentialsForSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 830
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_78

    return-object p0

    :cond_78
    :goto_78
    return-object v1
.end method

.method public final getProxyCredentialsForSsid(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 628
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 630
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiBackCompatCredentialsMapCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/net/AuthConfig;

    if-eqz p1, :cond_36

    .line 633
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/AuthConfig;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 634
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/AuthConfig;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 633
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 635
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/AuthConfig;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/AuthConfig;->getPassword()Ljava/lang/String;

    move-result-object p1

    .line 635
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    :cond_36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProxyForSsid(Ljava/lang/String;)Lcom/samsung/android/knox/net/ProxyProperties;
    .registers 2

    .line 963
    sget-object p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/net/ProxyProperties;

    return-object p0
.end method

.method public final getWifiManager()Landroid/net/wifi/WifiManager;
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_10

    .line 116
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 118
    :cond_10
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method public final handleLocalProxyServer()V
    .registers 5

    .line 400
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->isDirectProxy(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result v0

    .line 401
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->isDirectProxy(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result v1

    .line 403
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->isPacProxy(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 404
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->setGlobalProxyPac()V

    goto :goto_6b

    .line 405
    :cond_1e
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->shouldStartLocalProxyServer(ZZ)Z

    move-result v2

    const-string v3, "LocalProxyManager"

    if-eqz v2, :cond_33

    .line 406
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_2f

    const-string v0, "Starting enterprise local proxy"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->startLocalProxyServer()V

    goto :goto_6b

    .line 408
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->shouldStopLocalProxyServer()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 409
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_42

    const-string v0, "Stopping enterprise local proxy"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->stopLocalProxyServer()V

    goto :goto_6b

    .line 411
    :cond_46
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->shouldUpdateWifiProxyValues(Z)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 413
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_55

    const-string v0, "Updating proxy values"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_55
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateWifiProxyValues()V

    goto :goto_6b

    .line 415
    :cond_59
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->shouldClearProxyValues(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 416
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_68

    const-string v0, "Clearing proxy values"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_68
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearProxyServerCache()V

    :cond_6b
    :goto_6b
    return-void
.end method

.method public final handleNetworkCallback()V
    .registers 2

    .line 387
    sget-boolean v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsNetworkCallbackRunning:Z

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 388
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->registerNetworkCallback()V

    goto :goto_1f

    .line 389
    :cond_10
    sget-boolean v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsNetworkCallbackRunning:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 390
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->unregisterNetworkCallback()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public final isAnyEnterpriseProxySet()Z
    .registers 1

    .line 582
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object p0

    if-nez p0, :cond_f

    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public final isDirectProxy(Lcom/samsung/android/knox/net/ProxyProperties;)Z
    .registers 2

    if-eqz p1, :cond_e

    .line 472
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final isPacProxy(Lcom/samsung/android/knox/net/ProxyProperties;)Z
    .registers 2

    if-eqz p1, :cond_e

    .line 482
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final readAuthConfigFromProxyCache(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/AuthConfig;",
            ">;"
        }
    .end annotation

    .line 512
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0

    .line 513
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v1

    const-string v2, " port "

    const-string v3, "LocalProxyManager"

    if-eqz v1, :cond_31

    .line 516
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading auth config for global proxy "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_2c
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getAuthConfigOrNull(Lcom/samsung/android/knox/net/ProxyProperties;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_31
    if-eqz v0, :cond_56

    .line 519
    iget-boolean v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v1, :cond_51

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading auth config for default proxy "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_51
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getAuthConfigOrNull(Lcom/samsung/android/knox/net/ProxyProperties;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_56
    const/4 p0, 0x0

    return-object p0
.end method

.method public refreshCredentialsDialogFails()V
    .registers 3

    .line 884
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "LocalProxyManager"

    const-string v1, "Refresh proxy credentials dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_b
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_10

    return-void

    .line 886
    :cond_10
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final declared-synchronized registerNetworkCallback()V
    .registers 3

    monitor-enter p0

    .line 547
    :try_start_1
    sget-boolean v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsNetworkCallbackRunning:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 548
    :cond_7
    :try_start_7
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_12

    const-string v0, "LocalProxyManager"

    const-string v1, "Register proxy network callback for wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_12
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1c

    .line 559
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final removeDefaultProxyFromWifiNetwork(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 350
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/util/List;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public removeWifiProxy(Ljava/lang/String;)V
    .registers 4

    .line 786
    iget-boolean p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz p0, :cond_1a

    const-string p0, "LocalProxyManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing wifi proxy for ssid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_1a
    sget-object p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter p0

    .line 788
    :try_start_1d
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_24

    throw p1
.end method

.method public final declared-synchronized setGlobalProxy()V
    .registers 3

    monitor-enter p0

    .line 268
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 269
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_12

    const-string v0, "LocalProxyManager"

    const-string v1, "Updating enterprise global proxy value"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_12
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 273
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearProxyServerCache()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 275
    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setGlobalProxyPac()V
    .registers 4

    .line 281
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/utils/NetworkUtils;->convertToProxyInfo(Lcom/samsung/android/knox/net/ProxyProperties;)Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 282
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 283
    iget-boolean v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v1, :cond_21

    const-string v1, "LocalProxyManager"

    const-string v2, "Set global PAC proxy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_21
    new-instance v1, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Landroid/net/ProxyInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_29
    return-void
.end method

.method public final declared-synchronized setLocalProxyPort(I)V
    .registers 5

    monitor-enter p0

    .line 231
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_1b

    const-string v0, "LocalProxyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set local proxy port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_1b
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_32

    .line 233
    :try_start_1e
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;I)Landroid/net/ProxyInfo;

    move-result-object p1

    sput-object p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyInfo:Landroid/net/ProxyInfo;

    .line 234
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_2f

    .line 235
    :try_start_27
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateGlobalProxyValues()V

    .line 236
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateWifiProxyValues()V
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_32

    .line 237
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception p1

    .line 234
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw p1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProxyCredentials(Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V
    .registers 5

    .line 943
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "LocalProxyManager"

    const-string v1, "Set proxy credentials callback to proxy server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_b
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;Landroid/os/Bundle;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final setWifiConfigProxyProperties(Landroid/net/wifi/WifiConfiguration;ZLandroid/net/ProxyInfo;)Landroid/net/wifi/WifiConfiguration;
    .registers 5

    .line 337
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object p0

    if-eqz p2, :cond_9

    .line 338
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_b

    :cond_9
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    :goto_b
    if-eqz p2, :cond_e

    goto :goto_f

    :cond_e
    const/4 p3, 0x0

    .line 340
    :goto_f
    invoke-virtual {p0, v0}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 341
    invoke-virtual {p0, p3}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 342
    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    return-object p1
.end method

.method public final shouldClearProxyValues(ZZ)Z
    .registers 3

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final shouldStartLocalProxyServer(ZZ)Z
    .registers 3

    .line 430
    sget-boolean p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsLocalProxyServerRunning:Z

    if-nez p0, :cond_a

    if-nez p1, :cond_8

    if-eqz p2, :cond_a

    :cond_8
    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final shouldStopLocalProxyServer()Z
    .registers 2

    .line 440
    sget-boolean v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsLocalProxyServerRunning:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->isAnyEnterpriseProxySet()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final shouldUpdateWifiProxyValues(Z)Z
    .registers 2

    .line 450
    sget-boolean p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsLocalProxyServerRunning:Z

    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public showCredentialsDialogNotification(Ljava/lang/String;)V
    .registers 4

    .line 895
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    const-string v1, "LocalProxyManager"

    if-eqz v0, :cond_b

    const-string v0, "Show credentials dialog notification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_b
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_10

    return-void

    .line 898
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1d

    .line 899
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_22

    :cond_1d
    const-string p0, "NotificationManager is null"

    .line 924
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    return-void
.end method

.method public final startLocalProxyServer()V
    .registers 2

    .line 489
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final stopLocalProxyServer()V
    .registers 2

    .line 498
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final declared-synchronized unbindLocalProxyServer()V
    .registers 3

    monitor-enter p0

    .line 137
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_2d

    const-string v0, "LocalProxyManager"

    const-string v1, "Stopping enterprise proxy server"

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearProxyServerCache()V

    .line 140
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearNotificationDialog()V

    .line 141
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1b

    .line 142
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1b
    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 145
    iput-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mCallbackService:Lcom/android/net/IProxyCallback;

    .line 146
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_2f

    .line 147
    :try_start_23
    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyInfo:Landroid/net/ProxyInfo;

    const/4 v0, 0x0

    .line 148
    sput-boolean v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsLocalProxyServerRunning:Z

    .line 149
    monitor-exit v1

    goto :goto_2d

    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2f

    .line 151
    :cond_2d
    :goto_2d
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized unregisterNetworkCallback()V
    .registers 3

    monitor-enter p0

    .line 565
    :try_start_1
    sget-boolean v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsNetworkCallbackRunning:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 566
    :cond_7
    :try_start_7
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_12

    const-string v0, "LocalProxyManager"

    const-string v1, "Unregister proxy network callback for wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_12
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1c

    .line 574
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateGlobalProxy(Lcom/samsung/android/knox/net/ProxyProperties;)V
    .registers 4

    .line 753
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "LocalProxyManager"

    const-string v1, "Updating global proxy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_b
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 755
    :try_start_e
    sput-object p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sGlobalProxy:Lcom/samsung/android/knox/net/ProxyProperties;

    .line 756
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_15

    .line 757
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->handleLocalProxyServer()V

    return-void

    :catchall_15
    move-exception p0

    .line 756
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final updateGlobalProxyValues()V
    .registers 3

    .line 248
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->isDirectProxy(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 249
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_15

    const-string v0, "LocalProxyManager"

    const-string v1, "Updating enterprise global proxy values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->setGlobalProxy()V

    :cond_18
    return-void
.end method

.method public final declared-synchronized updateProxyInWifiConfig(Ljava/lang/String;ZLandroid/net/ProxyInfo;)V
    .registers 5

    monitor-enter p0

    .line 296
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_13

    if-eqz v0, :cond_9

    monitor-exit p0

    return-void

    .line 297
    :cond_9
    :try_start_9
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/String;ZLandroid/net/ProxyInfo;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_13

    .line 327
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateWifiBackCompatCredentialsCache(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/net/AuthConfig;",
            ">;)V"
        }
    .end annotation

    .line 774
    iget-boolean p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz p0, :cond_b

    const-string p0, "LocalProxyManager"

    const-string v0, "Updating backwards wifi proxy cache"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-eqz p1, :cond_1c

    .line 775
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_1c

    .line 776
    :cond_14
    new-instance p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda5;

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public updateWifiProxy(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/net/ProxyProperties;",
            ">;)V"
        }
    .end annotation

    .line 762
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "LocalProxyManager"

    const-string v1, "Updating wifi proxy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-nez p1, :cond_11

    .line 765
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearWifiProxyCache()V

    goto :goto_14

    .line 767
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateWifiProxyCache(Ljava/util/Map;)V

    .line 769
    :goto_14
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->handleNetworkCallback()V

    return-void
.end method

.method public final updateWifiProxyCache(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/net/ProxyProperties;",
            ">;)V"
        }
    .end annotation

    .line 606
    new-instance p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda7;

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final updateWifiProxyValues()V
    .registers 4

    .line 258
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->isDirectProxy(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 259
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_15

    const-string v0, "LocalProxyManager"

    const-string v1, "Updating enterprise wifi proxy values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_15
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectedWifiSsid:Ljava/lang/String;

    const/4 v1, 0x1

    sget-object v2, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateProxyInWifiConfig(Ljava/lang/String;ZLandroid/net/ProxyInfo;)V

    :cond_1d
    return-void
.end method
