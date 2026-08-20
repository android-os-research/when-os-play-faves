.class public final Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
.super Ljava/lang/Object;
.source "ServiceConfigAccessorImpl.java"

# interfaces
.implements Lcom/android/server/timezonedetector/ServiceConfigAccessor;


# static fields
.field public static final CONFIGURATION_INTERNAL_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_LTZP_EVENT_FILTER_AGE_THRESHOLD:Ljava/time/Duration;

.field public static final DEFAULT_LTZP_INITIALIZATION_TIMEOUT:Ljava/time/Duration;

.field public static final DEFAULT_LTZP_INITIALIZATION_TIMEOUT_FUZZ:Ljava/time/Duration;

.field public static final DEFAULT_LTZP_UNCERTAINTY_DELAY:Ljava/time/Duration;

.field public static final LOCATION_TIME_ZONE_MANAGER_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLOCK:Ljava/lang/Object;

.field public static sInstance:Lcom/android/server/timezonedetector/ServiceConfigAccessor;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "SLOCK"
        }
    .end annotation
.end field


# instance fields
.field public final mConfigurationInternalListeners:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/timezonedetector/ConfigurationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mCr:Landroid/content/ContentResolver;

.field public final mLocationManager:Landroid/location/LocationManager;

.field public mRecordStateChangesForTests:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mServerFlags:Lcom/android/server/timedetector/ServerFlags;

.field public mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mTestPrimaryLocationTimeZoneProviderPackageName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mTestSecondaryLocationTimeZoneProviderPackageName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$bz2U3jm1PvzdgCTo5k1zx9uS1zA(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->handleConfigurationInternalChangeOnMainThread()V

    return-void
.end method

.method public static synthetic $r8$lambda$umxmze3PxZlugNMp6kHvpkcvYKk(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->handleConfigurationInternalChangeOnMainThread()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleConfigurationInternalChangeOnMainThread(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->handleConfigurationInternalChangeOnMainThread()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 11

    const-string v0, "location_time_zone_detection_feature_supported"

    const-string/jumbo v1, "primary_location_time_zone_provider_mode_override"

    const-string/jumbo v2, "secondary_location_time_zone_provider_mode_override"

    const-string v3, "location_time_zone_detection_run_in_background_enabled"

    const-string v4, "enhanced_metrics_collection_enabled"

    const-string v5, "location_time_zone_detection_setting_enabled_default"

    const-string v6, "location_time_zone_detection_setting_enabled_override"

    const-string/jumbo v7, "time_zone_detector_telephony_fallback_supported"

    .line 60
    invoke-static/range {v0 .. v7}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->CONFIGURATION_INTERNAL_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    const-string v1, "location_time_zone_detection_feature_supported"

    const-string v2, "location_time_zone_detection_run_in_background_enabled"

    const-string v3, "location_time_zone_detection_setting_enabled_default"

    const-string v4, "location_time_zone_detection_setting_enabled_override"

    const-string/jumbo v5, "primary_location_time_zone_provider_mode_override"

    const-string/jumbo v6, "secondary_location_time_zone_provider_mode_override"

    const-string v7, "ltzp_init_timeout_millis"

    const-string v8, "ltzp_init_timeout_fuzz_millis"

    const-string v9, "ltzp_event_filtering_age_threshold_millis"

    const-string v10, "location_time_zone_detection_uncertainty_delay_millis"

    .line 75
    invoke-static/range {v1 .. v10}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->LOCATION_TIME_ZONE_MANAGER_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    const-wide/16 v0, 0x5

    .line 88
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v2

    sput-object v2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_INITIALIZATION_TIMEOUT:Ljava/time/Duration;

    const-wide/16 v2, 0x1

    .line 89
    invoke-static {v2, v3}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v4

    sput-object v4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_INITIALIZATION_TIMEOUT_FUZZ:Ljava/time/Duration;

    .line 90
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_UNCERTAINTY_DELAY:Ljava/time/Duration;

    .line 91
    invoke-static {v2, v3}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_EVENT_FILTER_AGE_THRESHOLD:Ljava/time/Duration;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->SLOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    .line 157
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    .line 159
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mUserManager:Landroid/os/UserManager;

    .line 160
    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mLocationManager:Landroid/location/LocationManager;

    .line 161
    invoke-static {p1}, Lcom/android/server/timedetector/ServerFlags;->getInstance(Landroid/content/Context;)Lcom/android/server/timedetector/ServerFlags;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 168
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_SWITCHED"

    .line 169
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.location.MODE_CHANGED"

    .line 170
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    new-instance v2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$1;

    invoke-direct {v2, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$1;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 180
    new-instance v2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$2;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$2;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;Landroid/os/Handler;)V

    const-string p1, "auto_time_zone"

    .line 187
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v3, 0x1

    .line 186
    invoke-virtual {v1, p1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string p1, "location_time_zone_detection_enabled"

    .line 191
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v4, -0x1

    .line 190
    invoke-virtual {v1, p1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 195
    new-instance p1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    sget-object p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->CONFIGURATION_INTERNAL_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/timedetector/ServerFlags;->addListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;Ljava/util/Set;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;
    .registers 3

    .line 201
    sget-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->SLOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_3
    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->sInstance:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    if-nez v1, :cond_e

    .line 203
    new-instance v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->sInstance:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 205
    :cond_e
    sget-object p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->sInstance:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 206
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method


# virtual methods
.method public declared-synchronized addConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
    .registers 3

    monitor-enter p0

    .line 218
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 219
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addLocationTimeZoneManagerConfigListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
    .registers 3

    .line 358
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    sget-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->LOCATION_TIME_ZONE_MANAGER_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/timedetector/ServerFlags;->addListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;Ljava/util/Set;)V

    return-void
.end method

.method public final atLeastOneProviderIsEnabled()Z
    .registers 3

    .line 390
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getPrimaryLocationTimeZoneProviderMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disabled"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 391
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getSecondaryLocationTimeZoneProviderMode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method

.method public final getAutoDetectionEnabledSetting()Z
    .registers 3

    .line 329
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-string v0, "auto_time_zone"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public final getConfigBoolean(I)Z
    .registers 2

    .line 598
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 599
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;
    .registers 4

    monitor-enter p0

    .line 295
    :try_start_1
    new-instance v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    invoke-direct {v0, p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;-><init>(I)V

    .line 297
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isTelephonyTimeZoneDetectionFeatureSupported()Z

    move-result v1

    .line 296
    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setTelephonyDetectionFeatureSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 298
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoTimeZoneDetectionFeatureSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setGeoDetectionFeatureSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 299
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isTelephonyFallbackSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setTelephonyFallbackSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 300
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getGeoDetectionRunInBackgroundEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setGeoDetectionRunInBackgroundEnabled(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 301
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isEnhancedMetricsCollectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setEnhancedMetricsCollectionEnabled(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 302
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getAutoDetectionEnabledSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setAutoDetectionEnabledSetting(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isUserConfigAllowed(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setUserConfigAllowed(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getLocationEnabledSetting(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setLocationEnabledSetting(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getGeoDetectionEnabledSetting(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setGeoDetectionEnabledSetting(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object p1

    .line 306
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->build()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object p1
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_54

    .line 295
    monitor-exit p0

    return-object p1

    :catchall_54
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;
    .registers 2

    monitor-enter p0

    .line 230
    :try_start_1
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 231
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getGeoDetectionEnabledSetting(I)Z
    .registers 4

    .line 336
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getGeoDetectionSettingEnabledOverride()Ljava/util/Optional;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 338
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 341
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoDetectionEnabledForUsersByDefault()Z

    move-result v0

    .line 342
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-string v1, "location_time_zone_detection_enabled"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_25

    const/4 p0, 0x1

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return p0
.end method

.method public final getGeoDetectionRunInBackgroundEnabled()Z
    .registers 3

    .line 413
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v0, "location_time_zone_detection_run_in_background_enabled"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getGeoDetectionSettingEnabledOverride()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 541
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v0, "location_time_zone_detection_setting_enabled_override"

    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/ServerFlags;->getOptionalBoolean(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final getLocationEnabledSetting(I)Z
    .registers 2

    .line 320
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mLocationManager:Landroid/location/LocationManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public getLocationTimeZoneProviderEventFilteringAgeThreshold()Ljava/time/Duration;
    .registers 3

    .line 572
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    sget-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_EVENT_FILTER_AGE_THRESHOLD:Ljava/time/Duration;

    const-string v1, "ltzp_event_filtering_age_threshold_millis"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public getLocationTimeZoneProviderInitializationTimeout()Ljava/time/Duration;
    .registers 3

    .line 548
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    sget-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_INITIALIZATION_TIMEOUT:Ljava/time/Duration;

    const-string v1, "ltzp_init_timeout_millis"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public getLocationTimeZoneProviderInitializationTimeoutFuzz()Ljava/time/Duration;
    .registers 3

    .line 556
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    sget-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_INITIALIZATION_TIMEOUT_FUZZ:Ljava/time/Duration;

    const-string v1, "ltzp_init_timeout_fuzz_millis"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public getLocationTimeZoneUncertaintyDelay()Ljava/time/Duration;
    .registers 3

    .line 564
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    sget-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_UNCERTAINTY_DELAY:Ljava/time/Duration;

    const-string v1, "location_time_zone_detection_uncertainty_delay_millis"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getPrimaryLocationTimeZoneProviderMode()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 500
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    if-eqz v0, :cond_7

    .line 502
    monitor-exit p0

    return-object v0

    .line 504
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string/jumbo v1, "primary_location_time_zone_provider_mode_override"

    invoke-virtual {v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getOptionalString(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    .line 505
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getPrimaryLocationTimeZoneProviderModeFromConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1c

    .line 504
    monitor-exit p0

    return-object v0

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getPrimaryLocationTimeZoneProviderModeFromConfig()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    const v0, 0x1110144

    .line 511
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "enabled"

    goto :goto_f

    :cond_d
    const-string v0, "disabled"
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_11

    :goto_f
    monitor-exit p0

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrimaryLocationTimeZoneProviderPackageName()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 432
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 434
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderPackageName:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_18

    monitor-exit p0

    return-object v0

    .line 436
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040382

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecordStateChangesForTests()Z
    .registers 2

    monitor-enter p0

    .line 494
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mRecordStateChangesForTests:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSecondaryLocationTimeZoneProviderMode()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 517
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    if-eqz v0, :cond_7

    .line 519
    monitor-exit p0

    return-object v0

    .line 521
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string/jumbo v1, "secondary_location_time_zone_provider_mode_override"

    invoke-virtual {v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getOptionalString(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    .line 522
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getSecondaryLocationTimeZoneProviderModeFromConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1c

    .line 521
    monitor-exit p0

    return-object v0

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getSecondaryLocationTimeZoneProviderModeFromConfig()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    const v0, 0x1110147

    .line 528
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "enabled"

    goto :goto_f

    :cond_d
    const-string v0, "disabled"
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_11

    :goto_f
    monitor-exit p0

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSecondaryLocationTimeZoneProviderPackageName()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 461
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 463
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderPackageName:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_18

    monitor-exit p0

    return-object v0

    .line 465
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040394

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized handleConfigurationInternalChangeOnMainThread()V
    .registers 3

    monitor-enter p0

    .line 210
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    .line 211
    invoke-interface {v1}, Lcom/android/server/timezonedetector/ConfigurationChangeListener;->onChange()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    goto :goto_7

    .line 213
    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isAutoDetectionFeatureSupported()Z
    .registers 2

    .line 363
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isTelephonyTimeZoneDetectionFeatureSupported()Z

    move-result v0

    if-nez v0, :cond_f

    .line 364
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoTimeZoneDetectionFeatureSupported()Z

    move-result p0

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

.method public final isEnhancedMetricsCollectionEnabled()Z
    .registers 3

    .line 424
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v0, "enhanced_metrics_collection_enabled"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isGeoDetectionEnabledForUsersByDefault()Z
    .registers 3

    .line 534
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v0, "location_time_zone_detection_setting_enabled_default"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isGeoTimeZoneDetectionFeatureSupported()Z
    .registers 2

    .line 384
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoTimeZoneDetectionFeatureSupportedInConfig()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 385
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoTimeZoneDetectionFeatureSupportedInternal()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 386
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->atLeastOneProviderIsEnabled()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public isGeoTimeZoneDetectionFeatureSupportedInConfig()Z
    .registers 2

    .line 374
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110138

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final isGeoTimeZoneDetectionFeatureSupportedInternal()Z
    .registers 3

    .line 401
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v0, "location_time_zone_detection_feature_supported"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isTelephonyFallbackSupported()Z
    .registers 3

    .line 591
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const v1, 0x11101cf

    .line 593
    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result p0

    const-string/jumbo v1, "time_zone_detector_telephony_fallback_supported"

    .line 591
    invoke-virtual {v0, v1, p0}, Lcom/android/server/timedetector/ServerFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isTelephonyTimeZoneDetectionFeatureSupported()Z
    .registers 2

    .line 369
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized isTestPrimaryLocationTimeZoneProvider()Z
    .registers 2

    monitor-enter p0

    .line 455
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isTestSecondaryLocationTimeZoneProvider()Z
    .registers 2

    monitor-enter p0

    .line 484
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isUserConfigAllowed(I)Z
    .registers 3

    .line 324
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 325
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mUserManager:Landroid/os/UserManager;

    const-string v0, "no_config_date_time"

    invoke-virtual {p0, v0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public declared-synchronized removeConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
    .registers 3

    monitor-enter p0

    .line 224
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 225
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resetVolatileTestConfig()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 579
    :try_start_2
    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderPackageName:Ljava/lang/String;

    .line 580
    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;

    .line 581
    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderPackageName:Ljava/lang/String;

    .line 582
    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 583
    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mRecordStateChangesForTests:Z

    .line 587
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_1d

    .line 588
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setAutoDetectionEnabledIfRequired(Z)V
    .registers 3

    .line 314
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getAutoDetectionEnabledSetting()Z

    move-result v0

    if-eq v0, p1, :cond_d

    .line 315
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-string v0, "auto_time_zone"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_d
    return-void
.end method

.method public final setGeoDetectionEnabledSettingIfRequired(IZ)V
    .registers 4

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getGeoDetectionEnabledSetting(I)Z

    move-result v0

    if-eq v0, p2, :cond_d

    .line 350
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-string v0, "location_time_zone_detection_enabled"

    invoke-static {p0, v0, p2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_d
    return-void
.end method

.method public declared-synchronized setRecordStateChangesForTests(Z)V
    .registers 2

    monitor-enter p0

    .line 489
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mRecordStateChangesForTests:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 490
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTestPrimaryLocationTimeZoneProviderPackageName(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 443
    :try_start_1
    iput-object p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderPackageName:Ljava/lang/String;

    if-nez p1, :cond_8

    const-string p1, "disabled"

    goto :goto_a

    :cond_8
    const-string p1, "enabled"

    .line 447
    :goto_a
    iput-object p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;

    .line 450
    iget-object p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 451
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTestSecondaryLocationTimeZoneProviderPackageName(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 472
    :try_start_1
    iput-object p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderPackageName:Ljava/lang/String;

    if-nez p1, :cond_8

    const-string p1, "disabled"

    goto :goto_a

    :cond_8
    const-string p1, "enabled"

    .line 476
    :goto_a
    iput-object p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;

    .line 479
    iget-object p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 480
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final storeConfiguration(ILandroid/app/time/TimeZoneConfiguration;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 267
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isAutoDetectionFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 274
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->isAutoDetectionEnabled()Z

    move-result v0

    .line 275
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->setAutoDetectionEnabledIfRequired(Z)V

    .line 284
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getGeoDetectionSettingEnabledOverride()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_27

    .line 285
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoTimeZoneDetectionFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 286
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    move-result p2

    .line 287
    invoke-virtual {p0, p1, p2}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->setGeoDetectionEnabledSettingIfRequired(IZ)V

    :cond_27
    return-void
.end method

.method public declared-synchronized updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z
    .registers 5

    monitor-enter p0

    .line 238
    :try_start_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->createCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getCapabilities()Landroid/app/time/TimeZoneCapabilities;

    move-result-object v1

    .line 243
    invoke-virtual {v0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getConfiguration()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v0

    .line 246
    invoke-virtual {v1, v0, p2}, Landroid/app/time/TimeZoneCapabilities;->tryApplyConfigChanges(Landroid/app/time/TimeZoneConfiguration;Landroid/app/time/TimeZoneConfiguration;)Landroid/app/time/TimeZoneConfiguration;

    move-result-object p2
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_23

    if-nez p2, :cond_1d

    const/4 p1, 0x0

    .line 249
    monitor-exit p0

    return p1

    .line 254
    :cond_1d
    :try_start_1d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->storeConfiguration(ILandroid/app/time/TimeZoneConfiguration;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_23

    const/4 p1, 0x1

    .line 256
    monitor-exit p0

    return p1

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method
