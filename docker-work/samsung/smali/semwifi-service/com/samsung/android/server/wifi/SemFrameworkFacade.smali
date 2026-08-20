.class public Lcom/samsung/android/server/wifi/SemFrameworkFacade;
.super Ljava/lang/Object;
.source "SemFrameworkFacade.java"


# static fields
.field private static final IS_JDM_PRODUCT:Z = true

.field private static final ONE_UI_VERSION_5_1_0:I = 0xc3b4

.field private static final SUPPORT_MOBILE_AP_ENHANCED:Z = true

.field private static final SUPPORT_MOBILE_AP_ENHANCED_D2D:Z = true

.field private static final SUPPORT_MOBILE_AP_ENHANCED_LITE:Z = false

.field private static final SUPPORT_MOBILE_AP_ENHANCED_WIFI_ONLY_LITE:Z = false

.field public static final SYSTEM_DB_NEARBY_SCANNING:Ljava/lang/String; = "nearby_scanning_enabled"

.field public static final SYSTEM_DB_SEM_EMERGENCY_MODE:Ljava/lang/String; = "emergency_mode"

.field public static final TAG:Ljava/lang/String; = "SemFrameworkFacade"

.field private static mOneUIVersion:I


# instance fields
.field private CONFIG_OPBRANDING_FOR_MOBILE_AP:Ljava/lang/String;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->mContentResolver:Landroid/content/ContentResolver;

    .line 71
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 72
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method

.method private checkAndGetMobileHotspotBrandingInfo()V
    .registers 2

    .line 547
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->CONFIG_OPBRANDING_FOR_MOBILE_AP:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 548
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->getInstance()Lcom/samsung/android/wifi/SemWifiApCust;

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApCust;->mMHSCustomer:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->CONFIG_OPBRANDING_FOR_MOBILE_AP:Ljava/lang/String;

    :cond_b
    return-void
.end method

.method private getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_e

    const-string v0, "activity"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->mActivityManager:Landroid/app/ActivityManager;

    .line 95
    :cond_e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method private getCarrierConfigManager(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-nez v0, :cond_e

    const-string v0, "carrier_config"

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 87
    :cond_e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    return-object p0
.end method

.method private getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_a

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->mContentResolver:Landroid/content/ContentResolver;

    .line 79
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method


# virtual methods
.method public getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 5

    .line 250
    invoke-static {p1, p2, p3, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getAutoWifiDefaultValue()Z
    .registers 2

    .line 435
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Wifi_EnableAutoWifi"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getBooleanCscFeature(Ljava/lang/String;)Z
    .registers 2

    .line 173
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getBoosterThresholds()[I
    .registers 4

    const/4 p0, 0x3

    new-array p0, p0, [I

    const-string v0, "0"

    .line 479
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    mul-int/lit16 v1, v1, 0x400

    div-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    aput v1, p0, v2

    .line 481
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    mul-int/lit16 v1, v1, 0x400

    div-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aput v1, p0, v2

    .line 483
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    div-int/lit8 v0, v0, 0x8

    const/4 v1, 0x2

    aput v0, p0, v1

    return-object p0
.end method

.method public getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 5

    .line 243
    invoke-static {p1, p2, p3, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getConfigWiFiDisableInECBM(Landroid/content/Context;)Z
    .registers 2

    .line 254
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getCarrierConfigManager(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 256
    invoke-virtual {p0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string p1, "config_wifi_disable_in_ecbm"

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public getDvfsManager(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;
    .registers 3

    .line 621
    invoke-static {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p0

    return-object p0
.end method

.method public getForegroundPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 327
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;

    move-result-object p0

    if-eqz p0, :cond_1f

    const/4 p1, 0x1

    .line 329
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    .line 330
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1f

    const/4 p1, 0x0

    .line 331
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIWifiManager()Landroid/net/wifi/IWifiManager;
    .registers 1

    const-string p0, "wifi"

    .line 593
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 592
    invoke-static {p0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object p0

    return-object p0
.end method

.method public getIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 4

    .line 109
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 4

    .line 117
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLongSetting(Landroid/content/Context;Ljava/lang/String;J)J
    .registers 5

    .line 121
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, p3, p4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getMenuStatusForPasspoint()Ljava/lang/String;
    .registers 1

    .line 601
    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getMenuStatusForPasspoint()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMobileRxBytes()J
    .registers 3

    .line 412
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileTxBytes()J
    .registers 3

    .line 405
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;
    .registers 1

    .line 580
    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object p0

    return-object p0
.end method

.method public getPackageName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    if-ltz p2, :cond_23

    .line 340
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;

    move-result-object p0

    .line 342
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 344
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 345
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v0, p2, :cond_10

    .line 346
    iget-object p0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRxBytes(Ljava/lang/String;)J
    .registers 2

    .line 276
    invoke-static {p1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getRxPackets(Ljava/lang/String;)J
    .registers 2

    .line 268
    invoke-static {p1}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 4

    .line 140
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, p3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSecureLongSetting(Landroid/content/Context;Ljava/lang/String;J)J
    .registers 5

    .line 162
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, p3, p4}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getSecureStringSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 151
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSecureUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    .line 205
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getStringCscFeature(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 177
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringCscFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 181
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 129
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSystemIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 4

    .line 169
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSystemProperties(Ljava/lang/String;I)I
    .registers 3

    .line 189
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 185
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSystemUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    .line 201
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getTotalRxBytes()J
    .registers 3

    .line 426
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalTxBytes()J
    .registers 3

    .line 419
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTxBytes(Ljava/lang/String;)J
    .registers 2

    .line 272
    invoke-static {p1}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTxPackets(Ljava/lang/String;)J
    .registers 2

    .line 264
    invoke-static {p1}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getUidRxBytes(I)J
    .registers 2

    .line 288
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getUidRxPackets(I)J
    .registers 2

    .line 280
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxPackets(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getUidTxBytes(I)J
    .registers 2

    .line 292
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getUidTxPackets(I)J
    .registers 2

    .line 284
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxPackets(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    .line 197
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public isAdvancedAutohotspotSupported()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isAppForeground(Landroid/content/Context;I)Z
    .registers 3

    .line 320
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return p1

    .line 322
    :cond_8
    invoke-virtual {p0, p2}, Landroid/app/ActivityManager;->getUidImportance(I)I

    move-result p0

    const/16 p2, 0xc8

    if-gt p0, p2, :cond_11

    const/4 p1, 0x1

    :cond_11
    return p1
.end method

.method public isComcastVendor()Z
    .registers 2

    .line 430
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Common_SupportComcastWifi"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isEnhancedMobileApModeForD2dOrWifiOnlyLite()Z
    .registers 1

    .line 504
    sget-boolean p0, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->SUPPORT_MOBILE_AP_ENHANCED_D2D:Z

    if-nez p0, :cond_b

    sget-boolean p0, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->SUPPORT_MOBILE_AP_ENHANCED_WIFI_ONLY_LITE:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public isEnhancedMobileApModeForLiteOrWifiOnlyLite()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isFactoryBinary()Z
    .registers 2

    const-string p0, "ro.factory.factory_binary"

    const-string v0, "Unknown"

    .line 576
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "factory"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isHotspotDongleProduct()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isIotDevice()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isJdmProduct()Z
    .registers 1

    .line 491
    sget-boolean p0, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->IS_JDM_PRODUCT:Z

    return p0
.end method

.method public isMBOSupported()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isMCFAutohotspotSupported(Landroid/content/Context;)Z
    .registers 5

    .line 521
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 522
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportedContinuity()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    .line 523
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "vendor.wifiap.mcf.autohotspot"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_19

    move v1, v2

    :cond_19
    return v1

    .line 525
    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportedContinuity()Z

    return v1
.end method

.method public isMCFClientAutohotspotSupported(Landroid/content/Context;)Z
    .registers 5

    .line 529
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 530
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isMCFAutohotspotSupported(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "vendor.wifiap.mcf.autohotspot"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_19

    move v1, v2

    :cond_19
    return v1
.end method

.method public isNiapModeOn(Landroid/content/Context;)Z
    .registers 2

    .line 212
    const-class p0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const/4 p1, 0x0

    .line 213
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isCommonCriteriaModeEnabled(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public isPlatformSigned(Landroid/content/Context;I)Z
    .registers 3

    .line 355
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isPlatformSigned(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPlatformSigned(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 359
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    .line 363
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "android"

    .line 364
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_16

    if-nez p0, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0

    :catch_16
    move-exception p0

    .line 367
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "exception in checkSignature : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemFrameworkFacade"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSepLiteModel(Landroid/content/Context;)Z
    .registers 2

    .line 460
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "com.samsung.feature.samsung_experience_mobile_lite"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSepStandardModel(Landroid/content/Context;)Z
    .registers 2

    .line 465
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "com.samsung.feature.samsung_experience_mobile"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSetupwizardFinished()Z
    .registers 2

    const-string p0, "persist.sys.setupwizard"

    const-string v0, "NOTSET"

    .line 563
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "FINISH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isShowDataSelectPopupOnBootup()Z
    .registers 2

    .line 572
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_RIL_ShowDataSelectPopupOnBootup"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSnsDefaultOn()Z
    .registers 2

    .line 567
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Wifi_ConfigSnsStatus"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DEFAULT_ON"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSupportChameleon()Z
    .registers 2

    .line 553
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->checkAndGetMobileHotspotBrandingInfo()V

    .line 554
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->CONFIG_OPBRANDING_FOR_MOBILE_AP:Ljava/lang/String;

    const-string v0, "SPRINT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSupportMobileAp6G()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportVerizonProvisioning()Z
    .registers 2

    .line 558
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->checkAndGetMobileHotspotBrandingInfo()V

    .line 559
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->CONFIG_OPBRANDING_FOR_MOBILE_AP:Ljava/lang/String;

    const-string v0, "VZW"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSupportVzwEapAka()Z
    .registers 2

    .line 584
    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getNotificationStyle()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VZW"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSupported6Ghz()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedAdps()Z
    .registers 2

    .line 440
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_WIFI_SUPPORT_ADPS"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportedBigdataHqmService()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedBigdataSurveyMode()Z
    .registers 2

    .line 455
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TRUE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSupportedContinuity()Z
    .registers 2

    .line 450
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_MCF_SUPPORT_CONTINUITY"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isSupportedMcfService()Z
    .registers 2

    .line 445
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_MCF_SUPPORT_FRAMEWORK"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isWifiProfileShareAHSupported(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "ro.build.version.oneui"

    const/4 v1, 0x0

    .line 512
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->mOneUIVersion:I

    .line 513
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    if-eqz v0, :cond_1b

    .line 515
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "vendor.wifiap.wifiprofileshare.autohotspot"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1b

    move v1, p1

    :cond_1b
    return v1
.end method

.method public isWifiSharingEnabled(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "wifi_ap_wifi_sharing"

    const/4 v1, 0x0

    .line 588
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_b

    move v1, p1

    :cond_b
    return v1
.end method

.method public isWifiToCellularSupported()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public makeAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .registers 2

    .line 388
    new-instance p0, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public makeIpClient(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClientCallbacks;)V
    .registers 4

    .line 302
    invoke-static {p1, p2, p3}, Landroid/net/ip/IpClientUtil;->makeIpClient(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClientCallbacks;)V

    return-void
.end method

.method public makeNotificationBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 3

    .line 379
    new-instance p0, Landroid/app/Notification$Builder;

    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p0
.end method

.method public makeWifiAsyncChannel(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;
    .registers 2

    .line 311
    new-instance p0, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .registers 5

    .line 227
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .registers 4

    .line 102
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4

    .line 113
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4

    .line 133
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setSecureLongSetting(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 5

    .line 155
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, p3, p4}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public setSecureStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 144
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, p3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 125
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, p3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setSystemProperties(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 193
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showDisconnectToast(Landroid/content/Context;)V
    .registers 3

    const p0, 0x1040f5c

    const/4 v0, 0x0

    .line 597
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showToast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 p0, 0x0

    .line 397
    invoke-static {p1, p2, p0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 398
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public unregisterContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .registers 3

    .line 239
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
