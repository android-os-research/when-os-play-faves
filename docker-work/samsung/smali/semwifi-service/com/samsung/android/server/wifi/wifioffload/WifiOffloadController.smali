.class public Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;
.super Ljava/lang/Object;
.source "WifiOffloadController.java"


# static fields
.field static final DATA_USAGE_THRESHOLD:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final DONT_SHOW_AGAIN_TIMER:I = 0x2932e00

.field static final PROPERTY_DATA_USAGE_THREHOLD:Ljava/lang/String; = "app.offload.datausage.limit"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiOffloadController"


# instance fields
.field mBlockListApps:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field mIsAirplaneMode:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mIsSettingEnabled:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mIsTimerRunning:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mIsWifiApEnabled:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mIsWifiConnected:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mIsWifiEnabled:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field mStartTime:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mWifiManager:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field mWifiOffloadDBHelper:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadDBHelper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Z1yJnChl7U3jY3aZanWfuNt1M1k(Ljava/lang/String;Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->lambda$isAppInBackground$0(Ljava/lang/String;Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .registers 9

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 91
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mStartTime:J

    .line 101
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mContext:Landroid/content/Context;

    .line 102
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 103
    iput-object p4, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mWifiManager:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 104
    const-class p4, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/usage/NetworkStatsManager;

    iput-object p4, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 106
    new-instance p4, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadDBHelper;

    invoke-direct {p4, p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadDBHelper;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mWifiOffloadDBHelper:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadDBHelper;

    .line 108
    new-instance p4, Landroid/content/IntentFilter;

    invoke-direct {p4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 109
    invoke-virtual {p4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 110
    invoke-virtual {p4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 111
    invoke-virtual {p4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$1;-><init>(Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;)V

    invoke-virtual {p1, v0, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p4, "airplane_mode_on"

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p3, p1, p4, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_46

    move v1, v2

    goto :goto_47

    :cond_46
    move v1, v0

    :goto_47
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsAirplaneMode:Z

    const-string v1, "wifi_offload_network_notify"

    .line 136
    invoke-virtual {p3, p1, v1, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_52

    move v0, v2

    :cond_52
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsSettingEnabled:Z

    .line 139
    invoke-static {p4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    new-instance v0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$2;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$2;-><init>(Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;Landroid/os/Handler;)V

    invoke-virtual {p3, p1, p4, v2, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 149
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    new-instance v0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$3;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$3;-><init>(Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;Landroid/os/Handler;)V

    invoke-virtual {p3, p1, p4, v2, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 159
    new-instance p2, Ljava/util/ArrayList;

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x1070008

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mBlockListApps:Ljava/util/List;

    return-void
.end method

.method private getActiveSubscriberId()Ljava/lang/String;
    .registers 2

    .line 314
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_11

    .line 316
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method private insertAppCount(Ljava/lang/String;)V
    .registers 4

    .line 341
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "packagename"

    .line 342
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 343
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "launchcount"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 344
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mWifiOffloadDBHelper:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadDBHelper;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadDBHelper;->insert(Landroid/content/ContentValues;)V

    return-void
.end method

.method private static synthetic lambda$isAppInBackground$0(Ljava/lang/String;Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .registers 2

    if-eqz p1, :cond_c

    .line 239
    iget-object p1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method


# virtual methods
.method calculateDataUsageForInterface(ILandroid/net/NetworkTemplate;)J
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    if-eqz v0, :cond_18

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v1, p2

    move v6, p1

    .line 289
    invoke-virtual/range {v0 .. v8}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUidTagState(Landroid/net/NetworkTemplate;JJIII)Landroid/app/usage/NetworkStats;

    move-result-object p1

    .line 291
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->getDataUsageFromStats(Landroid/app/usage/NetworkStats;)J

    move-result-wide p0

    return-wide p0

    :cond_18
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public checkAppForOffloading(Ljava/lang/String;)V
    .registers 9

    .line 361
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 363
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->isAppInBackground(Ljava/lang/String;)Z

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_88

    const-string v3, "WifiOffloadController"

    if-eqz v2, :cond_29

    .line 364
    :try_start_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in background. no offload needed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_88

    .line 396
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 370
    :cond_29
    :try_start_29
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v4, 0x80

    .line 371
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_37
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_37} :catch_7f
    .catchall {:try_start_29 .. :try_end_37} :catchall_88

    .line 377
    :try_start_37
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->isWifiOffloadNeeded(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 378
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->getAppLaunchCount(Ljava/lang/String;)I

    move-result v4

    .line 379
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appLaunchCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_5b

    .line 381
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->insertAppCount(Ljava/lang/String;)V

    goto :goto_7b

    :cond_5b
    add-int/lit8 v4, v4, 0x1

    .line 383
    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->updateAppLaunchCount(Ljava/lang/String;I)V

    .line 384
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->checkPreconditions()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 385
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->isAppDataUsageLimitExceeded(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 386
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->showWifiOffloadDialog(Ljava/lang/String;)V

    goto :goto_7b

    :cond_70
    const-string p0, "app data usage not exceeded threshold"

    .line 388
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    :cond_76
    const-string p0, "all preconditions not passed"

    .line 391
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_37 .. :try_end_7b} :catchall_88

    .line 396
    :cond_7b
    :goto_7b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_7f
    :try_start_7f
    const-string p0, "package not found"

    .line 373
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_7f .. :try_end_84} :catchall_88

    .line 396
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_88
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 397
    throw p0
.end method

.method checkPreconditions()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPreconditions : mIsWifiEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsWifiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsWifiConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsAirplaneMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsAirplaneMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsWifiApEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsWifiApEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsSettingEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsSettingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsTimerRunning = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->isTimerRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiOffloadController"

    .line 211
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsWifiEnabled:Z

    if-eqz v0, :cond_68

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsWifiConnected:Z

    if-nez v0, :cond_68

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsAirplaneMode:Z

    if-nez v0, :cond_68

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsWifiApEnabled:Z

    if-nez v0, :cond_68

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsSettingEnabled:Z

    if-eqz v0, :cond_68

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->isTimerRunning()Z

    move-result p0

    if-nez p0, :cond_68

    const/4 p0, 0x1

    goto :goto_69

    :cond_68
    const/4 p0, 0x0

    :goto_69
    return p0
.end method

.method getAppLaunchCount(Ljava/lang/String;)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 327
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mWifiOffloadDBHelper:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadDBHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadDBHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1c

    .line 329
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p1, "launchcount"

    .line 330
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 332
    :cond_19
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1c
    return p1
.end method

.method getDataUsageFromStats(Landroid/app/usage/NetworkStats;)J
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_39

    .line 300
    new-instance p0, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {p0}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 301
    :goto_9
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {p1, p0}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 302
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v4

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_9

    .line 304
    :cond_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataUsage for app is "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "WifiOffloadController"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->close()V

    :cond_39
    return-wide v0
.end method

.method isAppDataUsageLimitExceeded(Ljava/lang/String;I)Z
    .registers 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-eq p2, v1, :cond_92

    const/4 v1, -0x1

    if-ne p2, v1, :cond_a

    goto/16 :goto_92

    :cond_a
    const/high16 v1, 0x100000

    .line 261
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v3, "app.offload.datausage.limit"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;I)I

    move-result v2

    mul-int/2addr v2, v1

    .line 264
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->getAppLaunchCount(Ljava/lang/String;)I

    move-result p1

    .line 266
    new-instance v1, Landroid/net/NetworkTemplate$Builder;

    const/4 v3, 0x4

    invoke-direct {v1, v3}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 267
    invoke-virtual {v1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 266
    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->calculateDataUsageForInterface(ILandroid/net/NetworkTemplate;)J

    move-result-wide v5

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wi-Fi : DataUsage = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " AppLaunchCount = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "WifiOffloadController"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v8, p1

    .line 269
    div-long v10, v5, v8

    int-to-long v1, v2

    cmp-long v10, v10, v1

    if-ltz v10, :cond_50

    :goto_4e
    move v0, v4

    goto :goto_7e

    .line 273
    :cond_50
    new-instance v10, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {v10, v4}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 274
    invoke-virtual {v10}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v10

    .line 273
    invoke-virtual {p0, p2, v10}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->calculateDataUsageForInterface(ILandroid/net/NetworkTemplate;)J

    move-result-wide v10

    add-long/2addr v5, v10

    .line 275
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Wi-Fi + Mobile Data : DataUsage = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    div-long/2addr v5, v8

    cmp-long p0, v5, v1

    if-ltz p0, :cond_7e

    goto :goto_4e

    .line 279
    :cond_7e
    :goto_7e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "dataUsageCrossed ? "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    :goto_92
    return v0
.end method

.method isAppInBackground(Ljava/lang/String;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 234
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 236
    :try_start_a
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3d

    .line 238
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 240
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    .line 241
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz p0, :cond_3d

    .line 242
    iget p0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_2c
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_2c} :catch_32

    const/16 p1, 0x64

    if-eq p0, p1, :cond_3d

    const/4 p0, 0x1

    return p0

    :catch_32
    move-exception p0

    const-string p1, "WifiOffloadController"

    const-string v0, "unable to check app in background"

    .line 247
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_3d
    const/4 p0, 0x0

    return p0
.end method

.method isTimerRunning()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 223
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsTimerRunning:Z

    if-eqz v0, :cond_15

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsTimerRunning:Z

    .line 226
    :cond_15
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsTimerRunning:Z

    return p0
.end method

.method isWifiOffloadNeeded(Ljava/lang/String;I)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "WifiOffloadController"

    const/4 v1, 0x0

    .line 170
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    .line 171
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-nez v2, :cond_11

    const/4 v2, 0x0

    goto :goto_15

    .line 173
    :cond_11
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    :goto_15
    if-nez v2, :cond_1e

    const-string v2, "No active network"

    .line 175
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    move v2, v1

    goto :goto_43

    .line 177
    :cond_1e
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eqz v3, :cond_42

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Active Network type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", so no Wi-Fi offload needed"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :cond_42
    const/4 v2, 0x1

    .line 182
    :goto_43
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mBlockListApps:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Block List package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :cond_60
    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_83

    .line 188
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has SYSTEM_UID. adding to Block List"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mBlockListApps:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v1

    .line 193
    :cond_83
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p2, "android.permission.INTERNET"

    .line 194
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 p2, -0x1

    if-ne p0, p2, :cond_a7

    .line 195
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No internet permission for package = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_a6} :catch_a9

    goto :goto_ae

    :cond_a7
    move v1, v2

    goto :goto_ae

    :catch_a9
    const-string p0, "security exception occurred while getting active network info"

    .line 199
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_ae
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isWifiOffloadNeeded : packageName = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " result = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method showWifiOffloadDialog(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mWifiManager:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 406
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_27

    .line 415
    :cond_f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wifioffload.WIFI_OFFLOAD_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    .line 416
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "EXTRA_PACKAGE_NAME"

    .line 417
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_27
    :goto_27
    const-string p1, "WifiOffloadController"

    const-string v0, "no scan result. don\'t show dialog and start scan"

    .line 407
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mContext:Landroid/content/Context;

    const-string p1, "sem_wifi"

    .line 409
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz p0, :cond_3d

    .line 411
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->startScan()Z

    :cond_3d
    return-void
.end method

.method public startTimer()V
    .registers 3

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mStartTime:J

    const/4 v0, 0x1

    .line 426
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsTimerRunning:Z

    return-void
.end method

.method updateAppLaunchCount(Ljava/lang/String;I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 352
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 353
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "launchcount"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mWifiOffloadDBHelper:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadDBHelper;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadDBHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method
