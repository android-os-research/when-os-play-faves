.class public Lcom/android/server/location/nsflp/NSLocationMonitor;
.super Landroid/location/INSLocationCallback$Stub;
.source "NSLocationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/nsflp/NSLocationMonitor$NetworkStateListener;,
        Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;,
        Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;,
        Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;
    }
.end annotation


# static fields
.field public static final MONITOR_SERVICE_LOCK:Ljava/lang/Object;

.field public static final NOTE_GPS_RESET:I = 0x3

.field public static final NOTE_GPS_START:I = 0x1

.field public static final NOTE_GPS_STOP:I = 0x2

.field public static final PATTERN_BCOM_SUPL_MSG:Ljava/lang/String; = ".PGLOR.+SPS.*"

.field public static final SUPPORT_NEW_DEVICE_ACTIVITY_DETECTOR:I = 0x5

.field public static final SUPPORT_OLD_DEVICE_ACTIVITY_DETECTOR:I = 0x4

.field public static final TAG:Ljava/lang/String; = "NSLocationMonitor"


# instance fields
.field public mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mConnectedHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mDeviceActivityDuration:I

.field public mDeviceActivityMode:I

.field public mDeviceActivityRegistered:Z

.field public final mDeviceIdleHelper:Lcom/android/server/location/injector/DeviceIdleHelper;

.field public final mDeviceIdleListener:Lcom/android/server/location/injector/DeviceIdleHelper$DeviceIdleListener;

.field public final mDeviceStationaryHelper:Lcom/android/server/location/injector/DeviceStationaryHelper;

.field public mDisconnectedHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mEnableFeatureDeviceActivity:Z

.field public final mForegroundNotificationList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mHqmManager:Landroid/os/ISemHqmManager;

.field public final mInjector:Lcom/android/server/location/injector/Injector;

.field public mIsStationary:Z

.field public mLocationManagerInternal:Landroid/location/LocationManagerInternal;

.field public final mLocationPowerSaveModeChangedListener:Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;

.field public final mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

.field public mMonitorService:Landroid/location/INSLocationManager;

.field public mMonitorServiceConnection:Landroid/content/ServiceConnection;

.field public final mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

.field public final mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

.field public final mNetworkLock:Ljava/lang/Object;

.field public final mNotificationListener:Landroid/service/notification/NotificationListenerService;

.field public mNsUtLogger:Lcom/android/server/location/nsflp/NSUtLogger;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field public mRegisteredNotificationListener:Z

.field public mRequestToUpdate:Z

.field public final mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

.field public mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field public mSimCount:I

.field public mSimSubId:[I

.field public final mStationaryListener:Lcom/android/server/DeviceIdleInternal$StationaryListener;

.field public final mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field public mSupportAlgorithm:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

.field public mSupportHqm:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

.field public mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;

.field public final mSystemRunningTime:J


# direct methods
.method public static synthetic $r8$lambda$Essbb5GCGT9pV9fXK0CjWxOxYHY(Lcom/android/server/location/nsflp/NSLocationMonitor;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->onDeviceIdleChanged(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$SoG2y29JC9KayzdFJozx0gQmLXg(Lcom/android/server/location/nsflp/NSLocationMonitor;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->onLocationPowerSaveModeChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TXvGdSZlzvCj5QYVrAQsEFLvhG4(Ljava/lang/String;)Ljava/util/Set;
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->lambda$addForegroundNotification$0(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jb4zijYltfidJtfeSvRE7QWDGBw(Lcom/android/server/location/nsflp/NSLocationMonitor;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->onDeviceStationaryChanged(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/location/nsflp/NSLocationMonitor;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisconnectedHistory(Lcom/android/server/location/nsflp/NSLocationMonitor;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDisconnectedHistory:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmForegroundNotificationList(Lcom/android/server/location/nsflp/NSLocationMonitor;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mForegroundNotificationList:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMonitorService(Lcom/android/server/location/nsflp/NSLocationMonitor;)Landroid/location/INSLocationManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mMonitorService:Landroid/location/INSLocationManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNSConnectionHelper(Lcom/android/server/location/nsflp/NSLocationMonitor;)Lcom/android/server/location/nsflp/NSConnectionHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNSLocationProviderHelper(Lcom/android/server/location/nsflp/NSLocationMonitor;)Lcom/android/server/location/nsflp/NSLocationProviderHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNetworkLock(Lcom/android/server/location/nsflp/NSLocationMonitor;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNetworkLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationListener(Lcom/android/server/location/nsflp/NSLocationMonitor;)Landroid/service/notification/NotificationListenerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPhoneStateListener(Lcom/android/server/location/nsflp/NSLocationMonitor;)[Landroid/telephony/PhoneStateListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRegisteredNotificationListener(Lcom/android/server/location/nsflp/NSLocationMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mRegisteredNotificationListener:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSimCount(Lcom/android/server/location/nsflp/NSLocationMonitor;)I
    .registers 1

    iget p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSimSubId(Lcom/android/server/location/nsflp/NSLocationMonitor;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimSubId:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportAlgorithm(Lcom/android/server/location/nsflp/NSLocationMonitor;)Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportAlgorithm:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmMonitorService(Lcom/android/server/location/nsflp/NSLocationMonitor;Landroid/location/INSLocationManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mMonitorService:Landroid/location/INSLocationManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRegisteredNotificationListener(Lcom/android/server/location/nsflp/NSLocationMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mRegisteredNotificationListener:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddForegroundNotification(Lcom/android/server/location/nsflp/NSLocationMonitor;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/nsflp/NSLocationMonitor;->addForegroundNotification(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckActivityResult(Lcom/android/server/location/nsflp/NSLocationMonitor;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/nsflp/NSLocationMonitor;->checkActivityResult(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckSupportAlgorithm(Lcom/android/server/location/nsflp/NSLocationMonitor;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->checkSupportAlgorithm(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdeinitNetworkStateListener(Lcom/android/server/location/nsflp/NSLocationMonitor;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->deinitNetworkStateListener()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdisableDeviceActivity(Lcom/android/server/location/nsflp/NSLocationMonitor;Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->disableDeviceActivity(Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitNetworkStateListener(Lcom/android/server/location/nsflp/NSLocationMonitor;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->initNetworkStateListener()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misForegroundService(Lcom/android/server/location/nsflp/NSLocationMonitor;Landroid/app/Notification;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->isForegroundService(Landroid/app/Notification;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremoveForegroundNotification(Lcom/android/server/location/nsflp/NSLocationMonitor;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/nsflp/NSLocationMonitor;->removeForegroundNotification(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendConnectionInfo(Lcom/android/server/location/nsflp/NSLocationMonitor;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->sendConnectionInfo()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendStationaryInfo(Lcom/android/server/location/nsflp/NSLocationMonitor;III)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/nsflp/NSLocationMonitor;->sendStationaryInfo(III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetMONITOR_SERVICE_LOCK()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->MONITOR_SERVICE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->MONITOR_SERVICE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;)V
    .registers 5

    .line 150
    invoke-direct {p0}, Landroid/location/INSLocationCallback$Stub;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mConnectedHistory:Ljava/util/ArrayList;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDisconnectedHistory:Ljava/util/ArrayList;

    .line 91
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mMonitorService:Landroid/location/INSLocationManager;

    const/4 v1, 0x0

    .line 98
    iput-boolean v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mRegisteredNotificationListener:Z

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mForegroundNotificationList:Ljava/util/Map;

    .line 105
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNetworkLock:Ljava/lang/Object;

    .line 108
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    .line 128
    sget-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->NOT_SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportAlgorithm:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    .line 134
    sget-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;->UNKNOWN:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportHqm:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    .line 143
    new-instance v0, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLocationPowerSaveModeChangedListener:Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;

    .line 145
    new-instance v0, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mStationaryListener:Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 146
    new-instance v0, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceIdleListener:Lcom/android/server/location/injector/DeviceIdleHelper$DeviceIdleListener;

    .line 416
    new-instance v0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor$2;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mMonitorServiceConnection:Landroid/content/ServiceConnection;

    .line 539
    new-instance v0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor$3;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 594
    new-instance v0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor$4;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    .line 841
    new-instance v0, Lcom/android/server/location/nsflp/NSLocationMonitor$5;

    invoke-direct {v0, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor$5;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    .line 151
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    .line 152
    iput-object p2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 153
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getNSConnectionHelper()Lcom/android/server/location/nsflp/NSConnectionHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 154
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getNSLocationProviderHelper()Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSystemRunningTime:J

    .line 157
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getLocationPowerSaveModeHelper()Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

    .line 158
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getDeviceIdleHelper()Lcom/android/server/location/injector/DeviceIdleHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceIdleHelper:Lcom/android/server/location/injector/DeviceIdleHelper;

    .line 159
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getDeviceStationaryHelper()Lcom/android/server/location/injector/DeviceStationaryHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceStationaryHelper:Lcom/android/server/location/injector/DeviceStationaryHelper;

    return-void
.end method

.method public static synthetic lambda$addForegroundNotification$0(Ljava/lang/String;)Ljava/util/Set;
    .registers 1

    .line 667
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final addForegroundNotification(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 667
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mForegroundNotificationList:Ljava/util/Map;

    new-instance v0, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 668
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1b

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    if-ne p0, p2, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 p2, 0x0

    :goto_1c
    return p2
.end method

.method public final checkActivityResult(II)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1d

    if-ne p2, v1, :cond_10

    .line 886
    iget-boolean p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    if-nez p1, :cond_d

    .line 887
    invoke-virtual {p0, v1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->sendStationaryInfo(Z)V

    .line 889
    :cond_d
    iput-boolean v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    goto :goto_28

    :cond_10
    const/4 p1, 0x2

    if-ne p2, p1, :cond_28

    .line 891
    iget-boolean p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    if-eqz p1, :cond_1a

    .line 892
    invoke-virtual {p0, v0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->sendStationaryInfo(Z)V

    .line 894
    :cond_1a
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    goto :goto_28

    :cond_1d
    if-ne p2, v1, :cond_28

    .line 898
    iget-boolean p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    if-eqz p1, :cond_26

    .line 899
    invoke-virtual {p0, v0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->sendStationaryInfo(Z)V

    .line 901
    :cond_26
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    :cond_28
    :goto_28
    return-void
.end method

.method public final checkSupportAlgorithm(I)V
    .registers 4

    const-string v0, "NSLocationMonitor"

    const/4 v1, 0x4

    if-ne p1, v1, :cond_f

    const-string p1, "Support device_activity_detector old algorithm"

    .line 826
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    sget-object p1, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->OLD:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportAlgorithm:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    goto :goto_1b

    :cond_f
    const/4 v1, 0x5

    if-ne p1, v1, :cond_21

    const-string p1, "Support device_activity_detector new algorithm"

    .line 829
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    sget-object p1, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->NEW:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportAlgorithm:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    .line 838
    :goto_1b
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportAlgorithm:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->sendSupportAlgorithmType(Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;)V

    return-void

    :cond_21
    const-string p1, "Not support device_activity_detector algorithm"

    .line 832
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    sget-object p1, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->NOT_SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportAlgorithm:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    .line 834
    sget-object p1, Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;->NOT_SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->disableDeviceActivity(Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;)V

    return-void
.end method

.method public final deinitNetworkStateListener()V
    .registers 7

    .line 392
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNetworkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    .line 394
    iget-object v3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    if-eqz v3, :cond_2c

    const/4 v3, 0x0

    move v4, v3

    .line 396
    :goto_17
    iget v5, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimCount:I

    if-ge v4, v5, :cond_28

    .line 397
    iget-object v5, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v5, v5, v4

    if-nez v5, :cond_22

    goto :goto_25

    .line 399
    :cond_22
    invoke-virtual {v1, v5, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :goto_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 401
    :cond_28
    iput v3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimCount:I

    .line 402
    iput-object v2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 405
    :cond_2c
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "telephony_subscription_service"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    if-eqz v1, :cond_49

    .line 407
    iget-object v3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    if-eqz v3, :cond_49

    .line 408
    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 409
    iput-object v2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimSubId:[I

    const-string p0, "NSLocationMonitor"

    const-string v1, "Unregister SubscriptionChangedListener"

    .line 411
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_49
    monitor-exit v0

    return-void

    :catchall_4b
    move-exception p0

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method public final disableDeviceActivity(Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;)V
    .registers 4

    const/4 v0, 0x0

    .line 923
    invoke-virtual {p0, v0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->setFeatureDeviceActivity(Z)Z

    .line 925
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 926
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->DEVICE_ACTIVITY_ERROR:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public getActiveRequests(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 2

    .line 214
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getNSLocationProviderHelper()Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->getActiveRequests(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getGPSUsingApps()Ljava/util/Map;
    .registers 5

    const-string v0, "NSLocationMonitor"

    const-string v1, "getGPSUsingApps() called"

    .line 315
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mMonitorService:Landroid/location/INSLocationManager;

    const/4 v1, 0x0

    if-nez p0, :cond_12

    const-string p0, "NSMonitorService is not connected, return null"

    .line 317
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 322
    :cond_12
    :try_start_12
    invoke-interface {p0}, Landroid/location/INSLocationManager;->getGPSUsingApps()Ljava/util/Map;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to getGPSUsingApps due to  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", return null"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getKernelWakeLockInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8

    const/4 v0, 0x0

    const-string v1, "NSLocationMonitor"

    if-nez p1, :cond_b

    const-string p0, "No target module"

    .line 252
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 257
    :cond_b
    iget-object v2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    if-nez v2, :cond_3e

    :try_start_f
    const-string/jumbo v2, "suspend_control_internal"

    .line 260
    invoke-static {v2}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 259
    invoke-static {v2}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    if-nez v2, :cond_3e

    const-string p0, "Failed to stub interface to SuspendControlService"

    .line 262
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_f .. :try_end_23} :catch_24

    return-object v0

    :catch_24
    move-exception p0

    .line 266
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required service suspend_control not available, "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/ServiceManager$ServiceNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 272
    :cond_3e
    :try_start_3e
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    invoke-interface {p0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal;->getWakeLockStats()[Landroid/system/suspend/internal/WakeLockInfo;

    move-result-object p0

    if-nez p0, :cond_4c

    const-string p0, "No failed to get wakelock stats"

    .line 274
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 278
    :cond_4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found WakeLockInfo, size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    array-length v2, p0

    const/4 v3, 0x0

    :goto_63
    if-ge v3, v2, :cond_e6

    aget-object v4, p0, v3

    .line 280
    iget-object v5, v4, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_72

    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    .line 283
    :cond_72
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "WakeLockInfo["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v4, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]  / total="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v4, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " / isActive="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, v4, Landroid/system/suspend/internal/WakeLockInfo;->isActive:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " / activeTime="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v4, Landroid/system/suspend/internal/WakeLockInfo;->activeTime:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " / isKernelWakelock="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, v4, Landroid/system/suspend/internal/WakeLockInfo;->isKernelWakelock:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p1, "name"

    .line 288
    iget-object v2, v4, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "totalTime"

    .line 289
    iget-wide v2, v4, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "activeTime"

    .line 290
    iget-wide v2, v4, Landroid/system/suspend/internal/WakeLockInfo;->activeTime:J

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_cc} :catch_cd

    return-object p0

    :catch_cd
    move-exception p0

    .line 294
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to getWakelockStats, "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e6
    return-object v0
.end method

.method public getUidState(II)Landroid/os/Bundle;
    .registers 7

    .line 301
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getNSPermissionHelper()Lcom/android/server/location/nsflp/NSPermissionHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/nsflp/NSPermissionHelper;->getUidState(I)Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 306
    :cond_e
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 307
    invoke-virtual {v0}, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->getProcState()I

    move-result v2

    const-string/jumbo v3, "procState"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    invoke-virtual {v0}, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->hasLocationCapability()Z

    move-result v0

    const-string/jumbo v2, "hasLocationCapability"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 309
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result p0

    const-string/jumbo p1, "permissionLevel"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method public final initNetworkStateListener()V
    .registers 10

    .line 334
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNetworkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 335
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_dc

    .line 338
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimCount:I

    if-lez v3, :cond_dc

    const-string v3, "NSLocationMonitor"

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intialize NetworkStateListener, count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget v3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimCount:I

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimSubId:[I

    .line 344
    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    move v3, v2

    move v4, v3

    .line 346
    :goto_3d
    iget v5, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimCount:I

    if-ge v3, v5, :cond_db

    .line 347
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    const/4 v6, 0x1

    if-nez v5, :cond_65

    const-string v5, "NSLocationMonitor"

    .line 350
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subId is null from simSlot["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    .line 352
    :cond_65
    array-length v7, v5

    if-nez v7, :cond_85

    const-string v5, "NSLocationMonitor"

    .line 353
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subId is empty from simSlot["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    :cond_85
    const-string v4, "NSLocationMonitor"

    .line 357
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "subIdTemp, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    aget v4, v5, v2

    .line 361
    iget-object v5, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSimSubId:[I

    aput v4, v5, v3

    .line 362
    iget-object v5, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v7, Lcom/android/server/location/nsflp/NSLocationMonitor$NetworkStateListener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v4, v8}, Lcom/android/server/location/nsflp/NSLocationMonitor$NetworkStateListener;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;ILcom/android/server/location/nsflp/NSLocationMonitor$NetworkStateListener-IA;)V

    aput-object v7, v5, v3

    .line 364
    iget-object v5, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v5, v5, v3

    invoke-virtual {v1, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string v5, "NSLocationMonitor"

    .line 365
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "registerPhoneStateListener SimSlot="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", subId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    :goto_d7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3d

    :cond_db
    move v2, v4

    .line 372
    :cond_dc
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "isInitialized"

    .line 373
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 375
    iget-object v2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object v3, Landroid/location/LocationConstants$STATE_TYPE;->SIM_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 379
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "telephony_subscription_service"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    if-eqz v1, :cond_107

    const-string v2, "NSLocationMonitor"

    const-string v3, "Register SubscriptionChangedListener"

    .line 382
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, p0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 385
    :cond_107
    monitor-exit v0

    return-void

    :catchall_109
    move-exception p0

    monitor-exit v0
    :try_end_10b
    .catchall {:try_start_3 .. :try_end_10b} :catchall_109

    throw p0
.end method

.method public final isForegroundService(Landroid/app/Notification;)Z
    .registers 2

    .line 663
    iget p0, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isLocationEnabled(I)Z
    .registers 2

    .line 219
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SettingsHelper;->isLocationEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isProviderEnabled(Ljava/lang/String;I)Z
    .registers 4

    .line 1027
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    if-nez v0, :cond_e

    .line 1028
    const-class v0, Landroid/location/LocationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManagerInternal;

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    .line 1030
    :cond_e
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    if-eqz p0, :cond_1a

    invoke-virtual {p0, p1, p2}, Landroid/location/LocationManagerInternal;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public noteGpsOp(II)V
    .registers 6

    .line 224
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-string v1, "NSLocationMonitor"

    if-nez v0, :cond_1a

    const-string v0, "batterystats"

    .line 226
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 225
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-nez v0, :cond_1a

    const-string p0, "Failed to get batterystats"

    .line 229
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 234
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteGpsOp, mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_45

    .line 238
    :try_start_3f
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0, p2}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V

    goto :goto_5c

    :cond_45
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4e

    .line 240
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0, p2}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V

    goto :goto_5c

    :cond_4e
    const/4 p2, 0x3

    if-ne p1, p2, :cond_5c

    .line 242
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->noteResetGps()V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_56} :catch_57

    goto :goto_5c

    :catch_57
    const-string p0, "Failed to call noteResetGps"

    .line 245
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    :goto_5c
    return-void
.end method

.method public final onDeviceIdleChanged(Z)V
    .registers 4

    .line 1020
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "deviceIdle"

    .line 1021
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1022
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->DEVICE_IDLE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onDeviceStationaryChanged(Z)V
    .registers 4

    .line 1014
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "stationary"

    .line 1015
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1016
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->DEVICE_STATIONARY_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onLocationPowerSaveModeChanged(I)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_a

    const/4 v1, 0x4

    if-eq p1, v1, :cond_a

    const/4 v0, 0x0

    .line 1008
    :cond_a
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "powerSaveMode"

    .line 1009
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1010
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->LOCATION_POWER_SAVE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public onMessageUpdated(Landroid/os/Message;)V
    .registers 4

    if-nez p1, :cond_b

    const-string p0, "NSLocationMonitor"

    const-string/jumbo p1, "onMessageUpdated, message is null"

    .line 984
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 988
    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1b

    .line 989
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getNSLocationProviderHelper()Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->onGmsApiRequest(Landroid/os/Message;)V

    goto :goto_20

    .line 991
    :cond_1b
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onMessageUpdated(Landroid/os/Message;)V

    :goto_20
    return-void
.end method

.method public onSystemReady()V
    .registers 5

    .line 163
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "com.sec.feature.nsflp"

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "NSLocationMonitor"

    if-eqz v0, :cond_7d

    .line 170
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    .line 171
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/location/nsflp/NSConnectionHelper;->setFeature(Z)V

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NS-FLP Feature available, nsFlpFeatureLevel = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Try to bind NSMonitorService"

    .line 179
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.location.nsflp2"

    const-string v2, "com.sec.location.nsflp2.nsmonitor.NSMonitorService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mMonitorServiceConnection:Landroid/content/ServiceConnection;

    const v3, 0x4000001

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 183
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.BIG_DATA_INFO"

    .line 184
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/location/nsflp/NSLocationMonitor$1;

    invoke-direct {v2, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor$1;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLocationPowerSaveModeChangedListener:Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/LocationPowerSaveModeHelper;->addListener(Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;)V

    .line 203
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceIdleHelper:Lcom/android/server/location/injector/DeviceIdleHelper;

    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceIdleListener:Lcom/android/server/location/injector/DeviceIdleHelper$DeviceIdleListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/DeviceIdleHelper;->addListener(Lcom/android/server/location/injector/DeviceIdleHelper$DeviceIdleListener;)V

    .line 204
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceStationaryHelper:Lcom/android/server/location/injector/DeviceStationaryHelper;

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mStationaryListener:Lcom/android/server/DeviceIdleInternal$StationaryListener;

    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/DeviceStationaryHelper;->addListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V

    return-void

    :cond_7d
    const-string v0, "Not binding the MonitorService"

    .line 174
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->setFeature(Z)V

    return-void
.end method

.method public registerDeviceActivityDetector(IIZ)V
    .registers 10

    .line 727
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    const-string v1, "NSLocationMonitor"

    if-nez v0, :cond_c

    const-string p0, "Failed registerDeviceActivityDetector"

    .line 728
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 732
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityRegistered:Z

    const-string v2, ", requestToUpdate : "

    const-string v3, ", duration : "

    const/16 v4, 0x36

    if-eqz v0, :cond_4a

    .line 733
    iget v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityDuration:I

    if-ne v0, p2, :cond_43

    iget v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityMode:I

    if-ne v0, p1, :cond_43

    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mRequestToUpdate:Z

    if-ne v0, p3, :cond_43

    .line 734
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already registered same attribute, mode : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 738
    :cond_43
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v5, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 742
    :cond_4a
    :try_start_4a
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v5, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Success registerDeviceActivityDetector, mode : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;-><init>(IIZ)V

    .line 746
    iget-object v2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    invoke-virtual {v2, v3, v4, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    const/4 v0, 0x1

    .line 748
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityRegistered:Z

    .line 749
    iput p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityMode:I

    .line 750
    iput p2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityDuration:I

    .line 751
    iput-boolean p3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mRequestToUpdate:Z
    :try_end_89
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_89} :catch_8a

    goto :goto_a3

    :catch_8a
    move-exception p0

    .line 754
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception is occurred while registerDeviceActivityDetector, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a3
    :goto_a3
    return-void
.end method

.method public final removeForegroundNotification(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 672
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mForegroundNotificationList:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_18

    .line 673
    invoke-interface {p0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public requestToUpdateDeviceActivityDetector()V
    .registers 4

    .line 785
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    const-string v1, "NSLocationMonitor"

    if-nez v0, :cond_c

    const-string p0, "Failed updateDeviceActivityDetector"

    .line 786
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 790
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    const/16 v2, 0x36

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->requestToUpdate(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_2f

    :catch_16
    move-exception p0

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception is occurred while updateDeviceActivityDetector, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-void
.end method

.method public final sendConnectionInfo()V
    .registers 5

    .line 525
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mConnectedHistory:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 527
    iget-wide v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSystemRunningTime:J

    const-string/jumbo v3, "systemRunning"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 528
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mConnectedHistory:Ljava/util/ArrayList;

    const-string v2, "connectedHistory"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 529
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDisconnectedHistory:Ljava/util/ArrayList;

    const-string v2, "disconnectedHistory"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 531
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v1}, Lcom/android/server/location/injector/Injector;->getNSLocationProviderHelper()Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->getSuplAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3a

    const-string/jumbo v2, "supl_hostname"

    .line 533
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_3a
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object v1, Landroid/location/LocationConstants$STATE_TYPE;->MONITOR_SERVICE_CONNECTED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendExtraCommandInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 960
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 962
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 963
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "provider"

    .line 965
    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "command"

    .line 966
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "pid"

    .line 967
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "uid"

    .line 968
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 970
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->SEND_EXTRA_COMMAND:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendLogToHqm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18

    move-object v0, p0

    .line 500
    iget-object v1, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportHqm:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    sget-object v2, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;->UNKNOWN:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    if-ne v1, v2, :cond_20

    iget-object v1, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mHqmManager:Landroid/os/ISemHqmManager;

    if-nez v1, :cond_20

    const-string v1, "HqmManagerService"

    .line 501
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ISemHqmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISemHqmManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mHqmManager:Landroid/os/ISemHqmManager;

    if-eqz v1, :cond_1c

    .line 502
    sget-object v1, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;->SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    goto :goto_1e

    :cond_1c
    sget-object v1, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;->NOT_SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    :goto_1e
    iput-object v1, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportHqm:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    .line 505
    :cond_20
    iget-object v1, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportHqm:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    sget-object v2, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;->NOT_SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    const-string v3, "NSLocationMonitor"

    if-ne v1, v2, :cond_2e

    const-string v0, "HQM not supported device"

    .line 506
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 517
    :cond_2e
    :try_start_2e
    iget-object v4, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mHqmManager:Landroid/os/ISemHqmManager;

    const/4 v5, 0x0

    const-string v6, "GNSS"

    const-string/jumbo v8, "ph"

    const-string v9, "0.0"

    const-string/jumbo v10, "sec"

    const-string v13, ""

    move-object v7, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-interface/range {v4 .. v13}, Landroid/os/ISemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_45} :catch_46

    goto :goto_5f

    :catch_46
    move-exception v0

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed logging big data for GNSS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5f
    return-void
.end method

.method public final sendStationaryInfo(III)V
    .registers 6

    .line 914
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "activity"

    .line 915
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "result"

    .line 916
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "movement"

    .line 917
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 919
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->MOTION_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public final sendStationaryInfo(Z)V
    .registers 4

    .line 907
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "stationary"

    .line 908
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 910
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->MOTION_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public final sendSupportAlgorithmType(Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;)V
    .registers 4

    .line 932
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 933
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 935
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->SUPPORT_ALGORITHM_TYPE:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public setFeatureDeviceActivity(Z)Z
    .registers 5

    const-string v0, "NSLocationMonitor"

    const/4 v1, 0x0

    if-eqz p1, :cond_45

    .line 799
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-nez p1, :cond_21

    .line 800
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "scontext"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/hardware/context/SemContextManager;

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-nez p1, :cond_21

    const-string/jumbo p1, "semContextManager is null"

    .line 803
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iput-boolean v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    return v1

    .line 808
    :cond_21
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x36

    invoke-virtual {p1, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    .line 810
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFeatureDeviceActivity, isAvailable, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-boolean p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    return p0

    .line 813
    :cond_45
    iget-boolean p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    if-eqz p1, :cond_4e

    .line 814
    iput-boolean v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    .line 815
    invoke-virtual {p0, v1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->sendStationaryInfo(Z)V

    .line 817
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->unregisterDeviceActivityDetector()V

    const-string/jumbo p1, "setFeatureDeviceActivity, false"

    .line 818
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iput-boolean v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    const/4 p0, 0x1

    return p0
.end method

.method public setLocationEnabled(Z)V
    .registers 5

    .line 951
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 952
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string/jumbo v2, "pid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 953
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "enabled"

    .line 954
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 956
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->SET_LOCATION_ENABLED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public setMotionPowerSaveMode(Z)V
    .registers 7

    .line 940
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    const-string v2, "NSLocationMonitor"

    .line 942
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMotionPowerSaveMode, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getNSLocationProviderHelper()Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->notifyMotionPowerSaveModeChanged(Z)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_28

    .line 945
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_28
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 946
    throw p0
.end method

.method public unregisterDeviceActivityDetector()V
    .registers 5

    .line 760
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    const-string v1, "NSLocationMonitor"

    if-nez v0, :cond_c

    const-string p0, "Failed unregisterDeviceActivityDetector"

    .line 761
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 764
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityRegistered:Z

    if-nez v0, :cond_16

    const-string p0, "Already unregistered DeviceActivityDetector"

    .line 765
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 770
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    const/16 v3, 0x36

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    const-string v0, "Success unregisterDeviceActivityDetector"

    .line 771
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_24} :catch_25

    goto :goto_3e

    :catch_25
    move-exception v0

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception is occurred while unregisterDeviceActivityDetector, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    const/4 v0, 0x0

    .line 776
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    .line 777
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityRegistered:Z

    .line 778
    iput v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityMode:I

    .line 779
    iput v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityDuration:I

    .line 780
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mRequestToUpdate:Z

    return-void
.end method

.method public updateBackgroundThrottlingAllowlist(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 209
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SettingsHelper;->updateBackgroundThrottlingAllowlist(Ljava/util/List;)V

    return-void
.end method

.method public updateTestProvider(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 974
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "isRegister"

    .line 975
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "provider"

    .line 976
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "packageName"

    .line 977
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->MOCK_PROVIDER_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public writeUtLog(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1035
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNsUtLogger:Lcom/android/server/location/nsflp/NSUtLogger;

    if-nez v0, :cond_19

    .line 1036
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NS_UT_LOGGER_THREAD"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1038
    new-instance v1, Lcom/android/server/location/nsflp/NSUtLogger;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/location/nsflp/NSUtLogger;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNsUtLogger:Lcom/android/server/location/nsflp/NSUtLogger;

    .line 1041
    :cond_19
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 1042
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1043
    new-instance v1, Lcom/android/server/location/nsflp/NSUtLogger$LogInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/location/nsflp/NSUtLogger$LogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1045
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNsUtLogger:Lcom/android/server/location/nsflp/NSUtLogger;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
