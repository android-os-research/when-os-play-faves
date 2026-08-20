.class Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;
.super Ljava/lang/Object;
.source "WifiGeofenceManager.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/autowifi/GeofenceController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;,
        Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;,
        Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;,
        Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceState;
    }
.end annotation


# static fields
.field static final ACTION_GEOFENCE_MONITORING:Ljava/lang/String; = "com.samsung.android.wifi.GEOFENCE"

.field private static final ACTION_MEASURE_NETWORK_LOCATION:Ljava/lang/String; = "com.samsung.android.wifi.NETWORK_LOCATION"

.field private static final DBG:Z

.field public static final GEOFENCE_STATE_ENTER:I = 0x1

.field public static final GEOFENCE_STATE_EXIT:I = 0x2

.field public static final GEOFENCE_STATE_UNKNOWN:I = 0x0

.field static final INVALID_GEOFENCE_ID:I = -0x1

.field static final MAX_GEOFENCE_NETWORK_SIZE:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "AutoWifi.Geofence"


# instance fields
.field private final mAvailableGeopointIds:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final mGeofenceConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mGeofenceDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;

.field private final mGeofenceEnteredNetworks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mGeofenceReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHandler:Lcom/samsung/android/server/wifi/util/SemWifiHandler;

.field private final mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

.field private mListener:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mLock:Ljava/lang/Object;

.field final mNetworkLocationReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mNotAddedGeofenceNetworksFromDb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;",
            ">;"
        }
    .end annotation
.end field

.field final mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method public static synthetic $r8$lambda$B4wQgu2JxhbRCbNEh9m8aysngNY(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->lambda$saveGeofenceConfigurationToDb$1(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JIv4ajoioHVBHqt5blPA8NKtjqg(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->lambda$clearAll$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$vryedSSW1rzN5y0gjoxUWpsOAjI(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->lambda$removeGeofenceConfigurationFromDb$2(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGeofenceConfigs(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Lcom/samsung/android/server/wifi/util/SemWifiHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mHandler:Lcom/samsung/android/server/wifi/util/SemWifiHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastMeasurement(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mListener:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSemLocationManager(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;Lcom/samsung/android/location/SemLocationManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartMonitoring(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->startMonitoring()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNetworkLocation(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;Z)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->updateNetworkLocation(Z)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 55
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->DBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/util/LocalLog;)V
    .registers 11

    .line 92
    new-instance v4, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;

    invoke-direct {v4, p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/util/LocalLog;

    const/16 p4, 0x1f4

    invoke-direct {v5, p4}, Landroid/util/LocalLog;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;Landroid/util/LocalLog;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;Landroid/util/LocalLog;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;-><init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement-IA;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceEnteredNetworks:Ljava/util/Set;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mNotAddedGeofenceNetworksFromDb:Ljava/util/Set;

    .line 84
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mAvailableGeopointIds:Ljava/util/TreeMap;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    .line 618
    new-instance v0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;-><init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

    .line 643
    new-instance v0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$3;-><init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mNetworkLocationReceiver:Landroid/content/BroadcastReceiver;

    .line 665
    new-instance v0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;-><init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 100
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 101
    new-instance p3, Lcom/samsung/android/server/wifi/util/SemWifiHandler;

    const-string v0, "AutoWifi.Geofence"

    invoke-direct {p3, v0, p2}, Lcom/samsung/android/server/wifi/util/SemWifiHandler;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mHandler:Lcom/samsung/android/server/wifi/util/SemWifiHandler;

    .line 102
    iput-object p4, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;

    .line 103
    iput-object p5, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLocalLog:Landroid/util/LocalLog;

    .line 105
    new-instance p2, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;-><init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string p3, "com.samsung.android.location.SERVICE_READY"

    invoke-direct {p0, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private addAndMonitorGeofence(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;Z)V
    .registers 12

    .line 433
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-nez p2, :cond_36

    .line 434
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mAvailableGeopointIds:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    .line 435
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mAvailableGeopointIds:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 436
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 437
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->setGeofenceId(I)V

    .line 438
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 439
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mAvailableGeopointIds:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_36
    new-instance v0, Lcom/samsung/android/location/SemGeopointGeofence;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getLatitude()D

    move-result-wide v3

    .line 442
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getLongitude()D

    move-result-wide v5

    const/16 v7, 0x1f4

    .line 444
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/location/SemGeopointGeofence;-><init>(DDILjava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_6f

    .line 447
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_6f

    .line 448
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6f

    new-array v4, v1, [Ljava/lang/String;

    .line 449
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {v0, v4}, Lcom/samsung/android/location/SemGeopointGeofence;->setWifiBssids([Ljava/lang/String;)V

    .line 453
    :cond_6f
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/location/SemLocationManager;->addGeofence(Lcom/samsung/android/location/SemGeopointGeofence;Landroid/app/PendingIntent;)I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-nez v0, :cond_df

    const-string v0, "AutoWifi.Geofence"

    .line 455
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add and monitor geofence id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", configKey : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 455
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "%-18s [locationId : %d][confKey : %s]"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "addAndMonitorGeofence"

    aput-object v5, v4, v2

    .line 458
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 457
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    .line 459
    iget-object v5, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 460
    :try_start_c5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    monitor-exit v5
    :try_end_cf
    .catchall {:try_start_c5 .. :try_end_cf} :catchall_dc

    .line 462
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->saveGeofenceConfigurationToDb(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    .line 463
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mListener:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;

    if-eqz p1, :cond_122

    if-nez p2, :cond_122

    .line 464
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;->onAddAndMonitorGeofence()V

    goto :goto_122

    :catchall_dc
    move-exception p0

    .line 461
    :try_start_dd
    monitor-exit v5
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

    throw p0

    :cond_df
    const-string p2, "AutoWifi.Geofence"

    .line 467
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to add, geofenceId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "fail to add addAndMonitorGeofence [locationId : %d][confKey : %s][result : %d]"

    new-array v4, v4, [Ljava/lang/Object;

    .line 470
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    .line 469
    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    .line 472
    :cond_122
    :goto_122
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 473
    :try_start_125
    iget-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    const-string v0, "AutoWifi.Geofence"

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saved geofence configs size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc8

    if-le p2, v0, :cond_148

    .line 476
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->removeOldConfig()V

    .line 478
    :cond_148
    monitor-exit p1

    return-void

    :catchall_14a
    move-exception p0

    monitor-exit p1
    :try_end_14c
    .catchall {:try_start_125 .. :try_end_14c} :catchall_14a

    throw p0
.end method

.method private getGeofenceConfiguration(Ljava/lang/String;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;
    .registers 4

    .line 489
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    invoke-direct {v1, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 492
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private getGeofenceManagerErrorString(I)Ljava/lang/String;
    .registers 3

    const/16 p0, -0x64

    if-eq p1, p0, :cond_33

    packed-switch p1, :pswitch_data_36

    .line 238
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UNKNOWN_ERROR("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1e
    const-string p0, "ERROR_NOT_INITIALIZED"

    return-object p0

    :pswitch_21
    const-string p0, "ERROR_ILLEGAL_ARGUMENT"

    return-object p0

    :pswitch_24
    const-string p0, "ERROR_ID_NOT_EXIST"

    return-object p0

    :pswitch_27
    const-string p0, "ERROR_EXCEPTION"

    return-object p0

    :pswitch_2a
    const-string p0, "ERROR_ALREADY_STARTED"

    return-object p0

    :pswitch_2d
    const-string p0, "ERROR_TOO_MANY_GEOFENCE"

    return-object p0

    :pswitch_30
    const-string p0, "ERROR_NOT_SUPPORTED"

    return-object p0

    :cond_33
    const-string p0, "ERROR_LOCATION_CURRENTLY_UNAVAILABLE"

    return-object p0

    :pswitch_data_36
    .packed-switch -0x7
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
    .end packed-switch
.end method

.method static getGeofenceStateString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const-string p0, "EXIT"

    return-object p0

    .line 359
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Wrong geofence state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    const-string p0, "ENTER"

    return-object p0

    :cond_16
    const-string p0, "UNKNOWN"

    return-object p0
.end method

.method private getPendingIntent(I)Landroid/app/PendingIntent;
    .registers 5

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.wifi.GEOFENCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, p0, p1, v0, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private isGeofenceIdValid(I)Z
    .registers 2

    if-lez p1, :cond_8

    const/16 p0, 0xc8

    if-gt p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private synthetic lambda$clearAll$0()V
    .registers 7

    .line 540
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "[clearAll]"

    .line 541
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 543
    :try_start_f
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 544
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    .line 545
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/location/SemLocationManager;->removeGeofence(Landroid/app/PendingIntent;)I

    move-result v3

    if-eqz v3, :cond_1e

    .line 547
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed clearAll geofence configKey : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " code : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceManagerErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 547
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    goto :goto_1e

    .line 551
    :cond_5b
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 552
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->clearAll()V

    .line 553
    monitor-exit v0

    return-void

    :catchall_67
    move-exception p0

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_f .. :try_end_69} :catchall_67

    throw p0
.end method

.method private synthetic lambda$removeGeofenceConfigurationFromDb$2(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V
    .registers 2

    .line 601
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->remove(Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;)V

    return-void
.end method

.method private synthetic lambda$saveGeofenceConfigurationToDb$1(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V
    .registers 2

    .line 597
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->save(Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;)V

    return-void
.end method

.method private loadFromDb()V
    .registers 9

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->load()Ljava/util/List;

    move-result-object v1

    const-string v2, "Geofence DB : "

    .line 560
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 562
    :try_start_13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_116

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;

    .line 564
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getLatitude()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_60

    const-string v4, "\n"

    .line 565
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "remove [id : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", confKey : "

    .line 566
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    iget-object v4, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mNotAddedGeofenceNetworksFromDb:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 568
    new-instance v4, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    invoke-direct {v4, v3}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;-><init>(Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;)V

    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->removeGeofenceConfigurationFromDb(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    goto :goto_17

    .line 571
    :cond_60
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isGeofenceIdValid(I)Z

    move-result v4

    if-nez v4, :cond_c4

    .line 572
    iget-object v4, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mAvailableGeopointIds:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v4

    .line 573
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "AutoWifi.Geofence"

    .line 574
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid geofenceId before : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " after : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "\n"

    .line 576
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "invalid geofenceId before [id : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], after [id : "

    .line 577
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], confKey : "

    .line 578
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->setGeofenceId(I)V

    .line 581
    :cond_c4
    new-instance v4, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    invoke-direct {v4, v3}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;-><init>(Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;)V

    .line 582
    iget-object v5, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mAvailableGeopointIds:Ljava/util/TreeMap;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 583
    iget-object v5, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    iget-object v4, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mAvailableGeopointIds:Ljava/util/TreeMap;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\n"

    .line 585
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "add [id : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", confKey : "

    .line 586
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_17

    .line 588
    :cond_116
    monitor-exit v2
    :try_end_117
    .catchall {:try_start_13 .. :try_end_117} :catchall_11f

    .line 589
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    return-void

    :catchall_11f
    move-exception p0

    .line 588
    :try_start_120
    monitor-exit v2
    :try_end_121
    .catchall {:try_start_120 .. :try_end_121} :catchall_11f

    throw p0
.end method

.method private localLog(Ljava/lang/String;)V
    .registers 2

    .line 160
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLocalLog:Landroid/util/LocalLog;

    if-eqz p0, :cond_7

    .line 161
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private removeGeofenceConfiguration(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V
    .registers 6

    .line 395
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 396
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_92

    .line 397
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/location/SemLocationManager;->removeGeofence(Landroid/app/PendingIntent;)I

    move-result v0

    if-eqz v0, :cond_34

    const-string v1, "AutoWifi.Geofence"

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed remove geofence id, code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceManagerErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    const-string v0, "AutoWifi.Geofence"

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove geofence "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "%-18s [locationId : %d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "removeGeofence"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 403
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mAvailableGeopointIds:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->removeFromInRangedNetworks(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    :try_start_81
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_81 .. :try_end_8b} :catchall_8f

    .line 409
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->removeGeofenceConfigurationFromDb(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    goto :goto_92

    :catchall_8f
    move-exception p0

    .line 408
    :try_start_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw p0

    :cond_92
    :goto_92
    return-void
.end method

.method private removeGeofenceConfigurationFromDb(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V
    .registers 4

    .line 601
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mHandler:Lcom/samsung/android/server/wifi/util/SemWifiHandler;

    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removeOldConfig()V
    .registers 6

    .line 423
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 424
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 425
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v2, 0x0

    .line 426
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    const-string v2, "AutoWifi.Geofence"

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove oldConfig : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->removeGeofenceConfiguration(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    .line 429
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p0
.end method

.method private saveGeofenceConfigurationToDb(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V
    .registers 4

    .line 597
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mHandler:Lcom/samsung/android/server/wifi/util/SemWifiHandler;

    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startMonitoring()V
    .registers 6

    .line 505
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 506
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 507
    :try_start_a
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 508
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    const/4 v4, 0x1

    .line 509
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->startMonitoring(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;Z)V

    goto :goto_19

    .line 511
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " APs start monitoring"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    .line 512
    monitor-exit v0

    return-void

    :catchall_44
    move-exception p0

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_a .. :try_end_46} :catchall_44

    throw p0
.end method

.method private stopMonitoring()V
    .registers 8

    .line 521
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetisRunning(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 522
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->stopMeasuringLocation()V

    .line 524
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 525
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 526
    :try_start_15
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 527
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    .line 528
    iget-object v4, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/location/SemLocationManager;->removeGeofence(Landroid/app/PendingIntent;)I

    move-result v4

    if-eqz v4, :cond_24

    .line 530
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed removeGeofence configKey : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " code : "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceManagerErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 530
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    goto :goto_24

    .line 534
    :cond_61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " APs stop monitoring"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    .line 535
    monitor-exit v0

    return-void

    :catchall_7b
    move-exception p0

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_15 .. :try_end_7d} :catchall_7b

    throw p0
.end method

.method private updateGeofenceConfiguration(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V
    .registers 5

    .line 414
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 415
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_a
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_18

    .line 418
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->saveGeofenceConfigurationToDb(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    goto :goto_1b

    :catchall_18
    move-exception p0

    .line 417
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0

    :cond_1b
    :goto_1b
    return-void
.end method

.method private updateNetworkLocation(Z)Z
    .registers 9

    .line 295
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetlocation(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Landroid/location/Location;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "AutoWifi.Geofence"

    if-eqz v0, :cond_4f

    .line 296
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetlocation(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    .line 297
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetlocation(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 298
    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->isValidLocation(DD)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 299
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetwifiConfigKey(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceConfiguration(Ljava/lang/String;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    move-result-object v0

    .line 301
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->setLocationMeasurement(DD)V

    const/4 v3, 0x1

    if-eqz p1, :cond_42

    .line 303
    sget-boolean p1, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->DBG:Z

    if-eqz p1, :cond_3e

    const-string p1, "Passive Latitude, Longitude updateGeofenceConfiguration"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_3e
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->updateGeofenceConfiguration(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    return v3

    .line 307
    :cond_42
    sget-boolean p1, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->DBG:Z

    if-eqz p1, :cond_4b

    const-string p1, "Active Latitude , Longitude startMonitoring"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_4b
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->startMonitoring(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;Z)V

    return v3

    :cond_4f
    const-string p0, "received invalid location"

    .line 312
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public addInRangedNetwork(Ljava/lang/String;)V
    .registers 3

    .line 606
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 607
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceEnteredNetworks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 608
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method checkAndStart()V
    .registers 5

    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0xc8

    if-gt v0, v1, :cond_15

    .line 122
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mAvailableGeopointIds:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->loadFromDb()V

    return-void
.end method

.method clearAll()V
    .registers 3

    .line 539
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mHandler:Lcom/samsung/android/server/wifi/util/SemWifiHandler;

    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dump()Ljava/lang/String;
    .registers 6

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiGeofenceManager:\n"

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - state: "

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "unavailable"

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 180
    :cond_1b
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "started"

    goto :goto_26

    :cond_24
    const-string v1, "stopped"

    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_29
    const-string v1, "\n"

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - geofence state: "

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceState()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_46
    const-string v2, " - not added geofence configs from database: "

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mNotAddedGeofenceNetworksFromDb:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mNotAddedGeofenceNetworksFromDb:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;

    const-string v4, "   "

    .line 189
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f

    :cond_79
    const-string v2, " - entered Wi-Fi network keys: "

    .line 191
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceEnteredNetworks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceEnteredNetworks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_92
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ac

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "   "

    .line 194
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_92

    :cond_ac
    const-string v2, " - geofence configs: "

    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    const-string v4, "   "

    .line 198
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c9

    .line 200
    :cond_e3
    monitor-exit v1
    :try_end_e4
    .catchall {:try_start_46 .. :try_end_e4} :catchall_117

    const-string v1, " - measure status: "

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetisRunning(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z

    move-result v1

    if-eqz v1, :cond_10d

    const-string v1, "running for "

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetwifiConfigKey(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetisPassive(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z

    move-result p0

    if-eqz p0, :cond_112

    const-string p0, " (passive)"

    .line 205
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_112

    :cond_10d
    const-string p0, " stopped"

    .line 208
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_112
    :goto_112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_117
    move-exception p0

    .line 200
    :try_start_118
    monitor-exit v1
    :try_end_119
    .catchall {:try_start_118 .. :try_end_119} :catchall_117

    throw p0
.end method

.method getGeofenceState()I
    .registers 2

    .line 344
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 345
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceEnteredNetworks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x2

    goto :goto_16

    :cond_15
    const/4 p0, 0x1

    :goto_16
    monitor-exit v0

    return p0

    :catchall_18
    move-exception p0

    .line 347
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public getInRangedWifiConfigKeys()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    new-instance v1, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceEnteredNetworks:Ljava/util/Set;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 340
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method getMeasureLocationPendingIntent()Landroid/app/PendingIntent;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 483
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.wifi.NETWORK_LOCATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method getMeasuredGeoLocations()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .line 372
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 373
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 374
    :try_start_8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    .line 375
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->hasValidLocation()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 376
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 377
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getMeasuredGeoLocation()[D

    move-result-object v4

    const-string v5, "latitude"

    const/4 v6, 0x0

    .line 378
    aget-wide v6, v4, v6

    .line 379
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 378
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "longitude"

    const/4 v6, 0x1

    .line 380
    aget-wide v6, v4, v6

    .line 381
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 380
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 386
    :cond_4d
    monitor-exit v1

    return-object v0

    :catchall_4f
    move-exception p0

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_8 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method getMobileCellIdCount(Ljava/lang/String;)I
    .registers 4

    .line 364
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isAvailable()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    .line 365
    :cond_8
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceConfiguration(Ljava/lang/String;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    move-result-object p1

    .line 366
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v0

    if-eq v0, v1, :cond_1d

    .line 367
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/location/SemLocationManager;->getCellCountForEventGeofence(I)I

    move-result p0

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method

.method hasGeofenceConfiguration(Ljava/lang/String;)Z
    .registers 3

    .line 496
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 497
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    .line 498
    monitor-exit v0

    return p0

    .line 500
    :cond_e
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method historyDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 166
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_e

    const-string v0, "Geofence intent history : "

    .line 167
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method isAvailable()Z
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    if-nez v0, :cond_b

    const-string v0, "AutoWifi.Geofence"

    const-string v1, "service unavailable"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method isPassive()Z
    .registers 1

    .line 277
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetisPassive(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z

    move-result p0

    return p0
.end method

.method isStarted()Z
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mListener:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method measureNetworkLocation(Ljava/lang/String;)Z
    .registers 9

    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 243
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 244
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetisRunning(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z

    move-result v0

    const-string v2, "AutoWifi.Geofence"

    if-eqz v0, :cond_3c

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore to measure, already started for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetwifiConfigKey(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " skipped "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 249
    :cond_3c
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceConfiguration(Ljava/lang/String;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    move-result-object v0

    .line 250
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    invoke-static {v3, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fputwifiConfigKey(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;Ljava/lang/String;)V

    .line 251
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->hasValidLocation()Z

    move-result v3

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fputisPassive(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;Z)V

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start measuring location, passive: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetisPassive(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetisPassive(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_f2

    .line 255
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mNetworkLocationReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.samsung.android.wifi.NETWORK_LOCATION"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getMeasureLocationPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/samsung/android/location/SemLocationManager;->requestPassiveLocation(Landroid/app/PendingIntent;)V

    .line 258
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_fd

    .line 259
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_fd

    .line 260
    iget-object v4, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    .line 261
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-virtual {v4, v5, p1}, Lcom/samsung/android/location/SemLocationManager;->setGeopointWifiBssid(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_fd

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to set Bssid, geofenceId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 266
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "fail to set Bssid [locationId : %d][confKey : %s][result : %d]"

    .line 265
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    goto :goto_fd

    .line 270
    :cond_f2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    const/16 v0, 0x64

    const/16 v2, 0x7530

    iget-object v4, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

    invoke-virtual {p1, v0, v2, v1, v4}, Lcom/samsung/android/location/SemLocationManager;->requestSingleLocation(IIZLcom/samsung/android/location/SemLocationListener;)I

    .line 272
    :cond_fd
    :goto_fd
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fputisRunning(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;Z)V

    return v3
.end method

.method public removeFromInRangedNetworks(Ljava/lang/String;)V
    .registers 3

    .line 613
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 614
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceEnteredNetworks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 615
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method removeGeofenceConfiguration(Ljava/lang/String;)V
    .registers 2

    .line 391
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceConfiguration(Ljava/lang/String;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->removeGeofenceConfiguration(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    return-void
.end method

.method restoreNetworkLocation(Ljava/lang/String;DD)V
    .registers 9

    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 318
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 319
    :cond_e
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->hasGeofenceConfiguration(Ljava/lang/String;)Z

    move-result v0

    .line 320
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceConfiguration(Ljava/lang/String;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    move-result-object p1

    .line 321
    invoke-static {p2, p3, p4, p5}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->isValidLocation(DD)Z

    move-result v1

    const-string v2, "AutoWifi.Geofence"

    if-eqz v1, :cond_3e

    .line 322
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->setLocationMeasurement(DD)V

    if-eqz v0, :cond_30

    .line 324
    sget-boolean p2, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->DBG:Z

    if-eqz p2, :cond_2c

    const-string p2, "restoreNetwork Passive Latitude, Longitude updateGeofenceConfiguration"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_2c
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->updateGeofenceConfiguration(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    goto :goto_43

    .line 327
    :cond_30
    sget-boolean p2, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->DBG:Z

    if-eqz p2, :cond_39

    const-string p2, "restoreNetwork Active Latitude, Longitude startMonitoring"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    const/4 p2, 0x0

    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->startMonitoring(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;Z)V

    goto :goto_43

    :cond_3e
    const-string p0, "received invalid location"

    .line 331
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_43
    return-void
.end method

.method start(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;)V
    .registers 5

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isStarted()Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "AutoWifi.Geofence"

    const-string v1, "starting manager"

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Start Manager"

    .line 137
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    .line 138
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mListener:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;

    .line 139
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.wifi.GEOFENCE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->startMonitoring()V

    :cond_25
    return-void
.end method

.method startMonitoring(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;Z)V
    .registers 4

    .line 516
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 517
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->addAndMonitorGeofence(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;Z)V

    return-void
.end method

.method stop()V
    .registers 3

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "AutoWifi.Geofence"

    const-string v1, "stop manager"

    .line 147
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Stop Manager"

    .line 148
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mListener:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;

    .line 150
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->stopMonitoring()V

    :cond_1f
    return-void
.end method

.method stopMeasuringLocation()V
    .registers 3

    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 282
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetisRunning(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "AutoWifi.Geofence"

    const-string v1, "stop measuring"

    .line 283
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetisPassive(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 285
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mNetworkLocationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 286
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getMeasureLocationPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/location/SemLocationManager;->removePassiveLocation(Landroid/app/PendingIntent;)V

    goto :goto_36

    .line 288
    :cond_2f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/location/SemLocationManager;->removeLocationUpdates(Lcom/samsung/android/location/SemLocationListener;)I

    .line 290
    :goto_36
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fputisRunning(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;Z)V

    :cond_3c
    return-void
.end method
