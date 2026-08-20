.class Lcom/android/server/location/gnss/GnssVisibilityControl;
.super Ljava/lang/Object;
.source "GnssVisibilityControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;,
        Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;
    }
.end annotation


# static fields
.field public static final ARRAY_MAP_INITIAL_CAPACITY_PROXY_APPS_STATE:I = 0x5

.field public static final DEBUG:Z

.field public static final DEFAULT_NFW_PROXY_APP_PACKAGE_NAME:Ljava/lang/String; = "com.sec.location.nfwlocationprivacy"

.field public static final EMERGENCY_EXTENSION_FOR_MISMATCH:J = 0x1f400L

.field public static final LOCATION_ICON_DISPLAY_DURATION_MILLIS:J = 0x1388L

.field public static final LOCATION_PERMISSION_NAME:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field public static final NO_LOCATION_ENABLED_PROXY_APPS:[Ljava/lang/String;

.field public static final ON_GPS_ENABLED_CHANGED_TIMEOUT_MILLIS:J = 0xbb8L

.field public static final TAG:Ljava/lang/String; = "GnssVisibilityControl"

.field public static final WAKELOCK_KEY:Ljava/lang/String; = "GnssVisibilityControl"

.field public static final WAKELOCK_TIMEOUT_MILLIS:J = 0xea60L

.field public static mIsNfwLocationAccessProxyAppsUpdated:Z


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsGpsEnabled:Z

.field public final mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field public mOnPermissionsChangedListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mProxyAppsState:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;",
            ">;"
        }
    .end annotation
.end field

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$5H1HohI17J2ECLJyvqmGsnKGvlE(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/location/gnss/GnssVisibilityControl;->lambda$reportNfwNotification$3(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$DRC8rzEvrGRQ5vXg1e0IekRebK8(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->lambda$showLocationIcon$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bkqQpQK63wbElF7BKgA4hx8Pvoo(Lcom/android/server/location/gnss/GnssVisibilityControl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->handleInitialize()V

    return-void
.end method

.method public static synthetic $r8$lambda$nS3WUeOuzLUrCIBmTEW4tvIGtag(Lcom/android/server/location/gnss/GnssVisibilityControl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->lambda$new$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qqvwD5ldiBo9TKitjS5NvPicUxw(Lcom/android/server/location/gnss/GnssVisibilityControl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->lambda$onGpsEnabledChanged$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$vFvr3Uo6z0mXAQg2YixBxbKOoJs(Lcom/android/server/location/gnss/GnssVisibilityControl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vM6kKQpXM-CQ_KzvZVcfZQkvswo(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->lambda$onConfigurationUpdated$4(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ze6-_yRR9yhKOhbpOwQ-YgrPXxM(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->lambda$runEventAndReleaseWakeLock$6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleProxyAppPackageUpdate(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssVisibilityControl;->handleProxyAppPackageUpdate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "GnssVisibilityControl"

    const/4 v1, 0x3

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->DEBUG:Z

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 64
    sput-object v1, Lcom/android/server/location/gnss/GnssVisibilityControl;->NO_LOCATION_ENABLED_PROXY_APPS:[Ljava/lang/String;

    .line 88
    sput-boolean v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsNfwLocationAccessProxyAppsUpdated:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V
    .registers 7

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    .line 107
    new-instance v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mOnPermissionsChangedListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    .line 111
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    .line 112
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "GnssVisibilityControl"

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    .line 115
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 116
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 121
    new-instance p1, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;)V

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->runOnHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static createEmergencyLocationUserNotification(Landroid/content/Context;)Landroid/app/Notification;
    .registers 7

    const v0, 0x10405c4

    .line 664
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x1040588

    .line 665
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 666
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 667
    new-instance v3, Landroid/app/Notification$Builder;

    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x1080ab2

    .line 668
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 669
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 670
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v5, 0x1

    .line 671
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const v5, 0x106001c

    .line 672
    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 674
    invoke-virtual {p0, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 675
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 676
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 677
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 678
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(I)V
    .registers 2

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->handlePermissionsChanged(I)V

    return-void
.end method

.method private synthetic lambda$new$1(I)V
    .registers 3

    .line 108
    new-instance v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->runOnHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onConfigurationUpdated$4(Ljava/util/List;)V
    .registers 2

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->handleUpdateProxyApps(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$onGpsEnabledChanged$2(Z)V
    .registers 2

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->handleGpsEnabledChanged(Z)V

    return-void
.end method

.method private synthetic lambda$reportNfwNotification$3(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .registers 20

    .line 151
    new-instance v10, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;-><init>(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZLcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification-IA;)V

    move-object v0, p0

    invoke-virtual {p0, v10}, Lcom/android/server/location/gnss/GnssVisibilityControl;->handleNfwNotification(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)V

    return-void
.end method

.method private synthetic lambda$runEventAndReleaseWakeLock$6(Ljava/lang/Runnable;)V
    .registers 2

    .line 707
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_9

    .line 709
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_9
    move-exception p1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 710
    throw p1
.end method

.method private synthetic lambda$showLocationIcon$5(Ljava/lang/String;)V
    .registers 2

    .line 578
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->handleLocationIconTimeout(Ljava/lang/String;)V

    return-void
.end method

.method private native native_enable_nfw_location_access([Ljava/lang/String;)Z
.end method


# virtual methods
.method public final clearLocationIcon(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 598
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/location/gnss/GnssVisibilityControl;->updateLocationIcon(ZILjava/lang/String;)Z

    if-eqz p1, :cond_9

    .line 599
    invoke-static {p1, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->-$$Nest$fputmIsLocationIconOn(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;Z)V

    .line 600
    :cond_9
    sget-boolean p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->DEBUG:Z

    if-eqz p0, :cond_2b

    .line 601
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Location icon off. Uid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", proxyAppPkgName: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GnssVisibilityControl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void
.end method

.method public final disableNfwLocationAccess()V
    .registers 2

    .line 290
    sget-object v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->NO_LOCATION_ENABLED_PROXY_APPS:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->setNfwLocationAccessProxyAppsInGnssHal([Ljava/lang/String;)V

    return-void
.end method

.method public final getLocationPermissionEnabledProxyApps()[Ljava/lang/String;
    .registers 5

    .line 461
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    .line 462
    invoke-static {v3}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->-$$Nest$fgetmHasLocationPermission(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;)Z

    move-result v3

    if-eqz v3, :cond_c

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 468
    :cond_21
    new-array v0, v2, [Ljava/lang/String;

    .line 470
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2d
    :goto_2d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 471
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 472
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    invoke-static {v2}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->-$$Nest$fgetmHasLocationPermission(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;)Z

    move-result v2

    if-eqz v2, :cond_2d

    add-int/lit8 v2, v1, 0x1

    .line 473
    aput-object v3, v0, v1

    move v1, v2

    goto :goto_2d

    :cond_51
    return-object v0
.end method

.method public final getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 3

    .line 389
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_7} :catch_8

    return-object p0

    .line 391
    :catch_8
    sget-boolean p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->DEBUG:Z

    if-eqz p0, :cond_27

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Proxy app "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not found."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GnssVisibilityControl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public final handleEmergencyNfwNotification(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)V
    .registers 8

    .line 628
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$misRequestAccepted(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "GnssVisibilityControl"

    if-nez v0, :cond_1f

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency non-framework location request incorrectly rejected. Notification: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 634
    :goto_20
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    const-wide/32 v4, 0x1f400

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency(J)Z

    move-result v3

    if-nez v3, :cond_40

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency state mismatch. Device currently not in user initiated emergency session. Notification: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :cond_40
    move v1, v0

    .line 640
    :goto_41
    invoke-virtual {p0, p1, v1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->logEvent(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;Z)V

    .line 642
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$misLocationProvided(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 643
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->postEmergencyLocationUserNotification(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)V

    :cond_4d
    return-void
.end method

.method public final handleGpsEnabledChanged(Z)V
    .registers 4

    .line 273
    sget-boolean v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->DEBUG:Z

    if-eqz v0, :cond_25

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleGpsEnabledChanged, mIsGpsEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsGpsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isGpsEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssVisibilityControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_25
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsGpsEnabled:Z

    if-nez p1, :cond_2d

    .line 282
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->disableNfwLocationAccess()V

    return-void

    .line 286
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->getLocationPermissionEnabledProxyApps()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->setNfwLocationAccessProxyAppsInGnssHal([Ljava/lang/String;)V

    return-void
.end method

.method public final handleInitialize()V
    .registers 1

    .line 163
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->listenForProxyAppsPackageUpdates()V

    return-void
.end method

.method public final handleLocationIconTimeout(Ljava/lang/String;)V
    .registers 4

    .line 589
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 591
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->clearLocationIcon(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;ILjava/lang/String;)V

    :cond_13
    return-void
.end method

.method public final handleNfwNotification(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)V
    .registers 9

    .line 480
    sget-boolean v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->DEBUG:Z

    const-string v1, "GnssVisibilityControl"

    if-eqz v0, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-framework location access notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_1a
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$misEmergencyRequestNotification(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 483
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->handleEmergencyNfwNotification(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)V

    return-void

    .line 487
    :cond_24
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$fgetmProxyAppPackageName(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;

    move-result-object v2

    .line 488
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    .line 489
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$misRequestAccepted(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z

    move-result v4

    .line 490
    invoke-virtual {p0, v3, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->isPermissionMismatched(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z

    move-result v5

    .line 492
    invoke-virtual {p0, p1, v5}, Lcom/android/server/location/gnss/GnssVisibilityControl;->logEvent(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;Z)V

    .line 494
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$misRequestAttributedToProxyApp(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z

    move-result v6

    if-nez v6, :cond_7d

    if-nez v4, :cond_68

    if-eqz v0, :cond_67

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-framework location request rejected. ProxyAppPackageName field is not set in the notification: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Number of configured proxy apps: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    .line 506
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 504
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    return-void

    .line 511
    :cond_68
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ProxyAppPackageName field is not set. AppOps service not notified for notification: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7d
    if-nez v3, :cond_a6

    .line 517
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not find proxy app "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in the value specified for config parameter: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "NFW_PROXY_APPS"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". AppOps service not notified for notification: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 524
    :cond_a6
    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_c9

    .line 526
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Proxy app "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not found. AppOps service not notified for notification: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 531
    :cond_c9
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$misLocationProvided(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z

    move-result v4

    if-eqz v4, :cond_dc

    .line 532
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v3, p1, v4, v2}, Lcom/android/server/location/gnss/GnssVisibilityControl;->showLocationIcon(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;ILjava/lang/String;)V

    .line 533
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v6, 0x1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v6, v0, v2}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    :cond_dc
    if-eqz v5, :cond_11c

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission mismatch. Proxy app "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " location permission is set to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->-$$Nest$fgetmHasLocationPermission(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " and GNSS HAL enabled is set to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsGpsEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " but GNSS non-framework location access response type is "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$mgetResponseTypeAsString(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for notification: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 539
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11c
    return-void
.end method

.method public final handlePermissionsChanged(I)V
    .registers 6

    .line 363
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 367
    :cond_9
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 368
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 369
    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 370
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, p1, :cond_30

    goto :goto_13

    .line 374
    :cond_30
    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssVisibilityControl;->shouldEnableLocationPermissionInGnssHal(Ljava/lang/String;)Z

    move-result p1

    .line 376
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    .line 377
    invoke-static {v0}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->-$$Nest$fgetmHasLocationPermission(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;)Z

    move-result v1

    if-eq p1, v1, :cond_64

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " location permission changed. IsLocationPermissionEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssVisibilityControl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-static {v0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->-$$Nest$fputmHasLocationPermission(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;Z)V

    .line 381
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->updateNfwLocationAccessProxyAppsInGnssHal()V

    :cond_64
    return-void
.end method

.method public final handleProxyAppPackageUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 196
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    if-nez v0, :cond_b

    return-void

    .line 201
    :cond_b
    sget-boolean v1, Lcom/android/server/location/gnss/GnssVisibilityControl;->DEBUG:Z

    const-string v2, "Proxy app "

    const-string v3, "GnssVisibilityControl"

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " package changed: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->shouldEnableLocationPermissionInGnssHal(Ljava/lang/String;)Z

    move-result p2

    .line 203
    invoke-static {v0}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->-$$Nest$fgetmHasLocationPermission(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;)Z

    move-result v1

    if-eq v1, p2, :cond_57

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " location permission changed. IsLocationPermissionEnabled: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {v0, p2}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->-$$Nest$fputmHasLocationPermission(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;Z)V

    .line 208
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->updateNfwLocationAccessProxyAppsInGnssHal()V

    :cond_57
    return-void
.end method

.method public final handleUpdateProxyApps(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->isProxyAppListUpdated(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 217
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 219
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_22

    .line 220
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mOnPermissionsChangedListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->resetProxyAppsState()V

    .line 222
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->updateNfwLocationAccessProxyAppsInGnssHal()V

    :cond_22
    return-void

    .line 227
    :cond_23
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 228
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mOnPermissionsChangedListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    goto :goto_36

    .line 230
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->resetProxyAppsState()V

    .line 233
    :goto_36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 234
    new-instance v1, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->shouldEnableLocationPermissionInGnssHal(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;-><init>(ZLcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState-IA;)V

    .line 236
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 239
    :cond_56
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->updateNfwLocationAccessProxyAppsInGnssHal()V

    return-void
.end method

.method public final hasLocationPermission(Ljava/lang/String;)Z
    .registers 3

    .line 406
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final isPermissionMismatched(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z
    .registers 3

    .line 552
    invoke-static {p2}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$misRequestAccepted(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z

    move-result p2

    if-eqz p1, :cond_14

    .line 553
    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsGpsEnabled:Z

    if-nez p0, :cond_b

    goto :goto_14

    .line 554
    :cond_b
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->-$$Nest$fgetmHasLocationPermission(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;)Z

    move-result p0

    if-eq p0, p2, :cond_13

    const/4 p2, 0x1

    goto :goto_14

    :cond_13
    const/4 p2, 0x0

    :cond_14
    :goto_14
    return p2
.end method

.method public final isProxyAppInstalled(Ljava/lang/String;)Z
    .registers 2

    .line 401
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 402
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final isProxyAppListUpdated(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 260
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_e

    return v2

    .line 264
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 265
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    return v2

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public final listenForProxyAppsPackageUpdates()V
    .registers 7

    .line 168
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 169
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 170
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 171
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 172
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    .line 173
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/location/gnss/GnssVisibilityControl$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$1;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final logEvent(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;Z)V
    .registers 13

    .line 682
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$fgetmProxyAppPackageName(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$fgetmProtocolStack(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)B

    move-result v2

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$fgetmOtherProtocolStackName(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$fgetmRequestor(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)B

    move-result v4

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$fgetmRequestorId(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$fgetmResponseType(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)B

    move-result v6

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$fgetmInEmergencyMode(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z

    move-result v7

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->-$$Nest$fgetmIsCachedLocation(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z

    move-result v8

    const/16 v0, 0x83

    move v9, p2

    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;IZZZ)V

    return-void
.end method

.method public onConfigurationUpdated(Lcom/android/server/location/gnss/GnssConfiguration;)V
    .registers 3

    .line 158
    invoke-virtual {p1}, Lcom/android/server/location/gnss/GnssConfiguration;->getProxyApps()Ljava/util/List;

    move-result-object p1

    .line 159
    new-instance v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->runOnHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGpsEnabledChanged(Z)V
    .registers 6

    .line 133
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Z)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result p0

    if-eqz p0, :cond_10

    return-void

    :cond_10
    if-nez p1, :cond_19

    const-string p0, "GnssVisibilityControl"

    const-string p1, "Native call to disable non-framework location access in GNSS HAL may get executed after native_cleanup()."

    .line 143
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    return-void
.end method

.method public final postEmergencyLocationUserNotification(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)V
    .registers 5

    .line 649
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    .line 650
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_24

    .line 652
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not notify user of emergency location request. Notification: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GnssVisibilityControl"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24
    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 657
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mContext:Landroid/content/Context;

    .line 658
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->createEmergencyLocationUserNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 657
    invoke-virtual {v0, p1, v1, p0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public reportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .registers 20

    .line 151
    new-instance v10, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda6;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    move-object v0, p0

    invoke-virtual {p0, v10}, Lcom/android/server/location/gnss/GnssVisibilityControl;->runOnHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final resetProxyAppsState()V
    .registers 5

    .line 244
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 245
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    .line 246
    invoke-static {v2}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->-$$Nest$fgetmIsLocationIconOn(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;)Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_a

    .line 250
    :cond_23
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 251
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/location/gnss/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 253
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->clearLocationIcon(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;ILjava/lang/String;)V

    goto :goto_a

    .line 256
    :cond_40
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public final runEventAndReleaseWakeLock(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 3

    .line 705
    new-instance v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final runOnHandler(Ljava/lang/Runnable;)V
    .registers 5

    .line 698
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 699
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->runEventAndReleaseWakeLock(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 700
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_19
    return-void
.end method

.method public final setNfwLocationAccessProxyAppsInGnssHal([Ljava/lang/String;)V
    .registers 6

    .line 427
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating non-framework location access proxy apps in the GNSS HAL to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssVisibilityControl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-static {}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getInstance()Lcom/android/server/location/gnss/sec/CarrierConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 432
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isVendorIgnoreNfwLocPolicy()Z

    move-result v1

    const-string v3, "com.sec.location.nfwlocationprivacy"

    if-eqz v1, :cond_37

    if-eqz p1, :cond_45

    .line 433
    array-length v1, p1

    if-nez v1, :cond_45

    const-string p1, "GnssVisibilityControl KOR exception policy. Force set proxyapp packageName"

    .line 434
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p1

    goto :goto_45

    .line 439
    :cond_37
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->shouldSupportNfwLocPolicy()Z

    move-result v1

    if-nez v1, :cond_45

    .line 440
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsGpsEnabled:Z

    if-eqz v1, :cond_45

    .line 442
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p1

    .line 446
    :cond_45
    :goto_45
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->native_enable_nfw_location_access([Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5f

    .line 448
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to update non-framework location access proxy apps in the GNSS HAL to: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_5f
    sget-boolean p1, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsNfwLocationAccessProxyAppsUpdated:Z

    if-nez p1, :cond_68

    if-eqz p0, :cond_68

    const/4 p0, 0x1

    .line 453
    sput-boolean p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsNfwLocationAccessProxyAppsUpdated:Z

    :cond_68
    return-void
.end method

.method public final shouldEnableLocationPermissionInGnssHal(Ljava/lang/String;)Z
    .registers 3

    .line 397
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->isProxyAppInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->hasLocationPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final showLocationIcon(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;ILjava/lang/String;)V
    .registers 10

    .line 561
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->-$$Nest$fgetmIsLocationIconOn(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;)Z

    move-result v0

    const-string v1, "GnssVisibilityControl"

    if-nez v0, :cond_28

    const/4 v2, 0x1

    .line 563
    invoke-virtual {p0, v2, p3, p4}, Lcom/android/server/location/gnss/GnssVisibilityControl;->updateLocationIcon(ZILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 564
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to show Location icon for notification: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 567
    :cond_24
    invoke-static {p1, v2}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->-$$Nest$fputmIsLocationIconOn(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;Z)V

    goto :goto_2d

    .line 570
    :cond_28
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 574
    :goto_2d
    sget-boolean v2, Lcom/android/server/location/gnss/GnssVisibilityControl;->DEBUG:Z

    if-eqz v2, :cond_5c

    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location icon on. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_40

    const-string v0, "Extending"

    goto :goto_42

    :cond_40
    const-string v0, "Setting"

    :goto_42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " icon display timer. Uid: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", proxyAppPkgName: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_5c
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p4}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/String;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, p1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result v0

    if-nez v0, :cond_82

    .line 580
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/location/gnss/GnssVisibilityControl;->clearLocationIcon(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;ILjava/lang/String;)V

    .line 581
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to show location icon for the full duration for notification: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    return-void
.end method

.method public final updateLocationIcon(ZILjava/lang/String;)Z
    .registers 7

    const/16 v0, 0x2a

    const/16 v1, 0x29

    if-eqz p1, :cond_1e

    .line 610
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1, v1, p2, p3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_10

    return v2

    .line 614
    :cond_10
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0, p2, p3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_28

    .line 616
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    return v2

    .line 620
    :cond_1e
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1, v1, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 621
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    :cond_28
    const/4 p0, 0x1

    return p0
.end method

.method public final updateNfwLocationAccessProxyAppsInGnssHal()V
    .registers 2

    .line 411
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsGpsEnabled:Z

    if-nez v0, :cond_f

    .line 413
    sget-boolean v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsNfwLocationAccessProxyAppsUpdated:Z

    if-eqz v0, :cond_9

    return-void

    .line 416
    :cond_9
    sget-object v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->NO_LOCATION_ENABLED_PROXY_APPS:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->setNfwLocationAccessProxyAppsInGnssHal([Ljava/lang/String;)V

    return-void

    .line 422
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->getLocationPermissionEnabledProxyApps()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->setNfwLocationAccessProxyAppsInGnssHal([Ljava/lang/String;)V

    return-void
.end method
