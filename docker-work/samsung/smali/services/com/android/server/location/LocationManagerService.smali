.class public Lcom/android/server/location/LocationManagerService;
.super Landroid/location/ILocationManager$Stub;
.source "LocationManagerService.java"

# interfaces
.implements Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LocationManagerService$SystemInjector;,
        Lcom/android/server/location/LocationManagerService$LocalService;,
        Lcom/android/server/location/LocationManagerService$ProcessListener;,
        Lcom/android/server/location/LocationManagerService$Lifecycle;
    }
.end annotation


# static fields
.field public static final ACTION_SEC_NOTIFICATION_DELETE_MOCK_LOCATION:Ljava/lang/String; = "com.samsung.android.location.mock.delete"

.field public static final ATTRIBUTION_TAG:Ljava/lang/String; = "LocationService"

.field public static final D:Z = true

.field public static final MOCK_LOCATION_NOTIFICATION_ID:I = 0x0

.field public static final MOCK_LOCATION_REMINDER_CHANNEL_ID:Ljava/lang/String; = "Mock Location Reminder"

.field public static final TAG:Ljava/lang/String; = "LocationManagerService"

.field public static mISLocationManager:Lcom/samsung/android/location/ISLocationManager;


# instance fields
.field public isMockLocationNotified:Z

.field public mActivityManager:Landroid/app/ActivityManager;

.field public mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

.field public final mContext:Landroid/content/Context;

.field public mDeprecatedGnssBatchingListener:Landroid/location/ILocationListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeprecatedGnssBatchingLock"
        }
    .end annotation
.end field

.field public final mDeprecatedGnssBatchingLock:Ljava/lang/Object;

.field public mExtraLocationControllerPackage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mExtraLocationControllerPackageEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

.field public final mGeofenceManager:Lcom/android/server/location/geofence/GeofenceManager;

.field public volatile mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/location/injector/Injector;

.field public final mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

.field public mLocationTagsChangedListener:Landroid/location/LocationManagerInternal$LocationPackageTagsListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mMockLocationRecord:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mNSLocationMonitor:Lcom/android/server/location/nsflp/NSLocationMonitor;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

.field public final mProcessListener:Lcom/android/server/location/LocationManagerService$ProcessListener;

.field public final mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/provider/LocationProviderManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$GYNroVTIdwxY0iCjhvp6vsQ3upM(Lcom/android/server/location/LocationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$MpYAqrwDNv0C1NEBUF0r5eHuMvE(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;->lambda$onStateChanged$8(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PIuAa-zVImuKZKfQguLvDH50pOk(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;->lambda$onStateChanged$7(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V6unPX16MnoOO5jEh4vFTawmmMc(Lcom/android/server/location/LocationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Wj7FnW8bytj8hKy47QGjXm4cK0Q(Lcom/android/server/location/LocationManagerService;I)[Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->lambda$new$5(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bOKsWjBhuDyLYN2qH9FYZQl7750(Lcom/android/server/location/LocationManagerService;I)[Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->lambda$new$3(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iRExiEymUCHTVSw9jZH8KjzWkDw(Lcom/android/server/location/LocationManagerService;I)[Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->lambda$new$4(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lZtN6Akm3CzfpvDs19y2i1I12GQ(ZLcom/android/server/location/settings/LocationUserSettings;)Lcom/android/server/location/settings/LocationUserSettings;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/LocationManagerService;->lambda$setAdasGnssLocationEnabledForUser$6(ZLcom/android/server/location/settings/LocationUserSettings;)Lcom/android/server/location/settings/LocationUserSettings;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o8nCekQ1_LpCRFOkr4k7XC03NPY(Lcom/android/server/location/LocationManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->onMockLocationAppOpChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$sqihEcdWXRp1veMdnIFMYE1R6qA(Lcom/android/server/location/LocationManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;->lambda$new$2(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$uF7b_mBXNU5SEZNMxWv7H1zebvg(Lcom/android/server/location/LocationManagerService;ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/LocationManagerService;->onLocationUserSettingsChanged(ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ysM5suRtPGwfOtUY8Ay7vx1m6Is(Lcom/android/server/location/LocationManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->onLocationModeChanged(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmGnssManagerService(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/gnss/GnssManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/location/LocationManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/injector/Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMockLocationRecord(Lcom/android/server/location/LocationManagerService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputisMockLocationNotified(Lcom/android/server/location/LocationManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/location/LocationManagerService;->isMockLocationNotified:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageRemovedLocked(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->onPackageRemovedLocked(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monProcessDiedLocked(Lcom/android/server/location/LocationManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->onProcessDiedLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrecoverRealProviderLocked(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->recoverRealProviderLocked(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetmISLocationManager()Lcom/samsung/android/location/ISLocationManager;
    .registers 1

    sget-object v0, Lcom/android/server/location/LocationManagerService;->mISLocationManager:Lcom/samsung/android/location/ISLocationManager;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;)V
    .registers 7

    .line 360
    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    .line 304
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 312
    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 315
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingLock:Ljava/lang/Object;

    .line 330
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 348
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lcom/android/server/location/LocationManagerService;->isMockLocationNotified:Z

    .line 355
    new-instance v1, Lcom/android/server/location/LocationManagerService$ProcessListener;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationManagerService$ProcessListener;-><init>(Lcom/android/server/location/LocationManagerService;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProcessListener:Lcom/android/server/location/LocationManagerService$ProcessListener;

    const-string v1, "LocationService"

    .line 361
    invoke-virtual {p1, v1}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 363
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    .line 365
    iput-object p2, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 366
    new-instance p1, Lcom/android/server/location/LocationManagerService$LocalService;

    invoke-direct {p1, p0}, Lcom/android/server/location/LocationManagerService$LocalService;-><init>(Lcom/android/server/location/LocationManagerService;)V

    iput-object p1, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    .line 367
    const-class v1, Landroid/location/LocationManagerInternal;

    invoke-static {v1, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    :try_start_48
    const-string/jumbo p1, "persist.sys.gps.dds.subId"

    const-string v1, "0"

    .line 372
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_55} :catch_56

    goto :goto_5e

    :catch_56
    const-string p1, "LocationManagerService"

    const-string v1, "Sim slot property has wrong value, set 0"

    .line 374
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 377
    :goto_5e
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v1

    const-string v2, "CarrierFeature_GPS_ConfigAgpsSetting"

    const-string v3, ""

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_72

    .line 380
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_79

    :cond_72
    const-string/jumbo p1, "ro.csc.sales_code"

    .line 381
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 384
    :cond_79
    invoke-static {}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getInstance()Lcom/android/server/location/gnss/sec/CarrierConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 385
    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->setSalesCode(Ljava/lang/String;)V

    .line 387
    new-instance p1, Lcom/android/server/location/geofence/GeofenceManager;

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/android/server/location/geofence/GeofenceManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;)V

    iput-object p1, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/geofence/GeofenceManager;

    .line 389
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getLocationSettings()Lcom/android/server/location/settings/LocationSettings;

    move-result-object p1

    new-instance v0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {p1, v0}, Lcom/android/server/location/settings/LocationSettings;->registerLocationUserSettingsListener(Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;)V

    .line 391
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object p1

    new-instance v0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {p1, v0}, Lcom/android/server/location/injector/SettingsHelper;->addOnLocationEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 393
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object p1

    new-instance v0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {p1, v0}, Lcom/android/server/location/injector/SettingsHelper;->addAdasAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 396
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object p1

    new-instance v0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {p1, v0}, Lcom/android/server/location/injector/SettingsHelper;->addIgnoreSettingsAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 398
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getUserInfoHelper()Lcom/android/server/location/injector/UserInfoHelper;

    move-result-object p1

    new-instance v0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {p1, v0}, Lcom/android/server/location/injector/UserInfoHelper;->addListener(Lcom/android/server/location/injector/UserInfoHelper$UserListener;)V

    .line 406
    new-instance p1, Lcom/android/server/location/provider/PassiveLocationProviderManager;

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/android/server/location/provider/PassiveLocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;)V

    iput-object p1, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    .line 407
    new-instance v0, Lcom/android/server/location/provider/PassiveLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/location/provider/PassiveLocationProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 413
    const-class p1, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 416
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaCarrier()Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 417
    new-instance v0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-interface {p1, v0}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->setLocationPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V

    goto :goto_105

    .line 422
    :cond_fd
    new-instance v0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-interface {p1, v0}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->setLocationPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V

    .line 427
    :goto_105
    new-instance v0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-interface {p1, v0}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->setLocationExtraPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V

    .line 432
    new-instance p1, Lcom/android/server/location/nsflp/NSLocationMonitor;

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/android/server/location/nsflp/NSLocationMonitor;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;)V

    iput-object p1, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/nsflp/NSLocationMonitor;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    const/4 v0, -0x1

    .line 394
    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->refreshAppOpsRestrictions(I)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 2

    const/4 v0, -0x1

    .line 397
    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->refreshAppOpsRestrictions(I)V

    return-void
.end method

.method private synthetic lambda$new$2(II)V
    .registers 4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 400
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->refreshAppOpsRestrictions(I)V

    :cond_6
    return-void
.end method

.method private synthetic lambda$new$3(I)[Ljava/lang/String;
    .registers 2

    .line 418
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10700e8

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$4(I)[Ljava/lang/String;
    .registers 2

    .line 423
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10700e7

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$5(I)[Ljava/lang/String;
    .registers 2

    .line 428
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10700e6

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onStateChanged$7(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;)V
    .registers 3

    .line 2016
    invoke-interface {p0, p1, p2}, Landroid/location/LocationManagerInternal$LocationPackageTagsListener;->onLocationPackageTagsChanged(ILandroid/os/PackageTagsList;)V

    return-void
.end method

.method public static synthetic lambda$onStateChanged$8(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;)V
    .registers 3

    .line 2023
    invoke-interface {p0, p1, p2}, Landroid/location/LocationManagerInternal$LocationPackageTagsListener;->onLocationPackageTagsChanged(ILandroid/os/PackageTagsList;)V

    return-void
.end method

.method public static synthetic lambda$setAdasGnssLocationEnabledForUser$6(ZLcom/android/server/location/settings/LocationUserSettings;)Lcom/android/server/location/settings/LocationUserSettings;
    .registers 2

    .line 1523
    invoke-virtual {p1, p0}, Lcom/android/server/location/settings/LocationUserSettings;->withAdasGnssLocationEnabled(Z)Lcom/android/server/location/settings/LocationUserSettings;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1325
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_9

    .line 1326
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public addGnssMeasurementsListener(Landroid/location/GnssMeasurementRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 1308
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_e

    .line 1309
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssMeasurementsListener(Landroid/location/GnssMeasurementRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1375
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_9

    .line 1376
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .registers 8

    .line 468
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 469
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_11

    move v1, v3

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 471
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager;->startManager(Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;)V

    if-eqz p2, :cond_3f

    .line 475
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    if-eq p1, v1, :cond_3c

    .line 476
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 477
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "location_enable_stationary_throttle"

    .line 476
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2e

    move v2, v3

    :cond_2e
    if-eqz v2, :cond_3c

    .line 480
    new-instance v1, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-direct {v1, v2, v3, p2}, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;-><init>(Ljava/lang/String;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    move-object p2, v1

    .line 484
    :cond_3c
    invoke-virtual {p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setRealProvider(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 486
    :cond_3f
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public addProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V
    .registers 4

    .line 1340
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    .line 1341
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager;

    .line 1342
    invoke-virtual {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->addProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V

    goto :goto_10

    :cond_20
    return-void
.end method

.method public addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/location/provider/ProviderProperties;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1773
    invoke-static {p4, p5}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p5

    .line 1774
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1, p5}, Lcom/android/server/location/injector/AppOpsHelper;->noteOp(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 1778
    :cond_13
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/nsflp/NSLocationMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p4}, Lcom/android/server/location/nsflp/NSLocationMonitor;->updateTestProvider(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1780
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getOrAddLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v0

    .line 1781
    new-instance v2, Lcom/android/server/location/provider/MockLocationProvider;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, p2, p5, v3}, Lcom/android/server/location/provider/MockLocationProvider;-><init>(Landroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V

    invoke-virtual {v0, v2}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V

    .line 1785
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_2d
    const-string/jumbo p3, "gps"

    .line 1786
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3f

    .line 1787
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    const-string/jumbo p3, "gps"

    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    :cond_3f
    const-string p3, "fused"

    .line 1788
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4f

    .line 1789
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    const-string p3, "fused"

    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    :cond_4f
    const-string/jumbo p3, "network"

    .line 1790
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    .line 1791
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    const-string/jumbo p3, "network"

    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1793
    :cond_60
    :goto_60
    iget-boolean p1, p0, Lcom/android/server/location/LocationManagerService;->isMockLocationNotified:Z

    if-nez p1, :cond_71

    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_71

    .line 1794
    invoke-virtual {p0, p4}, Lcom/android/server/location/LocationManagerService;->createNotificationForMockLocation(Ljava/lang/String;)V

    .line 1795
    iput-boolean v1, p0, Lcom/android/server/location/LocationManagerService;->isMockLocationNotified:Z

    .line 1797
    :cond_71
    monitor-exit p2

    return-void

    :catchall_73
    move-exception p0

    monitor-exit p2
    :try_end_75
    .catchall {:try_start_2d .. :try_end_75} :catchall_73

    throw p0
.end method

.method public calculateAppOpsLocationSourceTags(I)Landroid/os/PackageTagsList;
    .registers 7

    .line 2074
    new-instance v0, Landroid/os/PackageTagsList$Builder;

    invoke-direct {v0}, Landroid/os/PackageTagsList$Builder;-><init>()V

    .line 2075
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/provider/LocationProviderManager;

    .line 2076
    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager;->getState()Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object v2

    .line 2077
    iget-object v3, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    if-nez v3, :cond_20

    goto :goto_b

    .line 2080
    :cond_20
    invoke-virtual {v3}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v3

    if-eq v3, p1, :cond_27

    goto :goto_b

    .line 2084
    :cond_27
    iget-object v3, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v3}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    invoke-virtual {v0, v3, v4}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/util/Collection;)Landroid/os/PackageTagsList$Builder;

    .line 2085
    iget-object v3, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5e

    iget-object v3, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 2086
    invoke-virtual {v3}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_43

    goto :goto_5e

    .line 2090
    :cond_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provider has specified a null attribution tag and a non-empty set of extra attribution tags - dropping the null attribution tag"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2087
    :cond_5e
    :goto_5e
    iget-object v1, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 2088
    invoke-virtual {v2}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2087
    invoke-virtual {v0, v1, v2}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    goto :goto_b

    .line 2095
    :cond_6e
    invoke-virtual {v0}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object p0

    return-object p0
.end method

.method public final cancelNotificationForMockLocation()V
    .registers 5

    .line 1757
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1759
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    .line 1760
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const/4 v3, 0x0

    .line 1761
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1762
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProcessListener:Lcom/android/server/location/LocationManagerService$ProcessListener;

    invoke-virtual {v2, p0}, Landroid/app/ActivityManager;->semUnregisterProcessListener(Landroid/app/ActivityManager$SemProcessListener;)V
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1e

    .line 1764
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1765
    throw p0
.end method

.method public final createNotificationForMockLocation(Ljava/lang/String;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Mock Location Reminder"

    .line 1699
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1702
    :try_start_a
    iget-object v5, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1703
    iget-object v6, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "notification"

    .line 1704
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    const v7, 0x10407e6

    .line 1705
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1707
    new-instance v9, Landroid/app/NotificationChannel;

    const/4 v10, 0x4

    invoke-direct {v9, v2, v8, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1710
    invoke-virtual {v6, v9}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1711
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.samsung.android.location.mock.delete"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "android.intent.extra.PACKAGE_NAME"

    .line 1712
    invoke-virtual {v8, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1715
    iget-object v9, v0, Lcom/android/server/location/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v10, 0x40

    invoke-virtual {v9, v1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 1716
    iget-object v10, v0, Lcom/android/server/location/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v11, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1717
    iget-object v11, v0, Lcom/android/server/location/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v9}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1718
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 1719
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1718
    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1720
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1721
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v9, v15, v15, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1722
    invoke-virtual {v9, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1723
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v9, 0x10407e4

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v10, v13, v15

    .line 1724
    invoke-virtual {v5, v9, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1726
    new-instance v10, Landroid/app/Notification$Action$Builder;

    const/4 v13, 0x0

    const v14, 0x10407e5

    .line 1728
    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v14, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const/high16 v12, 0x4c000000    # 3.3554432E7f

    .line 1729
    invoke-static {v14, v15, v8, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-direct {v10, v13, v5, v8}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1733
    invoke-virtual {v10}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    .line 1734
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v10, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v10, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1736
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1737
    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v7, 0x1080585

    .line 1738
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1739
    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v7, 0x1

    .line 1740
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v8}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 1741
    invoke-virtual {v8, v9}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    new-array v7, v7, [Landroid/app/Notification$Action;

    aput-object v5, v7, v15

    .line 1742
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1743
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 1744
    invoke-virtual {v6, v15, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1746
    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v0, v0, Lcom/android/server/location/LocationManagerService;->mProcessListener:Lcom/android/server/location/LocationManagerService$ProcessListener;

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->semRegisterProcessListener(Landroid/app/ActivityManager$SemProcessListener;)V
    :try_end_dc
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_dc} :catch_df
    .catchall {:try_start_a .. :try_end_dc} :catchall_dd

    goto :goto_f6

    :catchall_dd
    move-exception v0

    goto :goto_fa

    :catch_df
    :try_start_df
    const-string v0, "LocationManagerService"

    .line 1749
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "missing package: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f6
    .catchall {:try_start_df .. :try_end_f6} :catchall_dd

    .line 1751
    :goto_f6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_fa
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1752
    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 1889
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "LocationManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1893
    :cond_b
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1895
    array-length p2, p3

    const/4 v1, 0x0

    if-lez p2, :cond_5a

    .line 1896
    aget-object p2, p3, v1

    invoke-virtual {p0, p2}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p2

    if-eqz p2, :cond_46

    const-string p0, "Provider:"

    .line 1898
    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1899
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1900
    invoke-virtual {p2, p1, v0, p3}, Lcom/android/server/location/provider/LocationProviderManager;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1901
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p0, "Event Log:"

    .line 1903
    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1904
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1905
    sget-object p0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    new-instance p1, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda10;

    invoke-direct {p1, v0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda10;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->iterate(Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 1906
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :cond_46
    const-string p2, "--gnssmetrics"

    .line 1910
    aget-object v2, p3, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5a

    .line 1911
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz p2, :cond_59

    .line 1912
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/location/gnss/GnssManagerService;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    :cond_59
    return-void

    :cond_5a
    const-string p2, "Location Manager State:"

    .line 1918
    invoke-virtual {v0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1919
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "User Info:"

    .line 1921
    invoke-virtual {v0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1922
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1923
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getUserInfoHelper()Lcom/android/server/location/injector/UserInfoHelper;

    move-result-object p2

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/server/location/injector/UserInfoHelper;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1924
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "Location Settings:"

    .line 1926
    invoke-virtual {v0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1927
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1928
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object p2

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/server/location/injector/SettingsHelper;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1929
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getLocationSettings()Lcom/android/server/location/settings/LocationSettings;

    move-result-object p2

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/server/location/settings/LocationSettings;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1930
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1932
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1933
    :try_start_96
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    if-eqz v2, :cond_bc

    .line 1934
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location Controller Extra Package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1936
    iget-boolean v3, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    if-eqz v3, :cond_b0

    const-string v3, " [enabled]"

    goto :goto_b2

    :cond_b0
    const-string v3, " [disabled]"

    .line 1937
    :goto_b2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1934
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1939
    :cond_bc
    monitor-exit p2
    :try_end_bd
    .catchall {:try_start_96 .. :try_end_bd} :catchall_1b7

    const-string p2, "Location Providers:"

    .line 1941
    invoke-virtual {v0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1942
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1943
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_cb
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_db

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/provider/LocationProviderManager;

    .line 1944
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/location/provider/LocationProviderManager;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    goto :goto_cb

    .line 1946
    :cond_db
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "Historical Aggregate Location Provider Data:"

    .line 1948
    invoke-virtual {v0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1949
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1950
    sget-object p2, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 1951
    invoke-virtual {p2}, Lcom/android/server/location/eventlog/LocationEventLog;->copyAggregateStats()Landroid/util/ArrayMap;

    move-result-object p2

    move v2, v1

    .line 1952
    :goto_ed
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_136

    .line 1953
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ":"

    .line 1954
    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1955
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1957
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    move v4, v1

    .line 1958
    :goto_10b
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_130

    .line 1959
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const-string v5, ": "

    .line 1960
    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1961
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    invoke-virtual {v5}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->updateTotals()V

    .line 1962
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_10b

    .line 1964
    :cond_130
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_ed

    .line 1966
    :cond_136
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1968
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz p2, :cond_14d

    const-string p2, "GNSS Manager:"

    .line 1969
    invoke-virtual {v0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1970
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1971
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/server/location/gnss/GnssManagerService;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1972
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_14d
    const-string p2, "Geofence Manager:"

    .line 1975
    invoke-virtual {v0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1976
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1977
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1978
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p1, "Event Log:"

    .line 1980
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1981
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1982
    sget-object p1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    new-instance p2, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda10;

    invoke-direct {p2, v0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda10;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->iterate(Ljava/util/function/Consumer;)V

    .line 1983
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p1, "Mock Location Record:"

    .line 1986
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1987
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_181
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1b6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 1988
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1989
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1990
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_181

    :cond_1b6
    return-void

    :catchall_1b7
    move-exception p0

    .line 1939
    :try_start_1b8
    monitor-exit p2
    :try_end_1b9
    .catchall {:try_start_1b8 .. :try_end_1b9} :catchall_1b7

    throw p0
.end method

.method public flushGnssBatch()V
    .registers 5

    .line 880
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_d

    return-void

    .line 886
    :cond_d
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 887
    :try_start_10
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingListener:Landroid/location/ILocationListener;

    if-eqz v1, :cond_1b

    const-string/jumbo v2, "gps"

    const/4 v3, 0x0

    .line 888
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/location/LocationManagerService;->requestListenerFlush(Ljava/lang/String;Landroid/location/ILocationListener;I)V

    .line 890
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public geocoderIsPresent()Z
    .registers 1

    .line 1566
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public getAllProviders()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 917
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 918
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/provider/LocationProviderManager;

    .line 919
    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_25
    return-object v0
.end method

.method public getBackgroundThrottlingWhitelist()[Ljava/lang/String;
    .registers 2

    .line 975
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/location/injector/SettingsHelper;->getBackgroundThrottlePackageWhitelist()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .registers 6

    .line 951
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 952
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object p1

    .line 953
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 954
    invoke-virtual {p0, v2, p2}, Lcom/android/server/location/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object p1

    .line 956
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_47

    .line 958
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_46

    const-string p0, "fused"

    .line 959
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    const-string p0, "fused"

    return-object p0

    :cond_24
    const-string/jumbo p0, "gps"

    .line 961
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    const-string/jumbo p0, "gps"

    return-object p0

    :cond_31
    const-string/jumbo p0, "network"

    .line 963
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3e

    const-string/jumbo p0, "network"

    return-object p0

    :cond_3e
    const/4 p0, 0x0

    .line 966
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_46
    return-object v2

    :catchall_47
    move-exception p0

    .line 956
    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public getCurrentLocation(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .registers 11

    .line 989
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p4, p5, p6}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p4

    .line 991
    iget-object p6, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    .line 992
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v1

    .line 991
    invoke-static {p6, v0, v1}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result p6

    .line 993
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, p6, v1}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    .line 997
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2c

    if-eqz p5, :cond_2a

    goto :goto_2c

    :cond_2a
    move p5, v3

    goto :goto_2d

    :cond_2c
    :goto_2c
    move p5, v1

    :goto_2d
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 999
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/location/LocationManagerService;->validateLocationRequest(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LocationRequest;

    move-result-object p2

    .line 1001
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    if-eqz p0, :cond_3b

    goto :goto_3c

    :cond_3b
    move v1, v3

    .line 1002
    :goto_3c
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "provider \""

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" does not exist"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1005
    invoke-virtual {p0, p2, p4, p6, p3}, Lcom/android/server/location/provider/LocationProviderManager;->getCurrentLocation(Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;ILandroid/location/ILocationCallback;)Landroid/os/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public getExtraLocationControllerPackage()Ljava/lang/String;
    .registers 2

    .line 1474
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1475
    :try_start_3
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 1476
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    .registers 18

    move-object v0, p0

    .line 1573
    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p6 .. p6}, Landroid/location/GeocoderParams;->getClientPackage()Ljava/lang/String;

    move-result-object v2

    .line 1574
    invoke-virtual/range {p6 .. p6}, Landroid/location/GeocoderParams;->getClientAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1573
    invoke-static {v1, v2, v3}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    .line 1575
    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    invoke-virtual/range {p6 .. p6}, Landroid/location/GeocoderParams;->getClientUid()I

    move-result v2

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1577
    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v2, :cond_2e

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 1578
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/location/GeocoderProxy;->getFromLocation(DDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V

    goto :goto_38

    :cond_2e
    const/4 v0, 0x0

    .line 1581
    :try_start_2f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v2, p7

    invoke-interface {v2, v0, v1}, Landroid/location/IGeocodeListener;->onResults(Ljava/lang/String;Ljava/util/List;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_38} :catch_38

    :catch_38
    :goto_38
    return-void
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    .registers 28

    move-object v0, p0

    .line 1594
    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p11 .. p11}, Landroid/location/GeocoderParams;->getClientPackage()Ljava/lang/String;

    move-result-object v2

    .line 1595
    invoke-virtual/range {p11 .. p11}, Landroid/location/GeocoderParams;->getClientAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1594
    invoke-static {v1, v2, v3}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    .line 1596
    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    invoke-virtual/range {p11 .. p11}, Landroid/location/GeocoderParams;->getClientUid()I

    move-result v2

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1598
    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v2, :cond_37

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    .line 1599
    invoke-virtual/range {v2 .. v14}, Lcom/android/server/location/GeocoderProxy;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V

    goto :goto_41

    :cond_37
    const/4 v0, 0x0

    .line 1604
    :try_start_38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v2, p12

    invoke-interface {v2, v0, v1}, Landroid/location/IGeocodeListener;->onResults(Ljava/lang/String;Ljava/util/List;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_41} :catch_41

    :catch_41
    :goto_41
    return-void
.end method

.method public getGPSUsingApps()Ljava/util/Map;
    .registers 1

    .line 2374
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-virtual {p0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->getGPSUsingApps()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getGnssAntennaInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/GnssAntennaInfo;",
            ">;"
        }
    .end annotation

    .line 1369
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_c

    :cond_6
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssAntennaInfos()Ljava/util/List;

    move-result-object p0

    :goto_c
    return-object p0
.end method

.method public getGnssBatchSize()I
    .registers 2

    .line 846
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_c

    :cond_6
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssBatchSize()I

    move-result p0

    :goto_c
    return p0
.end method

.method public getGnssCapabilities()Landroid/location/GnssCapabilities;
    .registers 2

    .line 1363
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_e

    new-instance p0, Landroid/location/GnssCapabilities$Builder;

    invoke-direct {p0}, Landroid/location/GnssCapabilities$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/location/GnssCapabilities$Builder;->build()Landroid/location/GnssCapabilities;

    move-result-object p0

    goto :goto_14

    .line 1364
    :cond_e
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssCapabilities()Landroid/location/GnssCapabilities;

    move-result-object p0

    :goto_14
    return-object p0
.end method

.method public getGnssHardwareModelName()Ljava/lang/String;
    .registers 2

    .line 841
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_7

    const-string p0, ""

    goto :goto_d

    :cond_7
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object p0

    :goto_d
    return-object p0
.end method

.method public getGnssTimeMillis()Landroid/location/LocationTime;
    .registers 1

    .line 1244
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService$LocalService;->getGnssTimeMillis()Landroid/location/LocationTime;

    move-result-object p0

    return-object p0
.end method

.method public getGnssYearOfHardware()I
    .registers 2

    .line 835
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_c

    :cond_6
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssYearOfHardware()I

    move-result p0

    :goto_c
    return p0
.end method

.method public getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;
    .registers 1

    .line 981
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/location/injector/SettingsHelper;->getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;

    move-result-object p0

    return-object p0
.end method

.method public getLastLocation(Ljava/lang/String;Landroid/location/LastLocationRequest;Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;
    .registers 9

    .line 1184
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p3

    .line 1185
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    .line 1186
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v2

    .line 1185
    invoke-static {v0, v1, v2}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result v0

    .line 1187
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    .line 1191
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v1, v3, :cond_2a

    if-eqz p4, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :cond_2a
    :goto_2a
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1193
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/LocationManagerService;->validateLastLocationRequest(Ljava/lang/String;Landroid/location/LastLocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LastLocationRequest;

    move-result-object p2

    .line 1195
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    if-nez p0, :cond_39

    const/4 p0, 0x0

    return-object p0

    .line 1200
    :cond_39
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocation(Landroid/location/LastLocationRequest;Landroid/location/util/identity/CallerIdentity;I)Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 442
    :cond_4
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/provider/LocationProviderManager;

    .line 443
    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    return-object v1

    :cond_21
    return-object v0
.end method

.method public final getOrAddLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;
    .registers 7

    .line 452
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 453
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/provider/LocationProviderManager;

    .line 454
    invoke-virtual {v2}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 455
    monitor-exit v0

    return-object v2

    .line 459
    :cond_21
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    const/4 p1, 0x0

    .line 461
    invoke-virtual {p0, v1, p1}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 462
    monitor-exit v0

    return-object v1

    :catchall_32
    move-exception p0

    .line 463
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public getProviderPackages(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1448
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_DEVICE_CONFIG"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    if-nez p0, :cond_13

    .line 1452
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1455
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager;->getProviderIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    if-nez p0, :cond_1e

    .line 1457
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1460
    :cond_1e
    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getProviderProperties(Ljava/lang/String;)Landroid/location/provider/ProviderProperties;
    .registers 5

    .line 1418
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 1419
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provider \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" does not exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1421
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager;->getProperties()Landroid/location/provider/ProviderProperties;

    move-result-object p0

    return-object p0
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 926
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/location/LocationPermissions;->checkCallingOrSelfLocationPermission(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 928
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 931
    :cond_e
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 932
    :try_start_11
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 933
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/provider/LocationProviderManager;

    .line 934
    invoke-virtual {v2}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_3f

    .line 935
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_3f

    goto :goto_22

    :cond_3f
    if-eqz p1, :cond_4c

    .line 939
    invoke-virtual {v2}, Lcom/android/server/location/provider/LocationProviderManager;->getProperties()Landroid/location/provider/ProviderProperties;

    move-result-object v2

    .line 938
    invoke-static {v3, v2, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Landroid/location/Criteria;)Z

    move-result v2

    if-nez v2, :cond_4c

    goto :goto_22

    .line 942
    :cond_4c
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 944
    :cond_50
    monitor-exit v0

    return-object v1

    :catchall_52
    move-exception p0

    .line 945
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_11 .. :try_end_54} :catchall_52

    throw p0
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 11

    .line 1882
    new-instance v0, Lcom/android/server/location/LocationShellCommand;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/location/LocationShellCommand;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationManagerService;)V

    .line 1883
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p4

    .line 1882
    invoke-virtual/range {v0 .. v5}, Lcom/android/modules/utils/BasicShellCommandHandler;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public hasProvider(Ljava/lang/String;)Z
    .registers 2

    .line 912
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final initializeProviders_chn()V
    .registers 12

    .line 672
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaCarrier()Z

    move-result v0

    const v1, 0x1110140

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaMobile()Z

    move-result v0

    if-nez v0, :cond_1a

    const v0, 0x104036f

    const v2, 0x1040351

    goto :goto_32

    .line 679
    :cond_1a
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaMobile()Z

    move-result v0

    if-eqz v0, :cond_29

    const v0, 0x104036e

    const v2, 0x1040350

    goto :goto_32

    :cond_29
    const v0, 0x104036d

    const v2, 0x104034f

    const v1, 0x111013f

    :goto_32
    move v9, v1

    move v10, v2

    .line 697
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    const-string/jumbo v4, "network"

    const-string v5, "com.android.location.service.v3.NetworkLocationProvider"

    move v6, v9

    move v7, v0

    invoke-static/range {v3 .. v8}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/location/injector/Injector;)Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    move-result-object v1

    const-string v7, "LocationManagerService"

    if-eqz v1, :cond_59

    .line 704
    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    const-string/jumbo v6, "network"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    .line 706
    invoke-virtual {p0, v2, v1}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    goto :goto_5f

    :cond_59
    const-string/jumbo v1, "no network location provider found"

    .line 708
    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :goto_5f
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.location.service.FusedLocationProvider"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x180000

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 714
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Unable to find a direct boot aware fused location provider"

    .line 712
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 717
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    const-string v2, "fused"

    const-string v3, "com.android.location.service.FusedLocationProvider"

    const v5, 0x104034e

    move v4, v9

    invoke-static/range {v1 .. v6}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/location/injector/Injector;)Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    move-result-object v1

    if-eqz v1, :cond_a1

    .line 724
    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    const-string v6, "fused"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    .line 726
    invoke-virtual {p0, v2, v1}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    goto :goto_a7

    :cond_a1
    const-string/jumbo v1, "no fused location provider found"

    .line 728
    invoke-static {v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :goto_a7
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-static {v1, v9, v10, v2}, Lcom/android/server/location/GeocoderProxy;->createAndRegister(Landroid/content/Context;IILcom/android/server/location/injector/Injector;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-nez v1, :cond_b9

    const-string/jumbo v1, "no geocoder provider found"

    .line 736
    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_b9
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 742
    :try_start_c3
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v1}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 743
    invoke-virtual {p0, v0, v8}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0

    .line 742
    invoke-virtual {v1, v0, p0}, Lcom/android/server/location/injector/AppOpsHelper;->setSystemAlertWindowOpIfNeed(Ljava/lang/String;I)V
    :try_end_d2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c3 .. :try_end_d2} :catch_d3

    goto :goto_e7

    .line 745
    :catch_d3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NameNotFoundException package: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e7
    return-void
.end method

.method public injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V
    .registers 3

    .line 1356
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_9

    .line 1357
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V

    :cond_9
    return-void
.end method

.method public injectLocation(Landroid/location/Location;)V
    .registers 5

    .line 1249
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    invoke-virtual {p1}, Landroid/location/Location;->isComplete()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1254
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1255
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 1256
    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1257
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/provider/LocationProviderManager;->injectLastLocation(Landroid/location/Location;I)V

    :cond_2d
    return-void
.end method

.method public isAdasGnssLocationEnabledForUser(I)Z
    .registers 9

    .line 1528
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "isAdasGnssLocationEnabledForUser"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1530
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getLocationSettings()Lcom/android/server/location/settings/LocationSettings;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/location/settings/LocationSettings;->getUserSettings(I)Lcom/android/server/location/settings/LocationUserSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result p0

    return p0
.end method

.method public isAutomotiveGnssSuspended()Z
    .registers 4
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.CONTROL_AUTOMOTIVE_GNSS"
    .end annotation

    .line 1554
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_AUTOMOTIVE_GNSS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1561
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService;->isAutomotiveGnssSuspended()Z

    move-result p0

    return p0

    .line 1557
    :cond_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "isAutomotiveGnssSuspended only allowed on automotive devices"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isExtraLocationControllerPackageEnabled()Z
    .registers 3

    .line 1490
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1491
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    if-eqz v1, :cond_d

    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 1493
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public isLocationEnabledForUser(I)Z
    .registers 9

    .line 1510
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "isLocationEnabledForUser"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1512
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SettingsHelper;->isLocationEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isProviderEnabledForUser(Ljava/lang/String;I)Z
    .registers 3

    .line 1535
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LocationManagerService$LocalService;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isProviderPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 1427
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_DEVICE_CONFIG"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager;

    if-eqz p1, :cond_27

    .line 1430
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_e

    .line 1433
    :cond_27
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager;->getProviderIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    if-nez v0, :cond_2e

    goto :goto_e

    .line 1437
    :cond_2e
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz p3, :cond_44

    .line 1438
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_44
    const/4 p0, 0x1

    return p0

    :cond_46
    const/4 p0, 0x0

    return p0
.end method

.method public notifyNSFLP(Landroid/os/Message;)V
    .registers 2

    .line 2379
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->onMessageUpdated(Landroid/os/Message;)V

    return-void
.end method

.method public onFreezeStateChanged(ZI)V
    .registers 5

    .line 2384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFreezeStateChanged, uid["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getLocationPermissionsHelper()Lcom/android/server/location/injector/LocationPermissionsHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/injector/LocationPermissionsHelper;->onFreezeStateChanged(ZI)V

    return-void
.end method

.method public final onLocationModeChanged(I)V
    .registers 5

    .line 815
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SettingsHelper;->isLocationEnabled(I)Z

    move-result v0

    .line 816
    invoke-static {}, Landroid/location/LocationManager;->invalidateLocalLocationEnabledCaches()V

    .line 819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] location enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    sget-object v1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->logLocationEnabled(IZ)V

    .line 824
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.location.MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.location.extra.LOCATION_ENABLED"

    .line 825
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 826
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 827
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 828
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 830
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->refreshAppOpsRestrictions(I)V

    return-void
.end method

.method public final onLocationUserSettingsChanged(ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V
    .registers 5

    .line 797
    invoke-virtual {p2}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result p2

    invoke-virtual {p3}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result v0

    if-eq p2, v0, :cond_53

    .line 798
    invoke-virtual {p3}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result p2

    .line 801
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[u"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] adas gnss location enabled = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "LocationManagerService"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    sget-object p3, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->logAdasLocationEnabled(IZ)V

    .line 806
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.location.action.ADAS_GNSS_ENABLED_CHANGED"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.location.extra.ADAS_GNSS_ENABLED"

    .line 807
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    const/high16 p3, 0x40000000    # 2.0f

    .line 808
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    const/high16 p3, 0x10000000

    .line 809
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    .line 810
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_53
    return-void
.end method

.method public final onMockLocationAppOpChanged()V
    .registers 5

    .line 1680
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1681
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1682
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    .line 1683
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_51

    .line 1685
    :try_start_21
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    .line 1686
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v3}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/location/injector/AppOpsHelper;->checkMockLocationAccess(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 1688
    invoke-virtual {p0, v1}, Lcom/android/server/location/LocationManagerService;->recoverRealProviderLocked(Ljava/lang/String;)V
    :try_end_37
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_37} :catch_38
    .catchall {:try_start_21 .. :try_end_37} :catchall_51

    goto :goto_4f

    :catch_38
    :try_start_38
    const-string p0, "LocationManagerService"

    .line 1691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "missing package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    :cond_4f
    :goto_4f
    monitor-exit v0

    return-void

    :catchall_51
    move-exception p0

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_38 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public final onPackageRemovedLocked(Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1674
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1675
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->recoverRealProviderLocked(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public final onProcessDiedLocked(I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1664
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 1666
    array-length v0, p1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_14

    aget-object v2, p1, v1

    .line 1667
    invoke-virtual {p0, v2}, Lcom/android/server/location/LocationManagerService;->recoverRealProviderLocked(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_14
    return-void
.end method

.method public onStateChanged(Ljava/lang/String;Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .registers 9

    .line 1999
    iget-object p1, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    iget-object v0, p3, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_e

    .line 2000
    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->refreshAppOpsRestrictions(I)V

    .line 2003
    :cond_e
    iget-object p1, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    iget-object v1, p3, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    iget-object v1, p3, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 2004
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_60

    .line 2008
    :cond_22
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2009
    :try_start_25
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLocationTagsChangedListener:Landroid/location/LocationManagerInternal$LocationPackageTagsListener;

    if-eqz v1, :cond_5f

    .line 2011
    iget-object p2, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    if-eqz p2, :cond_32

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result p2

    goto :goto_33

    :cond_32
    move p2, v0

    .line 2012
    :goto_33
    iget-object p3, p3, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    if-eqz p3, :cond_3c

    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result p3

    goto :goto_3d

    :cond_3c
    move p3, v0

    :goto_3d
    if-eq p2, v0, :cond_4d

    .line 2014
    invoke-virtual {p0, p2}, Lcom/android/server/location/LocationManagerService;->calculateAppOpsLocationSourceTags(I)Landroid/os/PackageTagsList;

    move-result-object v2

    .line 2015
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, p2, v2}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4d
    if-eq p3, v0, :cond_5f

    if-eq p3, p2, :cond_5f

    .line 2021
    invoke-virtual {p0, p3}, Lcom/android/server/location/LocationManagerService;->calculateAppOpsLocationSourceTags(I)Landroid/os/PackageTagsList;

    move-result-object p2

    .line 2022
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1, p3, p2}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda1;-><init>(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2026
    :cond_5f
    monitor-exit p1

    :cond_60
    return-void

    :catchall_61
    move-exception p0

    monitor-exit p1
    :try_end_63
    .catchall {:try_start_25 .. :try_end_63} :catchall_61

    throw p0
.end method

.method public onSystemReady()V
    .registers 12

    .line 519
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-virtual {v0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->onSystemReady()V

    .line 523
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/AppOpsHelper;->addMockLocationListener(Lcom/android/server/location/injector/AppOpsHelper$MockLocationAppOpListener;)V

    .line 524
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 526
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 528
    new-instance v0, Lcom/android/server/location/LocationManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/LocationManagerService$1;-><init>(Lcom/android/server/location/LocationManagerService;)V

    .line 536
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    .line 538
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.android.location.mock.delete"

    .line 539
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 540
    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/location/LocationManagerService$2;

    invoke-direct {v6, p0}, Lcom/android/server/location/LocationManagerService$2;-><init>(Lcom/android/server/location/LocationManagerService;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v10, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onSystemThirdPartyAppsCanStart()V
    .registers 12

    .line 561
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isChinaCarrier()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "LocationManagerService"

    if-eqz v0, :cond_10

    .line 562
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->initializeProviders_chn()V

    goto :goto_85

    .line 566
    :cond_10
    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const v7, 0x111013f

    const v8, 0x104036d

    iget-object v9, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    const-string/jumbo v5, "network"

    const-string v6, "com.android.location.service.v3.NetworkLocationProvider"

    invoke-static/range {v4 .. v9}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/location/injector/Injector;)Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 573
    new-instance v4, Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    iget-object v7, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    const-string/jumbo v8, "network"

    invoke-direct {v4, v5, v6, v8, v7}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    .line 575
    invoke-virtual {p0, v4, v0}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    goto :goto_3d

    :cond_37
    const-string/jumbo v0, "no network location provider found"

    .line 577
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :goto_3d
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.location.service.FusedLocationProvider"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x180000

    invoke-virtual {v0, v4, v5, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 583
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    const-string v4, "Unable to find a direct boot aware fused location provider"

    .line 581
    invoke-static {v0, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 586
    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const v8, 0x1110135

    const v9, 0x104034e

    iget-object v10, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    const-string v6, "fused"

    const-string v7, "com.android.location.service.FusedLocationProvider"

    invoke-static/range {v5 .. v10}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/location/injector/Injector;)Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 593
    new-instance v4, Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    iget-object v7, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    const-string v8, "fused"

    invoke-direct {v4, v5, v6, v8, v7}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    .line 595
    invoke-virtual {p0, v4, v0}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    goto :goto_85

    :cond_7f
    const-string/jumbo v0, "no fused location provider found"

    .line 597
    invoke-static {v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :goto_85
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 604
    new-instance v0, Lcom/android/server/location/gnss/GnssConfiguration;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/server/location/gnss/GnssConfiguration;-><init>(Landroid/content/Context;)V

    .line 605
    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-static {v4, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->create(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/GnssConfiguration;)Lcom/android/server/location/gnss/hal/GnssNative;

    move-result-object v0

    .line 606
    new-instance v4, Lcom/android/server/location/gnss/GnssManagerService;

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-direct {v4, v5, v6, v0}, Lcom/android/server/location/gnss/GnssManagerService;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object v4, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 607
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->onSystemReady()V

    .line 609
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    const-string/jumbo v7, "gps"

    invoke-direct {v0, v4, v5, v7, v6}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    .line 611
    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssLocationProvider()Lcom/android/server/location/gnss/GnssLocationProvider;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 615
    :cond_bf
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-static {v0, v4}, Lcom/android/server/location/GeocoderProxy;->createAndRegister(Landroid/content/Context;Lcom/android/server/location/injector/Injector;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-nez v0, :cond_d1

    const-string/jumbo v0, "no geocoder provider found"

    .line 617
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_d1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 622
    invoke-static {v0, v4}, Lcom/android/server/location/HardwareActivityRecognitionProxy;->createAndRegister(Landroid/content/Context;Lcom/android/server/location/injector/Injector;)Lcom/android/server/location/HardwareActivityRecognitionProxy;

    move-result-object v0

    if-nez v0, :cond_e1

    const-string/jumbo v0, "unable to bind ActivityRecognitionProxy"

    .line 624
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_e1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_fb

    .line 629
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 630
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 629
    invoke-static {v0, v4, v5}, Lcom/android/server/location/geofence/GeofenceProxy;->createAndBind(Landroid/content/Context;Landroid/location/IGpsGeofenceHardware;Lcom/android/server/location/injector/Injector;)Lcom/android/server/location/geofence/GeofenceProxy;

    move-result-object v0

    if-nez v0, :cond_fb

    const-string/jumbo v0, "unable to bind to GeofenceProxy"

    .line 632
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_fb
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1070128

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 639
    array-length v3, v0

    move v4, v2

    :goto_10a
    if-ge v4, v3, :cond_1a1

    aget-object v5, v0, v4

    const-string v6, ","

    .line 640
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 641
    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 642
    new-instance v7, Landroid/location/provider/ProviderProperties$Builder;

    invoke-direct {v7}, Landroid/location/provider/ProviderProperties$Builder;-><init>()V

    aget-object v8, v5, v1

    .line 643
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/location/provider/ProviderProperties$Builder;->setHasNetworkRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v5, v8

    .line 644
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/location/provider/ProviderProperties$Builder;->setHasSatelliteRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v7

    const/4 v8, 0x3

    aget-object v8, v5, v8

    .line 645
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/location/provider/ProviderProperties$Builder;->setHasCellRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v7

    const/4 v8, 0x4

    aget-object v8, v5, v8

    .line 646
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/location/provider/ProviderProperties$Builder;->setHasMonetaryCost(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v7

    const/4 v8, 0x5

    aget-object v8, v5, v8

    .line 647
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/location/provider/ProviderProperties$Builder;->setHasAltitudeSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v7

    const/4 v8, 0x6

    aget-object v8, v5, v8

    .line 648
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/location/provider/ProviderProperties$Builder;->setHasSpeedSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v7

    const/4 v8, 0x7

    aget-object v8, v5, v8

    .line 649
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/location/provider/ProviderProperties$Builder;->setHasBearingSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v7

    const/16 v8, 0x8

    aget-object v8, v5, v8

    .line 650
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/location/provider/ProviderProperties$Builder;->setPowerUsage(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v7

    const/16 v8, 0x9

    aget-object v5, v5, v8

    .line 651
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/location/provider/ProviderProperties$Builder;->setAccuracy(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v5

    .line 652
    invoke-virtual {v5}, Landroid/location/provider/ProviderProperties$Builder;->build()Landroid/location/provider/ProviderProperties;

    move-result-object v5

    .line 653
    invoke-virtual {p0, v6}, Lcom/android/server/location/LocationManagerService;->getOrAddLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v6

    .line 654
    new-instance v7, Lcom/android/server/location/provider/MockLocationProvider;

    iget-object v8, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 655
    invoke-static {v8}, Landroid/location/util/identity/CallerIdentity;->fromContext(Landroid/content/Context;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v7, v5, v8, v9}, Lcom/android/server/location/provider/MockLocationProvider;-><init>(Landroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V

    .line 654
    invoke-virtual {v6, v7}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_10a

    .line 658
    :cond_1a1
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->setSLocation()V

    return-void
.end method

.method public final recoverRealProviderLocked(Ljava/lang/String;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1633
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1634
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 1635
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1636
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1637
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1638
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1640
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove mock location. package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "provider name: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LocationManagerService"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    invoke-virtual {p0, v2}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v1

    if-nez v1, :cond_4f

    return-void

    :cond_4f
    const/4 v2, 0x0

    .line 1649
    invoke-virtual {v1, v2}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V

    .line 1650
    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager;->hasProvider()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 1651
    invoke-virtual {p0, v1}, Lcom/android/server/location/LocationManagerService;->removeLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;)V

    .line 1653
    :cond_5c
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 1656
    :cond_60
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6e

    const/4 p1, 0x0

    .line 1657
    iput-boolean p1, p0, Lcom/android/server/location/LocationManagerService;->isMockLocationNotified:Z

    .line 1658
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->cancelNotificationForMockLocation()V

    :cond_6e
    return-void
.end method

.method public final refreshAppOpsRestrictions(I)V
    .registers 12

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1a

    .line 2032
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getUserInfoHelper()Lcom/android/server/location/injector/UserInfoHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/location/injector/UserInfoHelper;->getRunningUserIds()[I

    move-result-object p1

    .line 2033
    :goto_e
    array-length v1, p1

    if-ge v0, v1, :cond_19

    .line 2034
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/android/server/location/LocationManagerService;->refreshAppOpsRestrictions(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_19
    return-void

    :cond_1a
    const/4 v1, 0x1

    if-ltz p1, :cond_1e

    move v0, v1

    .line 2039
    :cond_1e
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2041
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SettingsHelper;->isLocationEnabled(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_75

    .line 2045
    new-instance v2, Landroid/os/PackageTagsList$Builder;

    invoke-direct {v2}, Landroid/os/PackageTagsList$Builder;-><init>()V

    .line 2046
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_39
    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/provider/LocationProviderManager;

    .line 2047
    invoke-virtual {v4}, Lcom/android/server/location/provider/LocationProviderManager;->getProviderIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v4

    if-eqz v4, :cond_39

    .line 2049
    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    goto :goto_39

    .line 2052
    :cond_57
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v3}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/location/injector/SettingsHelper;->getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/PackageTagsList$Builder;->add(Landroid/os/PackageTagsList;)Landroid/os/PackageTagsList$Builder;

    .line 2053
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v3}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/location/injector/SettingsHelper;->getAdasAllowlist()Landroid/os/PackageTagsList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/PackageTagsList$Builder;->add(Landroid/os/PackageTagsList;)Landroid/os/PackageTagsList$Builder;

    .line 2054
    invoke-virtual {v2}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object v2

    .line 2057
    :cond_75
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    .line 2058
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/app/AppOpsManager;

    .line 2057
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    xor-int/lit8 v5, v0, 0x1

    move-object v3, v9

    move-object v6, p0

    move-object v7, v2

    move v8, p1

    .line 2059
    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    const/4 v4, 0x1

    xor-int/lit8 v5, v0, 0x1

    move-object v3, v9

    move-object v6, p0

    move-object v7, v2

    move v8, p1

    .line 2065
    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    return-void
.end method

.method public registerGnssNmeaCallback(Landroid/location/IGnssNmeaListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1291
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_9

    .line 1292
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssManagerService;->registerGnssNmeaCallback(Landroid/location/IGnssNmeaListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1275
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_9

    .line 1276
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssManagerService;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public registerLocationListener(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 1012
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p4, p5, p6}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p4

    .line 1014
    iget-object p6, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    .line 1015
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v1

    .line 1014
    invoke-static {p6, v0, v1}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result p6

    .line 1016
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, p6, v1}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    .line 1020
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v0, v2, :cond_35

    if-nez p5, :cond_35

    .line 1021
    new-instance p5, Ljava/lang/IllegalArgumentException;

    invoke-direct {p5}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v0, "LocationManagerService"

    const-string/jumbo v2, "system location request with no attribution tag"

    invoke-static {v0, v2, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1025
    :cond_35
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/location/LocationManagerService;->validateLocationRequest(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LocationRequest;

    move-result-object p2

    .line 1027
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    if-eqz p0, :cond_40

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    .line 1028
    :goto_41
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "provider \""

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" does not exist"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1031
    invoke-virtual {p0, p2, p4, p6, p3}, Lcom/android/server/location/provider/LocationProviderManager;->registerLocationRequest(Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;ILandroid/location/ILocationListener;)V

    return-void
.end method

.method public registerLocationPendingIntent(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 1037
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 1038
    invoke-static {p3}, Landroid/app/AppOpsManager;->toReceiverId(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-static {v0, p4, p5, v1}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p4

    .line 1039
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    .line 1040
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v2

    .line 1039
    invoke-static {v0, v1, v2}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result v0

    .line 1041
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    .line 1045
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const/4 v4, 0x0

    if-ne v1, v3, :cond_30

    if-eqz p5, :cond_2e

    goto :goto_30

    :cond_2e
    move p5, v4

    goto :goto_31

    :cond_30
    :goto_30
    move p5, v2

    :goto_31
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const-wide/32 v5, 0xa204608

    .line 1052
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result p5

    invoke-static {v5, v6, p5}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p5

    if-eqz p5, :cond_7b

    .line 1053
    invoke-virtual {p2}, Landroid/location/LocationRequest;->isLowPower()Z

    move-result p5

    if-nez p5, :cond_60

    .line 1054
    invoke-virtual {p2}, Landroid/location/LocationRequest;->isHiddenFromAppOps()Z

    move-result p5

    if-nez p5, :cond_60

    .line 1055
    invoke-virtual {p2}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result p5

    if-nez p5, :cond_60

    .line 1056
    invoke-virtual {p2}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object p5

    invoke-virtual {p5}, Landroid/os/WorkSource;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_5e

    goto :goto_60

    :cond_5e
    move p5, v4

    goto :goto_61

    :cond_60
    :goto_60
    move p5, v2

    :goto_61
    if-nez p5, :cond_64

    goto :goto_7b

    .line 1058
    :cond_64
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PendingIntent location requests may not use system APIs: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1063
    :cond_7b
    :goto_7b
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/location/LocationManagerService;->validateLocationRequest(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LocationRequest;

    move-result-object p2

    .line 1065
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    if-eqz p0, :cond_86

    goto :goto_87

    :cond_86
    move v2, v4

    .line 1066
    :goto_87
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "provider \""

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" does not exist"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1069
    invoke-virtual {p0, p2, p4, v0, p3}, Lcom/android/server/location/provider/LocationProviderManager;->registerLocationRequest(Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public removeGeofence(Landroid/app/PendingIntent;)V
    .registers 2

    .line 1269
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->removeGeofence(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V
    .registers 3

    .line 1333
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_9

    .line 1334
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V

    :cond_9
    return-void
.end method

.method public removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V
    .registers 3

    .line 1316
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_9

    .line 1317
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V

    :cond_9
    return-void
.end method

.method public removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V
    .registers 3

    .line 1383
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_9

    .line 1384
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V

    :cond_9
    return-void
.end method

.method public final removeLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;)V
    .registers 3

    .line 491
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 492
    :try_start_3
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    .line 493
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const/4 p0, 0x0

    .line 494
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V

    .line 495
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager;->setRealProvider(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 496
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager;->stopManager()V

    .line 497
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public removeProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V
    .registers 3

    .line 1349
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager;

    .line 1350
    invoke-virtual {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->removeProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public removeTestProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1805
    invoke-static {p2, p3}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p3

    .line 1806
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1, p3}, Lcom/android/server/location/injector/AppOpsHelper;->noteOp(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result p3

    if-nez p3, :cond_13

    return-void

    .line 1810
    :cond_13
    iget-object p3, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1811
    :try_start_16
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 1813
    monitor-exit p3

    return-void

    .line 1816
    :cond_1e
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/nsflp/NSLocationMonitor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/location/nsflp/NSLocationMonitor;->updateTestProvider(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1818
    invoke-virtual {v0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V

    .line 1819
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager;->hasProvider()Z

    move-result p2

    if-nez p2, :cond_31

    .line 1820
    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->removeLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;)V

    :cond_31
    const-string/jumbo p2, "gps"

    .line 1824
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_43

    .line 1825
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    const-string/jumbo p2, "gps"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    :cond_43
    const-string p2, "fused"

    .line 1826
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_53

    .line 1827
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    const-string p2, "fused"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    :cond_53
    const-string/jumbo p2, "network"

    .line 1828
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_64

    .line 1829
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    const-string/jumbo p2, "network"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1831
    :cond_64
    :goto_64
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_71

    .line 1832
    iput-boolean v2, p0, Lcom/android/server/location/LocationManagerService;->isMockLocationNotified:Z

    .line 1833
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->cancelNotificationForMockLocation()V

    .line 1837
    :cond_71
    monitor-exit p3

    return-void

    :catchall_73
    move-exception p0

    monitor-exit p3
    :try_end_75
    .catchall {:try_start_16 .. :try_end_75} :catchall_73

    throw p0
.end method

.method public requestGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1264
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/geofence/GeofenceManager;->addGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestListenerFlush(Ljava/lang/String;Landroid/location/ILocationListener;I)V
    .registers 7

    .line 1150
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 1151
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provider \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" does not exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1154
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/location/ILocationListener;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->flush(Landroid/location/ILocationListener;I)V

    return-void
.end method

.method public requestPendingIntentFlush(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .registers 7

    .line 1160
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 1161
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provider \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" does not exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1164
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/app/PendingIntent;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->flush(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    .line 1391
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfLocationPermission(Landroid/content/Context;I)V

    .line 1392
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1398
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1399
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    invoke-virtual {v0, v2, v3, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V

    .line 1402
    iget-object p3, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/location/nsflp/NSLocationMonitor;->sendExtraCommandInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    :cond_2a
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x5

    invoke-virtual {p2, p3, v0, p1}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;)V

    .line 1410
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;

    move-result-object p0

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;)V

    return-void
.end method

.method public setAdasGnssLocationEnabledForUser(ZI)V
    .registers 10

    .line 1517
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "setAdasGnssLocationEnabledForUser"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1520
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfBypassPermission(Landroid/content/Context;)V

    .line 1522
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getLocationSettings()Lcom/android/server/location/settings/LocationSettings;

    move-result-object p0

    new-instance v0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;-><init>(Z)V

    invoke-virtual {p0, p2, v0}, Lcom/android/server/location/settings/LocationSettings;->updateUserSettings(ILjava/util/function/Function;)V

    return-void
.end method

.method public setAutomotiveGnssSuspended(Z)V
    .registers 5
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.CONTROL_AUTOMOTIVE_GNSS"
    .end annotation

    .line 1541
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_AUTOMOTIVE_GNSS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1548
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->setAutomotiveGnssSuspended(Z)V

    return-void

    .line 1544
    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "setAutomotiveGnssSuspended only allowed on automotive devices"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setExtraLocationControllerPackage(Ljava/lang/String;)V
    .registers 5

    .line 1465
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "android.permission.LOCATION_HARDWARE permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1468
    :try_start_c
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    .line 1469
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw p0
.end method

.method public setExtraLocationControllerPackageEnabled(Z)V
    .registers 5

    .line 1481
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "android.permission.LOCATION_HARDWARE permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1484
    :try_start_c
    iput-boolean p1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    .line 1485
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw p0
.end method

.method public setLocationEnabledForUser(ZI)V
    .registers 10

    .line 1498
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "setLocationEnabledForUser"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1501
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    invoke-static {}, Landroid/location/LocationManager;->invalidateLocalLocationEnabledCaches()V

    .line 1504
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/injector/SettingsHelper;->setLocationEnabled(ZI)V

    .line 1505
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mNSLocationMonitor:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->setLocationEnabled(Z)V

    return-void
.end method

.method public final setSLocation()V
    .registers 4

    const-string/jumbo v0, "sec_location"

    .line 752
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 751
    invoke-static {v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v0

    const-string v1, "LocationManagerService"

    if-nez v0, :cond_16

    const-string/jumbo p0, "sLocation is null"

    .line 754
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 756
    :cond_16
    sput-object v0, Lcom/android/server/location/LocationManagerService;->mISLocationManager:Lcom/samsung/android/location/ISLocationManager;

    .line 758
    :try_start_18
    new-instance v2, Lcom/android/server/location/LocationManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/location/LocationManagerService$3;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/location/ISLocationManager;->setSLocationLMSHook(Lcom/samsung/android/location/ISLocationLMSHook;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_20} :catch_21

    goto :goto_29

    :catch_21
    move-exception p0

    .line 789
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    return-void
.end method

.method public setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1865
    invoke-static {p3, p4}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p3

    .line 1867
    iget-object p4, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p4}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object p4

    const/16 v0, 0x3a

    invoke-virtual {p4, v0, p3}, Lcom/android/server/location/injector/AppOpsHelper;->noteOp(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result p3

    if-nez p3, :cond_13

    return-void

    .line 1871
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 1876
    invoke-virtual {p0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProviderAllowed(Z)V

    return-void

    .line 1873
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "provider doesn\'t exist: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1844
    invoke-static {p3, p4}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p3

    .line 1846
    iget-object p4, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p4}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object p4

    const/16 v0, 0x3a

    invoke-virtual {p4, v0, p3}, Lcom/android/server/location/injector/AppOpsHelper;->noteOp(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result p3

    if-nez p3, :cond_13

    return-void

    .line 1850
    :cond_13
    invoke-virtual {p2}, Landroid/location/Location;->isComplete()Z

    move-result p3

    const-string/jumbo p4, "incomplete location object, missing timestamp or accuracy?"

    invoke-static {p3, p4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1853
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 1858
    invoke-virtual {p0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProviderLocation(Landroid/location/Location;)V

    return-void

    .line 1855
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "provider doesn\'t exist: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startGnssBatch(JLandroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 852
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_d

    return-void

    .line 858
    :cond_d
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    .line 860
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 861
    :try_start_16
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->stopGnssBatch()V

    const-string/jumbo v2, "gps"

    .line 863
    new-instance v1, Landroid/location/LocationRequest$Builder;

    invoke-direct {v1, p1, p2}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 867
    invoke-virtual {v3}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssBatchSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr p1, v3

    .line 866
    invoke-virtual {v1, p1, p2}, Landroid/location/LocationRequest$Builder;->setMaxUpdateDelayMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 868
    invoke-virtual {p1, p2}, Landroid/location/LocationRequest$Builder;->setHiddenFromAppOps(Z)Landroid/location/LocationRequest$Builder;

    move-result-object p1

    .line 869
    invoke-virtual {p1}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v3

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 863
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/location/LocationManagerService;->registerLocationListener(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    iput-object p3, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingListener:Landroid/location/ILocationListener;

    .line 875
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_16 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public stopGnssBatch()V
    .registers 4

    .line 895
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_d

    return-void

    .line 901
    :cond_d
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 902
    :try_start_10
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingListener:Landroid/location/ILocationListener;

    if-eqz v1, :cond_19

    .line 904
    iput-object v2, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingListener:Landroid/location/ILocationListener;

    .line 905
    invoke-virtual {p0, v1}, Lcom/android/server/location/LocationManagerService;->unregisterLocationListener(Landroid/location/ILocationListener;)V

    .line 907
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public unregisterGnssNmeaCallback(Landroid/location/IGnssNmeaListener;)V
    .registers 3

    .line 1299
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_9

    .line 1300
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->unregisterGnssNmeaCallback(Landroid/location/IGnssNmeaListener;)V

    :cond_9
    return-void
.end method

.method public unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .registers 3

    .line 1283
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_9

    .line 1284
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V

    :cond_9
    return-void
.end method

.method public unregisterLocationListener(Landroid/location/ILocationListener;)V
    .registers 3

    .line 1169
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager;

    .line 1170
    invoke-virtual {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->unregisterLocationRequest(Landroid/location/ILocationListener;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public unregisterLocationPendingIntent(Landroid/app/PendingIntent;)V
    .registers 3

    .line 1176
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager;

    .line 1177
    invoke-virtual {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->unregisterLocationRequest(Landroid/app/PendingIntent;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final validateLastLocationRequest(Ljava/lang/String;Landroid/location/LastLocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LastLocationRequest;
    .registers 7

    .line 1207
    new-instance v0, Landroid/location/LastLocationRequest$Builder;

    invoke-direct {v0, p2}, Landroid/location/LastLocationRequest$Builder;-><init>(Landroid/location/LastLocationRequest;)V

    .line 1209
    invoke-virtual {v0}, Landroid/location/LastLocationRequest$Builder;->build()Landroid/location/LastLocationRequest;

    move-result-object p2

    .line 1212
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Lcom/android/server/location/LocationManagerService$LocalService;->isProvider(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z

    move-result p3

    .line 1214
    invoke-virtual {p2}, Landroid/location/LastLocationRequest;->isHiddenFromAppOps()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1215
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    const-string/jumbo v2, "hiding from app ops requires android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    :cond_20
    invoke-virtual {p2}, Landroid/location/LastLocationRequest;->isAdasGnssBypass()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1221
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string/jumbo v0, "gps"

    .line 1225
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    if-nez p3, :cond_55

    .line 1230
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfBypassPermission(Landroid/content/Context;)V

    goto :goto_55

    .line 1226
    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "adas gnss bypass requests are only allowed on the \"gps\" provider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1222
    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "adas gnss bypass requests are only allowed on automotive devices"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1233
    :cond_55
    :goto_55
    invoke-virtual {p2}, Landroid/location/LastLocationRequest;->isLocationSettingsIgnored()Z

    move-result p1

    if-eqz p1, :cond_62

    if-nez p3, :cond_62

    .line 1235
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfBypassPermission(Landroid/content/Context;)V

    :cond_62
    return-object p2
.end method

.method public final validateLocationRequest(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LocationRequest;
    .registers 12

    .line 1075
    invoke-virtual {p2}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1076
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string/jumbo v2, "setting a work source requires android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :cond_14
    new-instance v0, Landroid/location/LocationRequest$Builder;

    invoke-direct {v0, p2}, Landroid/location/LocationRequest$Builder;-><init>(Landroid/location/LocationRequest;)V

    .line 1084
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-wide/32 v2, 0xa11c3b7

    invoke-static {v2, v3, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v1

    const-string v4, "android.permission.LOCATION_HARDWARE"

    const/4 v5, 0x0

    if-nez v1, :cond_34

    .line 1085
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_34

    .line 1087
    invoke-virtual {v0, v5}, Landroid/location/LocationRequest$Builder;->setLowPower(Z)Landroid/location/LocationRequest$Builder;

    .line 1091
    :cond_34
    new-instance v1, Landroid/os/WorkSource;

    invoke-virtual {p2}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 1092
    invoke-virtual {v1}, Landroid/os/WorkSource;->size()I

    move-result p2

    const-string v6, "LocationManagerService"

    if-lez p2, :cond_55

    invoke-virtual {v1, v5}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_55

    const-string/jumbo p2, "received (and ignoring) illegal worksource with no package name"

    .line 1093
    invoke-static {v6, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    goto :goto_76

    .line 1096
    :cond_55
    invoke-virtual {v1}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_76

    .line 1097
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_76

    .line 1098
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {p2}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_76

    const-string/jumbo p2, "received (and ignoring) illegal worksource with no attribution tag"

    .line 1099
    invoke-static {v6, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    .line 1105
    :cond_76
    :goto_76
    invoke-virtual {v1}, Landroid/os/WorkSource;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7f

    .line 1106
    invoke-virtual {p3, v1}, Landroid/location/util/identity/CallerIdentity;->addToWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    .line 1108
    :cond_7f
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest$Builder;->setWorkSource(Landroid/os/WorkSource;)Landroid/location/LocationRequest$Builder;

    .line 1110
    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object p2

    .line 1113
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Lcom/android/server/location/LocationManagerService$LocalService;->isProvider(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    .line 1115
    invoke-virtual {p2}, Landroid/location/LocationRequest;->isLowPower()Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 1116
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result p3

    .line 1115
    invoke-static {v2, v3, p3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p3

    if-eqz p3, :cond_a5

    .line 1117
    iget-object p3, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "low power request requires android.permission.LOCATION_HARDWARE"

    invoke-virtual {p3, v4, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    :cond_a5
    invoke-virtual {p2}, Landroid/location/LocationRequest;->isHiddenFromAppOps()Z

    move-result p3

    if-eqz p3, :cond_b5

    .line 1122
    iget-object p3, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    const-string/jumbo v2, "hiding from app ops requires android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {p3, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    :cond_b5
    invoke-virtual {p2}, Landroid/location/LocationRequest;->isAdasGnssBypass()Z

    move-result p3

    if-eqz p3, :cond_ea

    .line 1127
    iget-object p3, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {p3, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_e2

    const-string/jumbo p3, "gps"

    .line 1131
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_da

    if-nez v0, :cond_ea

    .line 1136
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfBypassPermission(Landroid/content/Context;)V

    goto :goto_ea

    .line 1132
    :cond_da
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "adas gnss bypass requests are only allowed on the \"gps\" provider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1128
    :cond_e2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "adas gnss bypass requests are only allowed on automotive devices"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1139
    :cond_ea
    :goto_ea
    invoke-virtual {p2}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result p1

    if-eqz p1, :cond_f7

    if-nez v0, :cond_f7

    .line 1141
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfBypassPermission(Landroid/content/Context;)V

    :cond_f7
    return-object p2
.end method
