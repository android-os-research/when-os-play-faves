.class public Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;
.super Ljava/lang/Object;
.source "SemHotspotMobileDataLimit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;
    }
.end annotation


# static fields
.field private static final ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS:Ljava/lang/String; = "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "SemHotspotMobileDataLimit"

.field private static final WIFI_AP_DATA_CHECKING_MS:I = 0x3e8


# instance fields
.field private connectivity:Landroid/net/ConnectivityManager;

.field private isDataEnabled:Z

.field private isReached:Z

.field private isUpstreamWifi:Z

.field private isWifiApEnabled:Z

.field private isWifiSharingObserving:Z

.field private mApData:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;

.field private mApLimitObserver:Landroid/database/ContentObserver;

.field private mApLimitValueObserver:Landroid/database/ContentObserver;

.field private mClientNum:I

.field private final mContext:Landroid/content/Context;

.field private mDataLimited:Z

.field private mDefaultNetwork:Landroid/net/Network;

.field private mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mLimitData:Ljava/math/BigDecimal;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUsage:Ljava/math/BigDecimal;

.field private mUsageChangeCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiConnected:Z

.field private mWifiSharingObserver:Landroid/database/ContentObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetisDataEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isDataEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisReached(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isReached:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisUpstreamWifi(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isUpstreamWifi:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisWifiApEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiApEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmApData(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientNum(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mClientNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataLimited(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mDataLimited:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultNetwork(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Landroid/net/Network;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mDefaultNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLimitData(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Ljava/math/BigDecimal;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mLimitData:Ljava/math/BigDecimal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Lcom/samsung/android/wifi/SemWifiManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsageChangeCallbacks(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsageChangeCallbacks:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConnected(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mWifiConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisDataEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isDataEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisReached(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isReached:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisUpstreamWifi(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isUpstreamWifi:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDataLimited(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mDataLimited:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDefaultNetwork(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Landroid/net/Network;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mDefaultNetwork:Landroid/net/Network;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDefaultNetworkCapabilities(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Landroid/net/NetworkCapabilities;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUsage(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Ljava/math/BigDecimal;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsage:Ljava/math/BigDecimal;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTetheringUsage(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)[J
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->getTetheringUsage()[J

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleEvent(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misWifiDefaultNetwork(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiDefaultNetwork()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misWifiSharingEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiSharingEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyDataUsageChanged(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->notifyDataUsageChanged(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLimitValue(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->setLimitValue(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTelePhonyManager(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->updateTelePhonyManager()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->DBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 63
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mDefaultNetwork:Landroid/net/Network;

    .line 80
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 87
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$2;-><init>(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mApLimitObserver:Landroid/database/ContentObserver;

    .line 103
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$3;-><init>(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mApLimitValueObserver:Landroid/database/ContentObserver;

    .line 111
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$4;-><init>(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 120
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$5;-><init>(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mWifiSharingObserver:Landroid/database/ContentObserver;

    .line 126
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$6;-><init>(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 149
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isReached:Z

    .line 151
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiApEnabled:Z

    .line 152
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mClientNum:I

    .line 153
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;-><init>(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_65

    move v1, v3

    goto :goto_66

    :cond_65
    move v1, v0

    :goto_66
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isDataEnabled:Z

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_ap_mobile_data_limit"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_75

    goto :goto_76

    :cond_75
    move v3, v0

    :goto_76
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mDataLimited:Z

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_ap_mobile_data_limit_value"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->setLimitValue(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mApLimitObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mApLimitValueObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->registerDefaultNetworkCallback()V

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->registerForBroadcasts()V

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->updateTelePhonyManager()V

    const-string v0, "sem_wifi"

    .line 164
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 165
    const-class v0, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/NetworkStatsManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 166
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsageChangeCallbacks:Ljava/util/Map;

    return-void
.end method

.method private getLatestTime()J
    .registers 3

    .line 285
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/16 v0, 0xb

    const/16 v1, 0x17

    .line 286
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    const/16 v1, 0x3b

    .line 287
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 288
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    const/16 v1, 0x3e7

    .line 289
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 290
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private getTetheringUsage()[J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0}, Landroid/app/usage/NetworkStatsManager;->forceUpdate()V

    .line 303
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 304
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->getLatestTime()J

    move-result-wide v6

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, -0x5

    .line 303
    invoke-virtual/range {v1 .. v8}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUid(ILjava/lang/String;JJI)Landroid/app/usage/NetworkStats;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_3e

    .line 306
    new-instance v2, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v2}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    move-wide v3, v0

    .line 307
    :goto_23
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-virtual {p0, v2}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 308
    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 309
    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_23

    .line 311
    :cond_3a
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->close()V

    goto :goto_3f

    :cond_3e
    move-wide v3, v0

    :goto_3f
    const/4 p0, 0x2

    new-array p0, p0, [J

    const/4 v2, 0x0

    aput-wide v0, p0, v2

    const/4 v0, 0x1

    aput-wide v3, p0, v0

    return-object p0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEvent action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemHotspotMobileDataLimit"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 189
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApStaListDetail()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_e0

    .line 191
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mClientNum:I

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Client Num"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mClientNum:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e0

    :cond_48
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_ac

    const/16 p1, 0xe

    const-string v0, "wifi_state"

    .line 195
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_62

    .line 197
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiApEnabled:Z

    goto/16 :goto_e0

    :cond_62
    const/16 p2, 0xb

    if-ne p1, p2, :cond_7d

    .line 199
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiApEnabled:Z

    .line 200
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->resetApDataLimit()V

    .line 201
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiSharingObserving:Z

    if-eqz p1, :cond_e0

    .line 202
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiSharingObserving:Z

    .line 203
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mWifiSharingObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_e0

    :cond_7d
    const/16 p2, 0xd

    if-ne p1, p2, :cond_e0

    .line 206
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiSharingObserving:Z

    if-nez p1, :cond_a6

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    move-result p1

    if-eqz p1, :cond_a6

    .line 207
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiSharingObserving:Z

    .line 208
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "wifi_ap_wifi_sharing"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mWifiSharingObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 210
    :cond_a6
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiApEnabled:Z

    .line 211
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->resetApDataUsage()V

    goto :goto_e0

    :cond_ac
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    const-string p1, "networkInfo"

    .line 214
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-eqz p1, :cond_c9

    .line 215
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, p2, :cond_c9

    .line 216
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mWifiConnected:Z

    goto :goto_e0

    .line 218
    :cond_c9
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mWifiConnected:Z

    goto :goto_e0

    :cond_cc
    const-string p2, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    .line 220
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e0

    .line 221
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiApEnabled:Z

    if-eqz p1, :cond_e0

    .line 222
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->updateTelePhonyManager()V

    .line 223
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->updateBaseTxRxBytes()V

    .line 226
    :cond_e0
    :goto_e0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->onStateChanged()V

    return-void
.end method

.method private isWifiConnected()Z
    .registers 2

    .line 448
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    .line 450
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    .line 451
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private isWifiDefaultNetwork()Z
    .registers 2

    .line 418
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v0, 0x1

    if-eqz p0, :cond_c

    .line 419
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isWifiSharingEnabled()Z
    .registers 5

    const-string v0, "wifi_ap_wifi_sharing"

    const/4 v1, 0x0

    .line 423
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    return v3

    .line 425
    :cond_11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_1a} :catch_1a

    :catch_1a
    return v1
.end method

.method private notifyDataUsageChanged(Ljava/lang/String;)V
    .registers 5

    .line 256
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsageChangeCallbacks:Ljava/util/Map;

    if-eqz v0, :cond_3f

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3f

    .line 257
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsageChangeCallbacks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 258
    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 259
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;

    .line 261
    :try_start_20
    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;->onDataUsageChanged(Ljava/lang/String;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_14

    :catch_24
    move-exception v0

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataUsageChanged: remote exception -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemHotspotMobileDataLimit"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_14

    :cond_3f
    return-void
.end method

.method private registerDefaultNetworkCallback()V
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_11

    .line 181
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_11
    return-void
.end method

.method private registerForBroadcasts()V
    .registers 3

    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private resetApDataLimit()V
    .registers 3

    .line 271
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->DBG:Z

    if-eqz v0, :cond_1c

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mobile AP is disabled, reset Mobile AP Usage data, Limit value reached : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isReached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemHotspotMobileDataLimit"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 v0, 0x0

    .line 273
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isReached:Z

    .line 274
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->isWifiApEnabled:Z

    .line 275
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mClientNum:I

    return-void
.end method

.method private resetApDataUsage()V
    .registers 3

    .line 279
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "SemHotspotMobileDataLimit"

    const-string v1, "Mobile AP enabled, reset Mobile AP usage data"

    .line 280
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-wide/16 v0, 0x0

    .line 281
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsage:Ljava/math/BigDecimal;

    return-void
.end method

.method private setLimitValue(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_31

    .line 436
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_31

    .line 438
    :try_start_c
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mLimitData:Ljava/math/BigDecimal;
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_31

    :catch_14
    move-exception v0

    const/4 v1, 0x0

    .line 440
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mLimitData:Ljava/math/BigDecimal;

    .line 441
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid format limit value : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemHotspotMobileDataLimit"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_31
    :goto_31
    return-void
.end method

.method private updateTelePhonyManager()V
    .registers 3

    .line 294
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 295
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 296
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public addDataUsageCallback(ILcom/samsung/android/wifi/ISemWifiApDataUsageCallback;)V
    .registers 5

    .line 234
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsageChangeCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SemHotspotMobileDataLimit"

    if-nez v0, :cond_1d

    .line 235
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsageChangeCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->onStateChanged()V

    goto :goto_22

    :cond_1d
    const-string p1, "Skip adding duplicate callback"

    .line 238
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_22
    sget-boolean p1, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->DBG:Z

    if-eqz p1, :cond_40

    .line 241
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Callback size changed : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsageChangeCallbacks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return-void
.end method

.method public getUsage()Ljava/lang/String;
    .registers 3

    .line 230
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsage:Ljava/math/BigDecimal;

    if-eqz p0, :cond_5

    goto :goto_b

    :cond_5
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    :goto_b
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public removeDataUsageCallback(I)V
    .registers 4

    .line 245
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsageChangeCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SemHotspotMobileDataLimit"

    if-eqz v0, :cond_1d

    .line 246
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsageChangeCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->onStateChanged()V

    goto :goto_22

    :cond_1d
    const-string p1, "callback did not exist, ignore"

    .line 249
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_22
    sget-boolean p1, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->DBG:Z

    if-eqz p1, :cond_40

    .line 252
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Callback size changed : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->mUsageChangeCallbacks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return-void
.end method
