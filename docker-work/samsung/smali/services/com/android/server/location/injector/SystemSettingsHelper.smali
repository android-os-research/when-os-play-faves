.class public Lcom/android/server/location/injector/SystemSettingsHelper;
.super Lcom/android/server/location/injector/SettingsHelper;
.source "SystemSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;,
        Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;,
        Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;,
        Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;,
        Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;,
        Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;,
        Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;,
        Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;
    }
.end annotation


# static fields
.field public static final DEFAULT_BACKGROUND_THROTTLE_INTERVAL_MS:J = 0x1b7740L

.field public static final DEFAULT_BACKGROUND_THROTTLE_PROXIMITY_ALERT_INTERVAL_MS:J = 0x1b7740L

.field public static final DEFAULT_COARSE_LOCATION_ACCURACY_M:F = 2000.0f

.field public static final LOCATION_PACKAGE_BLACKLIST:Ljava/lang/String; = "locationPackagePrefixBlacklist"

.field public static final LOCATION_PACKAGE_WHITELIST:Ljava/lang/String; = "locationPackagePrefixWhitelist"


# instance fields
.field public final mAdasPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

.field public final mBackgroundThrottleIntervalMs:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

.field public final mBackgroundThrottlePackageAllowlistByNsflp:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

.field public final mContext:Landroid/content/Context;

.field public final mGnssMeasurementFullTracking:Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;

.field public final mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

.field public final mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;

.field public final mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

.field public final mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;


# direct methods
.method public static synthetic $r8$lambda$I803zMVfB5OQFl7sZosPNo4j_hM()Landroid/util/ArraySet;
    .registers 1

    invoke-static {}, Lcom/android/server/location/injector/SystemSettingsHelper;->lambda$new$0()Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$l_eY5dkiR5-a0ZoYAGefMhP2DW8()Landroid/util/ArrayMap;
    .registers 1

    invoke-static {}, Lcom/android/server/location/injector/SystemSettingsHelper;->lambda$new$1()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$phx90M-T5H5RqXZ_vAskjy-Vdrc()Landroid/util/ArrayMap;
    .registers 1

    invoke-static {}, Lcom/android/server/location/injector/SystemSettingsHelper;->lambda$new$2()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 97
    invoke-direct {p0}, Lcom/android/server/location/injector/SettingsHelper;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mContext:Landroid/content/Context;

    .line 100
    new-instance v0, Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;

    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    invoke-direct {v0, p1, v2, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;

    .line 101
    new-instance v0, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    .line 102
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-string/jumbo v2, "location_background_throttle_interval_ms"

    invoke-direct {v0, p1, v2, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    .line 103
    new-instance v0, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;

    .line 104
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-string v2, "enable_gnss_raw_meas_full_tracking"

    invoke-direct {v0, p1, v2, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mGnssMeasurementFullTracking:Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;

    .line 105
    new-instance v0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    .line 106
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-string/jumbo v2, "locationPackagePrefixBlacklist"

    invoke-direct {v0, p1, v2, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    .line 107
    new-instance v0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    .line 108
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-string/jumbo v2, "locationPackagePrefixWhitelist"

    invoke-direct {v0, p1, v2, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    .line 109
    new-instance v0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    new-instance v1, Lcom/android/server/location/injector/SystemSettingsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/location/injector/SystemSettingsHelper$$ExternalSyntheticLambda0;-><init>()V

    .line 112
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string/jumbo v3, "location_background_throttle_package_whitelist"

    invoke-direct {v0, p1, v3, v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Supplier;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    .line 113
    new-instance p1, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    new-instance v0, Lcom/android/server/location/injector/SystemSettingsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/location/injector/SystemSettingsHelper$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "adas_settings_allowlist"

    invoke-direct {p1, v1, v0}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mAdasPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    .line 116
    new-instance p1, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    new-instance v0, Lcom/android/server/location/injector/SystemSettingsHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/location/injector/SystemSettingsHelper$$ExternalSyntheticLambda2;-><init>()V

    const-string/jumbo v1, "ignore_settings_allowlist"

    invoke-direct {p1, v1, v0}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    .line 121
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Ljava/util/HashSet;

    return-void
.end method

.method public static synthetic lambda$new$0()Landroid/util/ArraySet;
    .registers 1

    .line 111
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowUnthrottledLocation()Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$new$1()Landroid/util/ArrayMap;
    .registers 1

    .line 115
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowAdasLocationSettings()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$new$2()Landroid/util/ArrayMap;
    .registers 1

    .line 118
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowIgnoreLocationSettings()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAdasAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 2

    .line 261
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mAdasPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    return-void
.end method

.method public addIgnoreSettingsAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 2

    .line 277
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    return-void
.end method

.method public addOnBackgroundThrottleIntervalChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 2

    .line 174
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public addOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 2

    .line 228
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public addOnGnssMeasurementsFullTrackingEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 2

    .line 245
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mGnssMeasurementFullTracking:Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public addOnLocationEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V
    .registers 2

    .line 158
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public addOnLocationPackageBlacklistChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 210
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 317
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_177

    const-string p3, "Location Setting: "

    .line 322
    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 324
    array-length p3, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p3, v0, :cond_35

    .line 325
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 326
    array-length p3, p1

    move v2, v1

    :goto_1a
    if-ge v2, p3, :cond_3e

    aget v3, p1, v2

    const-string v4, "[u"

    .line 327
    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, "] "

    .line 329
    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0, v3}, Lcom/android/server/location/injector/SystemSettingsHelper;->isLocationEnabled(I)Z

    move-result v3

    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->println(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 333
    :cond_35
    aget p3, p1, v1

    invoke-virtual {p0, p3}, Lcom/android/server/location/injector/SystemSettingsHelper;->isLocationEnabled(I)Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 335
    :cond_3e
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p3, "Location Allow/Deny Packages:"

    .line 337
    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 339
    array-length p3, p1

    const-string v2, "[allow] "

    const-string v3, "[deny] "

    if-le p3, v0, :cond_ad

    .line 340
    array-length p3, p1

    :goto_51
    if-ge v1, p3, :cond_eb

    aget v0, p1, v1

    .line 341
    iget-object v4, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v4, v0}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v4

    .line 343
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_62

    goto :goto_aa

    :cond_62
    const-string/jumbo v5, "user "

    .line 347
    invoke-virtual {p2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v5, ":"

    .line 349
    invoke-virtual {p2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 352
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_77
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 353
    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_77

    .line 357
    :cond_8a
    iget-object v4, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v4, v0}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v0

    .line 359
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_94
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 360
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_94

    .line 364
    :cond_a7
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_aa
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 367
    :cond_ad
    iget-object p3, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    aget v0, p1, v1

    invoke-virtual {p3, v0}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object p3

    .line 369
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_b9
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cc

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 370
    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b9

    .line 374
    :cond_cc
    iget-object p3, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    aget p1, p1, v1

    invoke-virtual {p3, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object p1

    .line 376
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_eb

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 377
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d8

    .line 381
    :cond_eb
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 383
    iget-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    .line 384
    invoke-virtual {p1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->getValue()Ljava/util/Set;

    move-result-object p1

    .line 385
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_119

    const-string p3, "Throttling Allow Packages:"

    .line 386
    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 388
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_106
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_116

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 389
    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_106

    .line 391
    :cond_116
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 395
    :cond_119
    iget-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_142

    const-string p1, "Throttling Allow Packages by nsflp:"

    .line 396
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 398
    iget-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_13f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 399
    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12f

    .line 401
    :cond_13f
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 405
    :cond_142
    iget-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    invoke-virtual {p1}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->getValue()Landroid/os/PackageTagsList;

    move-result-object p1

    .line 406
    invoke-virtual {p1}, Landroid/os/PackageTagsList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_15c

    const-string p3, "Emergency Bypass Allow Packages:"

    .line 407
    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 409
    invoke-virtual {p1, p2}, Landroid/os/PackageTagsList;->dump(Ljava/io/PrintWriter;)V

    .line 410
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 413
    :cond_15c
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mAdasPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->getValue()Landroid/os/PackageTagsList;

    move-result-object p0

    .line 414
    invoke-virtual {p0}, Landroid/os/PackageTagsList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_176

    const-string p1, "ADAS Bypass Allow Packages:"

    .line 415
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 417
    invoke-virtual {p0, p2}, Landroid/os/PackageTagsList;->dump(Ljava/io/PrintWriter;)V

    .line 418
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_176
    return-void

    :catch_177
    move-exception p0

    .line 319
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getAdasAllowlist()Landroid/os/PackageTagsList;
    .registers 1

    .line 256
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mAdasPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->getValue()Landroid/os/PackageTagsList;

    move-result-object p0

    return-object p0
.end method

.method public getBackgroundThrottleIntervalMs()J
    .registers 3

    .line 168
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    const-wide/32 v0, 0x1b7740

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->getValue(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBackgroundThrottlePackageWhitelist()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->getValue()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getBackgroundThrottleProximityAlertIntervalMs()J
    .registers 6

    .line 288
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 290
    :try_start_4
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v2, "location_background_throttle_proximity_alert_interval_ms"

    const-wide/32 v3, 0x1b7740

    invoke-static {p0, v2, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 294
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v2

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 295
    throw p0
.end method

.method public getCoarseLocationAccuracyM()F
    .registers 6

    .line 300
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 301
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    :try_start_a
    const-string/jumbo v2, "locationCoarseAccuracy"

    const/high16 v3, 0x44fa0000    # 2000.0f

    .line 307
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v4

    .line 303
    invoke-static {p0, v2, v3, v4}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_1b

    .line 309
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    throw p0
.end method

.method public getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;
    .registers 1

    .line 271
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->getValue()Landroid/os/PackageTagsList;

    move-result-object p0

    return-object p0
.end method

.method public isBackgroundThrottlingAllowlistByNsflp(Ljava/lang/String;)Z
    .registers 2

    .line 830
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isGnssMeasurementsFullTrackingEnabled()Z
    .registers 2

    .line 239
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mGnssMeasurementFullTracking:Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;->getValue(Z)Z

    move-result p0

    return p0
.end method

.method public isLocationEnabled(I)Z
    .registers 3

    .line 137
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;->getValueForUser(II)I

    move-result p0

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public isLocationPackageBlacklisted(ILjava/lang/String;)Z
    .registers 6

    .line 185
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    return v2

    .line 190
    :cond_e
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object p0

    .line 191
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 192
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    return v2

    .line 197
    :cond_2b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 198
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2f

    const/4 p0, 0x1

    return p0

    :cond_43
    return v2
.end method

.method public onSystemReady()V
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;->register()V

    .line 128
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->register()V

    .line 129
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->register()V

    .line 130
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->register()V

    .line 131
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->register()V

    .line 132
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->register()V

    return-void
.end method

.method public removeAdasAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 2

    .line 266
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mAdasPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    return-void
.end method

.method public removeIgnoreSettingsAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 2

    .line 283
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    return-void
.end method

.method public removeOnBackgroundThrottleIntervalChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 2

    .line 180
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public removeOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 2

    .line 234
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public removeOnGnssMeasurementsFullTrackingEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 2

    .line 251
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mGnssMeasurementFullTracking:Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public removeOnLocationEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V
    .registers 2

    .line 163
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public removeOnLocationPackageBlacklistChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V
    .registers 3

    .line 216
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 217
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public setLocationEnabled(ZI)V
    .registers 6

    .line 142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 144
    :try_start_4
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mContext:Landroid/content/Context;

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v2, "location_mode"

    if-eqz p1, :cond_11

    const/4 p1, 0x3

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 144
    :goto_12
    invoke-static {p0, v2, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 152
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 153
    throw p0
.end method

.method public updateBackgroundThrottlingAllowlist(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 816
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    if-nez p1, :cond_f

    const-string p0, "LocationManagerService"

    const-string p1, "Null package is updated, so just clear"

    .line 819
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 823
    :cond_f
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 826
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->onChangedByNsflp()V

    return-void
.end method
