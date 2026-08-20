.class public Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;
.super Landroid/os/Handler;
.source "NetworkStatsAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;
    }
.end annotation


# static fields
.field private static final ACTIVITY_POLLING_INTERVAL:I = 0x3e8

.field private static final BACKHAUL_DETECTION_REASON_DNS_CHECK_INTERVAL:I = 0x10

.field private static final BACKHAUL_DETECTION_REASON_IN_ERROR_SEG_FAIL:I = 0x4

.field private static final BACKHAUL_DETECTION_REASON_NO_RESPONSE_FAIL:I = 0x8

.field private static final BACKHAUL_DETECTION_REASON_RETRANS_SEG_FAIL:I = 0x2

.field private static final BACKHAUL_DETECTION_REASON_TCP_SOCKET_FAIL:I = 0x1

.field private static DBG:Z = false

.field public static final EVENT_RESULT_DNS_CHECK:I = 0xa

.field private static final FILE_NAME_SNMP:Ljava/lang/String; = "/proc/net/snmp"

.field private static final FILE_NAME_SOCKSTAT_IPV4:Ljava/lang/String; = "/proc/net/sockstat"

.field private static final FILE_NAME_SOCKSTAT_IPV6:Ljava/lang/String; = "/proc/net/sockstat6"

.field private static final MSG_ACTIVITY_CHECK_POLL:I = 0x3

.field private static final MSG_ACTIVITY_CHECK_START:I = 0x1

.field private static final MSG_ACTIVITY_CHECK_STOP:I = 0x2

.field private static final MSG_EVENT_SCAN_STARTED_OR_DONE:I = 0x9

.field private static final MSG_NETWORK_STAT_CHECK_DNS:I = 0x5

.field private static final MSG_TCP_BACKHAUL_DETECTION_START:I = 0x8

.field private static final NETWORK_STAT_HISTORY_COUNT_MAX:I = 0xa

.field private static final RSSI_QC_TRIGGER_INTERVAL:I = -0x3

.field private static final SNMP_TCP_COUNT_ROW:I = 0x6

.field private static final SNMP_TCP_ESTABLISH_COUNT_COLUMN:I = 0x9

.field private static final SNMP_TCP_IN_SEG_COUNT_COLUMN:I = 0xa

.field private static final SNMP_TCP_IN_SEG_ERROR_COUNT_COLUMN:I = 0xd

.field private static final SNMP_TCP_OUT_SEG_COUNT_COLUMN:I = 0xb

.field private static final SNMP_TCP_RETRANS_SEG_COUNT_COLUMN:I = 0xe

.field private static final SOCKSTAT6_SOCK_COUNT_ROW:I = 0x1

.field private static final SOCKSTAT6_TCP_INUSE_COUNT_COLOUMN:I = 0x2

.field private static final SOCKSTAT_ORPHAN_COUNT_COLUMN:I = 0x4

.field private static final SOCKSTAT_TCP_COUNT_ROW:I = 0x2

.field private static final SOCKSTAT_TCP_INUSE_COUNT_COLUMN:I = 0x2

.field private static final SOCKSTAT_TIMEWAIT_COUNT_COLUMN:I = 0x6

.field private static final TAG:Ljava/lang/String; = "WifiConnectivityMonitor.NetworkStatsAnalyzer"

.field private static final THRESHOLD_BACKHAUL_CONNECTIVITY_CHECK_HIGH:I = 0x5

.field private static final THRESHOLD_BACKHAUL_CONNECTIVITY_CHECK_LOW:I = 0x2

.field private static final THRESHOLD_BACKHAUL_CONNECTIVITY_CHECK_POOR:I = 0x2

.field private static final THRESHOLD_MAX_WAITING_CYCLE:I = 0x3c

.field private static final THRESHOLD_RSSI_LOW_SIGNAL:I = -0x46

.field private static final THRESHOLD_RSSI_POOR_SIGNAL:I = -0x53

.field private static final THRESHOLD_TCP_POOR_SEG_RX_TX:I = 0xf

.field private static final THRESHOLD_WAITING_CYCLE_CHECK_HIGH:I = 0x5

.field private static final THRESHOLD_WAITING_CYCLE_CHECK_LOW:I = 0x3

.field private static final THRESHOLD_WAITING_CYCLE_CHECK_POOR:I = 0x2

.field private static final TIME_QC_TRIGGER_INTERVAL:I = 0x2710


# instance fields
.field private mBackhaulDetectionReason:I

.field private mContext:Landroid/content/Context;

.field private mCumulativePoorRx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

.field private mCurrentMode:I

.field private mDnsInterrupted:Z

.field private mDnsQueried:Z

.field private mDnsThread:Lcom/samsung/android/server/wifi/wcm/DnsThread;

.field private mDnsThreadID:J

.field private mInErrorSegWaitingCycle:I

.field private mInternetConnectivityCounter:I

.field private mInternetConnectivityWaitingCycle:I

.field private mIsAggGoodStateNow:Z

.field private mIsChinaNetwork:Z

.field private mIsInDhcpSession:Z

.field private mIsInRoamSession:Z

.field private mIsPollingStarted:Z

.field private mIsScanning:Z

.field private mIsVPNOnlyNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLastDnsCheckTime:J

.field private mLastNeedCheckByPoorRxTime:J

.field private mLastPollTime:J

.field private mLastRssi:I

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMaybeUseStreaming:I

.field private mNetworkStatHistory:[Ljava/lang/String;

.field private mNetworkStatHistoryIndex:I

.field private mNetworkStatsAnalyzerCallBack:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;

.field private mNsaQcStep:I

.field private mNsaQcTrigger:I

.field private mPrevInSegCount:I

.field private mPrevInSegErrorCount:I

.field private mPrevOutSegCount:I

.field private mPrevRetranSegCount:I

.field private mPrevTcpEstablishedCount:I

.field private mPrevTcpInUseCount:I

.field private mPrevTimeWaitCount:I

.field private mPrevTotalRxPkt:J

.field private mPrevTotalTxPkt:J

.field private mPublicDnsCheckProcess:Z

.field private mRetransSegWaitingCycle:I

.field private mRxBytes:J

.field private mRxHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRxPackets:J

.field private mSYNPacketOnly:Z

.field private mSemTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

.field private mStayingPoorRssi:I

.field private mTxBytes:J

.field private mTxPackets:J

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method static bridge synthetic -$$Nest$fgetmNetworkStatsAnalyzerCallBack(Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatsAnalyzerCallBack:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 47
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 5

    .line 164
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTcpEstablishedCount:I

    .line 102
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTimeWaitCount:I

    .line 103
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTcpInUseCount:I

    .line 104
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityCounter:I

    .line 105
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityWaitingCycle:I

    .line 106
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevInSegCount:I

    .line 107
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevOutSegCount:I

    .line 108
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevInSegErrorCount:I

    .line 109
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevRetranSegCount:I

    .line 110
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRetransSegWaitingCycle:I

    .line 111
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInErrorSegWaitingCycle:I

    .line 112
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I

    const/4 v0, 0x1

    .line 114
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentMode:I

    .line 115
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mStayingPoorRssi:I

    .line 116
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    .line 117
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastRssi:I

    .line 118
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcStep:I

    .line 119
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    const-wide/16 v0, 0x0

    .line 121
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThreadID:J

    .line 123
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTotalTxPkt:J

    .line 124
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTotalRxPkt:J

    .line 125
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mTxPackets:J

    .line 126
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxPackets:J

    .line 127
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mTxBytes:J

    .line 128
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxBytes:J

    .line 130
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    .line 131
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastNeedCheckByPoorRxTime:J

    .line 132
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastPollTime:J

    .line 134
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsAggGoodStateNow:Z

    .line 135
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsChinaNetwork:Z

    .line 136
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsPollingStarted:Z

    .line 137
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsQueried:Z

    .line 138
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsInterrupted:Z

    .line 139
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    .line 140
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    .line 141
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsScanning:Z

    .line 142
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsInRoamSession:Z

    .line 143
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsInDhcpSession:Z

    .line 144
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsVPNOnlyNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 158
    new-instance p1, Landroid/net/wifi/WifiInfo;

    invoke-direct {p1}, Landroid/net/wifi/WifiInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 165
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mContext:Landroid/content/Context;

    .line 166
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    .line 167
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    return-void
.end method

.method private addNetworkStatHistory(Ljava/lang/String;)V
    .registers 4

    .line 265
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatHistory:[Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    .line 268
    :cond_5
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatHistoryIndex:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 269
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatHistoryIndex:I

    const/16 p1, 0xa

    if-lt v1, p1, :cond_14

    const/4 p1, 0x0

    .line 270
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatHistoryIndex:I

    :cond_14
    return-void
.end method

.method private checkDnsThreadResult(II)I
    .registers 6

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DNS resultType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", responseTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->isUsingProxy()Z

    move-result v0

    if-eqz v0, :cond_42

    if-eqz p1, :cond_42

    .line 278
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DNS check result is not successful. TYPE: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Proxy is being used. Ignore the result."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xb

    return p0

    :cond_42
    const/4 v0, 0x3

    if-ne p1, v0, :cond_72

    .line 283
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->syncGetCurrentWifiInfo()V

    .line 285
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_72

    .line 288
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    const/16 v2, -0x32

    if-lt v0, v2, :cond_72

    .line 290
    sget-boolean p1, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    if-eqz p1, :cond_71

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dns Timeout but RSSI high : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " dBm. Link is okay and DNG service is not responsive. -> NO_INTERNET"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    const/4 p1, 0x5

    .line 297
    :cond_72
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatsAnalyzerCallBack:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;->notifyDnsResultType(II)V

    return p1
.end method

.method private checkPublicDns()V
    .registers 9

    .line 303
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsChinaNetwork:Z

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsVPNOnlyNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_60

    :cond_d
    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    .line 308
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcStep:I

    .line 310
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/DnsThread;

    const/4 v2, 0x1

    sget-object v3, Lcom/samsung/android/server/wifi/wcm/Constant;->DEFAULT_URL_STRING:Ljava/lang/String;

    const-wide/16 v5, 0x2710

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mContext:Landroid/content/Context;

    move-object v1, v0

    move-object v4, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/wifi/wcm/DnsThread;-><init>(ZLjava/lang/String;Landroid/os/Handler;JLandroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThread:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 311
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$1;-><init>(Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->setDnsThreadCallBack(Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;)V

    .line 323
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThread:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->updateLinkProperties(Landroid/net/LinkProperties;)V

    .line 324
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThread:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThread:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThreadID:J

    .line 326
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    if-eqz v0, :cond_5f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wait publicDnsThread results ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThreadID:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    return-void

    :cond_60
    :goto_60
    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    return-void
.end method

.method private generateDnsTargetForCountry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 330
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initNetworkStatHistory()V
    .registers 2

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 334
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatHistory:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 335
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatHistoryIndex:I

    return-void
.end method

.method private isBackhaulDetectionEnabled()Z
    .registers 2

    .line 339
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentMode:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    const/4 v0, 0x3

    if-ne p0, v0, :cond_9

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

.method private isUsingProxy()Z
    .registers 4

    .line 344
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLinkProperties:Landroid/net/LinkProperties;

    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    .line 345
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLinkProperties:Landroid/net/LinkProperties;

    .line 346
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLinkProperties:Landroid/net/LinkProperties;

    .line 347
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_26

    const/4 v0, 0x1

    move v1, v0

    :cond_26
    if-eqz v1, :cond_5e

    .line 349
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    if-eqz v0, :cond_5e

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP Proxy is in use. Proxy: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPort()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    return v1
.end method

.method private syncGetCurrentWifiInfo()V
    .registers 2

    .line 360
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-void
.end method


# virtual methods
.method public getAggGoodStateNow()Z
    .registers 1

    .line 229
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsAggGoodStateNow:Z

    return p0
.end method

.method public getNetworkStatHistory()Ljava/lang/String;
    .registers 6

    .line 237
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatHistory:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 240
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatHistoryIndex:I

    const/4 v2, 0x0

    :goto_e
    const/16 v3, 0xa

    if-ge v2, v3, :cond_26

    .line 243
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatHistory:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_20

    .line 244
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    add-int/lit8 v1, v1, 0x1

    .line 246
    rem-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 248
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStayingPoorRssi()I
    .registers 1

    .line 233
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mStayingPoorRssi:I

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 43

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    const-string v1, "Exception: "

    .line 365
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 366
    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v11, 0x3

    const-string v12, "WifiConnectivityMonitor.NetworkStatsAnalyzer"

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eq v2, v13, :cond_c9f

    const/4 v4, 0x2

    if-eq v2, v4, :cond_c68

    const/16 v7, -0x53

    const/16 v15, -0x46

    const/4 v6, 0x5

    if-eq v2, v11, :cond_74f

    if-eq v2, v6, :cond_74a

    packed-switch v2, :pswitch_data_cd4

    .line 1019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore msg id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_cd3

    .line 978
    :pswitch_3a
    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    if-eqz v1, :cond_63

    .line 979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RESULT_DNS_CHECK] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", from DnsThread id("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThreadID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_63
    iget v1, v0, Landroid/os/Message;->arg1:I

    iget v0, v0, Landroid/os/Message;->arg2:I

    invoke-direct {v8, v1, v0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->checkDnsThreadResult(II)I

    move-result v0

    .line 982
    iget-object v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatsAnalyzerCallBack:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;

    invoke-interface {v1, v0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;->notifyDnsCheckResult(I)V

    .line 984
    iput-boolean v14, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsQueried:Z

    .line 985
    iget-boolean v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsInterrupted:Z

    if-eqz v1, :cond_96

    .line 986
    iput-boolean v14, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsInterrupted:Z

    .line 987
    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    if-eqz v1, :cond_cd

    .line 988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - This DNS query is interrupted."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd

    :cond_96
    if-eqz v0, :cond_cd

    .line 992
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    if-eqz v0, :cond_a1

    const-string v0, "single DNS Checking FAILURE"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_a1
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentMode:I

    if-ne v0, v11, :cond_b3

    iget-boolean v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsAggGoodStateNow:Z

    if-eqz v0, :cond_b3

    .line 994
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    if-eqz v0, :cond_cd

    const-string v0, "But, do not check the quality in AGG good rx state"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd

    .line 996
    :cond_b3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->isBackhaulDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 997
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I

    add-int/lit16 v0, v0, 0x80

    iput v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    goto :goto_c4

    :cond_c0
    const/16 v0, 0x2a

    .line 999
    iput v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    .line 1001
    :goto_c4
    iget-object v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatsAnalyzerCallBack:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;

    iget v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcStep:I

    iget v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;->needInternetCheck(II)V

    .line 1004
    :cond_cd
    :goto_cd
    iput-boolean v14, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    goto/16 :goto_cd3

    .line 1007
    :pswitch_d1
    iget v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v8, v1}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->removeMessages(I)V

    .line 1008
    iget-boolean v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsQueried:Z

    if-eqz v1, :cond_cd3

    .line 1009
    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    if-eqz v1, :cond_f9

    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] DNS query ongoing. -> Pass the next result"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_f9
    iput-boolean v13, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsInterrupted:Z

    goto/16 :goto_cd3

    .line 740
    :pswitch_fd
    iget-boolean v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsPollingStarted:Z

    if-nez v0, :cond_103

    goto/16 :goto_cd3

    .line 772
    :cond_103
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxPackets()J

    move-result-wide v5

    .line 773
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxPackets()J

    move-result-wide v3

    move-object/from16 v21, v1

    .line 774
    iget-wide v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTotalRxPkt:J

    move-object/from16 v22, v12

    sub-long v11, v3, v0

    .line 775
    iget-wide v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTotalTxPkt:J

    move-wide/from16 v24, v3

    sub-long v2, v5, v0

    .line 778
    iget-object v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_133

    .line 779
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    if-lt v0, v15, :cond_127

    move v1, v0

    const/4 v4, 0x5

    const/4 v7, 0x5

    goto :goto_136

    :cond_127
    if-ge v0, v15, :cond_12f

    if-le v0, v7, :cond_12f

    move v1, v0

    const/4 v4, 0x2

    const/4 v7, 0x3

    goto :goto_136

    :cond_12f
    move v1, v0

    const/4 v4, 0x2

    const/4 v7, 0x2

    goto :goto_136

    :cond_133
    move v1, v14

    move v4, v1

    move v7, v4

    .line 793
    :goto_136
    :try_start_136
    new-instance v15, Ljava/io/FileReader;

    const-string v0, "/proc/net/snmp"

    invoke-direct {v15, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_13d} :catch_576
    .catchall {:try_start_136 .. :try_end_13d} :catchall_566

    .line 794
    :try_start_13d
    new-instance v14, Ljava/io/FileReader;

    const-string v0, "/proc/net/sockstat"

    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_144} :catch_550
    .catchall {:try_start_13d .. :try_end_144} :catchall_546

    .line 795
    :try_start_144
    new-instance v13, Ljava/io/FileReader;

    const-string v0, "/proc/net/sockstat6"

    invoke-direct {v13, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_14b} :catch_533
    .catchall {:try_start_144 .. :try_end_14b} :catchall_52a

    move-wide/from16 v28, v5

    .line 797
    :try_start_14d
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_152} :catch_515
    .catchall {:try_start_14d .. :try_end_152} :catchall_50a

    .line 798
    :try_start_152
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_157} :catch_4e6
    .catchall {:try_start_152 .. :try_end_157} :catchall_4d9

    move-wide/from16 v30, v11

    .line 799
    :try_start_159
    new-instance v11, Ljava/io/BufferedReader;

    invoke-direct {v11, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_15e} :catch_4b5
    .catchall {:try_start_159 .. :try_end_15e} :catchall_4a6

    move-wide/from16 v32, v2

    const/4 v0, 0x6

    const/4 v12, 0x0

    .line 802
    :goto_162
    :try_start_162
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_166} :catch_480
    .catchall {:try_start_162 .. :try_end_166} :catchall_472

    const-string v3, " +"

    if-eqz v2, :cond_262

    const/16 v19, 0x1

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v0, :cond_25e

    .line 805
    :try_start_170
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move/from16 v20, v12

    const/16 v19, 0x0

    .line 806
    aget-object v12, v2, v19
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_17a} :catch_247
    .catchall {:try_start_170 .. :try_end_17a} :catchall_23b

    move/from16 v23, v1

    :try_start_17c
    const-string v1, "Icmp"

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b5

    .line 807
    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    if-eqz v1, :cond_1aa

    .line 808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkBackhaulConnection: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_1a4} :catch_239
    .catchall {:try_start_17c .. :try_end_1a4} :catchall_23b

    move-object/from16 v12, v22

    :try_start_1a6
    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ac

    :cond_1aa
    move-object/from16 v12, v22

    :goto_1ac
    add-int/lit8 v0, v0, 0x2

    move-object/from16 v22, v12

    move/from16 v12, v20

    move/from16 v1, v23

    goto :goto_162

    :cond_1b5
    move-object/from16 v12, v22

    const/16 v0, 0x9

    .line 811
    aget-object v0, v2, v0

    .line 812
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1bf
    .catch Ljava/lang/Exception; {:try_start_1a6 .. :try_end_1bf} :catch_237
    .catchall {:try_start_1a6 .. :try_end_1bf} :catchall_235

    const/16 v0, 0xe

    .line 813
    :try_start_1c1
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_1c1 .. :try_end_1c7} :catch_216
    .catchall {:try_start_1c1 .. :try_end_1c7} :catchall_235

    const/16 v0, 0xd

    .line 814
    :try_start_1c9
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20
    :try_end_1cf
    .catch Ljava/lang/Exception; {:try_start_1c9 .. :try_end_1cf} :catch_205
    .catchall {:try_start_1c9 .. :try_end_1cf} :catchall_235

    const/16 v0, 0xa

    .line 815
    :try_start_1d1
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22
    :try_end_1d7
    .catch Ljava/lang/Exception; {:try_start_1d1 .. :try_end_1d7} :catch_1f4
    .catchall {:try_start_1d1 .. :try_end_1d7} :catchall_235

    const/16 v0, 0xb

    .line 816
    :try_start_1d9
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1df
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_1df} :catch_1e3
    .catchall {:try_start_1d9 .. :try_end_1df} :catchall_235

    move v2, v1

    move v1, v0

    goto/16 :goto_26e

    :catch_1e3
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v18, v11

    move-object v11, v13

    move-object v9, v14

    move-object/from16 v10, v21

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    goto :goto_22c

    :catch_1f4
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v18, v11

    move-object v11, v13

    move-object v9, v14

    move-object/from16 v10, v21

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    goto :goto_22a

    :catch_205
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v18, v11

    move-object v11, v13

    move-object v9, v14

    move-object/from16 v10, v21

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    goto :goto_228

    :catch_216
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v18, v11

    move-object v11, v13

    move-object v9, v14

    move-object/from16 v10, v21

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/16 v19, 0x0

    :goto_228
    const/16 v20, 0x0

    :goto_22a
    const/16 v22, 0x0

    :goto_22c
    const/16 v26, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    move v14, v1

    goto/16 :goto_59e

    :catchall_235
    move-exception v0

    goto :goto_23e

    :catch_237
    move-exception v0

    goto :goto_24c

    :catch_239
    move-exception v0

    goto :goto_24a

    :catchall_23b
    move-exception v0

    move-object/from16 v12, v22

    :goto_23e
    move-object v1, v0

    move-object/from16 v34, v5

    move-object/from16 v35, v6

    :goto_243
    move-object/from16 v10, v21

    goto/16 :goto_70d

    :catch_247
    move-exception v0

    move/from16 v23, v1

    :goto_24a
    move-object/from16 v12, v22

    :goto_24c
    move-object/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v18, v11

    move-object v11, v13

    move-object v9, v14

    move-object/from16 v10, v21

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_4cf

    :cond_25e
    move/from16 v20, v12

    goto/16 :goto_162

    :cond_262
    move/from16 v23, v1

    move-object/from16 v12, v22

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    :goto_26e
    move-object/from16 v34, v5

    const/4 v0, 0x0

    .line 823
    :goto_271
    :try_start_271
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_275
    .catch Ljava/lang/Exception; {:try_start_271 .. :try_end_275} :catch_458
    .catchall {:try_start_271 .. :try_end_275} :catchall_450

    if-eqz v5, :cond_2c8

    const/16 v27, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 825
    :try_start_27b
    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5
    :try_end_27f
    .catch Ljava/lang/Exception; {:try_start_27b .. :try_end_27f} :catch_2b3
    .catchall {:try_start_27b .. :try_end_27f} :catchall_2ae

    move-object/from16 v35, v6

    const/4 v6, 0x2

    if-ne v0, v6, :cond_2aa

    .line 827
    :try_start_284
    aget-object v0, v5, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_28a
    .catch Ljava/lang/Exception; {:try_start_284 .. :try_end_28a} :catch_2a8
    .catchall {:try_start_284 .. :try_end_28a} :catchall_2a6

    const/4 v0, 0x4

    .line 828
    :try_start_28b
    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v36, 0x6

    .line 829
    aget-object v5, v5, v36

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_299
    .catch Ljava/lang/Exception; {:try_start_28b .. :try_end_299} :catch_29a
    .catchall {:try_start_28b .. :try_end_299} :catchall_2a6

    goto :goto_2cd

    :catch_29a
    move-exception v0

    move/from16 v38, v1

    move-object/from16 v18, v11

    move-object v11, v13

    move-object v9, v14

    move-object/from16 v10, v21

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto :goto_2c1

    :catchall_2a6
    move-exception v0

    goto :goto_2b1

    :catch_2a8
    move-exception v0

    goto :goto_2b6

    :cond_2aa
    move v5, v0

    move-object/from16 v6, v35

    goto :goto_271

    :catchall_2ae
    move-exception v0

    move-object/from16 v35, v6

    :goto_2b1
    move-object v1, v0

    goto :goto_243

    :catch_2b3
    move-exception v0

    move-object/from16 v35, v6

    :goto_2b6
    move/from16 v38, v1

    move-object/from16 v18, v11

    move-object v11, v13

    move-object v9, v14

    move-object/from16 v10, v21

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2c1
    const/4 v13, 0x0

    const/16 v26, 0x0

    const/16 v36, 0x0

    goto/16 :goto_46e

    :cond_2c8
    move-object/from16 v35, v6

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2cd
    move-object/from16 p1, v13

    .line 835
    :try_start_2cf
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13
    :try_end_2d3
    .catch Ljava/lang/Exception; {:try_start_2cf .. :try_end_2d3} :catch_446
    .catchall {:try_start_2cf .. :try_end_2d3} :catchall_440

    if-eqz v13, :cond_2f0

    .line 837
    :try_start_2d5
    invoke-virtual {v13, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x2

    .line 839
    aget-object v3, v3, v13

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_2e0
    .catch Ljava/lang/Exception; {:try_start_2d5 .. :try_end_2e0} :catch_2e6
    .catchall {:try_start_2d5 .. :try_end_2e0} :catchall_2e2

    add-int/2addr v6, v3

    goto :goto_2f0

    :catchall_2e2
    move-exception v0

    move-object/from16 v13, p1

    goto :goto_2b1

    :catch_2e6
    move-exception v0

    move/from16 v38, v1

    move-object/from16 v18, v11

    move-object v9, v14

    move-object/from16 v10, v21

    goto/16 :goto_44e

    :cond_2f0
    :goto_2f0
    sub-int/2addr v6, v0

    .line 845
    :try_start_2f1
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevInSegCount:I
    :try_end_2f3
    .catch Ljava/lang/Exception; {:try_start_2f1 .. :try_end_2f3} :catch_446
    .catchall {:try_start_2f1 .. :try_end_2f3} :catchall_440

    sub-int v3, v22, v0

    .line 846
    :try_start_2f5
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevOutSegCount:I
    :try_end_2f7
    .catch Ljava/lang/Exception; {:try_start_2f5 .. :try_end_2f7} :catch_437
    .catchall {:try_start_2f5 .. :try_end_2f7} :catchall_440

    sub-int v13, v1, v0

    .line 847
    :try_start_2f9
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevInSegErrorCount:I
    :try_end_2fb
    .catch Ljava/lang/Exception; {:try_start_2f9 .. :try_end_2fb} :catch_424
    .catchall {:try_start_2f9 .. :try_end_2fb} :catchall_440

    sub-int v36, v20, v0

    .line 848
    :try_start_2fd
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevRetranSegCount:I
    :try_end_2ff
    .catch Ljava/lang/Exception; {:try_start_2fd .. :try_end_2ff} :catch_419
    .catchall {:try_start_2fd .. :try_end_2ff} :catchall_440

    sub-int v37, v19, v0

    if-lez v36, :cond_30c

    add-int v0, v3, v13

    move/from16 v38, v1

    const/16 v1, 0xf

    if-lt v0, v1, :cond_312

    goto :goto_30e

    :cond_30c
    move/from16 v38, v1

    .line 852
    :goto_30e
    :try_start_30e
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInErrorSegWaitingCycle:I
    :try_end_310
    .catch Ljava/lang/Exception; {:try_start_30e .. :try_end_310} :catch_410
    .catchall {:try_start_30e .. :try_end_310} :catchall_440

    if-lez v0, :cond_321

    .line 855
    :cond_312
    :try_start_312
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInErrorSegWaitingCycle:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInErrorSegWaitingCycle:I
    :try_end_318
    .catch Ljava/lang/Exception; {:try_start_312 .. :try_end_318} :catch_319
    .catchall {:try_start_312 .. :try_end_318} :catchall_2e2

    goto :goto_321

    :catch_319
    move-exception v0

    move-object/from16 v18, v11

    move-object v9, v14

    move-object/from16 v10, v21

    goto/16 :goto_416

    :cond_321
    :goto_321
    if-lez v37, :cond_325

    if-eqz v3, :cond_329

    .line 860
    :cond_325
    :try_start_325
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRetransSegWaitingCycle:I
    :try_end_327
    .catch Ljava/lang/Exception; {:try_start_325 .. :try_end_327} :catch_410
    .catchall {:try_start_325 .. :try_end_327} :catchall_440

    if-lez v0, :cond_32f

    .line 862
    :cond_329
    :try_start_329
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRetransSegWaitingCycle:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRetransSegWaitingCycle:I
    :try_end_32f
    .catch Ljava/lang/Exception; {:try_start_329 .. :try_end_32f} :catch_319
    .catchall {:try_start_329 .. :try_end_32f} :catchall_2e2

    .line 867
    :cond_32f
    :try_start_32f
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTcpEstablishedCount:I
    :try_end_331
    .catch Ljava/lang/Exception; {:try_start_32f .. :try_end_331} :catch_410
    .catchall {:try_start_32f .. :try_end_331} :catchall_440

    if-le v2, v0, :cond_33d

    const/4 v1, 0x0

    .line 868
    :try_start_334
    iput v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityCounter:I

    .line 869
    iput v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityWaitingCycle:I

    .line 870
    iput v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInErrorSegWaitingCycle:I

    .line 871
    iput v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRetransSegWaitingCycle:I
    :try_end_33c
    .catch Ljava/lang/Exception; {:try_start_334 .. :try_end_33c} :catch_319
    .catchall {:try_start_334 .. :try_end_33c} :catchall_2e2

    goto :goto_355

    .line 872
    :cond_33d
    :try_start_33d
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTimeWaitCount:I
    :try_end_33f
    .catch Ljava/lang/Exception; {:try_start_33d .. :try_end_33f} :catch_410
    .catchall {:try_start_33d .. :try_end_33f} :catchall_440

    if-le v5, v0, :cond_34a

    const/4 v0, 0x2

    if-le v7, v0, :cond_34a

    const/4 v1, 0x0

    .line 874
    :try_start_345
    iput v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityCounter:I

    .line 875
    iput v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityWaitingCycle:I
    :try_end_349
    .catch Ljava/lang/Exception; {:try_start_345 .. :try_end_349} :catch_319
    .catchall {:try_start_345 .. :try_end_349} :catchall_2e2

    goto :goto_355

    .line 876
    :cond_34a
    :try_start_34a
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTcpInUseCount:I
    :try_end_34c
    .catch Ljava/lang/Exception; {:try_start_34a .. :try_end_34c} :catch_410
    .catchall {:try_start_34a .. :try_end_34c} :catchall_440

    if-le v6, v0, :cond_355

    .line 877
    :try_start_34e
    iget v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityCounter:I

    sub-int v0, v6, v0

    add-int/2addr v1, v0

    iput v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityCounter:I
    :try_end_355
    .catch Ljava/lang/Exception; {:try_start_34e .. :try_end_355} :catch_319
    .catchall {:try_start_34e .. :try_end_355} :catchall_2e2

    .line 881
    :cond_355
    :goto_355
    :try_start_355
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityCounter:I
    :try_end_357
    .catch Ljava/lang/Exception; {:try_start_355 .. :try_end_357} :catch_410
    .catchall {:try_start_355 .. :try_end_357} :catchall_440

    if-lez v0, :cond_361

    .line 882
    :try_start_359
    iget v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityWaitingCycle:I

    const/16 v27, 0x1

    add-int/lit8 v1, v1, 0x1

    iput v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityWaitingCycle:I
    :try_end_361
    .catch Ljava/lang/Exception; {:try_start_359 .. :try_end_361} :catch_319
    .catchall {:try_start_359 .. :try_end_361} :catchall_2e2

    :cond_361
    const/4 v1, 0x0

    .line 885
    :try_start_362
    iput v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I
    :try_end_364
    .catch Ljava/lang/Exception; {:try_start_362 .. :try_end_364} :catch_410
    .catchall {:try_start_362 .. :try_end_364} :catchall_440

    if-le v0, v4, :cond_375

    .line 887
    :try_start_366
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityWaitingCycle:I

    if-le v0, v7, :cond_375

    const-string v0, "Backhaul Disconnection due to TCP Sockets"

    .line 889
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I
    :try_end_375
    .catch Ljava/lang/Exception; {:try_start_366 .. :try_end_375} :catch_319
    .catchall {:try_start_366 .. :try_end_375} :catchall_2e2

    .line 892
    :cond_375
    :try_start_375
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRetransSegWaitingCycle:I
    :try_end_377
    .catch Ljava/lang/Exception; {:try_start_375 .. :try_end_377} :catch_410
    .catchall {:try_start_375 .. :try_end_377} :catchall_440

    if-le v0, v7, :cond_384

    :try_start_379
    const-string v0, "Backhaul Disconnection due to RetransSeg"

    .line 893
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I

    const/4 v1, 0x2

    add-int/2addr v0, v1

    iput v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I
    :try_end_384
    .catch Ljava/lang/Exception; {:try_start_379 .. :try_end_384} :catch_319
    .catchall {:try_start_379 .. :try_end_384} :catchall_2e2

    .line 896
    :cond_384
    :try_start_384
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInErrorSegWaitingCycle:I
    :try_end_386
    .catch Ljava/lang/Exception; {:try_start_384 .. :try_end_386} :catch_410
    .catchall {:try_start_384 .. :try_end_386} :catchall_440

    if-le v0, v7, :cond_393

    :try_start_388
    const-string v0, "Backhaul Disconnection due to InErrorSeg"

    .line 897
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I

    add-int/lit8 v0, v0, 0x4

    iput v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I
    :try_end_393
    .catch Ljava/lang/Exception; {:try_start_388 .. :try_end_393} :catch_319
    .catchall {:try_start_388 .. :try_end_393} :catchall_2e2

    .line 901
    :cond_393
    :try_start_393
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityWaitingCycle:I
    :try_end_395
    .catch Ljava/lang/Exception; {:try_start_393 .. :try_end_395} :catch_410
    .catchall {:try_start_393 .. :try_end_395} :catchall_440

    const/16 v1, 0x3c

    if-le v0, v1, :cond_3a5

    :try_start_399
    const-string v0, "Backhaul Disconnection due to no response from network"

    .line 902
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    iput v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I
    :try_end_3a5
    .catch Ljava/lang/Exception; {:try_start_399 .. :try_end_3a5} :catch_319
    .catchall {:try_start_399 .. :try_end_3a5} :catchall_2e2

    .line 906
    :cond_3a5
    :try_start_3a5
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I
    :try_end_3a7
    .catch Ljava/lang/Exception; {:try_start_3a5 .. :try_end_3a7} :catch_410
    .catchall {:try_start_3a5 .. :try_end_3a7} :catchall_440

    if-lez v0, :cond_3ac

    :goto_3a9
    const/16 v27, 0x1

    goto :goto_3d2

    :cond_3ac
    const-wide/32 v39, 0xea60

    cmp-long v0, v9, v39

    if-lez v0, :cond_3d0

    .line 909
    :try_start_3b3
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    if-eqz v0, :cond_3bc

    const-string v0, "Do 1 min DNS check"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3bc
    .catch Ljava/lang/Exception; {:try_start_3b3 .. :try_end_3bc} :catch_319
    .catchall {:try_start_3b3 .. :try_end_3bc} :catchall_2e2

    :cond_3bc
    const/16 v0, 0x10

    .line 911
    :try_start_3be
    iput v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mBackhaulDetectionReason:I
    :try_end_3c0
    .catch Ljava/lang/Exception; {:try_start_3be .. :try_end_3c0} :catch_3c1
    .catchall {:try_start_3be .. :try_end_3c0} :catchall_2e2

    goto :goto_3a9

    :catch_3c1
    move-exception v0

    move-object/from16 v18, v11

    move-object v9, v14

    move-object/from16 v10, v21

    move/from16 v26, v37

    move-object/from16 v11, p1

    move v14, v2

    move v2, v13

    const/4 v13, 0x1

    goto/16 :goto_59e

    :cond_3d0
    const/16 v27, 0x0

    .line 918
    :goto_3d2
    :try_start_3d2
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V

    .line 919
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V

    .line 920
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileReader;->close()V

    .line 921
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V

    .line 922
    invoke-virtual/range {v34 .. v34}, Ljava/io/BufferedReader;->close()V

    .line 923
    invoke-virtual/range {v35 .. v35}, Ljava/io/BufferedReader;->close()V

    .line 924
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_3e7
    .catch Ljava/io/IOException; {:try_start_3d2 .. :try_end_3e7} :catch_3e8

    goto :goto_400

    :catch_3e8
    move-exception v0

    .line 926
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v21

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_400
    move/from16 v0, v19

    move/from16 v9, v20

    move/from16 v10, v22

    move/from16 v11, v27

    move/from16 v14, v36

    move/from16 v15, v37

    move/from16 v18, v38

    goto/16 :goto_5fe

    :catch_410
    move-exception v0

    move-object/from16 v10, v21

    move-object/from16 v18, v11

    move-object v9, v14

    :goto_416
    move/from16 v26, v37

    goto :goto_430

    :catch_419
    move-exception v0

    move/from16 v38, v1

    move-object/from16 v10, v21

    move-object/from16 v18, v11

    move-object v9, v14

    const/16 v26, 0x0

    goto :goto_430

    :catch_424
    move-exception v0

    move/from16 v38, v1

    move-object/from16 v10, v21

    move-object/from16 v18, v11

    move-object v9, v14

    const/16 v26, 0x0

    const/16 v36, 0x0

    :goto_430
    move-object/from16 v11, p1

    move v14, v2

    move v2, v13

    const/4 v13, 0x0

    goto/16 :goto_59e

    :catch_437
    move-exception v0

    move/from16 v38, v1

    move-object/from16 v10, v21

    move-object/from16 v18, v11

    move-object v9, v14

    goto :goto_467

    :catchall_440
    move-exception v0

    move-object/from16 v10, v21

    move-object/from16 v13, p1

    goto :goto_47d

    :catch_446
    move-exception v0

    move/from16 v38, v1

    move-object/from16 v10, v21

    move-object/from16 v18, v11

    move-object v9, v14

    :goto_44e
    const/4 v3, 0x0

    goto :goto_467

    :catchall_450
    move-exception v0

    move-object/from16 v35, v6

    move-object/from16 p1, v13

    move-object/from16 v10, v21

    goto :goto_47d

    :catch_458
    move-exception v0

    move/from16 v38, v1

    move-object/from16 v35, v6

    move-object/from16 p1, v13

    move-object/from16 v10, v21

    move-object/from16 v18, v11

    move-object v9, v14

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_467
    const/4 v13, 0x0

    const/16 v26, 0x0

    const/16 v36, 0x0

    move-object/from16 v11, p1

    :goto_46e
    move v14, v2

    const/4 v2, 0x0

    goto/16 :goto_59e

    :catchall_472
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 p1, v13

    move-object/from16 v10, v21

    move-object/from16 v12, v22

    :goto_47d
    move-object v1, v0

    goto/16 :goto_70d

    :catch_480
    move-exception v0

    move/from16 v23, v1

    move-object/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 p1, v13

    move-object/from16 v10, v21

    move-object/from16 v12, v22

    move-object/from16 v18, v11

    move-object v9, v14

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v26, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    move-object/from16 v11, p1

    goto/16 :goto_59e

    :catchall_4a6
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 p1, v13

    move-object/from16 v10, v21

    move-object/from16 v12, v22

    move-object v1, v0

    const/4 v11, 0x0

    goto/16 :goto_70d

    :catch_4b5
    move-exception v0

    move/from16 v23, v1

    move-wide/from16 v32, v2

    move-object/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 p1, v13

    move-object/from16 v10, v21

    move-object/from16 v12, v22

    move-object/from16 v11, p1

    move-object v9, v14

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    :goto_4cf
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v26, 0x0

    goto/16 :goto_59a

    :catchall_4d9
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 p1, v13

    move-object/from16 v10, v21

    move-object/from16 v12, v22

    move-object v1, v0

    const/4 v11, 0x0

    goto/16 :goto_572

    :catch_4e6
    move-exception v0

    move/from16 v23, v1

    move-wide/from16 v32, v2

    move-object/from16 v34, v5

    move-wide/from16 v30, v11

    move-object/from16 p1, v13

    move-object/from16 v10, v21

    move-object/from16 v12, v22

    move-object/from16 v11, p1

    move-object v9, v14

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v26, 0x0

    goto/16 :goto_598

    :catchall_50a
    move-exception v0

    move-object/from16 p1, v13

    move-object/from16 v10, v21

    move-object/from16 v12, v22

    move-object v1, v0

    const/4 v11, 0x0

    goto/16 :goto_570

    :catch_515
    move-exception v0

    move/from16 v23, v1

    move-wide/from16 v32, v2

    move-wide/from16 v30, v11

    move-object/from16 p1, v13

    move-object/from16 v10, v21

    move-object/from16 v12, v22

    move-object/from16 v11, p1

    move-object v9, v14

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_563

    :catchall_52a
    move-exception v0

    move-object/from16 v10, v21

    move-object/from16 v12, v22

    move-object v1, v0

    const/4 v11, 0x0

    const/4 v13, 0x0

    goto :goto_570

    :catch_533
    move-exception v0

    move/from16 v23, v1

    move-wide/from16 v32, v2

    move-wide/from16 v28, v5

    move-wide/from16 v30, v11

    move-object/from16 v10, v21

    move-object/from16 v12, v22

    move-object v9, v14

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_562

    :catchall_546
    move-exception v0

    move-object/from16 v10, v21

    move-object/from16 v12, v22

    move-object v1, v0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_570

    :catch_550
    move-exception v0

    move/from16 v23, v1

    move-wide/from16 v32, v2

    move-wide/from16 v28, v5

    move-wide/from16 v30, v11

    move-object/from16 v10, v21

    move-object/from16 v12, v22

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_562
    const/4 v11, 0x0

    :goto_563
    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_58c

    :catchall_566
    move-exception v0

    move-object/from16 v10, v21

    move-object/from16 v12, v22

    move-object v1, v0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_570
    const/16 v34, 0x0

    :goto_572
    const/16 v35, 0x0

    goto/16 :goto_70d

    :catch_576
    move-exception v0

    move/from16 v23, v1

    move-wide/from16 v32, v2

    move-wide/from16 v28, v5

    move-wide/from16 v30, v11

    move-object/from16 v10, v21

    move-object/from16 v12, v22

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_58c
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v26, 0x0

    const/16 v34, 0x0

    :goto_598
    const/16 v35, 0x0

    :goto_59a
    const/16 v36, 0x0

    const/16 v38, 0x0

    .line 914
    :goto_59e
    :try_start_59e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5b3
    .catchall {:try_start_59e .. :try_end_5b3} :catchall_707

    if-eqz v15, :cond_5bb

    .line 918
    :try_start_5b5
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V

    goto :goto_5bb

    :catch_5b9
    move-exception v0

    goto :goto_5da

    :cond_5bb
    :goto_5bb
    if-eqz v9, :cond_5c0

    .line 919
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    :cond_5c0
    if-eqz v11, :cond_5c5

    .line 920
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V

    :cond_5c5
    if-eqz v9, :cond_5ca

    .line 921
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    :cond_5ca
    if-eqz v34, :cond_5cf

    .line 922
    invoke-virtual/range {v34 .. v34}, Ljava/io/BufferedReader;->close()V

    :cond_5cf
    if-eqz v35, :cond_5d4

    .line 923
    invoke-virtual/range {v35 .. v35}, Ljava/io/BufferedReader;->close()V

    :cond_5d4
    if-eqz v18, :cond_5ef

    .line 924
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_5d9
    .catch Ljava/io/IOException; {:try_start_5b5 .. :try_end_5d9} :catch_5b9

    goto :goto_5ef

    .line 926
    :goto_5da
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5ef
    :goto_5ef
    move v11, v13

    move/from16 v0, v19

    move/from16 v9, v20

    move/from16 v10, v22

    move/from16 v15, v26

    move/from16 v18, v38

    move v13, v2

    move v2, v14

    move/from16 v14, v36

    .line 931
    :goto_5fe
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v10

    const-string v10, "RSSI:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v23

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", CE:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", PE:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTcpEstablishedCount:I

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", TI:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", PTI:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTcpInUseCount:I

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", TW:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", PTW:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTimeWaitCount:I

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", Tx:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v20, v9

    move-wide/from16 v9, v32

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", Rx:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v30

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", TxS:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", RxS:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", RESULT:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", IC:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityCounter:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ICT:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", WC:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInternetConnectivityWaitingCycle:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", WCT:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", R:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", RC:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRetransSegWaitingCycle:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", IE:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", EC:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mInErrorSegWaitingCycle:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v11, :cond_6c5

    .line 940
    sget-boolean v3, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    if-eqz v3, :cond_6d9

    :cond_6c5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backhaul result - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_6d9
    iput v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTcpEstablishedCount:I

    .line 943
    iput v5, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTimeWaitCount:I

    .line 944
    iput v6, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTcpInUseCount:I

    .line 945
    iput v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevRetranSegCount:I

    move/from16 v0, v20

    .line 946
    iput v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevInSegErrorCount:I

    move-wide/from16 v1, v24

    .line 947
    iput-wide v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTotalRxPkt:J

    move-wide/from16 v1, v28

    .line 948
    iput-wide v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevTotalTxPkt:J

    move/from16 v0, v19

    .line 949
    iput v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevInSegCount:I

    move/from16 v0, v18

    .line 950
    iput v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPrevOutSegCount:I

    const/16 v1, 0x8

    if-eqz v11, :cond_6fc

    const/16 v7, 0x2710

    goto :goto_6fe

    :cond_6fc
    const/16 v7, 0x3e8

    .line 953
    :goto_6fe
    invoke-virtual {v8, v1}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->removeMessages(I)V

    int-to-long v2, v7

    .line 954
    invoke-virtual {v8, v1, v2, v3}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_cd3

    :catchall_707
    move-exception v0

    move-object v1, v0

    move-object v14, v9

    move-object v13, v11

    move-object/from16 v11, v18

    :goto_70d
    if-eqz v15, :cond_715

    .line 918
    :try_start_70f
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V

    goto :goto_715

    :catch_713
    move-exception v0

    goto :goto_734

    :cond_715
    :goto_715
    if-eqz v14, :cond_71a

    .line 919
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V

    :cond_71a
    if-eqz v13, :cond_71f

    .line 920
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V

    :cond_71f
    if-eqz v14, :cond_724

    .line 921
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V

    :cond_724
    if-eqz v34, :cond_729

    .line 922
    invoke-virtual/range {v34 .. v34}, Ljava/io/BufferedReader;->close()V

    :cond_729
    if-eqz v35, :cond_72e

    .line 923
    invoke-virtual/range {v35 .. v35}, Ljava/io/BufferedReader;->close()V

    :cond_72e
    if-eqz v11, :cond_749

    .line 924
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_733
    .catch Ljava/io/IOException; {:try_start_70f .. :try_end_733} :catch_713

    goto :goto_749

    .line 926
    :goto_734
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 929
    :cond_749
    :goto_749
    throw v1

    .line 1015
    :cond_74a
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->checkPublicDns()V

    goto/16 :goto_cd3

    .line 381
    :cond_74f
    iget-boolean v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsPollingStarted:Z

    if-nez v1, :cond_755

    goto/16 :goto_cd3

    .line 383
    :cond_755
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->syncGetCurrentWifiInfo()V

    .line 385
    iget-object v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    if-eqz v1, :cond_c58

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->getBssid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "00:00:00:00:00:00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76a

    goto/16 :goto_c58

    .line 390
    :cond_76a
    iget-object v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_77d

    const-string v0, "wifiInfo is null."

    .line 391
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 392
    invoke-virtual {v8, v0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->removeMessages(I)V

    const/4 v0, 0x2

    .line 393
    invoke-virtual {v8, v0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    goto/16 :goto_cd3

    .line 397
    :cond_77d
    iget-object v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatsAnalyzerCallBack:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;

    invoke-interface {v1}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;->notifyActivityCheckPoll()V

    .line 399
    iget-object v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    const/16 v2, -0x5a

    const/16 v3, -0x5f

    if-ge v1, v2, :cond_7c4

    .line 401
    iget-object v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 402
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v4, :cond_7ba

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already disconnected : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 404
    invoke-virtual {v8, v0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->removeMessages(I)V

    const/4 v0, 0x2

    .line 405
    invoke-virtual {v8, v0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    goto/16 :goto_cd3

    :cond_7ba
    if-ge v1, v3, :cond_7c4

    const/16 v2, -0x7f

    if-ne v1, v2, :cond_7c2

    goto/16 :goto_cd3

    :cond_7c2
    move v11, v3

    goto :goto_7c5

    :cond_7c4
    move v11, v1

    .line 414
    :goto_7c5
    iget v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastRssi:I

    add-int/2addr v1, v11

    const/4 v2, 0x2

    div-int/lit8 v13, v1, 0x2

    .line 415
    iput v11, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastRssi:I

    .line 419
    iget-object v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    const/4 v0, 0x6

    if-gt v1, v0, :cond_7d8

    const/4 v1, 0x1

    goto :goto_7d9

    :cond_7d8
    const/4 v1, 0x0

    .line 423
    :goto_7d9
    iget v3, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastRssi:I

    const/16 v14, -0x4b

    if-ge v3, v14, :cond_7e3

    iget v4, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentMode:I

    if-eq v4, v2, :cond_7ea

    :cond_7e3
    if-ge v3, v7, :cond_7eb

    iget v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7eb

    :cond_7ea
    const/4 v1, 0x1

    .line 428
    :cond_7eb
    iget-object v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mSemTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    const-wide/16 v5, 0x3e8

    if-nez v2, :cond_7ff

    const-string v0, "mSemTrafficStats is null."

    .line 429
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 430
    invoke-virtual {v8, v0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->removeMessages(I)V

    .line 431
    invoke-virtual {v8, v0, v5, v6}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_cd3

    .line 435
    :cond_7ff
    iget-wide v3, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mTxPackets:J

    iget-wide v5, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxPackets:J

    move/from16 p1, v1

    .line 436
    iget-wide v0, v2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    iput-wide v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mTxPackets:J

    .line 437
    iget-wide v14, v2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    iput-wide v14, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxPackets:J

    sub-long/2addr v0, v3

    sub-long/2addr v14, v5

    .line 441
    iget-wide v3, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mTxBytes:J

    iget-wide v5, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxBytes:J

    move-wide/from16 v24, v9

    .line 442
    iget-wide v9, v2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    iput-wide v9, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mTxBytes:J

    move/from16 v29, v11

    move-object/from16 v28, v12

    .line 443
    iget-wide v11, v2, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    iput-wide v11, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxBytes:J

    sub-long/2addr v9, v3

    sub-long/2addr v11, v5

    const-wide/16 v5, 0x0

    cmp-long v2, v14, v5

    if-lez v2, :cond_82c

    .line 447
    div-long v3, v11, v14

    goto :goto_82d

    :cond_82c
    move-wide v3, v5

    :goto_82d
    long-to-int v3, v3

    cmp-long v4, v0, v5

    if-lez v4, :cond_836

    .line 448
    div-long v18, v9, v0

    move-wide/from16 v5, v18

    :cond_836
    long-to-int v5, v5

    .line 450
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->addNetworkStatHistory(Ljava/lang/String;)V

    .line 456
    iget-object v6, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_862

    .line 457
    iget-object v6, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 458
    iget-object v6, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->trimToSize()V

    .line 460
    :cond_862
    iget-object v6, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    long-to-int v7, v14

    move/from16 v31, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x596

    if-le v3, v4, :cond_874

    const/4 v4, 0x1

    goto :goto_875

    :cond_874
    const/4 v4, 0x0

    .line 464
    :goto_875
    iget-object v6, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    invoke-virtual {v6, v13, v11, v12, v4}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateMaxThroughput(IJZ)V

    if-nez v4, :cond_883

    const-wide/32 v32, 0x36588

    cmp-long v6, v11, v32

    if-gez v6, :cond_88a

    :cond_883
    const-wide/32 v32, 0x21f750

    cmp-long v6, v11, v32

    if-ltz v6, :cond_88c

    :cond_88a
    const/4 v6, 0x1

    goto :goto_88d

    :cond_88c
    const/4 v6, 0x0

    .line 466
    :goto_88d
    iput-boolean v6, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsAggGoodStateNow:Z

    move/from16 v32, v7

    .line 469
    iget v7, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentMode:I

    move/from16 v33, v2

    const/4 v2, 0x3

    if-ne v7, v2, :cond_89f

    if-eqz v6, :cond_89f

    .line 470
    iget-object v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    invoke-virtual {v2, v13}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateGoodRssi(I)V

    .line 473
    :cond_89f
    iget-boolean v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsScanning:Z

    if-nez v2, :cond_bd5

    iget-boolean v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsInRoamSession:Z

    if-nez v2, :cond_bd5

    iget-boolean v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsInDhcpSession:Z

    if-nez v2, :cond_bd5

    iget-object v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getScreenStatus()Z

    move-result v2

    if-nez v2, :cond_8c2

    move-wide/from16 v34, v9

    move-wide/from16 v9, v24

    const/4 v1, 0x0

    const/16 v16, 0x5

    move/from16 v25, v13

    goto/16 :goto_bde

    .line 477
    :cond_8c2
    iget-boolean v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    if-nez v2, :cond_bcc

    iget v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentMode:I

    if-eqz v2, :cond_bcc

    .line 478
    iget-boolean v6, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsQueried:Z

    if-eqz v6, :cond_926

    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v28

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_90a

    iget-boolean v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsAggGoodStateNow:Z

    if-eqz v0, :cond_90a

    :goto_908
    const/4 v0, 0x1

    goto :goto_91e

    :cond_90a
    const-wide/16 v0, 0x1e

    cmp-long v0, v14, v0

    if-ltz v0, :cond_915

    const/16 v0, 0x1f4

    if-le v3, v0, :cond_915

    goto :goto_908

    :cond_915
    const-wide/32 v0, 0x186a0

    cmp-long v0, v9, v0

    if-ltz v0, :cond_91d

    goto :goto_908

    :cond_91d
    const/4 v0, 0x0

    :goto_91e
    const/4 v6, 0x0

    if-eqz v0, :cond_94f

    .line 490
    iput-boolean v6, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsQueried:Z

    .line 491
    iput-boolean v6, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsInterrupted:Z

    goto :goto_94f

    :cond_926
    move-object/from16 v7, v28

    const/4 v6, 0x3

    if-ne v2, v6, :cond_95a

    .line 494
    iget-boolean v6, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsAggGoodStateNow:Z

    if-eqz v6, :cond_95a

    .line 495
    iget-object v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 496
    iput-boolean v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    if-eqz v4, :cond_93f

    .line 497
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    .line 498
    :cond_93f
    iget-wide v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    sub-long v0, v24, v0

    const-wide/16 v2, 0x1b58

    cmp-long v0, v0, v2

    if-lez v0, :cond_94f

    const-wide/16 v0, 0x1b58

    sub-long v0, v24, v0

    .line 499
    iput-wide v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    :cond_94f
    :goto_94f
    move-wide/from16 v34, v9

    move-wide/from16 v9, v24

    const/4 v0, 0x3

    const/16 v16, 0x5

    move/from16 v25, v13

    goto/16 :goto_be8

    :cond_95a
    if-gtz v33, :cond_963

    if-lez v31, :cond_95f

    goto :goto_963

    :cond_95f
    move v6, v3

    move-wide/from16 v34, v9

    goto :goto_97e

    :cond_963
    :goto_963
    move-wide/from16 v34, v9

    .line 501
    iget-wide v9, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    sub-long v9, v24, v9

    const/4 v6, 0x3

    if-ne v2, v6, :cond_96f

    const/16 v2, 0x7530

    goto :goto_972

    :cond_96f
    const v2, 0xea60

    :goto_972
    move v6, v3

    int-to-long v2, v2

    cmp-long v2, v9, v2

    if-lez v2, :cond_97e

    const/16 v2, 0x29

    .line 502
    iput v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    const/4 v2, 0x1

    goto :goto_97f

    :cond_97e
    :goto_97e
    const/4 v2, 0x0

    :goto_97f
    const-wide/16 v9, 0x2

    cmp-long v3, v14, v9

    if-gtz v3, :cond_999

    const-wide/16 v9, 0xa

    cmp-long v9, v0, v9

    if-ltz v9, :cond_999

    const/16 v9, 0x3e8

    if-ge v5, v9, :cond_999

    const-string v2, "pull out the line???"

    .line 508
    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1f

    .line 509
    iput v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    const/4 v2, 0x1

    :cond_999
    if-lez v3, :cond_9ea

    .line 515
    iget-wide v9, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastNeedCheckByPoorRxTime:J

    sub-long v9, v24, v9

    const-wide/16 v36, 0x7530

    cmp-long v3, v9, v36

    if-lez v3, :cond_9c2

    const-wide/32 v9, 0x19797c

    cmp-long v3, v11, v9

    if-gez v3, :cond_9c2

    const-wide/16 v9, 0x1e

    cmp-long v3, v14, v9

    if-gez v3, :cond_9c2

    if-lez v31, :cond_9c2

    const/16 v3, -0x46

    if-ge v13, v3, :cond_9c2

    .line 520
    iget-object v3, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c7

    .line 522
    :cond_9c2
    iget-object v3, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_9c7
    const/16 v3, 0x38

    if-ge v3, v5, :cond_9e7

    const/16 v3, 0x49

    if-ge v5, v3, :cond_9e7

    const-wide/16 v9, 0x64

    mul-long/2addr v9, v0

    .line 526
    div-long/2addr v9, v14

    long-to-int v3, v9

    const/16 v9, 0x5a

    if-ge v9, v3, :cond_9e7

    const/16 v9, 0x6e

    if-ge v3, v9, :cond_9e7

    add-int/lit8 v3, v5, -0xa

    if-ge v3, v6, :cond_9e7

    if-gt v6, v5, :cond_9e7

    const/16 v2, 0x20

    .line 539
    iput v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    const/4 v2, 0x1

    :cond_9e7
    const/4 v3, 0x0

    const/4 v10, 0x3

    goto :goto_a21

    .line 544
    :cond_9ea
    iget-boolean v3, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    if-eqz v3, :cond_9fb

    if-eqz p1, :cond_9f6

    const/16 v3, 0x22

    .line 553
    iput v3, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    const/4 v3, 0x1

    goto :goto_9f7

    :cond_9f6
    const/4 v3, 0x0

    :goto_9f7
    const/4 v9, 0x0

    .line 556
    iput-boolean v9, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    goto :goto_a15

    :cond_9fb
    if-lez v31, :cond_a0f

    if-nez v33, :cond_a05

    .line 559
    iget-object v3, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_a14

    .line 561
    :cond_a05
    iget-object v3, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a14

    .line 564
    :cond_a0f
    iget-object v3, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_a14
    const/4 v3, 0x0

    .line 567
    :goto_a15
    iget v9, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    const/4 v10, 0x3

    if-lt v9, v10, :cond_a21

    if-eqz p1, :cond_a21

    const/16 v2, 0x23

    .line 569
    iput v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    const/4 v2, 0x1

    .line 575
    :cond_a21
    :goto_a21
    iget-object v9, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v10, :cond_aac

    .line 577
    iget-object v9, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :goto_a30
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a43

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-int v10, v10, v17

    goto :goto_a30

    :cond_a43
    const/16 v9, 0x2d

    if-ge v10, v9, :cond_a98

    move-wide/from16 v9, v24

    .line 580
    iput-wide v9, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastNeedCheckByPoorRxTime:J

    move/from16 v17, v2

    if-eqz p1, :cond_a55

    const/16 v2, 0x24

    .line 583
    iput v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    const/4 v2, 0x1

    goto :goto_a56

    :cond_a55
    const/4 v2, 0x0

    :goto_a56
    move/from16 v24, v2

    move/from16 v25, v13

    const/4 v2, 0x0

    :goto_a5b
    const/4 v13, 0x3

    if-ge v2, v13, :cond_a78

    .line 586
    iget-object v13, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v28, v7

    const/16 v7, 0x1e

    if-lt v13, v7, :cond_a73

    const/16 v24, 0x0

    goto :goto_a7a

    :cond_a73
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v7, v28

    goto :goto_a5b

    :cond_a78
    move-object/from16 v28, v7

    :goto_a7a
    if-eqz v24, :cond_a8b

    .line 593
    iget v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentMode:I

    const/4 v7, 0x3

    if-ne v2, v7, :cond_a89

    const/16 v2, 0x26

    .line 595
    iput v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    move v7, v3

    const/16 v17, 0x1

    goto :goto_ab5

    :cond_a89
    const/4 v7, 0x0

    goto :goto_a96

    .line 599
    :cond_a8b
    iget-object v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 600
    iget-object v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    :goto_a96
    move v7, v3

    goto :goto_ab7

    :cond_a98
    move/from16 v17, v2

    move-object/from16 v28, v7

    move-wide/from16 v9, v24

    const/4 v7, 0x0

    move/from16 v25, v13

    .line 603
    iget-object v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 604
    iget-object v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    goto :goto_ab4

    :cond_aac
    move/from16 v17, v2

    move-object/from16 v28, v7

    move-wide/from16 v9, v24

    move/from16 v25, v13

    :goto_ab4
    move v7, v3

    :goto_ab5
    const/16 v24, 0x0

    .line 608
    :goto_ab7
    iget-wide v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    sub-long v30, v9, v2

    const-wide/16 v32, 0x5dc

    cmp-long v13, v30, v32

    if-lez v13, :cond_adf

    const-wide/16 v30, 0x2

    cmp-long v0, v0, v30

    if-ltz v0, :cond_adf

    const/16 v0, 0x3b

    if-gt v0, v5, :cond_adf

    const/16 v0, 0x3e

    if-gt v5, v0, :cond_adf

    cmp-long v0, v11, v34

    if-lez v0, :cond_add

    const/16 v0, 0x1f4

    if-ge v6, v0, :cond_adf

    const-wide/16 v0, 0x1cfc

    cmp-long v0, v11, v0

    if-gez v0, :cond_adf

    :cond_add
    const/4 v0, 0x1

    goto :goto_ae0

    :cond_adf
    const/4 v0, 0x0

    :goto_ae0
    iput-boolean v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    .line 612
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    const-wide/16 v5, 0xf

    cmp-long v1, v14, v5

    if-lez v1, :cond_aef

    if-eqz v4, :cond_aef

    add-int/lit8 v1, v0, 0x1

    goto :goto_af0

    :cond_aef
    const/4 v1, 0x0

    .line 615
    :goto_af0
    iput v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    const/4 v5, 0x5

    if-lt v0, v5, :cond_aff

    if-nez v1, :cond_aff

    if-eqz p1, :cond_aff

    const/16 v0, 0x27

    .line 619
    iput v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    const/16 v17, 0x1

    :cond_aff
    if-nez v24, :cond_b03

    if-eqz v7, :cond_b1d

    :cond_b03
    sub-long v0, v9, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-ltz v0, :cond_b1d

    .line 626
    iget-object v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 628
    iput-wide v9, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    .line 629
    iget-object v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatsAnalyzerCallBack:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;

    iget v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcStep:I

    iget v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;->needInternetCheck(II)V

    const/16 v17, 0x0

    :cond_b1d
    if-eqz v17, :cond_bc9

    .line 634
    iget-object v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsVPNOnlyNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b48

    .line 635
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    if-eqz v0, :cond_b47

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The function of the  VPN only Network enabled . SKIP DNS Query. mIsVPNOnlyNetwork: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsVPNOnlyNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v28

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b47
    return-void

    :cond_b48
    move-object/from16 v7, v28

    .line 639
    iget-wide v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    sub-long v0, v9, v0

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-ltz v0, :cond_bc9

    .line 640
    iget-object v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x1

    .line 641
    iput-boolean v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsQueried:Z

    .line 642
    iput v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcStep:I

    .line 644
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b66

    const/16 v0, 0x1388

    goto :goto_b68

    :cond_b66
    const/16 v0, 0x2710

    .line 647
    :goto_b68
    iget-boolean v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsChinaNetwork:Z

    if-nez v1, :cond_b6f

    sget-object v1, Lcom/samsung/android/server/wifi/wcm/Constant;->DEFAULT_URL_STRING:Ljava/lang/String;

    goto :goto_b77

    :cond_b6f
    const-string v1, "connectivity.samsung.com"

    const-string v2, "cn"

    .line 648
    invoke-direct {v8, v1, v2}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->generateDnsTargetForCountry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_b77
    move-object v3, v1

    .line 650
    new-instance v13, Lcom/samsung/android/server/wifi/wcm/DnsThread;

    const/4 v2, 0x1

    int-to-long v14, v0

    iget-object v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mContext:Landroid/content/Context;

    move-object v1, v13

    move-object/from16 v4, p0

    move/from16 v16, v5

    move-wide v5, v14

    move-object v14, v7

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/wifi/wcm/DnsThread;-><init>(ZLjava/lang/String;Landroid/os/Handler;JLandroid/content/Context;)V

    iput-object v13, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThread:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 651
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$2;

    invoke-direct {v0, v8}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$2;-><init>(Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;)V

    invoke-virtual {v13, v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->setDnsThreadCallBack(Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;)V

    .line 662
    iget-object v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThread:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    iget-object v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->updateLinkProperties(Landroid/net/LinkProperties;)V

    .line 663
    iget-object v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThread:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 664
    iput-wide v9, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    .line 665
    iget-object v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThread:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThreadID:J

    .line 666
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    if-eqz v0, :cond_be7

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wait needCheck DnsThread results ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThreadID:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be7

    :cond_bc9
    move/from16 v16, v5

    goto :goto_be7

    :cond_bcc
    move-wide/from16 v34, v9

    move-wide/from16 v9, v24

    const/16 v16, 0x5

    move/from16 v25, v13

    goto :goto_be7

    :cond_bd5
    move-wide/from16 v34, v9

    move-wide/from16 v9, v24

    const/16 v16, 0x5

    move/from16 v25, v13

    const/4 v1, 0x0

    .line 474
    :goto_bde
    iput-boolean v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    .line 475
    iget-object v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 476
    iput v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    :cond_be7
    :goto_be7
    const/4 v0, 0x3

    .line 675
    :goto_be8
    invoke-virtual {v8, v0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->removeMessages(I)V

    const-wide/16 v1, 0x3e8

    .line 676
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->sendEmptyMessageDelayed(IJ)Z

    .line 678
    iget v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentMode:I

    if-ne v1, v0, :cond_c3f

    const/16 v0, -0x63

    move/from16 v1, v25

    if-ge v1, v0, :cond_bfb

    goto :goto_bfc

    :cond_bfb
    move v0, v1

    :goto_bfc
    if-lez v0, :cond_bff

    const/4 v0, 0x0

    .line 681
    :cond_bff
    iget-object v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    iget v2, v1, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorRssi:I

    if-gt v0, v2, :cond_c3c

    const-wide/32 v2, 0xd962

    cmp-long v4, v11, v2

    if-gez v4, :cond_c30

    cmp-long v4, v34, v2

    if-gez v4, :cond_c30

    .line 682
    iget-object v1, v1, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mMaxThroughput:[J

    neg-int v4, v0

    aget-wide v4, v1, v4

    cmp-long v1, v4, v2

    if-gez v1, :cond_c30

    iget-object v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 685
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v1

    if-eqz v1, :cond_c25

    const/16 v1, -0x4b

    if-le v0, v1, :cond_c29

    :cond_c25
    const/16 v1, -0x50

    if-gt v0, v1, :cond_c30

    .line 686
    :cond_c29
    iget v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mStayingPoorRssi:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mStayingPoorRssi:I

    goto :goto_c3f

    :cond_c30
    const/4 v1, 0x0

    .line 688
    iput v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mStayingPoorRssi:I

    .line 689
    iget-object v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    iget v1, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorRssi:I

    add-int/lit8 v1, v1, -0x5

    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastPoorRssi:I

    goto :goto_c3f

    :cond_c3c
    const/4 v1, 0x0

    .line 692
    iput v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mStayingPoorRssi:I

    .line 696
    :cond_c3f
    :goto_c3f
    iget-wide v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastPollTime:J

    const-wide/16 v3, 0x0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_c54

    .line 697
    iget-object v2, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatsAnalyzerCallBack:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;

    sub-long v30, v9, v0

    move-object/from16 v28, v2

    move-wide/from16 v32, v34

    move-wide/from16 v34, v11

    invoke-interface/range {v28 .. v35}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;->notifyThroughputUpdate(IJJJ)V

    .line 699
    :cond_c54
    iput-wide v9, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastPollTime:J

    goto/16 :goto_cd3

    :cond_c58
    :goto_c58
    move-object v14, v12

    const-string v0, "mCurrentBssid is null."

    .line 386
    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 387
    invoke-virtual {v8, v0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->removeMessages(I)V

    const/4 v0, 0x2

    .line 388
    invoke-virtual {v8, v0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    goto/16 :goto_cd3

    :cond_c68
    move v0, v11

    move-object v14, v12

    const-wide/16 v3, 0x0

    .line 959
    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    if-eqz v1, :cond_c75

    const-string v1, "MSG_ACTIVITY_CHECK_STOP"

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_c75
    invoke-virtual {v8, v0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->removeMessages(I)V

    const/16 v1, 0x8

    .line 961
    invoke-virtual {v8, v1}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->removeMessages(I)V

    const/4 v1, 0x0

    .line 962
    iput-boolean v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsPollingStarted:Z

    .line 963
    iput-boolean v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    .line 964
    iget-object v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 965
    iget-object v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 966
    iput-boolean v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsQueried:Z

    .line 967
    iput-boolean v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsInterrupted:Z

    .line 968
    iput v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    .line 969
    iput-boolean v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    .line 970
    iput v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcStep:I

    .line 971
    iput v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNsaQcTrigger:I

    .line 972
    iput v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mStayingPoorRssi:I

    .line 973
    iput-boolean v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsAggGoodStateNow:Z

    .line 974
    iput-wide v3, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastPollTime:J

    goto :goto_cd3

    :cond_c9f
    move v1, v14

    move-object v14, v12

    .line 368
    iget-boolean v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsPollingStarted:Z

    if-eqz v0, :cond_ca6

    goto :goto_cd3

    .line 370
    :cond_ca6
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->DBG:Z

    if-eqz v0, :cond_caf

    const-string v0, "MSG_ACTIVITY_CHECK_START"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_caf
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->isBackhaulDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_cba

    const/16 v2, 0x8

    .line 372
    invoke-virtual {v8, v2}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    :cond_cba
    const/4 v0, 0x3

    .line 374
    invoke-virtual {v8, v0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    .line 375
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->initNetworkStatHistory()V

    .line 376
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->syncGetCurrentWifiInfo()V

    .line 377
    iget-object v0, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_ccd

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v14

    goto :goto_cce

    :cond_ccd
    move v14, v1

    :goto_cce
    iput v14, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLastRssi:I

    const/4 v1, 0x1

    .line 378
    iput-boolean v1, v8, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsPollingStarted:Z

    :cond_cd3
    :goto_cd3
    return-void

    :pswitch_data_cd4
    .packed-switch 0x8
        :pswitch_fd
        :pswitch_d1
        :pswitch_3a
    .end packed-switch
.end method

.method public initStayingPoorRssi()V
    .registers 2

    const/4 v0, 0x0

    .line 252
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mStayingPoorRssi:I

    return-void
.end method

.method public isDnsCheckOnGoing()Z
    .registers 2

    .line 256
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsQueried:Z

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

.method public setCurrentBssidStatistics(Lcom/samsung/android/server/wifi/wcm/BssidStatistics;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentBssid:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    return-void
.end method

.method public setCurrentNetwork(Landroid/net/Network;)V
    .registers 2

    .line 183
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsThread:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    if-eqz p0, :cond_7

    .line 184
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->setCurrentNetwork(Landroid/net/Network;)V

    :cond_7
    return-void
.end method

.method public setCurrentTrafficStats(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 225
    :cond_3
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;-><init>(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mSemTrafficStats:Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    return-void
.end method

.method public setCurrentWCMMode(I)V
    .registers 2

    .line 189
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mCurrentMode:I

    return-void
.end method

.method public setIsChinaNetwork(Z)V
    .registers 2

    .line 193
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsChinaNetwork:Z

    return-void
.end method

.method public setIsVPNOnlyNetwork(Z)V
    .registers 2

    .line 197
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsVPNOnlyNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setNetworkStatCheckDns(Z)V
    .registers 2

    .line 205
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsChinaNetwork:Z

    const/4 p1, 0x5

    .line 206
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setNetworkStatsAnalyzerCallBack(Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mNetworkStatsAnalyzerCallBack:Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;

    return-void
.end method

.method public setRoamAndDhcp(ZZ)V
    .registers 3

    .line 210
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsInRoamSession:Z

    .line 211
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsInDhcpSession:Z

    return-void
.end method

.method public setScanStartedOrDone(ZZ)V
    .registers 3

    .line 215
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsScanning:Z

    if-nez p1, :cond_11

    .line 216
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mIsPollingStarted:Z

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mDnsQueried:Z

    if-eqz p1, :cond_11

    :cond_c
    const/4 p1, 0x2

    .line 217
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    goto :goto_16

    :cond_11
    const/16 p1, 0x9

    .line 219
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    :goto_16
    return-void
.end method

.method public startActivityCheck(Z)V
    .registers 2

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    .line 172
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    goto :goto_b

    :cond_7
    const/4 p1, 0x2

    .line 174
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    :goto_b
    return-void
.end method

.method public updateLinkProperties(Landroid/net/LinkProperties;)V
    .registers 2

    .line 260
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->mLinkProperties:Landroid/net/LinkProperties;

    return-void
.end method
