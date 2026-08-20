.class Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;
.super Ljava/lang/Object;
.source "GnssNetworkConnectivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;,
        Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;,
        Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;
    }
.end annotation


# static fields
.field public static final AGNSS_NET_CAPABILITY_NOT_METERED:I = 0x1

.field public static final AGNSS_NET_CAPABILITY_NOT_ROAMING:I = 0x2

.field public static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field public static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field public static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field public static final AGPS_RELEASE_CONNECTION_DELAY_MILLIS:J = 0xc8L

.field public static final AGPS_TYPE_C2K:I = 0x2

.field public static final AGPS_TYPE_EIMS:I = 0x3

.field public static final AGPS_TYPE_IMS:I = 0x4

.field public static final AGPS_TYPE_SUPL:I = 0x1

.field public static final APN_INVALID:I = 0x0

.field public static final APN_IPV4:I = 0x1

.field public static final APN_IPV4V6:I = 0x3

.field public static final APN_IPV6:I = 0x2

.field public static final DEBUG:Z = true

.field public static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field public static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field public static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field public static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field public static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field public static final HASH_MAP_INITIAL_CAPACITY_TO_TRACK_CONNECTED_NETWORKS:I = 0x5

.field public static final SUPL_NETWORK_REQUEST_TIMEOUT_MILLIS:I = 0x4e20

.field public static final TAG:Ljava/lang/String; = "GnssNetworkConnectivityHandler"

.field public static final VERBOSE:Z

.field public static final WAKELOCK_KEY:Ljava/lang/String; = "GnssNetworkConnectivityHandler"

.field public static final WAKELOCK_KEY_SEC:Ljava/lang/String; = "GnssNetworkConnectivityHandler_SEC"

.field public static final WAKELOCK_TIMEOUT_MILLIS:J = 0xea60L

.field public static final WAKELOCK_TIMEOUT_MILLIS_SEC:J = 0x4e20L


# instance fields
.field public mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

.field public mAGpsDataConnectionState:I

.field public mAGpsType:I

.field public mActiveSubId:I

.field public mAvailableNetworkAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Network;",
            "Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public mCachedApn:Ljava/lang/String;

.field public mCachedApnIpType:I

.field public mCachedNetworkHandle:J

.field public mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

.field public final mConnMgr:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public mEmergencyConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public final mGnssNetworkListener:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;

.field public mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

.field public final mHandler:Landroid/os/Handler;

.field public mIsAgpsDataConnectionClosing:Z

.field public mIsConnectEmergencyNetwork:Z

.field public mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public final mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field public mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field public mPhoneStateListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field public mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mWakeLock_sec:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$1iHAwm_0hfzMLGE390dv-IASsU8(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->lambda$onReportAGpsStatus$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$H1yIjFZ8nKgMgR782JFSuWdVXHY(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I[B)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->lambda$onReportAGpsStatus$0(I[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$xr0ldxrACwQc1sACfK6EpICtwxs(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->lambda$runEventAndReleaseWakeLock$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActiveSubId(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)I
    .registers 1

    iget p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGnssNetworkListener(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssNetworkListener:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPhoneStateListeners(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mPhoneStateListeners:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmActiveSubId(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsConnectEmergencyNetwork(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mIsConnectEmergencyNetwork:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPhoneStateListeners(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Ljava/util/HashMap;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mPhoneStateListeners:Ljava/util/HashMap;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleReleaseSuplConnection(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleReleaseSuplConnection(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSuplConnectionAvailable(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleSuplConnectionAvailable(Landroid/net/Network;Landroid/net/LinkProperties;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUpdateNetworkState(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleUpdateNetworkState(Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetVERBOSE()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->VERBOSE:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "GnssNetworkConnectivityHandler"

    const/4 v1, 0x2

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V
    .registers 9

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 122
    iput v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    .line 128
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->getInstance()Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 129
    invoke-static {}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getInstance()Lcom/android/server/location/gnss/sec/CarrierConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mIsConnectEmergencyNetwork:Z

    const/4 v1, 0x0

    .line 132
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mIsAgpsDataConnectionClosing:Z

    const-wide/16 v2, 0x0

    .line 133
    iput-wide v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mCachedNetworkHandle:J

    const-string v2, ""

    .line 134
    iput-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mCachedApn:Ljava/lang/String;

    .line 135
    iput v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mCachedApnIpType:I

    .line 218
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    .line 219
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssNetworkListener:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;

    .line 220
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    .line 222
    new-instance p3, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;

    .line 223
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p3, p0, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 296
    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    if-eqz p2, :cond_4f

    .line 298
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {p2, p3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :cond_4f
    const-string/jumbo p2, "power"

    .line 301
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    const-string p3, "GnssNetworkConnectivityHandler"

    .line 302
    invoke-virtual {p2, v0, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 304
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p3}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p3

    if-eqz p3, :cond_78

    iget-object p3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {p3}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaMarket()Z

    move-result p3

    if-eqz p3, :cond_78

    const-string p3, "GnssNetworkConnectivityHandler_SEC"

    .line 305
    invoke-virtual {p2, v0, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock_sec:Landroid/os/PowerManager$WakeLock;

    .line 309
    :cond_78
    iput-object p4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    const-string p2, "connectivity"

    .line 310
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 p1, 0x0

    .line 311
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 314
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p1

    if-nez p1, :cond_aa

    iget-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 315
    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isCanadaMarket()Z

    move-result p1

    if-nez p1, :cond_9f

    iget-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUSAMarket()Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 316
    :cond_9f
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->createEmergencyConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mEmergencyConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 317
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->registerEmergencyNetworkCallbacks()V

    .line 318
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mIsConnectEmergencyNetwork:Z

    :cond_aa
    return-void
.end method

.method private synthetic lambda$onReportAGpsStatus$0(I[B)V
    .registers 3

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleRequestSuplConnection(I[B)V

    return-void
.end method

.method private synthetic lambda$onReportAGpsStatus$1()V
    .registers 2

    const/4 v0, 0x2

    .line 421
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleReleaseSuplConnection(I)V

    return-void
.end method

.method private synthetic lambda$runEventAndReleaseWakeLock$2(Ljava/lang/Runnable;)V
    .registers 2

    .line 552
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_9

    .line 554
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_9
    move-exception p1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 555
    throw p1
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(JLjava/lang/String;I)V
.end method

.method private static native native_is_agps_ril_supported()Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;JS)V
.end method


# virtual methods
.method public final agpsDataConnStateAsString()Ljava/lang/String;
    .registers 3

    .line 844
    iget v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-eqz v0, :cond_29

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Unknown>("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    const-string p0, "OPEN"

    return-object p0

    :cond_26
    const-string p0, "OPENING"

    return-object p0

    :cond_29
    const-string p0, "CLOSED"

    return-object p0
.end method

.method public final agpsDataConnStatusAsString(I)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_32

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2f

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2c

    const/4 p0, 0x4

    if-eq p1, p0, :cond_29

    const/4 p0, 0x5

    if-eq p1, p0, :cond_26

    .line 872
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<Unknown>("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    const-string p0, "FAILED"

    return-object p0

    :cond_29
    const-string p0, "DONE"

    return-object p0

    :cond_2c
    const-string p0, "CONNECTED"

    return-object p0

    :cond_2f
    const-string p0, "RELEASE"

    return-object p0

    :cond_32
    const-string p0, "REQUEST"

    return-object p0
.end method

.method public final agpsTypeAsString(I)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2c

    const/4 p0, 0x2

    if-eq p1, p0, :cond_29

    const/4 p0, 0x3

    if-eq p1, p0, :cond_26

    const/4 p0, 0x4

    if-eq p1, p0, :cond_23

    .line 887
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<Unknown>("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    const-string p0, "IMS"

    return-object p0

    :cond_26
    const-string p0, "EIMS"

    return-object p0

    :cond_29
    const-string p0, "C2K"

    return-object p0

    :cond_2c
    const-string p0, "SUPL"

    return-object p0
.end method

.method public final createEmergencyConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 2

    .line 516
    new-instance v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$4;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V

    return-object v0
.end method

.method public final createNetworkConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 2

    .line 435
    new-instance v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V

    return-object v0
.end method

.method public final createSuplConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 2

    .line 487
    new-instance v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V

    return-object v0
.end method

.method public final ensureInHandlerThread()V
    .registers 2

    .line 834
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-ne v0, p0, :cond_11

    return-void

    .line 837
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This method must run on the Handler thread."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLinkIpType(Landroid/net/LinkProperties;)I
    .registers 7

    .line 892
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->ensureInHandlerThread()V

    .line 896
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object p0

    .line 897
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 898
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 899
    instance-of v4, v2, Ljava/net/Inet4Address;

    if-eqz v4, :cond_25

    move v0, v3

    goto :goto_2a

    .line 901
    :cond_25
    instance-of v4, v2, Ljava/net/Inet6Address;

    if-eqz v4, :cond_2a

    move v1, v3

    .line 904
    :cond_2a
    :goto_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LinkAddress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GnssNetworkConnectivityHandler"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_45
    if-eqz v0, :cond_4b

    if-eqz v1, :cond_4b

    const/4 p0, 0x3

    return p0

    :cond_4b
    if-eqz v0, :cond_4e

    return v3

    :cond_4e
    if-eqz v1, :cond_52

    const/4 p0, 0x2

    return p0

    :cond_52
    return p1
.end method

.method public final getLinkIpTypeSec(Ljava/lang/String;)I
    .registers 14

    const-string v0, "GnssNetworkConnectivityHandler"

    .line 921
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->ensureInHandlerThread()V

    const/4 v1, 0x0

    if-nez p1, :cond_9

    return v1

    .line 925
    :cond_9
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    .line 926
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 929
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v3

    if-eqz v3, :cond_27

    iget v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    if-ltz v3, :cond_27

    .line 931
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    if-eqz v3, :cond_27

    move-object v2, v3

    .line 936
    :cond_27
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 942
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v3

    if-eqz v3, :cond_37

    const-string/jumbo v3, "roaming_protocol"

    goto :goto_3a

    :cond_37
    const-string/jumbo v3, "protocol"

    .line 948
    :goto_3a
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez v2, :cond_52

    iget v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsType:I

    if-ne v4, v2, :cond_52

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string/jumbo v6, "type like \'%%emergency%%\' and apn = \'%s\' and carrier_enabled = 1"

    .line 950
    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5c

    :cond_52
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string v6, "current = 1 and apn = \'%s\' and carrier_enabled = 1"

    .line 953
    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_5c
    move-object v9, v2

    .line 955
    :try_start_5d
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-array v8, v5, [Ljava/lang/String;

    aput-object v3, v8, v1

    const/4 v10, 0x0

    const-string/jumbo v11, "name ASC"

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_71} :catch_ac

    if-eqz v2, :cond_87

    .line 961
    :try_start_73
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 962
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->translateToApnIpTypeSec(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_81
    .catchall {:try_start_73 .. :try_end_81} :catchall_85

    .line 966
    :try_start_81
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_ac

    return p0

    :catchall_85
    move-exception p0

    goto :goto_a1

    .line 964
    :cond_87
    :try_start_87
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No entry found in query for APN: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_87 .. :try_end_9b} :catchall_85

    if-eqz v2, :cond_c1

    .line 966
    :try_start_9d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a0} :catch_ac

    goto :goto_c1

    :goto_a1
    if-eqz v2, :cond_ab

    .line 955
    :try_start_a3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a7

    goto :goto_ab

    :catchall_a7
    move-exception v1

    :try_start_a8
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_ab
    :goto_ab
    throw p0
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ac} :catch_ac

    :catch_ac
    move-exception p0

    .line 967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error encountered on APN query for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c1
    :goto_c1
    return v4
.end method

.method public final getNetworkCapability(I)I
    .registers 4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_26

    const/4 v0, 0x2

    if-eq p1, v0, :cond_26

    const/4 p0, 0x3

    if-eq p1, p0, :cond_24

    const/4 p0, 0x4

    if-ne p1, p0, :cond_d

    return p0

    .line 779
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "agpsType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    const/16 p0, 0xa

    :cond_26
    return p0
.end method

.method public final handleReleaseSuplConnection(I)V
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 787
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 788
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStatusAsString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string/jumbo v2, "releaseSuplConnection, state=%s, status=%s"

    .line 785
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssNetworkConnectivityHandler"

    .line 789
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iput-boolean v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mIsAgpsDataConnectionClosing:Z

    .line 795
    iget v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-nez v1, :cond_24

    return-void

    .line 799
    :cond_24
    iput v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 800
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v1, :cond_32

    .line 801
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v1, 0x0

    .line 802
    iput-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_32
    if-eq p1, v0, :cond_50

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4c

    .line 812
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid status to release SUPL connection: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 806
    :cond_4c
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_agps_data_conn_failed()V

    goto :goto_53

    .line 809
    :cond_50
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_agps_data_conn_closed()V

    :goto_53
    return-void
.end method

.method public final handleRequestSuplConnection(I[B)V
    .registers 8

    const/4 v0, 0x0

    .line 692
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 693
    iput p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsType:I

    const-string v1, "GnssNetworkConnectivityHandler"

    if-eqz p2, :cond_57

    .line 695
    sget-boolean v2, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->VERBOSE:Z

    if-eqz v2, :cond_25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received SUPL IP addr[]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_25
    :try_start_25
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 698
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IP address converted to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/net/UnknownHostException; {:try_start_25 .. :try_end_41} :catch_42

    goto :goto_57

    :catch_42
    move-exception v2

    .line 700
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad IP Address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_57
    :goto_57
    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    .line 707
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p2, v3

    .line 708
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsTypeAsString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, p2, v2

    const/4 p1, 0x2

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    aput-object v4, p2, p1

    const-string/jumbo p1, "requestSuplConnection, state=%s, agpsType=%s, address=%s"

    .line 705
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 710
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-eqz p1, :cond_7c

    return-void

    .line 716
    :cond_7c
    iput v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 721
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 722
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {p2}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isJapanDocomo()Z

    move-result p2

    if-eqz p2, :cond_9c

    iget-object p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 723
    invoke-virtual {p2}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p2

    if-nez p2, :cond_9c

    const-string p2, "JPN_DCM do not use Emergency PDN"

    .line 724
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {p1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    goto :goto_ad

    .line 726
    :cond_9c
    iget-boolean p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mIsConnectEmergencyNetwork:Z

    if-nez p2, :cond_a4

    .line 727
    invoke-virtual {p1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    goto :goto_ad

    .line 729
    :cond_a4
    iget p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsType:I

    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->getNetworkCapability(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 731
    :goto_ad
    invoke-virtual {p1, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 734
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {p2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result p2

    if-eqz p2, :cond_e5

    iget p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    if-ltz p2, :cond_e5

    .line 735
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding Network Specifier: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    const/16 p2, 0xd

    .line 737
    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    goto :goto_11c

    .line 739
    :cond_e5
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p2}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p2

    if-nez p2, :cond_11c

    .line 740
    invoke-static {}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->getSubIdForSuplNi()I

    move-result p2

    .line 741
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_11c

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setNetworkSpecifier after DSDS policy. Sim sub id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    new-instance v2, Landroid/net/TelephonyNetworkSpecifier$Builder;

    invoke-direct {v2}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    .line 745
    invoke-virtual {v2, p2}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    move-result-object p2

    .line 746
    invoke-virtual {p2}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    move-result-object p2

    .line 744
    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    .line 750
    :cond_11c
    :goto_11c
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 752
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz p2, :cond_129

    .line 753
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, p2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 755
    :cond_129
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->createSuplConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 757
    :try_start_12f
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x4e20

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;I)V
    :try_end_138
    .catch Ljava/lang/RuntimeException; {:try_start_12f .. :try_end_138} :catch_139

    goto :goto_145

    :catch_139
    move-exception p1

    const-string p2, "Failed to request network."

    .line 763
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 764
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 p1, 0x5

    .line 765
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleReleaseSuplConnection(I)V

    :goto_145
    return-void
.end method

.method public final handleSuplConnectionAvailable(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 9

    .line 631
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 634
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 640
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v5, 0x2

    aput-object v0, v2, v5

    const-string/jumbo v0, "handleSuplConnectionAvailable: state=%s, suplNetwork=%s, info=%s"

    .line 638
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GnssNetworkConnectivityHandler"

    .line 643
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    if-ne v0, v3, :cond_7e

    if-nez v1, :cond_32

    const-string v1, "dummy-apn"

    .line 656
    :cond_32
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    if-eqz v0, :cond_39

    .line 657
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->setRouting()V

    .line 665
    :cond_39
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 666
    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUsaTmbServerCarrier()Z

    move-result v0

    if-eqz v0, :cond_53

    const-string p2, "Set IpType for TMB SUPL connection"

    .line 667
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->getLinkIpTypeSec(Ljava/lang/String;)I

    move-result p2

    goto :goto_57

    .line 670
    :cond_53
    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->getLinkIpType(Landroid/net/LinkProperties;)I

    move-result p2

    :goto_57
    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v4

    .line 678
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const-string/jumbo v3, "native_agps_data_conn_open: mAgpsApn=%s, mApnIpType=%s"

    .line 675
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mCachedNetworkHandle:J

    .line 684
    iput-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mCachedApn:Ljava/lang/String;

    .line 685
    iput p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mCachedApnIpType:I

    .line 686
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v1, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_agps_data_conn_open(JLjava/lang/String;I)V

    .line 687
    iput v5, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    :cond_7e
    return-void
.end method

.method public final handleUpdateNetworkState(Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V
    .registers 16

    .line 562
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    if-eqz p2, :cond_18

    .line 564
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    move v7, v0

    goto :goto_1c

    :cond_1b
    move v7, v2

    .line 566
    :goto_1c
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->updateTrackedNetworksState(ZLandroid/net/Network;Landroid/net/NetworkCapabilities;)Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;

    move-result-object p3

    .line 568
    invoke-static {p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->-$$Nest$fgetmApn(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;)Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-static {p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->-$$Nest$fgetmType(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;)I

    move-result v5

    .line 572
    invoke-static {p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->-$$Nest$fgetmCapabilities(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;)Landroid/net/NetworkCapabilities;

    move-result-object p3

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    .line 576
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 577
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v2, 0x2

    aput-object p1, v3, v2

    const/4 v2, 0x3

    aput-object p3, v3, v2

    const/4 v2, 0x4

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    .line 580
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string/jumbo v2, "updateNetworkState, state=%s, connected=%s, network=%s, capabilities=%s, availableNetworkCount: %d"

    .line 573
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GnssNetworkConnectivityHandler"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-static {}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_is_agps_ril_supported()Z

    move-result v2

    if-eqz v2, :cond_7c

    const/16 v2, 0x12

    .line 586
    invoke-virtual {p3, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    xor-int/lit8 v6, v2, 0x1

    if-eqz v0, :cond_6b

    goto :goto_6d

    :cond_6b
    const-string v0, ""

    :goto_6d
    move-object v8, v0

    .line 590
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v9

    .line 591
    invoke-static {p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->-$$Nest$smgetCapabilityFlags(Landroid/net/NetworkCapabilities;)S

    move-result v11

    move-object v3, p0

    move v4, p2

    .line 583
    invoke-direct/range {v3 .. v11}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_update_network_state(ZIZZLjava/lang/String;JS)V

    goto :goto_81

    :cond_7c
    const-string p0, "Skipped network state update because GPS HAL AGPS-RIL is not  supported"

    .line 593
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_81
    return-void
.end method

.method public isAgpsDataConnectionClosing()Z
    .registers 1

    .line 991
    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mIsAgpsDataConnectionClosing:Z

    return p0
.end method

.method public isDataNetworkConnected()Z
    .registers 1

    .line 379
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 380
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public onReportAGpsStatus(II[B)V
    .registers 7

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGPS_DATA_CONNECTION: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStatusAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssNetworkConnectivityHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_70

    if-eq p2, v0, :cond_3f

    const/4 p0, 0x3

    if-eq p2, p0, :cond_b0

    const/4 p0, 0x4

    if-eq p2, p0, :cond_b0

    const/4 p0, 0x5

    if-eq p2, p0, :cond_b0

    .line 430
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Received unknown AGPS status: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b0

    .line 414
    :cond_3f
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p1

    if-eqz p1, :cond_63

    iget-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaMarket()Z

    move-result p1

    if-eqz p1, :cond_63

    .line 415
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock_sec:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_63

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_63

    const-string p1, "-- GnssNetworkConnectivityHandler_SEC wake lock"

    .line 416
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock_sec:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 421
    :cond_63
    new-instance p1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V

    const-wide/16 p2, 0xc8

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->runOnHandler(Ljava/lang/Runnable;IJ)V

    .line 423
    iput-boolean v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mIsAgpsDataConnectionClosing:Z

    goto :goto_b0

    .line 395
    :cond_70
    iget-boolean p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mIsAgpsDataConnectionClosing:Z

    if-eqz p2, :cond_86

    .line 396
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x0

    .line 397
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mIsAgpsDataConnectionClosing:Z

    .line 398
    iget-wide p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mCachedNetworkHandle:J

    iget-object p3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mCachedApn:Ljava/lang/String;

    iget v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mCachedApnIpType:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_agps_data_conn_open(JLjava/lang/String;I)V

    goto :goto_b0

    .line 401
    :cond_86
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    invoke-virtual {p2}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    move-result p2

    if-eqz p2, :cond_a6

    iget-object p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {p2}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaMarket()Z

    move-result p2

    if-eqz p2, :cond_a6

    .line 402
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock_sec:Landroid/os/PowerManager$WakeLock;

    if-eqz p2, :cond_a6

    const-string p2, "++ GnssNetworkConnectivityHandler_SEC wake lock"

    .line 403
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock_sec:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x4e20

    invoke-virtual {p2, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 408
    :cond_a6
    new-instance p2, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I[B)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p2, v2, v0, v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->runOnHandler(Ljava/lang/Runnable;IJ)V

    :cond_b0
    :goto_b0
    return-void
.end method

.method public final registerEmergencyNetworkCallbacks()V
    .registers 3

    .line 367
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xa

    .line 368
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 369
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mEmergencyConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public registerNetworkCallbacks()V
    .registers 4

    .line 355
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 356
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/16 v1, 0x10

    .line 357
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/16 v1, 0xf

    .line 358
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 359
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 360
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->createNetworkConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 361
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public final runEventAndReleaseWakeLock(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 3

    .line 550
    new-instance v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final runOnHandler(Ljava/lang/Runnable;IJ)V
    .registers 8

    .line 543
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 544
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->runEventAndReleaseWakeLock(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    move-result p1

    if-nez p1, :cond_19

    .line 545
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_19
    return-void
.end method

.method public final setRouting()V
    .registers 4

    .line 819
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    const-string v1, "GnssNetworkConnectivityHandler"

    if-nez v0, :cond_24

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error requesting route to host: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 826
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully requested route to host: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-void
.end method

.method public final translateToApnIpTypeSec(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    const-string p0, "IP"

    .line 974
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_a

    return v0

    :cond_a
    const-string p0, "IPV6"

    .line 977
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x2

    if-eqz p0, :cond_14

    return v1

    :cond_14
    const-string p0, "IPV4V6"

    .line 980
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v2, 0x3

    if-eqz p0, :cond_1e

    return v2

    :cond_1e
    new-array p0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p0, v1

    aput-object p2, p0, v0

    const-string p1, "Unknown IP Protocol: %s, for APN: %s"

    .line 985
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "GnssNetworkConnectivityHandler"

    .line 986
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final updateTrackedNetworksState(ZLandroid/net/Network;Landroid/net/NetworkCapabilities;)Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;
    .registers 5

    if-nez p1, :cond_b

    .line 601
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;

    return-object p0

    .line 604
    :cond_b
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;

    if-eqz p1, :cond_19

    .line 607
    invoke-static {p1, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->-$$Nest$fputmCapabilities(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;Landroid/net/NetworkCapabilities;)V

    return-object p1

    .line 612
    :cond_19
    new-instance p1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes-IA;)V

    .line 613
    invoke-static {p1, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->-$$Nest$fputmCapabilities(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;Landroid/net/NetworkCapabilities;)V

    .line 617
    iget-object p3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {p3, p2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p3

    if-eqz p3, :cond_38

    .line 619
    invoke-virtual {p3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->-$$Nest$fputmApn(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;Ljava/lang/String;)V

    .line 620
    invoke-virtual {p3}, Landroid/net/NetworkInfo;->getType()I

    move-result p3

    invoke-static {p1, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->-$$Nest$fputmType(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;I)V

    .line 624
    :cond_38
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
