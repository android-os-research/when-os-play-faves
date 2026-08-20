.class public final Lcom/android/server/location/LocationManagerService$SystemInjector;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Lcom/android/server/location/injector/Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SystemInjector"
.end annotation


# instance fields
.field public final mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

.field public final mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

.field public final mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

.field public final mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

.field public mEmergencyCallHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

.field public final mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

.field public final mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

.field public final mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

.field public final mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

.field public final mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

.field public final mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

.field public final mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

.field public final mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

.field public mSystemReady:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;


# direct methods
.method public static synthetic $r8$lambda$fttzMHicEQQ16jupmJDjvcI5U6A(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/LocationManagerService$SystemInjector;->lambda$new$0(Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/UserInfoHelper;)V
    .registers 7

    .line 2226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2227
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mContext:Landroid/content/Context;

    .line 2229
    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;

    .line 2230
    new-instance v0, Lcom/android/server/location/settings/LocationSettings;

    invoke-direct {v0, p1}, Lcom/android/server/location/settings/LocationSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    .line 2231
    new-instance v0, Lcom/android/server/location/injector/SystemAlarmHelper;

    invoke-direct {v0, p1}, Lcom/android/server/location/injector/SystemAlarmHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    .line 2232
    new-instance v0, Lcom/android/server/location/injector/SystemAppOpsHelper;

    invoke-direct {v0, p1}, Lcom/android/server/location/injector/SystemAppOpsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 2233
    new-instance v1, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    invoke-direct {v1, p1, v0}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/AppOpsHelper;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 2235
    new-instance v0, Lcom/android/server/location/injector/SystemSettingsHelper;

    invoke-direct {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 2236
    new-instance v0, Lcom/android/server/location/injector/SystemAppForegroundHelper;

    invoke-direct {v0, p1}, Lcom/android/server/location/injector/SystemAppForegroundHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    .line 2237
    new-instance v2, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    invoke-direct {v2, p1}, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    .line 2238
    new-instance v2, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    invoke-direct {v2, p1}, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    .line 2239
    new-instance v2, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    invoke-direct {v2}, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    .line 2240
    new-instance v2, Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    invoke-direct {v2, p1}, Lcom/android/server/location/injector/SystemDeviceIdleHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    .line 2241
    new-instance v2, Lcom/android/server/location/injector/LocationUsageLogger;

    invoke-direct {v2}, Lcom/android/server/location/injector/LocationUsageLogger;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 2244
    new-instance v2, Lcom/android/server/location/nsflp/NSConnectionHelper;

    invoke-direct {v2}, Lcom/android/server/location/nsflp/NSConnectionHelper;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 2245
    new-instance v3, Lcom/android/server/location/nsflp/NSPermissionHelper;

    invoke-direct {v3, p2, v2}, Lcom/android/server/location/nsflp/NSPermissionHelper;-><init>(Lcom/android/server/location/injector/UserInfoHelper;Lcom/android/server/location/nsflp/NSConnectionHelper;)V

    iput-object v3, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

    .line 2246
    new-instance p2, Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    invoke-direct {p2, p1, v3, v2}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;-><init>(Landroid/content/Context;Lcom/android/server/location/nsflp/NSPermissionHelper;Lcom/android/server/location/nsflp/NSConnectionHelper;)V

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 2248
    invoke-virtual {v0, v3}, Lcom/android/server/location/injector/SystemAppForegroundHelper;->setNSPermissionHelper(Lcom/android/server/location/nsflp/NSPermissionHelper;)V

    .line 2249
    invoke-virtual {v1, v3}, Lcom/android/server/location/injector/LocationPermissionsHelper;->setNSPermissionHelper(Lcom/android/server/location/nsflp/NSPermissionHelper;)V

    .line 2253
    new-instance p0, Lcom/android/server/location/LocationManagerService$SystemInjector$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService$SystemInjector$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/SystemAppForegroundHelper;->setISLocationConsumer(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .registers 3

    .line 2254
    invoke-static {}, Lcom/android/server/location/LocationManagerService;->-$$Nest$sfgetmISLocationManager()Lcom/samsung/android/location/ISLocationManager;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 2256
    :try_start_6
    invoke-static {}, Lcom/android/server/location/LocationManagerService;->-$$Nest$sfgetmISLocationManager()Lcom/samsung/android/location/ISLocationManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/location/ISLocationManager;->notifyAppForeground(IZ)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_15} :catch_16

    goto :goto_20

    :catch_16
    move-exception p0

    .line 2258
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocationManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_20
    return-void
.end method


# virtual methods
.method public getAlarmHelper()Lcom/android/server/location/injector/AlarmHelper;
    .registers 1

    .line 2294
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    return-object p0
.end method

.method public getAppForegroundHelper()Lcom/android/server/location/injector/AppForegroundHelper;
    .registers 1

    .line 2314
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    return-object p0
.end method

.method public getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;
    .registers 1

    .line 2299
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    return-object p0
.end method

.method public getDeviceIdleHelper()Lcom/android/server/location/injector/DeviceIdleHelper;
    .registers 1

    .line 2334
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    return-object p0
.end method

.method public getDeviceStationaryHelper()Lcom/android/server/location/injector/DeviceStationaryHelper;
    .registers 1

    .line 2329
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    return-object p0
.end method

.method public declared-synchronized getEmergencyHelper()Lcom/android/server/location/injector/EmergencyHelper;
    .registers 3

    monitor-enter p0

    .line 2339
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mEmergencyCallHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

    if-nez v0, :cond_15

    .line 2340
    new-instance v0, Lcom/android/server/location/injector/SystemEmergencyHelper;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/location/injector/SystemEmergencyHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mEmergencyCallHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

    .line 2341
    iget-boolean v1, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSystemReady:Z

    if-eqz v1, :cond_15

    .line 2342
    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemEmergencyHelper;->onSystemReady()V

    .line 2346
    :cond_15
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mEmergencyCallHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v0

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLocationPermissionsHelper()Lcom/android/server/location/injector/LocationPermissionsHelper;
    .registers 1

    .line 2304
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    return-object p0
.end method

.method public getLocationPowerSaveModeHelper()Lcom/android/server/location/injector/LocationPowerSaveModeHelper;
    .registers 1

    .line 2319
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    return-object p0
.end method

.method public getLocationSettings()Lcom/android/server/location/settings/LocationSettings;
    .registers 1

    .line 2289
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    return-object p0
.end method

.method public getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;
    .registers 1

    .line 2351
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    return-object p0
.end method

.method public getNSConnectionHelper()Lcom/android/server/location/nsflp/NSConnectionHelper;
    .registers 1

    .line 2367
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    return-object p0
.end method

.method public getNSLocationProviderHelper()Lcom/android/server/location/nsflp/NSLocationProviderHelper;
    .registers 1

    .line 2362
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    return-object p0
.end method

.method public getNSPermissionHelper()Lcom/android/server/location/nsflp/NSPermissionHelper;
    .registers 1

    .line 2357
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

    return-object p0
.end method

.method public getScreenInteractiveHelper()Lcom/android/server/location/injector/ScreenInteractiveHelper;
    .registers 1

    .line 2324
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    return-object p0
.end method

.method public getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;
    .registers 1

    .line 2309
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    return-object p0
.end method

.method public getUserInfoHelper()Lcom/android/server/location/injector/UserInfoHelper;
    .registers 1

    .line 2284
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;

    return-object p0
.end method

.method public declared-synchronized onSystemReady()V
    .registers 2

    monitor-enter p0

    .line 2266
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemAppOpsHelper;->onSystemReady()V

    .line 2267
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->onSystemReady()V

    .line 2268
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper;->onSystemReady()V

    .line 2269
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemAppForegroundHelper;->onSystemReady()V

    .line 2270
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->onSystemReady()V

    .line 2271
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->onSystemReady()V

    .line 2272
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;->onSystemReady()V

    .line 2273
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->onSystemReady()V

    .line 2275
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mEmergencyCallHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

    if-eqz v0, :cond_30

    .line 2276
    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemEmergencyHelper;->onSystemReady()V

    :cond_30
    const/4 v0, 0x1

    .line 2279
    iput-boolean v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSystemReady:Z
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 2280
    monitor-exit p0

    return-void

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method
