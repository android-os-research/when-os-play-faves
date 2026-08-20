.class public Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;
.super Ljava/lang/Object;
.source "SemWifiTcpeBigDataManager.java"


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "SemWifiTcpeBigDataManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

.field private mWcmBigDataTCPE:Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mContext:Landroid/content/Context;

    .line 31
    new-instance p1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    const-string v0, "TCPE"

    .line 32
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->getBigDataFeature(Ljava/lang/String;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataTCPE:Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;

    return-void
.end method

.method private resetBigDataFeatureForTCPE()V
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataTCPE:Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->initialize()V

    .line 41
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    const-string v0, "TCPE"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->clearFeature(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public sendBigDataFeatureForTCPE(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;ZZ)V
    .registers 11

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 48
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x5

    goto :goto_11

    :cond_10
    const/4 v2, 0x2

    .line 54
    :goto_11
    sget-boolean v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->DBG:Z

    if-eqz v3, :cond_37

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendBigDataFeatureForTCPE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemWifiTcpeBigDataManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_37
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataTCPE:Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;

    iput-wide v0, v3, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpTime:J

    .line 57
    iget v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionResult:I

    iput v0, v3, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpActionResult:I

    .line 58
    iget-object v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpAlgorithmResult:Ljava/lang/String;

    .line 61
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->tx:J

    iput-wide v0, v3, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpTx:J

    .line 62
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rx:J

    iput-wide v0, v3, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpRx:J

    .line 63
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->loss:D

    iput-wide v0, v3, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpLoss:D

    .line 64
    iget v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rssi:I

    iput v0, v3, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpRssi:I

    .line 65
    iget v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->linkSpeed:I

    iput v0, v3, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpLinkSpeed:I

    .line 68
    iget-object v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->packageName:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpPackageName:Ljava/lang/String;

    if-eqz p2, :cond_6b

    .line 70
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpPackageCategory:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataTCPE:Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getDetectedCount()I

    move-result p2

    iput p2, v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpPackageDetectedCount:I

    .line 73
    :cond_6b
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataTCPE:Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;

    iput p4, p2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpPackageAutoSwitchEnabled:I

    .line 76
    iput v2, p2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApFrequency:I

    if-eqz p3, :cond_93

    .line 78
    iget-object p4, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getPackageDetectedCount(Ljava/lang/String;)I

    move-result p4

    iput p4, p2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApPackageDetectedCount:I

    .line 79
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataTCPE:Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;

    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getSwitchForIndivdiaulAppsDetectionCount()I

    move-result p4

    iput p4, p2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApDetectedCount:I

    .line 80
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataTCPE:Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;

    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getAccumulatedConnectionCount()I

    move-result p4

    iput p4, p2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApConnectionCount:I

    .line 81
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataTCPE:Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;

    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getAccumulatedConnectionTime()I

    move-result p3

    iput p3, p2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApConnectionTime:I

    .line 85
    :cond_93
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataTCPE:Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;

    iget p3, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    iput p3, p2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpEstablished:I

    .line 86
    iget p3, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    iput p3, p2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpSyn:I

    .line 87
    iget p3, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransmission:I

    iput p3, p2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpRetransmission:I

    .line 88
    iget p1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->laskAck:I

    iput p1, p2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpLastAck:I

    .line 90
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    const-string p2, "TCPE"

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureAllValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b4

    .line 91
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->insertLog(Ljava/lang/String;)V

    :cond_b4
    if-eqz p5, :cond_b9

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->resetBigDataFeatureForTCPE()V

    :cond_b9
    return-void
.end method

.method public setWifiInfo(Landroid/net/wifi/WifiInfo;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpeBigDataManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-void
.end method
