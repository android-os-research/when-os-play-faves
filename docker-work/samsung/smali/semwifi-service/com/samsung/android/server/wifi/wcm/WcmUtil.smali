.class public Lcom/samsung/android/server/wifi/wcm/WcmUtil;
.super Ljava/lang/Object;
.source "WcmUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/wcm/WcmUtil$WcmUtilHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WcmUtil"

.field private static mContext:Landroid/content/Context;

.field private static mLastRssiUpdate:J

.field private static mLastWifiInfoUpdate:J

.field private static mRssi:I

.field private static mWifiLinkLayerStatesUpdate:J


# instance fields
.field private final MIN_LLS_UPDATE_INTERVAL:J

.field private final MIN_RSSI_UPDATE_INTERVAL:J

.field private final MIN_WIFI_INFO_UPDATE_INTERVAL:J

.field private mIsScreenOn:Z

.field private final mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field mWifiInfo:Landroid/net/wifi/WifiInfo;

.field mWifiLinkLayerStats:Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mIsScreenOn:Z

    const-wide/16 v0, 0x3e8

    .line 58
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->MIN_RSSI_UPDATE_INTERVAL:J

    const-wide/16 v2, 0xbb8

    .line 59
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->MIN_WIFI_INFO_UPDATE_INTERVAL:J

    .line 60
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->MIN_LLS_UPDATE_INTERVAL:J

    .line 67
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 68
    sget-object v0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mContext:Landroid/content/Context;

    const-string v1, "wifinl80211"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 69
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 70
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/wcm/WcmUtil-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;
    .registers 1

    .line 81
    sput-object p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mContext:Landroid/content/Context;

    .line 82
    sget-object p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil$WcmUtilHolder;->INSTANCE:Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    return-object p0
.end method


# virtual methods
.method public getCurrentSemWifiConfiguration(Z)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .registers 4

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_c

    .line 223
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    if-eq v0, v1, :cond_14

    .line 225
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSemWifiConfiguration(IZ)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p0

    return-object p0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 2

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 183
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getWifiConfiguration(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentWifiInfo()Landroid/net/wifi/WifiInfo;
    .registers 7

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 87
    sget-wide v2, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mLastWifiInfoUpdate:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-lez v2, :cond_1a

    .line 88
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 89
    sput-wide v0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mLastWifiInfoUpdate:J

    goto :goto_2d

    .line 91
    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_25

    goto :goto_2b

    .line 92
    :cond_25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    :goto_2b
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 94
    :goto_2d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez p0, :cond_32

    const/4 p0, 0x0

    :cond_32
    return-object p0
.end method

.method public getSavedNetworks(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getScreenStatus()Z
    .registers 1

    .line 133
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mIsScreenOn:Z

    return p0
.end method

.method public getSemWifiConfiguration(IZ)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .registers 7

    .line 190
    sget-object v0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 191
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_12

    return-object p1

    .line 195
    :cond_12
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p0

    .line 196
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_28

    if-nez p2, :cond_1f

    return-object p1

    .line 201
    :cond_1f
    new-instance p1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    invoke-direct {p1, p0}, Lcom/samsung/android/wifi/SemWifiConfiguration;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    return-object p1

    .line 206
    :cond_28
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 207
    iget-object v3, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    return-object v2

    :cond_41
    if-eqz p2, :cond_4b

    .line 212
    new-instance p1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    invoke-direct {p1, p0}, Lcom/samsung/android/wifi/SemWifiConfiguration;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    :cond_4b
    return-object p1
.end method

.method public getTxPacketCounters()Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;
    .registers 4

    .line 137
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;-><init>()V

    .line 138
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    const/4 v1, 0x2

    if-nez p0, :cond_14

    const-string p0, "WcmUtil"

    const-string v2, "getTxPacketCounters called without an interface"

    .line 139
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->result:I

    return-object v0

    :cond_14
    const-string v2, "wlan0"

    .line 143
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getTxPacketCounters(Ljava/lang/String;)Landroid/net/wifi/nl80211/WifiNl80211Manager$TxPacketCounters;

    move-result-object p0

    if-eqz p0, :cond_28

    const/4 v1, 0x1

    .line 145
    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->result:I

    .line 146
    iget v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$TxPacketCounters;->txPacketSucceeded:I

    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->mTxgood:I

    .line 147
    iget p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$TxPacketCounters;->txPacketFailed:I

    iput p0, v0, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->mTxbad:I

    goto :goto_2a

    .line 149
    :cond_28
    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->result:I

    :goto_2a
    return-object v0
.end method

.method public getUpdatedRssi()I
    .registers 7

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 102
    sget-wide v2, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mLastRssiUpdate:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_27

    .line 103
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    const-string v3, "wlan0"

    invoke-virtual {v2, v3}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->signalPoll(Ljava/lang/String;)Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 105
    iget v2, v2, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->currentRssiDbm:I

    sput v2, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mRssi:I

    .line 107
    :cond_1c
    sput-wide v0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mLastRssiUpdate:J

    .line 108
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p0, :cond_27

    .line 109
    sget v0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mRssi:I

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 112
    :cond_27
    sget p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mRssi:I

    return p0
.end method

.method public getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .registers 2

    .line 174
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getWifiConfiguration(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;
    .registers 2

    .line 177
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getWifiLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .registers 8

    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 119
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 120
    sget-wide v2, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiLinkLayerStatesUpdate:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_20

    .line 121
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getWifiLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiLinkLayerStats:Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 122
    sput-wide v0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiLinkLayerStatesUpdate:J

    .line 125
    :cond_20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiLinkLayerStats:Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    return-object p0
.end method

.method public is24GHz(Landroid/net/wifi/ScanResult;)Z
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_e

    .line 156
    iget p1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v0, 0x96c

    if-lt p1, v0, :cond_e

    const/16 v0, 0x9b4

    if-gt p1, v0, :cond_e

    const/4 p0, 0x1

    :cond_e
    return p0
.end method

.method public is5GHz(Landroid/net/wifi/ScanResult;)Z
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_e

    .line 164
    iget p1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v0, 0x1428

    if-lt p1, v0, :cond_e

    const/16 v0, 0x16e9

    if-gt p1, v0, :cond_e

    const/4 p0, 0x1

    :cond_e
    return p0
.end method

.method public isScanningRunning()Z
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    if-eqz p0, :cond_9

    .line 233
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->singleScanIsProgress()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public setScreenStatus(Z)V
    .registers 2

    .line 129
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mIsScreenOn:Z

    return-void
.end method
