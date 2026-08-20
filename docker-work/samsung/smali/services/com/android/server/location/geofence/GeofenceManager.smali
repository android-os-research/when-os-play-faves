.class public Lcom/android/server/location/geofence/GeofenceManager;
.super Lcom/android/server/location/listeners/ListenerMultiplexer;
.source "GeofenceManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/listeners/ListenerMultiplexer<",
        "Lcom/android/server/location/geofence/GeofenceKey;",
        "Landroid/app/PendingIntent;",
        "Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;",
        "Landroid/location/LocationRequest;",
        ">;",
        "Landroid/location/LocationListener;"
    }
.end annotation


# static fields
.field public static final ATTRIBUTION_TAG:Ljava/lang/String; = "GeofencingService"

.field public static final MAX_LOCATION_AGE_MS:J = 0x493e0L

.field public static final MAX_LOCATION_INTERVAL_MS:J = 0x6ddd00L

.field public static final MAX_SPEED_M_S:I = 0x64

.field public static final TAG:Ljava/lang/String; = "GeofenceManager"

.field public static final WAKELOCK_TIMEOUT_MS:J = 0x7530L


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLastLocation:Landroid/location/Location;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLocationEnabledChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

.field public mLocationManager:Landroid/location/LocationManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

.field public final mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

.field public final mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

.field public final mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

.field public final mLock:Ljava/lang/Object;

.field public final mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

.field public final mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

.field public final mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;


# direct methods
.method public static synthetic $r8$lambda$9hP-7lzvfc8NNDyiNwAe4h97ysY(Landroid/app/PendingIntent;Lcom/android/server/location/geofence/GeofenceKey;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->lambda$removeGeofence$0(Landroid/app/PendingIntent;Lcom/android/server/location/geofence/GeofenceKey;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9tNS5kqhXqm5dSPxqwnmbKKr9Dc(ILcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->lambda$onLocationPermissionsChanged$6(ILcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DpRiLkMVeKHIgKV_376zSgW4Wpw(ILcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->lambda$onUserChanged$2(ILcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kVWRJ3lF1tt7rG1-OmaqsPl4Jf8(ILcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->lambda$onLocationEnabledChanged$3(ILcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rGvLUZXeMmt7b8HbtIcIyKLh3E4(Landroid/location/Location;Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->lambda$onLocationChanged$1(Landroid/location/Location;Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$s8w7fhdEyOFTN4lmGvYcM2E-3Xw(ILcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->lambda$onLocationPackageBlacklistChanged$4(ILcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zb_RV9tRKsVJ-aBX6lScFZ5oC4M(Ljava/lang/String;Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->lambda$onLocationPermissionsChanged$5(Ljava/lang/String;Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;)V
    .registers 4

    .line 266
    invoke-direct {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;-><init>()V

    .line 231
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLock:Ljava/lang/Object;

    .line 235
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/location/geofence/GeofenceManager;)V

    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    .line 236
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/geofence/GeofenceManager;)V

    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationEnabledChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    .line 238
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/location/geofence/GeofenceManager;)V

    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    .line 241
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/geofence/GeofenceManager$1;-><init>(Lcom/android/server/location/geofence/GeofenceManager;)V

    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    const-string v0, "GeofencingService"

    .line 267
    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mContext:Landroid/content/Context;

    .line 268
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getUserInfoHelper()Lcom/android/server/location/injector/UserInfoHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;

    .line 269
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    .line 270
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getLocationPermissionsHelper()Lcom/android/server/location/injector/LocationPermissionsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    .line 271
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/location/geofence/GeofenceManager;Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void
.end method

.method public static synthetic lambda$onLocationChanged$1(Landroid/location/Location;Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .registers 2

    .line 459
    invoke-virtual {p1, p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->onLocationChanged(Landroid/location/Location;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onLocationEnabledChanged$3(ILcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Z
    .registers 2

    .line 490
    invoke-virtual {p1}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result p1

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static synthetic lambda$onLocationPackageBlacklistChanged$4(ILcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Z
    .registers 2

    .line 494
    invoke-virtual {p1}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result p1

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static synthetic lambda$onLocationPermissionsChanged$5(Ljava/lang/String;Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Z
    .registers 2

    .line 498
    invoke-virtual {p1, p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->onLocationPermissionsChanged(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$onLocationPermissionsChanged$6(ILcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Z
    .registers 2

    .line 502
    invoke-virtual {p1, p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->onLocationPermissionsChanged(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$onUserChanged$2(ILcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Z
    .registers 2

    .line 485
    invoke-virtual {p1}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result p1

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static synthetic lambda$removeGeofence$0(Landroid/app/PendingIntent;Lcom/android/server/location/geofence/GeofenceKey;)Z
    .registers 2

    .line 317
    invoke-virtual {p1}, Lcom/android/server/location/geofence/GeofenceKey;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 297
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfLocationPermission(Landroid/content/Context;I)V

    .line 299
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mContext:Landroid/content/Context;

    .line 300
    invoke-static {p2}, Landroid/app/AppOpsManager;->toReceiverId(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-static {v0, p3, p4, v1}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p3

    .line 302
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 304
    :try_start_14
    new-instance p4, Lcom/android/server/location/geofence/GeofenceKey;

    invoke-direct {p4, p2, p1}, Lcom/android/server/location/geofence/GeofenceKey;-><init>(Landroid/app/PendingIntent;Landroid/location/Geofence;)V

    new-instance v2, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;-><init>(Lcom/android/server/location/geofence/GeofenceManager;Landroid/location/Geofence;Landroid/location/util/identity/CallerIdentity;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, p4, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_25

    .line 307
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_25
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 308
    throw p0
.end method

.method public getLastLocation()Landroid/location/Location;
    .registers 7

    .line 466
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 467
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLastLocation:Landroid/location/Location;

    .line 468
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1f

    if-nez v1, :cond_10

    .line 471
    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager;->getLocationManager()Landroid/location/LocationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    :cond_10
    if-eqz v1, :cond_1e

    .line 475
    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeAgeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    cmp-long p0, v2, v4

    if-lez p0, :cond_1e

    const/4 v1, 0x0

    :cond_1e
    return-object v1

    :catchall_1f
    move-exception p0

    .line 468
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public final getLocationManager()Landroid/location/LocationManager;
    .registers 4

    .line 280
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_19

    .line 282
    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/location/LocationManager;

    .line 283
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 282
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    .line 286
    :cond_19
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    monitor-exit v0

    return-object p0

    :catchall_1d
    move-exception p0

    .line 287
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    const-string p0, "GeofenceManager"

    return-object p0
.end method

.method public final isActive(Landroid/location/util/identity/CallerIdentity;)Z
    .registers 5

    .line 329
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->isSystemServer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 330
    iget-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p0}, Lcom/android/server/location/injector/UserInfoHelper;->getCurrentUserId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/location/injector/SettingsHelper;->isLocationEnabled(I)Z

    move-result p0

    if-nez p0, :cond_41

    return v1

    .line 334
    :cond_16
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/location/injector/SettingsHelper;->isLocationEnabled(I)Z

    move-result v0

    if-nez v0, :cond_23

    return v1

    .line 337
    :cond_23
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/location/injector/UserInfoHelper;->isCurrentUserId(I)Z

    move-result v0

    if-nez v0, :cond_30

    return v1

    .line 340
    :cond_30
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v0

    .line 341
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 340
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/injector/SettingsHelper;->isLocationPackageBlacklisted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_41

    return v1

    :cond_41
    const/4 p0, 0x1

    return p0
.end method

.method public isActive(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Z
    .registers 3

    .line 325
    invoke-virtual {p1}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->isPermitted()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->isActive(Landroid/location/util/identity/CallerIdentity;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public bridge synthetic isActive(Lcom/android/server/location/listeners/ListenerRegistration;)Z
    .registers 2

    .line 61
    check-cast p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    invoke-virtual {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->isActive(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Z

    move-result p0

    return p0
.end method

.method public mergeRegistrations(Ljava/util/Collection;)Landroid/location/LocationRequest;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;",
            ">;)",
            "Landroid/location/LocationRequest;"
        }
    .end annotation

    .line 413
    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    .line 415
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 419
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v5, 0x0

    move-wide v6, v3

    :cond_13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    .line 420
    invoke-virtual {v8}, Lcom/android/server/location/listeners/RequestListenerRegistration;->getRequest()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/Geofence;

    invoke-virtual {v9, v1, v2}, Landroid/location/Geofence;->isExpired(J)Z

    move-result v9

    if-eqz v9, :cond_2c

    goto :goto_13

    .line 424
    :cond_2c
    invoke-virtual {v8}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/location/util/identity/CallerIdentity;->addToWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v5

    if-eqz v0, :cond_13

    .line 427
    invoke-virtual {v8, v0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getDistanceToBoundary(Landroid/location/Location;)D

    move-result-wide v8

    cmpg-double v10, v8, v6

    if-gez v10, :cond_13

    move-wide v6, v8

    goto :goto_13

    .line 435
    :cond_40
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-gez p1, :cond_65

    const-wide v0, 0x415b774000000000L    # 7200000.0

    .line 436
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    .line 438
    invoke-virtual {p0}, Lcom/android/server/location/injector/SettingsHelper;->getBackgroundThrottleProximityAlertIntervalMs()J

    move-result-wide p0

    long-to-double p0, p0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v2

    .line 437
    invoke-static {p0, p1, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    .line 436
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    double-to-long p0, p0

    goto :goto_6b

    .line 441
    :cond_65
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/server/location/injector/SettingsHelper;->getBackgroundThrottleProximityAlertIntervalMs()J

    move-result-wide p0

    .line 444
    :goto_6b
    new-instance v0, Landroid/location/LocationRequest$Builder;

    invoke-direct {v0, p0, p1}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    const-wide/16 p0, 0x0

    .line 445
    invoke-virtual {v0, p0, p1}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 446
    invoke-virtual {p0, p1}, Landroid/location/LocationRequest$Builder;->setHiddenFromAppOps(Z)Landroid/location/LocationRequest$Builder;

    move-result-object p0

    .line 447
    invoke-virtual {p0, v5}, Landroid/location/LocationRequest$Builder;->setWorkSource(Landroid/os/WorkSource;)Landroid/location/LocationRequest$Builder;

    move-result-object p0

    .line 448
    invoke-virtual {p0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 2

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->mergeRegistrations(Ljava/util/Collection;)Landroid/location/LocationRequest;

    move-result-object p0

    return-object p0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 3

    .line 454
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_3
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLastLocation:Landroid/location/Location;

    .line 456
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_12

    .line 458
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;-><init>(Landroid/location/Location;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Ljava/util/function/Function;)V

    .line 461
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    return-void

    :catchall_12
    move-exception p0

    .line 456
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public onLocationEnabledChanged(I)V
    .registers 3

    .line 490
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public onLocationPackageBlacklistChanged(I)V
    .registers 3

    .line 494
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public onLocationPermissionsChanged(I)V
    .registers 3

    .line 502
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public onLocationPermissionsChanged(Ljava/lang/String;)V
    .registers 3

    .line 498
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public onRegister()V
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;

    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/UserInfoHelper;->addListener(Lcom/android/server/location/injector/UserInfoHelper$UserListener;)V

    .line 352
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationEnabledChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addOnLocationEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 353
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addOnLocationPackageBlacklistChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 355
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/LocationPermissionsHelper;->addListener(Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;)V

    return-void
.end method

.method public onRegistrationAdded(Lcom/android/server/location/geofence/GeofenceKey;Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)V
    .registers 14

    .line 369
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 372
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 373
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 378
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RequestListenerRegistration;->getRequest()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Landroid/location/Geofence;

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x1

    .line 369
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    return-void
.end method

.method public bridge synthetic onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 61
    check-cast p1, Lcom/android/server/location/geofence/GeofenceKey;

    check-cast p2, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/geofence/GeofenceManager;->onRegistrationAdded(Lcom/android/server/location/geofence/GeofenceKey;Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)V

    return-void
.end method

.method public onRegistrationRemoved(Lcom/android/server/location/geofence/GeofenceKey;Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)V
    .registers 14

    .line 383
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 386
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 387
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 392
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RequestListenerRegistration;->getRequest()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Landroid/location/Geofence;

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x1

    .line 383
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    return-void
.end method

.method public bridge synthetic onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 61
    check-cast p1, Lcom/android/server/location/geofence/GeofenceKey;

    check-cast p2, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/geofence/GeofenceManager;->onRegistrationRemoved(Lcom/android/server/location/geofence/GeofenceKey;Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)V

    return-void
.end method

.method public onUnregister()V
    .registers 3

    .line 360
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;

    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/UserInfoHelper;->removeListener(Lcom/android/server/location/injector/UserInfoHelper$UserListener;)V

    .line 361
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationEnabledChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->removeOnLocationEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 362
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->removeOnLocationPackageBlacklistChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 364
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/LocationPermissionsHelper;->removeListener(Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;)V

    return-void
.end method

.method public onUserChanged(II)V
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_b

    .line 485
    new-instance p2, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda5;

    invoke-direct {p2, p1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    :cond_b
    return-void
.end method

.method public registerWithService(Landroid/location/LocationRequest;Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocationRequest;",
            "Ljava/util/Collection<",
            "Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;",
            ">;)Z"
        }
    .end annotation

    .line 398
    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager;->getLocationManager()Landroid/location/LocationManager;

    move-result-object p2

    .line 399
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "fused"

    .line 398
    invoke-virtual {p2, v1, p1, v0, p0}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 3

    .line 61
    check-cast p1, Landroid/location/LocationRequest;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/geofence/GeofenceManager;->registerWithService(Landroid/location/LocationRequest;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public removeGeofence(Landroid/app/PendingIntent;)V
    .registers 5

    .line 315
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 317
    :try_start_4
    new-instance v2, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda3;-><init>(Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistrationIf(Ljava/util/function/Predicate;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 319
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 320
    throw p0
.end method

.method public unregisterWithService()V
    .registers 3

    .line 405
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 406
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v1, 0x0

    .line 407
    iput-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLastLocation:Landroid/location/Location;

    .line 408
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method
