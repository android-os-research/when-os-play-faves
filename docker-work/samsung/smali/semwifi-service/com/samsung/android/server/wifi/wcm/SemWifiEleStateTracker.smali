.class public Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;
.super Ljava/lang/Object;
.source "SemWifiEleStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;,
        Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;
    }
.end annotation


# static fields
.field private static final BEACON_MISS:I = 0x2

.field private static final BEACON_NONE:I = 0x0

.field private static final BEACON_SUDDEN_DROP:I = 0x1

.field public static final DETECTED_GEOMAGNETIC:I = 0x1

.field public static final DETECTED_NONE:I = 0x0

.field public static final DETECTED_RSSI:I = 0x2

.field private static final ELE_REASON_BCN_DROP:I = 0x5

.field private static final ELE_REASON_BCN_MISS:I = 0x4

.field private static final ELE_REASON_BIG_SIGNAL_EXP:I = 0x7

.field private static final ELE_REASON_MOBILE_WIFI_CHG:I = 0x1

.field private static final ELE_REASON_MOBILE_WIFI_GEO:I = 0x3

.field private static final ELE_REASON_NONE:I = 0x0

.field private static final ELE_REASON_ON_LVL2:I = 0x2

.field private static final ELE_REASON_TX_INCREASE:I = 0x6

.field public static final ELE_STATE_DETECTED:I = 0x1

.field public static final ELE_STATE_DISABLED_NETWORK:I = 0x2

.field public static final ELE_STATE_EXIT_BY_STEP:I = 0x3

.field public static final ELE_STATE_NONE:I = 0x0

.field public static final ENABLE_BY_EXPIRE_TIME:I = 0x3

.field public static final ENABLE_BY_SNS_OFF:I = 0x5

.field public static final ENABLE_BY_STEPS:I = 0x4

.field private static final EXPIRE_COUNT:I = 0xb4

.field private static final MINIMUM_RSSI:I = -0x46

.field private static final PREVIOUS_CHECK_CNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SemWifiEleStateTracker"

.field private static mIsScanRunning:Z = false

.field private static final mStepExpireMSTime:J = 0x2bf20L


# instance fields
.field private mAggTxBadDetection:Z

.field private mBcnCheckingPrevState:I

.field private mBcnCheckingState:I

.field private mBcnDropExpireCnt:I

.field private mBcnHistoryCnt:I

.field private mBcnMissExpireCnt:I

.field private mBigSignalChangeExpirationCnt:I

.field private mBlockDetectionUntilNewAssoc:Z

.field private mBlockRoamTimer:Ljava/util/Timer;

.field private final mContext:Landroid/content/Context;

.field private mDetectionPending:Z

.field private mDoorOpenCheckCount:I

.field private mEleMoving:Z

.field private mElePrevGeoMagnetic:[Z

.field private mEleReason:I

.field private mEleState:I

.field private mExpireCount:I

.field private mGeoAvailable:Z

.field private mGeoEnabled:Z

.field mGeoMagnetic:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

.field mGeoMagneticAction:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;

.field private mGeomagneticEleState:Z

.field private mIsInRoamSession:Z

.field private mLastStepByEle:J

.field private mLimitMonitorTimeByLevel2Cnt:I

.field private mMonitorEnabled:Z

.field private mPedoIsStepPending:Z

.field private mPedoStepExpirationCnt:I

.field private mPollingSkip:Z

.field private mPrevBcnCnt:I

.field private mPrevBcnDiff:[I

.field private mPrevBcnDropCond:I

.field private mPrevGeomagneticEleState:Z

.field private mPrevMobileRssi:[I

.field private mPrevStepCnt:J

.field private mPrevStepState:[Z

.field private mPrevTxBadCnt:I

.field private mPrevWifiRssi:[I

.field private mPreviousBssid:Ljava/lang/String;

.field private mRecentStepCntChangeTime:J

.field private mScanHistory:[Z

.field private mSemWifiEleStateTrackerCallBack:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;

.field private mStableCount:I

.field private mTxBadHistory:[Z

.field private mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEleMoving(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleMoving:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiEleStateTrackerCallBack(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mSemWifiEleStateTrackerCallBack:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBlockRoamTimer(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;Ljava/util/Timer;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBlockRoamTimer:Ljava/util/Timer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGeomagneticEleState(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeomagneticEleState:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;)V
    .registers 9

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnCheckingState:I

    .line 78
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnCheckingPrevState:I

    .line 79
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleReason:I

    .line 81
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDropCond:I

    .line 82
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnDropExpireCnt:I

    const/16 v1, 0xb4

    .line 84
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mExpireCount:I

    .line 85
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mLimitMonitorTimeByLevel2Cnt:I

    .line 86
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mMonitorEnabled:Z

    const/4 v2, 0x1

    .line 87
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoIsStepPending:Z

    .line 88
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoStepExpirationCnt:I

    const-wide/16 v3, 0x0

    .line 89
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepCnt:J

    .line 90
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mRecentStepCntChangeTime:J

    .line 91
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mLastStepByEle:J

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoMagnetic:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    .line 94
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoMagneticAction:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;

    .line 96
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBlockRoamTimer:Ljava/util/Timer;

    .line 98
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoAvailable:Z

    .line 99
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoEnabled:Z

    .line 100
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeomagneticEleState:Z

    .line 101
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevGeomagneticEleState:Z

    const/4 v1, 0x6

    new-array v3, v1, [I

    .line 103
    iput-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    new-array v3, v1, [I

    .line 104
    iput-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    new-array v3, v1, [I

    .line 105
    iput-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    new-array v3, v1, [Z

    .line 106
    iput-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    new-array v3, v1, [Z

    .line 107
    iput-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    new-array v3, v1, [Z

    .line 108
    iput-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    new-array v1, v1, [Z

    .line 109
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    const/4 v1, -0x1

    .line 111
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnCnt:I

    .line 112
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevTxBadCnt:I

    .line 113
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnHistoryCnt:I

    .line 114
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnMissExpireCnt:I

    const/4 v1, 0x3

    .line 116
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mStableCount:I

    .line 117
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mDoorOpenCheckCount:I

    .line 118
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleState:I

    .line 121
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mDetectionPending:Z

    .line 123
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mAggTxBadDetection:Z

    .line 125
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPollingSkip:Z

    .line 127
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleMoving:Z

    .line 129
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mIsInRoamSession:Z

    const-string v1, ""

    .line 131
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPreviousBssid:Ljava/lang/String;

    .line 132
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBlockDetectionUntilNewAssoc:Z

    .line 134
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBigSignalChangeExpirationCnt:I

    .line 142
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mContext:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 144
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 145
    new-instance p2, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    invoke-direct {p2, p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoMagnetic:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    .line 146
    new-instance p2, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;-><init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;

    .line 147
    new-instance p1, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$1;-><init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoMagneticAction:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;

    .line 162
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoMagnetic:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    if-eqz p1, :cond_9c

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->getAPISupportFlag()Z

    move-result p1

    if-eqz p1, :cond_9c

    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoMagneticAction:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;

    if-eqz p1, :cond_9c

    .line 163
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoAvailable:Z

    :cond_9c
    return-void
.end method

.method private eleDetected(III)I
    .registers 15

    .line 501
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ele valid detection. Elapsed time after last WALK : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mRecentStepCntChangeTime:J

    sub-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " mPedoStepExpirationCnt : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoStepExpirationCnt:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiEleStateTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_36

    .line 509
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    :cond_36
    move-object v0, v2

    .line 510
    :goto_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detection BSSID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " previousBSSID :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPreviousBssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_67

    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPreviousBssid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    move v2, v4

    goto :goto_68

    :cond_67
    move v2, v3

    .line 514
    :goto_68
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPreviousBssid:Ljava/lang/String;

    if-nez v2, :cond_76

    .line 516
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBlockDetectionUntilNewAssoc:Z

    if-eqz v0, :cond_76

    const-string p0, "Ignore detection - mBlockDetectionUntilNewAssoc is true. it could be continuous ELE pattern."

    .line 517
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 519
    :cond_76
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBlockDetectionUntilNewAssoc:Z

    .line 520
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeomagneticEleState:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_7f

    move v0, v4

    goto :goto_80

    :cond_7f
    move v0, v2

    .line 525
    :goto_80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ele detection parameters BD : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    aget v7, v7, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    aget v7, v7, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    const/4 v9, 0x4

    aget v7, v7, v9

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    const/4 v10, 0x5

    aget v7, v7, v10

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " MD : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    aget v7, v7, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    aget v7, v7, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    aget v7, v7, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    aget v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    aget v7, v7, v9

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    aget v7, v7, v10

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " WD : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    aget v7, v7, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    aget v7, v7, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    aget v7, v7, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    aget v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    aget v7, v7, v9

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    aget v7, v7, v10

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " GC : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    aget-boolean v7, v7, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    aget-boolean v7, v7, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    aget-boolean v7, v7, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    aget-boolean v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    aget-boolean v7, v7, v9

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    aget-boolean v7, v7, v10

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " SC : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    aget-boolean v7, v7, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    aget-boolean v7, v7, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    aget-boolean v7, v7, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    aget-boolean v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    aget-boolean v7, v7, v9

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    aget-boolean v7, v7, v10

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "  SH : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    aget-boolean v7, v7, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    aget-boolean v7, v7, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    aget-boolean v7, v7, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    aget-boolean v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    aget-boolean v7, v7, v9

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    aget-boolean v7, v7, v10

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "  TB : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    aget-boolean v7, v7, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    aget-boolean v7, v7, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    aget-boolean v2, v7, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    aget-boolean v2, v2, v8

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    aget-boolean v2, v2, v9

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    aget-boolean v2, v2, v10

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    const-string v5, "SSIV"

    const-string v6, "ITYP"

    invoke-virtual {v2, v5, v6, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 542
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    const-string v6, "ISTE"

    invoke-virtual {v2, v5, v6, p1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 544
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    const-string v2, "ITRI"

    invoke-virtual {p1, v5, v2, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 546
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    const-string p2, "IFRN"

    invoke-virtual {p1, v5, p2, p3}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 548
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 549
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    aget-boolean p2, p2, v10

    const-string p3, "ITPD"

    .line 548
    invoke-virtual {p1, v5, p3, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 550
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 551
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    aget-boolean p2, p2, v10

    const-string p3, "ISPD"

    .line 550
    invoke-virtual {p1, v5, p3, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 552
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 553
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    aget-boolean p2, p2, v10

    const-string p3, "IRSS"

    .line 552
    invoke-virtual {p1, v5, p3, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 554
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWcmBigDataManager:Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 555
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    aget-boolean p2, p2, v10

    const-string p3, "ILSP"

    .line 554
    invoke-virtual {p1, v5, p3, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 557
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setMonitorEnabled(Z)V

    .line 558
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleMoving:Z

    .line 559
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setEleState(I)V

    .line 560
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getCurrentStepCnt()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mLastStepByEle:J

    .line 561
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "eleDetected - last step : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mLastStepByEle:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->runRecoveryEnableTimer()V

    .line 563
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mDoorOpenCheckCount:I

    return v0
.end method

.method private getBcnState(IIIZZ)I
    .registers 12

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "SemWifiEleStateTracker"

    const/4 v3, 0x1

    const/4 v4, 0x6

    if-ne p1, v4, :cond_6e

    const-string p1, "getBcnState - previousNonZeroBeaconCnt Non Zero Beacon Count Condition!"

    .line 589
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x5

    if-nez p3, :cond_14

    .line 592
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnMissExpireCnt:I

    goto/16 :goto_93

    .line 594
    :cond_14
    iget v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnCheckingPrevState:I

    if-ne v4, v3, :cond_31

    .line 595
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDropCond:I

    if-lt p1, p3, :cond_29

    const-string p1, "getBcnState - Sudden Drop continue!"

    .line 596
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnDropExpireCnt:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnDropExpireCnt:I

    :goto_26
    move v0, v3

    goto/16 :goto_93

    :cond_29
    const-string p1, "getBcnState - Sudden Drop finished."

    .line 600
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnDropExpireCnt:I

    goto :goto_92

    .line 604
    :cond_31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBcnState - Sudden Drop checking prevAverBcnCnt : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x9

    if-lt p2, v2, :cond_4f

    const/4 p1, 0x3

    if-gt p3, p1, :cond_92

    .line 607
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDropCond:I

    goto :goto_26

    :cond_4f
    const/4 v2, 0x7

    if-lt p2, v2, :cond_57

    if-gt p3, v0, :cond_92

    .line 612
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDropCond:I

    goto :goto_26

    :cond_57
    if-lt p2, p1, :cond_92

    .line 615
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getMaxBcnDiff()I

    move-result p1

    if-gt p1, v2, :cond_92

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isScanHappenedRecentTime()Z

    move-result p1

    if-nez p1, :cond_92

    if-nez p5, :cond_92

    if-eqz p4, :cond_92

    if-gt p3, v3, :cond_92

    .line 618
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDropCond:I

    goto :goto_26

    :cond_6e
    if-nez p3, :cond_90

    .line 625
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnMissExpireCnt:I

    if-lez p1, :cond_90

    .line 626
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getBcnState - already in beacon miss in progress!  mBcnMissExpireCnt : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnMissExpireCnt:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnMissExpireCnt:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnMissExpireCnt:I

    goto :goto_93

    .line 631
    :cond_90
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mDetectionPending:Z

    :cond_92
    :goto_92
    move v0, v1

    :goto_93
    if-nez p3, :cond_97

    .line 636
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnDropExpireCnt:I

    .line 639
    :cond_97
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnCheckingPrevState:I

    return v0
.end method

.method private getEleDetectionType(IIIIIZZ)I
    .registers 20

    move-object v6, p0

    move v7, p1

    .line 771
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isStationaryMoment()Z

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    const-string v11, "SemWifiEleStateTracker"

    if-eqz v8, :cond_5a

    .line 774
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isBigMobileSignalChanged()Z

    move-result v0

    .line 775
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isBigWifiSignalChanged()Z

    move-result v1

    if-eqz v0, :cond_2b

    if-eqz v1, :cond_2b

    const-string v2, "getEleDetectionType - mTwoBigSignalChangeExpirationCnt start!"

    .line 778
    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_2b

    const-string v0, "getEleDetectionType - Ele detection by mTwoBigSignalChangeExpirationCnt"

    .line 780
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iput v10, v6, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleReason:I

    .line 782
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->eleDetected(III)I

    move-result v0

    return v0

    :cond_2b
    if-nez v0, :cond_2f

    if-eqz v1, :cond_5a

    :cond_2f
    const/4 v0, 0x4

    .line 787
    iput v0, v6, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBigSignalChangeExpirationCnt:I

    const-string v0, "getEleDetectionType - mBigSignalChangeExpirationCnt start!"

    .line 788
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget v0, v6, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mLimitMonitorTimeByLevel2Cnt:I

    if-lez v0, :cond_47

    const-string v0, "getEleDetectionType - Ele detection after Level2 transition"

    .line 790
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iput v9, v6, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleReason:I

    .line 792
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->eleDetected(III)I

    move-result v0

    return v0

    :cond_47
    if-nez v7, :cond_5a

    .line 795
    iget-boolean v0, v6, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeomagneticEleState:Z

    if-eqz v0, :cond_5a

    const-string v0, "getEleDetectionType - Ele detection by Big signal change & Geomagnetic sensor"

    .line 796
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 797
    iput v0, v6, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleReason:I

    .line 798
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->eleDetected(III)I

    move-result v0

    return v0

    :cond_5a
    move-object v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move v3, p1

    move/from16 v4, p6

    move/from16 v5, p7

    .line 805
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getBcnState(IIIZZ)I

    move-result v0

    iput v0, v6, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnCheckingState:I

    const/4 v1, 0x0

    if-eq v0, v9, :cond_6f

    if-ne v0, v10, :cond_122

    .line 808
    :cond_6f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckEleEnvironment - Beacon loss checking started! bcnDiff : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-boolean v0, v6, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeomagneticEleState:Z

    if-eqz v0, :cond_8d

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isGeomagneticValueChanged()Z

    move-result v0

    if-nez v0, :cond_a2

    :cond_8d
    iget-boolean v0, v6, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mDetectionPending:Z

    if-nez v0, :cond_a2

    iget v0, v6, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBigSignalChangeExpirationCnt:I

    if-lez v0, :cond_97

    if-nez v8, :cond_a2

    :cond_97
    move v0, p2

    move v2, p3

    .line 812
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isMatchedEleSignalPattern(II)Z

    move-result v3

    if-eqz v3, :cond_122

    if-eqz v8, :cond_122

    goto :goto_a4

    :cond_a2
    move v0, p2

    move v2, p3

    .line 813
    :goto_a4
    iget-boolean v3, v6, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mAggTxBadDetection:Z

    if-eqz v3, :cond_d0

    if-eqz p6, :cond_d0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isPrevHalfTimeTxBad()Z

    move-result v3

    if-eqz v3, :cond_b2

    if-nez v7, :cond_d0

    .line 814
    :cond_b2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEleDetectionType - Ele detected! with txbad, mBigSignalChangeExpirationCnt : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBigSignalChangeExpirationCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x6

    .line 816
    iput v1, v6, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleReason:I

    .line 817
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->eleDetected(III)I

    move-result v1

    goto :goto_122

    .line 820
    :cond_d0
    :try_start_d0
    iget-object v3, v6, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->isScanningRunning()Z

    move-result v3

    sput-boolean v3, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mIsScanRunning:Z
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_dc} :catch_dd

    goto :goto_df

    .line 822
    :catch_dd
    sput-boolean v1, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mIsScanRunning:Z

    .line 825
    :goto_df
    sget-boolean v3, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mIsScanRunning:Z

    if-nez v3, :cond_e7

    iget-boolean v4, v6, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoIsStepPending:Z

    if-eqz v4, :cond_fb

    :cond_e7
    iget-boolean v4, v6, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeomagneticEleState:Z

    if-nez v4, :cond_fb

    .line 826
    iput-boolean v10, v6, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mDetectionPending:Z

    if-eqz v3, :cond_f5

    const-string v0, "getEleDetectionType - Beacon loss ignored by ScanRunning"

    .line 828
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_122

    :cond_f5
    const-string v0, "getEleDetectionType - Beacon loss ignored by Step Cnt Pending"

    .line 830
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_122

    .line 832
    :cond_fb
    iget-boolean v3, v6, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mIsInRoamSession:Z

    if-eqz v3, :cond_105

    const-string v0, "getEleDetectionType - Beacon loss ignored during Roaming"

    .line 833
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_122

    .line 835
    :cond_105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEleDetectionType - Ele detected! mBigSignalChangeExpirationCnt : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBigSignalChangeExpirationCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x7

    .line 837
    iput v1, v6, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleReason:I

    .line 838
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->eleDetected(III)I

    move-result v1

    :cond_122
    :goto_122
    return v1
.end method

.method private getMaxBcnDiff()I
    .registers 4

    .line 433
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnHistoryCnt:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x5

    .line 435
    :goto_7
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnHistoryCnt:I

    rsub-int/lit8 v2, v2, 0x6

    if-lt v0, v2, :cond_17

    .line 436
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    aget v2, v2, v0

    if-ge v1, v2, :cond_14

    move v1, v2

    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_17
    return v1
.end method

.method private getPrevAverBcnCnt()I
    .registers 5

    .line 423
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnHistoryCnt:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x5

    .line 425
    :goto_7
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnHistoryCnt:I

    rsub-int/lit8 v3, v2, 0x6

    if-lt v0, v3, :cond_15

    .line 426
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 428
    :cond_15
    div-int/2addr v1, v2

    return v1
.end method

.method private getPrevNonZeroBcnCnt()I
    .registers 4

    .line 393
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnHistoryCnt:I

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    const/4 v0, 0x5

    .line 394
    :goto_6
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnHistoryCnt:I

    rsub-int/lit8 v2, v2, 0x6

    if-lt v0, v2, :cond_17

    .line 395
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    aget v2, v2, v0

    if-lez v2, :cond_14

    add-int/lit8 v1, v1, 0x1

    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_17
    return v1
.end method

.method private isBigMobileSignalChanged()Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v3, v0

    move v2, v1

    :goto_4
    const/4 v4, 0x5

    if-ge v2, v4, :cond_22

    move v4, v2

    :goto_8
    const/4 v5, 0x6

    if-ge v4, v5, :cond_1f

    .line 460
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    aget v6, v5, v0

    aget v5, v5, v4

    sub-int/2addr v6, v5

    const/16 v5, 0xc

    if-ge v6, v5, :cond_1e

    const/16 v5, -0xc

    if-gt v6, v5, :cond_1b

    goto :goto_1e

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_1e
    :goto_1e
    move v3, v1

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_22
    return v3
.end method

.method private isBigWifiSignalChanged()Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v3, v0

    move v2, v1

    :goto_4
    const/4 v4, 0x5

    if-ge v2, v4, :cond_1e

    move v4, v2

    :goto_8
    const/4 v5, 0x6

    if-ge v4, v5, :cond_1b

    .line 476
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    aget v6, v5, v0

    aget v5, v5, v4

    sub-int/2addr v6, v5

    const/16 v5, 0x9

    if-lt v6, v5, :cond_18

    move v3, v1

    goto :goto_1b

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_1b
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1e
    return v3
.end method

.method private isContinuousMobileRssiDecrease(I)Z
    .registers 6

    .line 681
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    const/4 v0, 0x0

    aget v1, p0, v0

    if-nez v1, :cond_8

    return v0

    :cond_8
    const/4 v2, 0x1

    .line 682
    aget v3, p0, v2

    if-lt v1, v3, :cond_2b

    const/4 v1, 0x2

    aget v1, p0, v1

    if-lt v3, v1, :cond_2b

    const/4 v3, 0x3

    aget v3, p0, v3

    if-lt v1, v3, :cond_2b

    const/4 v1, 0x4

    aget v1, p0, v1

    if-lt v3, v1, :cond_2b

    const/4 v3, 0x5

    aget p0, p0, v3

    if-lt v1, p0, :cond_2b

    if-lt p0, p1, :cond_2b

    const-string p0, "SemWifiEleStateTracker"

    const-string p1, "isContinuousMobileRssiDecrease true"

    .line 685
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2b
    return v0
.end method

.method private isDoorOpenMobileSignal(I)Z
    .registers 5

    const/4 v0, 0x3

    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_13

    .line 352
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    aget v1, v1, v0

    sub-int v1, p1, v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method private isEleRecentStepChangeProved()Z
    .registers 9

    .line 487
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoStepExpirationCnt:I

    const/4 v1, 0x1

    if-lez v0, :cond_6

    return v1

    .line 490
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 491
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mRecentStepCntChangeTime:J

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-lez p0, :cond_1b

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x2bf20

    cmp-long p0, v2, v4

    if-gez p0, :cond_1b

    return v1

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method private isGeomagneticValueChanged()Z
    .registers 4

    .line 202
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevGeomagneticEleState:Z

    const/4 v1, 0x1

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeomagneticEleState:Z

    if-eqz v0, :cond_a

    return v1

    :cond_a
    move v0, v1

    :goto_b
    const/4 v2, 0x6

    if-ge v0, v2, :cond_18

    .line 207
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_15

    return v1

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private isMatchedEleSignalPattern(II)Z
    .registers 8

    const/4 v0, 0x3

    const/4 v1, 0x6

    .line 692
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isMobileRssiChangedDuringDiffTime(III)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_46

    const/4 v2, 0x4

    const/4 v4, 0x7

    .line 693
    invoke-direct {p0, p1, v2, v4}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isMobileRssiChangedDuringDiffTime(III)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_46

    :cond_12
    const/16 v2, 0x8

    .line 695
    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isMobileRssiChangedDuringDiffTime(III)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    aget v2, v2, v4

    if-ge p2, v2, :cond_22

    return v3

    .line 698
    :cond_22
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isContinuousMobileRssiDecrease(I)Z

    move-result v2

    if-eqz v2, :cond_36

    const/4 v2, 0x2

    .line 699
    invoke-direct {p0, p1, v2, v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isMobileRssiChangedDuringDiffTime(III)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x5

    .line 700
    invoke-direct {p0, p2, v2, v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isWifiRssiChangedDuringDiffTime(III)Z

    move-result v0

    if-nez v0, :cond_44

    :cond_36
    const/16 v0, 0xb

    .line 701
    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isMobileRssiChangedDuringDiffTime(III)Z

    move-result p1

    if-eqz p1, :cond_45

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    aget p0, p0, v4

    if-gt p2, p0, :cond_45

    :cond_44
    return v3

    :cond_45
    return v4

    :cond_46
    :goto_46
    return v3
.end method

.method private isMobileRssiChangedDuringDiffTime(III)Z
    .registers 6

    rsub-int/lit8 v0, p2, 0x6

    .line 665
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    aget p0, p0, v0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return v0

    :cond_a
    if-eqz p0, :cond_10

    neg-int v1, p1

    neg-int p0, p0

    sub-int/2addr v1, p0

    goto :goto_11

    :cond_10
    move v1, v0

    :goto_11
    if-lt v1, p3, :cond_3b

    .line 672
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isMobileRssiChangedDuringDiffTime - mobileRssi : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " secondsCope :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " diffCond :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiEleStateTracker"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_3b
    return v0
.end method

.method public static isPedometerSensorAvailable(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "sensor"

    .line 888
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const-string v0, "SemWifiEleStateTracker"

    if-eqz p0, :cond_1b

    const/16 v1, 0x13

    .line 890
    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    const-string v1, "STEP_COUNTER available"

    .line 893
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    if-nez p0, :cond_23

    const-string v1, "STEP_COUNTER not available"

    .line 898
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return p0
.end method

.method private isPrevHalfTimeTxBad()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_10

    .line 414
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return v0
.end method

.method private isScanHappenedRecentTime()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x6

    if-ge v1, v2, :cond_10

    .line 405
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return v0
.end method

.method private isStationaryMoment()Z
    .registers 5

    .line 444
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoIsStepPending:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    move v2, v0

    :goto_8
    const/4 v3, 0x6

    if-ge v2, v3, :cond_15

    .line 447
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_12

    return v1

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_15
    return v0
.end method

.method private isWifiRssiChangedDuringDiffTime(III)Z
    .registers 6

    rsub-int/lit8 v0, p2, 0x6

    .line 647
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    aget p0, p0, v0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return v0

    :cond_a
    if-eqz p0, :cond_10

    neg-int v1, p1

    neg-int p0, p0

    sub-int/2addr v1, p0

    goto :goto_11

    :cond_10
    move v1, v0

    :goto_11
    if-lt v1, p3, :cond_3b

    .line 653
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isWifiRssiChangedDuringDiffTime - wifiRssi : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " secondsCope :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " diffCond :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiEleStateTracker"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_3b
    return v0
.end method

.method private printParameterHistory()V
    .registers 10

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ele Parameters BD : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    const/4 v5, 0x2

    aget v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    const/4 v6, 0x3

    aget v3, v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    const/4 v7, 0x4

    aget v3, v3, v7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    const/4 v8, 0x5

    aget v3, v3, v8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " MD : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    aget v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    aget v3, v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    aget v3, v3, v7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    aget v3, v3, v8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " WD : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    aget v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    aget v3, v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    aget v3, v3, v7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    aget v3, v3, v8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " GC : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    aget-boolean v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    aget-boolean v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    aget-boolean v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    aget-boolean v3, v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    aget-boolean v3, v3, v7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    aget-boolean v3, v3, v8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " SC : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    aget-boolean v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    aget-boolean v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    aget-boolean v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    aget-boolean v3, v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    aget-boolean v3, v3, v7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    aget-boolean v3, v3, v8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " SH : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    aget-boolean v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    aget-boolean v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    aget-boolean v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    aget-boolean v3, v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    aget-boolean v3, v3, v7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    aget-boolean v3, v3, v8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " TB : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    aget-boolean v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    aget-boolean v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    aget-boolean v2, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    aget-boolean v2, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    aget-boolean v2, v2, v7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    aget-boolean p0, p0, v8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWifiEleStateTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private runRecoveryEnableTimer()V
    .registers 5

    .line 234
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBlockRoamTimer:Ljava/util/Timer;

    if-eqz v0, :cond_10

    const-string v0, "SemWifiEleStateTracker"

    const-string v1, "mBlockRoamTimer timer canceled"

    .line 235
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBlockRoamTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 238
    :cond_10
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBlockRoamTimer:Ljava/util/Timer;

    .line 239
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$2;-><init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)V

    const-wide/16 v2, 0x61a8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private setMonitorEnabled(Z)V
    .registers 4

    if-eqz p1, :cond_6

    const/16 v0, 0xb4

    .line 271
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mExpireCount:I

    :cond_6
    const-string v0, "SemWifiEleStateTracker"

    if-eqz p1, :cond_1c

    .line 274
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mMonitorEnabled:Z

    if-nez v1, :cond_1c

    const-string v1, "mMonitorEnabled true"

    .line 275
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setEleState(I)V

    const/4 v1, 0x1

    .line 277
    invoke-virtual {p0, v0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->resetParameters(IZZ)V

    goto :goto_2f

    :cond_1c
    if-nez p1, :cond_2f

    .line 278
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mMonitorEnabled:Z

    if-eqz v1, :cond_2f

    const-string v1, "mMonitorEnabled false"

    .line 279
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->unregisterGeomagneticListener()V

    .line 281
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mSemWifiEleStateTrackerCallBack:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;

    invoke-interface {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;->eleCheckFinished()V

    .line 284
    :cond_2f
    :goto_2f
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mMonitorEnabled:Z

    return-void
.end method

.method private shiftParameters(IIIZIZZZ)V
    .registers 13

    .line 322
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    array-length v1, v0

    sub-int/2addr v1, v2

    aput p1, v0, v1

    .line 325
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    array-length v0, p1

    sub-int/2addr v0, v2

    invoke-static {p1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    array-length v0, p1

    sub-int/2addr v0, v2

    aput p2, p1, v0

    const/4 p1, -0x1

    if-eq p3, p1, :cond_36

    .line 329
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnHistoryCnt:I

    const/4 p2, 0x6

    if-ge p1, p2, :cond_29

    if-nez p5, :cond_29

    add-int/2addr p1, v2

    .line 330
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnHistoryCnt:I

    .line 333
    :cond_29
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    array-length p2, p1

    sub-int/2addr p2, v2

    invoke-static {p1, v2, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    array-length p2, p1

    sub-int/2addr p2, v2

    aput p3, p1, p2

    .line 337
    :cond_36
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    array-length p2, p1

    sub-int/2addr p2, v2

    invoke-static {p1, v2, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    array-length p2, p1

    sub-int/2addr p2, v2

    aput-boolean p8, p1, p2

    .line 340
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    array-length p2, p1

    sub-int/2addr p2, v2

    invoke-static {p1, v2, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    array-length p2, p1

    sub-int/2addr p2, v2

    aput-boolean p7, p1, p2

    .line 343
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    array-length p2, p1

    sub-int/2addr p2, v2

    invoke-static {p1, v2, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    array-length p2, p1

    sub-int/2addr p2, v2

    aput-boolean p4, p1, p2

    .line 346
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    array-length p2, p1

    sub-int/2addr p2, v2

    invoke-static {p1, v2, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    array-length p1, p0

    sub-int/2addr p1, v2

    aput-boolean p6, p0, p1

    return-void
.end method


# virtual methods
.method public checkDoorOpen(III)V
    .registers 14

    const-string p2, "SemWifiEleStateTracker"

    const-string v0, "checkDoorOpen"

    .line 304
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnHistoryCnt:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_d

    return-void

    .line 308
    :cond_d
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mDoorOpenCheckCount:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_15

    .line 309
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->printParameterHistory()V

    .line 311
    :cond_15
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mDoorOpenCheckCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mDoorOpenCheckCount:I

    .line 312
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isStationaryMoment()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isDoorOpenMobileSignal(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "door open signal detected"

    .line 313
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->runRecoveryEnableTimer()V

    :cond_2f
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 316
    iget-boolean v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoIsStepPending:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p3

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->shiftParameters(IIIZIZZZ)V

    const/4 p1, 0x0

    .line 317
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoIsStepPending:Z

    return-void
.end method

.method public checkNeedRecoverFromEle()V
    .registers 7

    .line 868
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleMoving:Z

    const-string v1, "SemWifiEleStateTracker"

    if-eqz v0, :cond_13

    const-string v0, "mEleMoving to false by Pedometer."

    .line 869
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->clearEleMoving()V

    .line 871
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mSemWifiEleStateTrackerCallBack:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;

    invoke-interface {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;->eleEnableRecovery()V

    .line 874
    :cond_13
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1b

    const/4 v2, 0x2

    if-ne v0, v2, :cond_54

    .line 875
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNeedRecoverFromEle - step (current, last) : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getCurrentStepCnt()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mLastStepByEle:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getCurrentStepCnt()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mLastStepByEle:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xa

    cmp-long v0, v2, v4

    if-lez v0, :cond_54

    const-string v0, "ele finished by step"

    .line 877
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mSemWifiEleStateTrackerCallBack:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;

    invoke-interface {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;->eleFinishedByStep()V

    :cond_54
    return-void
.end method

.method public clearEleMoving()V
    .registers 2

    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleMoving:Z

    return-void
.end method

.method public geomagneticEnable()V
    .registers 3

    .line 184
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoAvailable:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoEnabled:Z

    if-nez v0, :cond_18

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isGeomagneticSensorEnableValidTime()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "SemWifiEleStateTracker"

    const-string v1, "registerEleGeomagnetic sensor by Pedometer Walk."

    .line 186
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->registerGeomagneticListener()V

    :cond_18
    return-void
.end method

.method public getCurrentStepCnt()J
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->isPedometerEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 255
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->getCurrentTotalStepCnt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepCnt:J

    .line 257
    :cond_12
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepCnt:J

    return-wide v0
.end method

.method public getEleReason()I
    .registers 1

    .line 300
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleReason:I

    return p0
.end method

.method public getEleState()I
    .registers 1

    .line 909
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleState:I

    return p0
.end method

.method public getPollingEnabled()Z
    .registers 1

    .line 217
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPollingSkip:Z

    return p0
.end method

.method public isBeginTimeGeoMagneticRequired()V
    .registers 5

    .line 193
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepCnt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2e

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->isPedometerEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepCnt:J

    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;

    .line 194
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->getCurrentTotalStepCnt()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2e

    const-string v0, "SemWifiEleStateTracker"

    const-string v1, "Pedometer step movement detected! enable GeoMagnetic Sensor!"

    .line 195
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mRecentStepCntChangeTime:J

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->registerGeomagneticListener()V

    :cond_2e
    return-void
.end method

.method public isEleDetected(IIIIZ)I
    .registers 23

    move-object/from16 v9, p0

    move/from16 v10, p2

    move/from16 v8, p3

    move/from16 v11, p4

    const/4 v12, 0x0

    .line 710
    iput v12, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleReason:I

    .line 713
    iget v0, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mExpireCount:I

    rem-int/lit8 v1, v0, 0x6

    const/4 v13, 0x1

    if-eqz v1, :cond_14

    if-ne v0, v13, :cond_17

    .line 714
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->printParameterHistory()V

    .line 717
    :cond_17
    iget v0, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mExpireCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mExpireCount:I

    const-string v1, "SemWifiEleStateTracker"

    if-nez v0, :cond_2a

    const-string v0, "Monitoring finished by expiration count"

    .line 718
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-direct {v9, v12}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setMonitorEnabled(Z)V

    return v12

    .line 722
    :cond_2a
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getPrevNonZeroBcnCnt()I

    move-result v4

    .line 723
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getPrevAverBcnCnt()I

    move-result v5

    .line 725
    iget v0, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnCnt:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_61

    if-gez v10, :cond_3d

    .line 727
    invoke-virtual {v9, v13, v12, v13}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->resetParameters(IZZ)V

    return v12

    :cond_3d
    sub-int v0, v10, v0

    if-gt v0, v2, :cond_56

    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEleDetected - Abnormal beacon cnt : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    :cond_56
    const/16 v1, 0xd

    if-le v0, v1, :cond_5b

    move v0, v1

    :cond_5b
    if-lez v0, :cond_5f

    .line 737
    iput-boolean v12, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mDetectionPending:Z

    :cond_5f
    move v14, v0

    goto :goto_62

    :cond_61
    move v14, v2

    .line 741
    :goto_62
    iget v0, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevTxBadCnt:I

    if-ne v0, v2, :cond_67

    goto :goto_6b

    :cond_67
    if-ge v0, v11, :cond_6b

    move v15, v13

    goto :goto_6c

    :cond_6b
    :goto_6b
    move v15, v12

    :goto_6c
    const/16 v0, -0x46

    if-gt v8, v0, :cond_95

    .line 747
    iget v0, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnHistoryCnt:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_95

    const/4 v0, 0x4

    if-ge v14, v0, :cond_95

    iget-object v0, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    aget v0, v0, v12

    if-gt v8, v0, :cond_95

    .line 748
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isEleRecentStepChangeProved()Z

    move-result v0

    if-eqz v0, :cond_95

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, p1

    move/from16 v3, p3

    move v6, v15

    move/from16 v7, p5

    .line 749
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getEleDetectionType(IIIIIZZ)I

    move-result v0

    move/from16 v16, v0

    goto :goto_97

    :cond_95
    move/from16 v16, v12

    .line 754
    :goto_97
    iget-boolean v0, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevGeomagneticEleState:Z

    if-nez v0, :cond_a1

    iget-boolean v0, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeomagneticEleState:Z

    if-eqz v0, :cond_a1

    move v4, v13

    goto :goto_a2

    :cond_a1
    move v4, v12

    :goto_a2
    iget v5, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mStableCount:I

    iget-boolean v6, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoIsStepPending:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move v3, v14

    move v7, v15

    move/from16 v8, p5

    .line 753
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->shiftParameters(IIIZIZZZ)V

    .line 756
    iput v11, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevTxBadCnt:I

    .line 757
    iput v10, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnCnt:I

    .line 758
    iget-boolean v0, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeomagneticEleState:Z

    iput-boolean v0, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevGeomagneticEleState:Z

    .line 759
    iget v0, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mStableCount:I

    if-eqz v0, :cond_c2

    sub-int/2addr v0, v13

    iput v0, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mStableCount:I

    .line 760
    :cond_c2
    iget v0, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mLimitMonitorTimeByLevel2Cnt:I

    if-eqz v0, :cond_c9

    sub-int/2addr v0, v13

    iput v0, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mLimitMonitorTimeByLevel2Cnt:I

    .line 761
    :cond_c9
    iget v0, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBigSignalChangeExpirationCnt:I

    if-eqz v0, :cond_d0

    sub-int/2addr v0, v13

    iput v0, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBigSignalChangeExpirationCnt:I

    .line 762
    :cond_d0
    iget v0, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoStepExpirationCnt:I

    if-eqz v0, :cond_d7

    sub-int/2addr v0, v13

    iput v0, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoStepExpirationCnt:I

    .line 763
    :cond_d7
    iput-boolean v12, v9, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoIsStepPending:Z

    return v16
.end method

.method public isGeomagneticSensorEnableValidTime()Z
    .registers 2

    .line 864
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mExpireCount:I

    const/4 v0, 0x5

    if-le p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isInEleMoving()Z
    .registers 1

    .line 288
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleMoving:Z

    return p0
.end method

.method public isMonitoring()Z
    .registers 1

    .line 292
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mMonitorEnabled:Z

    return p0
.end method

.method public limitMonitorTimeByLevel2()V
    .registers 2

    const/4 v0, 0x6

    .line 229
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mExpireCount:I

    .line 230
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mLimitMonitorTimeByLevel2Cnt:I

    return-void
.end method

.method public registerGeomagneticListener()V
    .registers 3

    .line 168
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoAvailable:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoEnabled:Z

    if-nez v0, :cond_19

    .line 169
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoMagnetic:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoMagneticAction:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->registerEleDetector(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$OnEleDetectInterface;)Z

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoEnabled:Z

    const-string p0, "SemWifiEleStateTracker"

    const-string v0, "registerGeomagneticListener done"

    .line 171
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    return-void
.end method

.method public registerPedometer()V
    .registers 2

    .line 847
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;

    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->-$$Nest$fgetmIsEnabled(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 848
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->registerPedometer()V

    :cond_f
    return-void
.end method

.method public resetParameters(IZZ)V
    .registers 6

    const-string v0, "SemWifiEleStateTracker"

    const-string v1, "resetEleParameters"

    .line 360
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p3, :cond_2d

    move p3, v0

    :goto_b
    const/4 v1, 0x6

    if-ge p3, v1, :cond_2d

    .line 363
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevMobileRssi:[I

    aput v0, v1, p3

    .line 364
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevWifiRssi:[I

    aput v0, v1, p3

    .line 365
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnDiff:[I

    aput v0, v1, p3

    .line 366
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mScanHistory:[Z

    aput-boolean v0, v1, p3

    .line 367
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mTxBadHistory:[Z

    aput-boolean v0, v1, p3

    .line 368
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mElePrevGeoMagnetic:[Z

    aput-boolean v0, v1, p3

    .line 369
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevStepState:[Z

    aput-boolean v0, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_b

    :cond_2d
    const/4 p3, -0x1

    .line 373
    iput p3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevBcnCnt:I

    .line 374
    iput p3, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPrevTxBadCnt:I

    .line 375
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnHistoryCnt:I

    .line 376
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mStableCount:I

    .line 377
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnMissExpireCnt:I

    .line 378
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPollingSkip:Z

    .line 379
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeomagneticEleState:Z

    .line 380
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mDetectionPending:Z

    .line 381
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mLimitMonitorTimeByLevel2Cnt:I

    .line 382
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBigSignalChangeExpirationCnt:I

    .line 383
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnCheckingPrevState:I

    .line 384
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBcnDropExpireCnt:I

    .line 385
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoStepExpirationCnt:I

    if-eqz p2, :cond_4c

    .line 387
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBlockDetectionUntilNewAssoc:Z

    :cond_4c
    return-void
.end method

.method public setAggTxBadDetection(Z)V
    .registers 2

    .line 213
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mAggTxBadDetection:Z

    return-void
.end method

.method public setEleState(I)V
    .registers 3

    .line 904
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mEleState:I

    .line 905
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setEleState - mEleState : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiEleStateTracker"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMonitorEnabled(ZZ)V
    .registers 5

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMonitorEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiEleStateTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setMonitorEnabled(Z)V

    if-eqz p2, :cond_1e

    const/4 p1, 0x0

    .line 265
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mBlockDetectionUntilNewAssoc:Z

    :cond_1e
    return-void
.end method

.method public setPedoRecentStep()V
    .registers 2

    const/4 v0, 0x1

    .line 859
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoIsStepPending:Z

    const/16 v0, 0xb4

    .line 860
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPedoStepExpirationCnt:I

    return-void
.end method

.method public setPollingSkip(Z)V
    .registers 2

    .line 221
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mPollingSkip:Z

    return-void
.end method

.method public setRoam(Z)V
    .registers 2

    .line 296
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mIsInRoamSession:Z

    return-void
.end method

.method public setSemWifiEleStateTrackerCallBack(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;)V
    .registers 2

    .line 983
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mSemWifiEleStateTrackerCallBack:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$ISemWifiEleStateTrackerCallBack;

    return-void
.end method

.method public unregisterGeomagneticListener()V
    .registers 2

    .line 176
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoAvailable:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoEnabled:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoEnabled:Z

    .line 178
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mGeoMagnetic:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->unregisterEleDetector()V

    const-string p0, "SemWifiEleStateTracker"

    const-string v0, "unregisterGeomagneticListener done"

    .line 179
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-void
.end method

.method public unregisterPedometer()V
    .registers 2

    .line 853
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;

    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->-$$Nest$fgetmIsEnabled(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 854
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->mWifiPedometerChecker:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->unregisterPedometer()V

    :cond_f
    return-void
.end method
