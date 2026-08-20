.class public Lcom/samsung/android/server/wifi/util/WifiNl80211Util;
.super Ljava/lang/Object;
.source "WifiNl80211Util.java"


# static fields
.field private static final DEFAULT_MAX_PNO_SSIDS_PER_SCAN:I = 0x10

.field public static final DEFAULT_RSSI:I = -0xc8

.field private static final TAG:Ljava/lang/String; = "SemWifi.CondUtil"


# instance fields
.field private mIfaceName:Ljava/lang/String;

.field private mIsInitialized:Z

.field private final mWifiCond:Landroid/net/wifi/nl80211/WifiNl80211Manager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "wifinl80211"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mWifiCond:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    return-void
.end method

.method private isInitialized()Z
    .registers 2

    .line 51
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mIsInitialized:Z

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mIfaceName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method


# virtual methods
.method public disableRandomMac()V
    .registers 2

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 70
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mWifiCond:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->disableRandomMac(Ljava/lang/String;)V

    goto :goto_15

    :cond_e
    const-string p0, "SemWifi.CondUtil"

    const-string v0, "not initialized interface"

    .line 72
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method

.method public getMaxPnoSsidsPerScan()I
    .registers 3

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->isInitialized()Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_14

    .line 78
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mWifiCond:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getMaxPnoSsidsPerScan(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_13

    move v1, p0

    :cond_13
    return v1

    :cond_14
    const-string p0, "SemWifi.CondUtil"

    const-string v0, "not initialized interface"

    .line 81
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getRssi()I
    .registers 4

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->isInitialized()Z

    move-result v0

    const/16 v1, -0xc8

    const-string v2, "SemWifi.CondUtil"

    if-nez v0, :cond_10

    const-string p0, "not initialized interface"

    .line 56
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 59
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mWifiCond:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->signalPoll(Ljava/lang/String;)Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;

    move-result-object p0

    if-nez p0, :cond_20

    const-string p0, "signal poll result is null, return default rssi"

    .line 61
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 64
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current rssi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->currentRssiDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dbm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->currentRssiDbm:I

    return p0
.end method

.method public setupWifiCond(Ljava/lang/String;)V
    .registers 3

    .line 36
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mIfaceName:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mWifiCond:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->semSetupInterface(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mIsInitialized:Z

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setup interface "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mIsInitialized:Z

    if-eqz p0, :cond_1b

    const-string p0, "success"

    goto :goto_1d

    :cond_1b
    const-string p0, "failed"

    :goto_1d
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifi.CondUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public tearDown()V
    .registers 2

    .line 42
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mIsInitialized:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mIfaceName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->mIsInitialized:Z

    :cond_a
    return-void
.end method
