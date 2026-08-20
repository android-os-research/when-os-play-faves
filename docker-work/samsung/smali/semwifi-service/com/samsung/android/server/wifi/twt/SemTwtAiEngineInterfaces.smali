.class public Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;
.super Ljava/lang/Object;
.source "SemTwtAiEngineInterfaces.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;,
        Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;
    }
.end annotation


# static fields
.field private static final INTERVAL_DEFAULT:I = 0x6000

.field private static final INTERVAL_NRT_DEFAULT:I = 0xc000

.field private static final INTERVAL_NRT_FDL:I = 0xa000

.field private static final INTERVAL_NRT_OVERFLOW:I = 0xa000

.field private static final INTERVAL_NRT_VS:I = 0xc000

.field private static final INTERVAL_RT_AC:I = 0xa000

.field private static final INTERVAL_RT_DEFAULT:I = 0x6000

.field private static final INTERVAL_RT_MG:I = 0x6000

.field private static final INTERVAL_RT_VC:I = 0x6000

.field private static final MAX_INTV_WINDOW:I = 0x100

.field private static final SP_DEFAULT:I = 0x4000

.field private static final SP_DURATION_FIVE_PERCENT:F = 0.05f

.field private static final SP_DURATION_MIN:I = 0x2000

.field private static final SP_DURATION_MIN_EPSILON:I = 0x3e8

.field private static final SP_DURATION_TDT_MODE_MAX:I = 0x0

.field private static final SP_DURATION_TDT_MODE_WEIGHTED:I = 0x1

.field private static final SP_DURATION_TEN_PERCENT:F = 0.1f

.field private static final SP_DURATION_TWENTY_PERCENT:F = 0.2f

.field private static final TRAFFIC_TYPE_BURST:I = 0x3

.field private static final TRAFFIC_TYPE_RAND:I = 0x1

.field private static final TRAFFIC_TYPE_STABLE:I = 0x2

.field private static final WINDOW_SIZE_DEFAULT:I = 0x32


# instance fields
.field private RxPktSize_Tdt:F

.field private final TCca10002TRadio:[J

.field private final TdtCca:[J

.field private TxGoodRateAmp_Tdt:F

.field private TxGoodRate_Tdt:F

.field public abnormalApDetMilliSec:J

.field public algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

.field private appTwtDisableFlag:Z

.field private awakeTimeSum:F

.field private curTime:J

.field private currentTimeMilliSec:J

.field private dutyCycle:F

.field private dutyCycleAve:F

.field private dutyCycleReducedCnt:I

.field private epsilon:I

.field private intvAppResetEn:Z

.field private intvCase3:Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;

.field private intvCount:I

.field private intvIndex:I

.field private intvNegCnt:J

.field private intvSum:F

.field private intvalAlgo:I

.field private intvalReal:I

.field private latReq:I

.field private mAnomalyLife:[I

.field private mAnomalyWinSize:I

.field private mAverageContentTime:J

.field private mAverageTdt:J

.field private mBadInterT:I

.field private mBadInterTTDCnt:I

.field private mDataTime:J

.field private mDlPktCnt:J

.field private mGTwtTearCnt_Tdt:I

.field private mInterTAnomDetCnt:I

.field private mInterTAnomLife:[I

.field private mInterTContinueAnom:I

.field private mInterTWinSize:I

.field public mIsAbnormalAP:Z

.field private mMaxAnomalyNum:I

.field private mMaxInterTAnomNum:I

.field private mMaxTdt:J

.field private mNumContinueAnomaly:I

.field private mPacketCount:J

.field private mPacketSize:J

.field private mPktCntSize:J

.field private mRTAnomalyDetCnt:I

.field private mRadioOnTimeMs:J

.field private mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

.field private mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

.field private mTwtNegotiated:Z

.field private mUlPktCnt:J

.field private mVarTdt:J

.field private mobileGameCnt_Tdt:I

.field private modeSelCnt:J

.field private overflowThreshold:I

.field private ovfIntAdjFlag:Z

.field private final pktCntDLPerSP:[J

.field private final pktCntULPerSP:[J

.field private final pktDlSize:[J

.field private final pktUlSize:[J

.field private prevTime:J

.field private prevTimeMilliSec:J

.field private s2i:F

.field private s2iAlgoTotal:F

.field private s2iTotal:F

.field public scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

.field public serDetCloudGame:I

.field private serSubTypeCur:I

.field private serTypeCur:I

.field private spAlgo:I

.field private spAlgoSum:F

.field private spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

.field private spNegCnt:J

.field private spReal:I

.field private spSum:F

.field private traffDetPara:[I

.field private trafficTypeCur:I

.field private trafficTypePrev:I

.field private twtPollCnt:J

.field private winSize:I


# direct methods
.method static bridge synthetic -$$Nest$fgetspDuration(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/twt/SemTwtInfo;Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;)V
    .registers 8

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvCase3:Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;

    .line 50
    iput-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    .line 52
    iput-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 53
    iput-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->ovfIntAdjFlag:Z

    .line 58
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serDetCloudGame:I

    const-wide/16 v1, 0x0

    .line 61
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->modeSelCnt:J

    .line 62
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->twtPollCnt:J

    .line 63
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spNegCnt:J

    .line 64
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvNegCnt:J

    const/high16 v3, 0x3f800000    # 1.0f

    .line 65
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycle:F

    .line 66
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleAve:F

    const/4 v4, 0x0

    .line 67
    iput v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->awakeTimeSum:F

    .line 68
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2i:F

    .line 69
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iTotal:F

    .line 70
    iput v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spSum:F

    .line 71
    iput v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvSum:F

    .line 73
    iput v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgoSum:F

    .line 74
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iAlgoTotal:F

    const/16 v4, 0xa

    .line 81
    iput v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->winSize:I

    const/16 v4, 0x64

    .line 82
    iput v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->overflowThreshold:I

    .line 84
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleReducedCnt:I

    .line 90
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageTdt:J

    .line 91
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mMaxTdt:J

    .line 92
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mVarTdt:J

    .line 93
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mDataTime:J

    .line 94
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mPacketSize:J

    .line 95
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mPacketCount:J

    .line 96
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageContentTime:J

    .line 97
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mPktCntSize:J

    .line 98
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mDlPktCnt:J

    .line 99
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mUlPktCnt:J

    .line 100
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRadioOnTimeMs:J

    const/4 v4, 0x1

    .line 103
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvAppResetEn:Z

    .line 104
    iput v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->trafficTypePrev:I

    .line 105
    iput v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->trafficTypeCur:I

    .line 106
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->appTwtDisableFlag:Z

    .line 108
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serTypeCur:I

    .line 109
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serSubTypeCur:I

    const/4 v4, 0x3

    new-array v4, v4, [I

    .line 111
    iput-object v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->traffDetPara:[I

    const v4, 0x44bb8000    # 1500.0f

    .line 114
    iput v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->RxPktSize_Tdt:F

    .line 115
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRate_Tdt:F

    .line 116
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRateAmp_Tdt:F

    .line 117
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mobileGameCnt_Tdt:I

    .line 118
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mGTwtTearCnt_Tdt:I

    .line 119
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->currentTimeMilliSec:J

    .line 120
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->prevTimeMilliSec:J

    .line 121
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRTAnomalyDetCnt:I

    const/4 v3, 0x4

    new-array v4, v3, [I

    .line 122
    fill-array-data v4, :array_de

    iput-object v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAnomalyLife:[I

    .line 123
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mMaxAnomalyNum:I

    const/16 v4, 0x14

    .line 124
    iput v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAnomalyWinSize:I

    .line 125
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mNumContinueAnomaly:I

    .line 126
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mIsAbnormalAP:Z

    .line 127
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->abnormalApDetMilliSec:J

    .line 128
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomDetCnt:I

    .line 129
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTContinueAnom:I

    new-array v1, v3, [I

    .line 130
    fill-array-data v1, :array_ea

    iput-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomLife:[I

    .line 131
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mMaxInterTAnomNum:I

    .line 132
    iput v4, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTWinSize:I

    .line 133
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterT:I

    .line 134
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterTTDCnt:I

    .line 136
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtNegotiated:Z

    .line 140
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvIndex:I

    .line 141
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvCount:I

    const/16 v0, 0x100

    new-array v1, v0, [J

    .line 142
    iput-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->pktCntDLPerSP:[J

    new-array v1, v0, [J

    .line 143
    iput-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->pktCntULPerSP:[J

    new-array v1, v0, [J

    .line 144
    iput-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->pktUlSize:[J

    new-array v1, v0, [J

    .line 145
    iput-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->pktDlSize:[J

    new-array v1, v0, [J

    .line 146
    iput-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TdtCca:[J

    new-array v0, v0, [J

    .line 147
    iput-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TCca10002TRadio:[J

    .line 166
    new-instance v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;-><init>(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 1243
    new-instance v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;-><init>(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    .line 150
    iput-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 151
    iput-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 152
    new-instance p2, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;

    invoke-direct {p2, p1}, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;-><init>(Lcom/samsung/android/server/wifi/twt/SemTwtInfo;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvCase3:Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;

    .line 153
    new-instance p2, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    invoke-direct {p2, p1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;-><init>(Lcom/samsung/android/server/wifi/twt/SemTwtInfo;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    return-void

    nop

    :array_de
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_ea
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static mapFactorRxFunc(FFF)F
    .registers 3

    mul-float/2addr p1, p0

    add-float/2addr p1, p2

    const/high16 p0, 0x3f800000    # 1.0f

    div-float/2addr p0, p1

    return p0
.end method

.method private static mapFactorTxFunc(FFF)F
    .registers 3

    mul-float/2addr p1, p0

    add-float/2addr p1, p2

    div-float/2addr p1, p0

    return p1
.end method


# virtual methods
.method public TWTIntervalNSD()I
    .registers 7

    .line 281
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getNetworkServiceDetectionResults()[I

    move-result-object v0

    const/4 v1, 0x3

    .line 282
    aget v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->setCloudGame(I)V

    const/4 p0, 0x0

    .line 284
    aget p0, v0, p0

    const v1, 0xa000

    const/16 v2, 0x5000

    const/4 v3, 0x1

    const/16 v4, 0x6000

    const/4 v5, 0x2

    if-nez p0, :cond_2f

    .line 285
    aget p0, v0, v5

    if-ne p0, v3, :cond_24

    const/4 p0, 0x6

    .line 286
    aget p0, v0, p0

    if-eqz p0, :cond_36

    goto :goto_33

    :cond_24
    if-ne p0, v5, :cond_35

    const/4 p0, 0x7

    .line 301
    aget p0, v0, p0

    if-eqz p0, :cond_36

    const v1, 0xc000

    goto :goto_36

    .line 316
    :cond_2f
    aget p0, v0, v5

    if-ne p0, v3, :cond_35

    :goto_33
    move v1, v4

    goto :goto_36

    :cond_35
    move v1, v2

    :cond_36
    :goto_36
    return v1
.end method

.method public TWTParameterPoll()Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;
    .registers 30

    move-object/from16 v0, p0

    .line 342
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getPacketMonitoringStats()[J

    move-result-object v1

    const/4 v2, 0x0

    .line 343
    aget-wide v3, v1, v2

    iput-wide v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageTdt:J

    const/4 v3, 0x1

    .line 344
    aget-wide v4, v1, v3

    iput-wide v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mMaxTdt:J

    const/4 v4, 0x2

    .line 345
    aget-wide v5, v1, v4

    iput-wide v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mDataTime:J

    const/4 v5, 0x3

    .line 346
    aget-wide v6, v1, v5

    iput-wide v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mPacketSize:J

    const/4 v6, 0x4

    .line 347
    aget-wide v6, v1, v6

    iput-wide v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mPacketCount:J

    const/4 v6, 0x5

    .line 348
    aget-wide v6, v1, v6

    iput-wide v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageContentTime:J

    const/4 v6, 0x6

    .line 349
    aget-wide v7, v1, v6

    iput-wide v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mPktCntSize:J

    const/4 v7, 0x7

    .line 350
    aget-wide v8, v1, v7

    iput-wide v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mDlPktCnt:J

    const/16 v8, 0x8

    .line 351
    aget-wide v8, v1, v8

    iput-wide v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mUlPktCnt:J

    const/16 v8, 0x9

    .line 352
    aget-wide v8, v1, v8

    iput-wide v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRadioOnTimeMs:J

    const/16 v8, 0xa

    .line 353
    aget-wide v8, v1, v8

    iput-wide v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mVarTdt:J

    .line 355
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getMainCategoryServiceType()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serTypeCur:I

    .line 356
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getSubCategoryServiceType()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serSubTypeCur:I

    .line 358
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getNetworkServiceDetectionResults()[I

    move-result-object v1

    .line 359
    aget v8, v1, v5

    invoke-virtual {v0, v8}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->setCloudGame(I)V

    .line 361
    iget-object v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getTrafficInfo()[I

    move-result-object v8

    .line 362
    aget v9, v8, v2

    iput v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->trafficTypeCur:I

    .line 364
    iget-object v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PM_info "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageTdt:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mMaxTdt:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mVarTdt:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mDataTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mPacketSize:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mPacketCount:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageContentTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mPktCntSize:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRadioOnTimeMs:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mDlPktCnt:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mUlPktCnt:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->trafficTypeCur:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serTypeCur:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 370
    iget-object v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getTWTParams()[I

    move-result-object v9

    .line 371
    aget v10, v9, v4

    iput v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalReal:I

    .line 372
    aget v9, v9, v3

    iput v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spReal:I

    .line 373
    iget-object v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getLinkSpeed()[I

    move-result-object v9

    .line 375
    iget-object v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iput-boolean v2, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->needSessionRenewal:Z

    .line 376
    iput-boolean v2, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->mTbufThdFlag:Z

    .line 378
    iget-boolean v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->appTwtDisableFlag:Z

    if-nez v12, :cond_1bc

    .line 380
    aget v12, v1, v2

    const/16 v13, 0x6000

    if-nez v12, :cond_168

    .line 382
    aget v10, v1, v4

    const v12, 0xa000

    if-ne v10, v3, :cond_120

    .line 383
    aget v1, v1, v6

    if-eqz v1, :cond_11d

    if-eq v1, v3, :cond_11a

    if-eq v1, v4, :cond_117

    .line 394
    iput v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    goto :goto_13a

    .line 391
    :cond_117
    iput v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    goto :goto_13a

    .line 388
    :cond_11a
    iput v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    goto :goto_13a

    .line 385
    :cond_11d
    iput v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    goto :goto_13a

    .line 398
    :cond_120
    iget-boolean v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->ovfIntAdjFlag:Z

    if-eqz v6, :cond_129

    .line 399
    iput v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    .line 400
    iput-boolean v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->ovfIntAdjFlag:Z

    goto :goto_13a

    .line 402
    :cond_129
    aget v1, v1, v7

    if-eqz v1, :cond_138

    const v6, 0xc000

    if-eq v1, v4, :cond_135

    .line 410
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    goto :goto_13a

    .line 407
    :cond_135
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    goto :goto_13a

    .line 404
    :cond_138
    iput v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    .line 416
    :goto_13a
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getmRawPacketCount()[J

    move-result-object v13

    .line 417
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serTypeCur:I

    if-ne v1, v4, :cond_161

    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serSubTypeCur:I

    if-ne v1, v5, :cond_161

    .line 418
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget-object v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvCase3:Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;

    iget-wide v14, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mPktCntSize:J

    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->winSize:I

    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalReal:I

    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v10

    invoke-virtual/range {v12 .. v18}, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->run([JJIII)I

    move-result v6

    iput v6, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    goto :goto_16a

    .line 420
    :cond_161
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    iput v6, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    goto :goto_16a

    .line 423
    :cond_168
    iput v13, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 427
    :goto_16a
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->trafficTypeCur:I

    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->trafficTypePrev:I

    if-eq v1, v6, :cond_175

    .line 429
    iget-object v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    invoke-virtual {v6, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmTrafficType(I)V

    .line 433
    :cond_175
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->traffDetPara:[I

    move-object/from16 v28, v1

    aget v6, v8, v3

    aput v6, v1, v2

    .line 434
    aget v6, v8, v4

    aput v6, v1, v3

    .line 435
    aget v6, v8, v5

    aput v6, v1, v4

    .line 436
    iget-object v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    iget-wide v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mMaxTdt:J

    iget-wide v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageTdt:J

    move-wide v15, v6

    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget v1, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    move/from16 v17, v1

    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spReal:I

    move/from16 v18, v1

    const/16 v19, 0x0

    iget-wide v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageContentTime:J

    move-wide/from16 v20, v6

    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalReal:I

    move/from16 v22, v1

    aget v23, v9, v2

    aget v24, v9, v3

    aget v25, v9, v5

    iget-wide v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mVarTdt:J

    move-wide/from16 v26, v4

    invoke-virtual/range {v12 .. v28}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->run(JJIIZJIIIIJ[I)B

    .line 437
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget-object v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->getmSP()I

    move-result v4

    iput v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 438
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->trafficTypeCur:I

    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->trafficTypePrev:I

    goto :goto_1c2

    :cond_1bc
    const/16 v1, 0x5000

    .line 440
    iput v1, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 441
    iput v1, v10, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 444
    :goto_1c2
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget-object v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->getmEpsilon()J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->mTbufThreshold:I

    .line 445
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget-object v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->getmOverflowThreshold()I

    move-result v4

    iput v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->overflowThd:I

    .line 446
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->overflowThd:I

    iput v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->overflowThreshold:I

    .line 447
    iget v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->mTbufThreshold:I

    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->epsilon:I

    if-eq v4, v5, :cond_1e7

    .line 448
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->mTbufThdFlag:Z

    .line 449
    iput v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->epsilon:I

    .line 452
    :cond_1e7
    iget v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    const v5, 0xee48

    if-ge v4, v5, :cond_1f7

    .line 453
    iget-object v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->trafficTypeCallingPeriod()I

    move-result v4

    iput v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->callPeriod:I

    goto :goto_1fe

    .line 455
    :cond_1f7
    iget v5, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->windowSize:I

    mul-int/2addr v5, v4

    div-int/lit16 v5, v5, 0x3e8

    iput v5, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->callPeriod:I

    .line 459
    :goto_1fe
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->curTime:J

    .line 461
    iget-wide v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRadioOnTimeMs:J

    long-to-float v1, v6

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v8

    iget-wide v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->prevTime:J

    sub-long v12, v4, v8

    const-wide/16 v14, 0x1f4

    add-long/2addr v12, v14

    const-wide/16 v16, 0x3e8

    div-long v12, v12, v16

    long-to-float v10, v12

    div-float/2addr v1, v10

    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycle:F

    .line 462
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->awakeTimeSum:F

    mul-long v6, v6, v16

    long-to-float v6, v6

    add-float/2addr v1, v6

    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->awakeTimeSum:F

    .line 463
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spReal:I

    int-to-float v7, v6

    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalReal:I

    int-to-float v12, v10

    div-float/2addr v7, v12

    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2i:F

    .line 464
    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spSum:F

    int-to-float v6, v6

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v6, v12

    int-to-float v10, v10

    div-float/2addr v6, v10

    sub-long v18, v4, v8

    add-long v18, v18, v14

    div-long v2, v18, v16

    long-to-float v2, v2

    mul-float/2addr v6, v2

    add-float/2addr v7, v6

    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spSum:F

    .line 465
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvSum:F

    sub-long v18, v4, v8

    add-long v18, v18, v14

    move-object v3, v11

    div-long v10, v18, v16

    long-to-float v10, v10

    add-float/2addr v2, v10

    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvSum:F

    div-float/2addr v7, v2

    .line 466
    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iTotal:F

    div-float/2addr v1, v2

    .line 467
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleAve:F

    .line 469
    iget v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgoSum:F

    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgo:I

    int-to-float v7, v7

    mul-float/2addr v7, v12

    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalAlgo:I

    int-to-float v10, v10

    div-float/2addr v7, v10

    sub-long v8, v4, v8

    add-long/2addr v8, v14

    div-long v8, v8, v16

    long-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v1, v7

    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgoSum:F

    div-float/2addr v1, v2

    .line 470
    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iAlgoTotal:F

    .line 472
    iput-wide v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->prevTime:J

    .line 474
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    const/16 v4, 0x2000

    if-ge v2, v4, :cond_273

    .line 475
    iput v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 478
    :cond_273
    iget v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->twtQuantization(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 480
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 481
    iget v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 483
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalAlgo:I

    if-lt v2, v5, :cond_29e

    mul-int v7, v4, v5

    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgo:I

    mul-int v9, v2, v8

    if-ge v7, v9, :cond_29e

    .line 484
    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleReducedCnt:I

    const/4 v9, 0x1

    add-int/2addr v7, v9

    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleReducedCnt:I

    if-gt v7, v9, :cond_29a

    .line 486
    iput v5, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 487
    iput v8, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    goto :goto_2a1

    :cond_29a
    const/4 v6, 0x0

    .line 489
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleReducedCnt:I

    goto :goto_2a1

    :cond_29e
    const/4 v6, 0x0

    .line 492
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleReducedCnt:I

    .line 495
    :goto_2a1
    iget v6, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    const-wide/16 v7, 0x1

    if-eq v6, v5, :cond_2b2

    const/4 v5, 0x1

    .line 496
    iput-boolean v5, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->needSessionRenewal:Z

    .line 497
    iget-wide v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvNegCnt:J

    add-long/2addr v11, v7

    iput-wide v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvNegCnt:J

    .line 498
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalAlgo:I

    goto :goto_2b3

    :cond_2b2
    const/4 v5, 0x1

    .line 501
    :goto_2b3
    iget v6, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    iget v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgo:I

    if-eq v6, v9, :cond_2c2

    .line 502
    iput-boolean v5, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->needSessionRenewal:Z

    .line 503
    iget-wide v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spNegCnt:J

    add-long/2addr v11, v7

    iput-wide v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spNegCnt:J

    .line 504
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgo:I

    .line 507
    :cond_2c2
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalReal:I

    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalAlgo:I

    sub-int v9, v5, v6

    const/16 v11, 0x1000

    if-gt v9, v11, :cond_2d4

    iget v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgo:I

    mul-int/2addr v9, v5

    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spReal:I

    mul-int/2addr v5, v6

    if-le v9, v5, :cond_2d7

    :cond_2d4
    const/4 v5, 0x1

    .line 508
    iput-boolean v5, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->needSessionRenewal:Z

    .line 511
    :cond_2d7
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Suggestion "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget v6, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget v6, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalReal:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spReal:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleReducedCnt:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget v2, v2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->overflowThd:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget v2, v2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->callPeriod:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget-boolean v2, v2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->needSessionRenewal:Z

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 514
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->twtPollCnt:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->twtPollCnt:J

    .line 515
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PollStats "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->twtPollCnt:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvNegCnt:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spNegCnt:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycle:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleAve:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2i:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iTotal:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iAlgoTotal:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 518
    iget-object v0, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    return-object v0
.end method

.method public getAppTwtDisableFlag(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_16

    const-string v1, "com.gamepass.beta"

    .line 640
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "com.gamepass"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 641
    :cond_13
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->appTwtDisableFlag:Z

    goto :goto_22

    .line 642
    :cond_16
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->getCloudGame()I

    move-result p1

    if-ne p1, v0, :cond_1f

    .line 643
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->appTwtDisableFlag:Z

    goto :goto_22

    :cond_1f
    const/4 p1, 0x0

    .line 645
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->appTwtDisableFlag:Z

    .line 648
    :goto_22
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->appTwtDisableFlag:Z

    return p0
.end method

.method public getCallPeriod(I)I
    .registers 3

    if-nez p1, :cond_7

    .line 602
    iget-object p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->callPeriod:I

    return p0

    :cond_7
    const v0, 0xee48

    if-le p1, v0, :cond_14

    .line 604
    iget-object p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->windowSize:I

    mul-int/2addr p0, p1

    div-int/lit16 p0, p0, 0x3e8

    return p0

    .line 606
    :cond_14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->callPeriod:I

    return p0
.end method

.method public getCloudGame()I
    .registers 1

    .line 656
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serDetCloudGame:I

    return p0
.end method

.method public getEpsilonValue(J)J
    .registers 5

    .line 669
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getLinkSpeed()[I

    move-result-object v0

    const/4 v1, 0x1

    .line 670
    aget v0, v0, v1

    .line 671
    iget-object p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->calculateEpsilon(IJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getIntvAppReset()Z
    .registers 1

    .line 636
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvAppResetEn:Z

    return p0
.end method

.method public getSerDetRes()I
    .registers 1

    .line 652
    iget p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serTypeCur:I

    return p0
.end method

.method public initialize()Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;
    .registers 3

    const/16 v0, 0x6000

    const/4 v1, 0x1

    .line 169
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->modeSelection(IZ)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    move-result-object p0

    return-object p0
.end method

.method public modeSelection(IZ)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;
    .registers 10

    .line 220
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    const/4 v0, 0x0

    .line 221
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleReducedCnt:I

    .line 224
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvCase3:Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->init()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 225
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TWTIntervalNSD()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 226
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget v1, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalAlgo:I

    .line 229
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->init()V

    .line 230
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->appTwtDisableFlag:Z

    if-nez v1, :cond_32

    .line 231
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    iget v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-int v2, v4

    iput v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    goto :goto_38

    .line 233
    :cond_32
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    iput v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 235
    :goto_38
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    iput v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgo:I

    .line 237
    iget-object v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->getmEpsilon()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->mTbufThreshold:I

    .line 238
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->getmOverflowThreshold()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->overflowThd:I

    .line 239
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->overflowThd:I

    iput v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->overflowThreshold:I

    const/4 v2, 0x1

    .line 240
    iput-boolean v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->mTbufThdFlag:Z

    .line 241
    iput-boolean v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->needSessionRenewal:Z

    const/16 v3, 0x32

    .line 243
    iput v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->windowSize:I

    .line 245
    iput v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->winSize:I

    const/16 v3, 0xbea

    .line 246
    iput v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->callPeriod:I

    .line 247
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->modeSelCnt:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->modeSelCnt:J

    if-ne p2, v2, :cond_83

    const/4 p2, 0x0

    .line 251
    iput p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iTotal:F

    .line 252
    iput p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spSum:F

    .line 253
    iput p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvSum:F

    .line 254
    iput p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->awakeTimeSum:F

    .line 255
    iput p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleAve:F

    .line 256
    iput p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgoSum:F

    .line 258
    iput v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->trafficTypePrev:I

    .line 259
    iput v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->trafficTypeCur:I

    .line 260
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->appTwtDisableFlag:Z

    goto :goto_8a

    .line 262
    :cond_83
    iget-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    const-string v1, "Met. maintained"

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 265
    :goto_8a
    iget-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget v1, p2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->twtQuantization(I)I

    move-result v1

    iput v1, p2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 267
    iget-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InitMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget v2, v2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget v3, v3, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->modeSelCnt:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget p1, p1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->windowSize:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget p1, p1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->overflowThd:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget p1, p1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->callPeriod:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget-boolean p1, p1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->needSessionRenewal:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget p1, p1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->mTbufThreshold:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget-boolean p1, p1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->mTbufThdFlag:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iTotal:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleAve:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 271
    iget-object p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    return-object p0
.end method

.method public modeSelectionDet(ILjava/lang/String;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;
    .registers 5

    const/4 p1, 0x0

    if-eqz p2, :cond_17

    const-string v0, "com.gamepass.beta"

    .line 187
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "com.gamepass"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    :cond_13
    const/4 p2, 0x1

    .line 188
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->appTwtDisableFlag:Z

    goto :goto_19

    .line 190
    :cond_17
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->appTwtDisableFlag:Z

    :goto_19
    const/16 p2, 0x6000

    .line 195
    iput p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    .line 196
    iget-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default_LR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 200
    iget-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmEpsilon(J)V

    .line 201
    iget-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    const v0, 0x3d4ccccd    # 0.05f

    invoke-virtual {p2, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmOverflowThresholdPercent(F)V

    .line 202
    iget-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {p2, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmOverflowGuardThr(F)V

    .line 203
    iget-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    invoke-virtual {p2, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmStableGuardLoEpsThr(F)V

    .line 204
    iget-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {p2, v0}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmStableGuardHiEpsThr(F)V

    .line 205
    iget-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->setmTdtUpdateMode(I)V

    .line 206
    iget-object p2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    const-string v0, "WD_config 1000 0.05 0.2 0.05 0.1 0"

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 210
    iget-object p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    return-object p0
.end method

.method public overflowWarning(I)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;
    .registers 25

    move-object/from16 v0, p0

    .line 534
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getNetworkServiceDetectionResults()[I

    move-result-object v1

    const/4 v2, 0x3

    .line 535
    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->setCloudGame(I)V

    .line 538
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getPacketMonitoringStats()[J

    move-result-object v1

    const/4 v3, 0x0

    .line 539
    aget-wide v4, v1, v3

    iput-wide v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageTdt:J

    const/4 v4, 0x1

    .line 540
    aget-wide v5, v1, v4

    iput-wide v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mMaxTdt:J

    const/4 v5, 0x2

    .line 541
    aget-wide v6, v1, v5

    iput-wide v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mDataTime:J

    .line 542
    aget-wide v6, v1, v2

    iput-wide v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mPacketSize:J

    const/4 v6, 0x4

    .line 543
    aget-wide v6, v1, v6

    iput-wide v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mPacketCount:J

    const/4 v6, 0x5

    .line 544
    aget-wide v6, v1, v6

    iput-wide v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageContentTime:J

    const/16 v6, 0xa

    .line 545
    aget-wide v6, v1, v6

    iput-wide v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mVarTdt:J

    .line 548
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getTWTParams()[I

    move-result-object v1

    .line 549
    aget v6, v1, v5

    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalReal:I

    .line 550
    aget v1, v1, v4

    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spReal:I

    .line 553
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getLinkSpeed()[I

    move-result-object v1

    const v6, 0xafc8

    move/from16 v7, p1

    if-le v7, v6, :cond_61

    .line 555
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serTypeCur:I

    if-ne v6, v5, :cond_61

    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->trafficTypeCur:I

    if-eq v5, v2, :cond_61

    const v5, 0xa000

    .line 556
    iput v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalAlgo:I

    .line 557
    iput-boolean v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->ovfIntAdjFlag:Z

    .line 560
    :cond_61
    iget-object v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    iget-wide v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mMaxTdt:J

    iget-wide v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageTdt:J

    iget v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalAlgo:I

    iget v12, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spReal:I

    const/4 v13, 0x1

    iget-wide v14, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageContentTime:J

    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalReal:I

    move/from16 v16, v5

    aget v17, v1, v3

    aget v18, v1, v4

    aget v19, v1, v2

    iget-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mVarTdt:J

    move-wide/from16 v20, v1

    const/16 v22, 0x0

    invoke-virtual/range {v6 .. v22}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->run(JJIIZJIIIIJ[I)B

    .line 565
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalAlgo:I

    iput v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 566
    iget-object v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spDuration:Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/twt/SemTwtSpDuration;->getmSP()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 567
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iput-boolean v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->needSessionRenewal:Z

    .line 568
    iput-boolean v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->mTbufThdFlag:Z

    .line 571
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->curTime:J

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->prevTime:J

    .line 573
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OP_info "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mMaxTdt:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAverageTdt:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mVarTdt:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mDataTime:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalAlgo:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalReal:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spReal:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 576
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->curTime:J

    .line 578
    iget-wide v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRadioOnTimeMs:J

    long-to-float v7, v5

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    iget-wide v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->prevTime:J

    sub-long v10, v1, v8

    const-wide/16 v12, 0x1f4

    add-long/2addr v10, v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v10, v14

    long-to-float v10, v10

    div-float/2addr v7, v10

    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycle:F

    .line 579
    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->awakeTimeSum:F

    mul-long/2addr v5, v14

    long-to-float v5, v5

    add-float/2addr v7, v5

    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->awakeTimeSum:F

    .line 580
    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spReal:I

    int-to-float v6, v5

    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalReal:I

    int-to-float v11, v10

    div-float/2addr v6, v11

    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2i:F

    .line 581
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spSum:F

    int-to-float v5, v5

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v5, v11

    int-to-float v10, v10

    div-float/2addr v5, v10

    sub-long v16, v1, v8

    add-long v16, v16, v12

    move-object/from16 p1, v4

    div-long v3, v16, v14

    long-to-float v3, v3

    mul-float/2addr v5, v3

    add-float/2addr v6, v5

    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spSum:F

    .line 582
    iget v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvSum:F

    sub-long v4, v1, v8

    add-long/2addr v4, v12

    div-long/2addr v4, v14

    long-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvSum:F

    div-float/2addr v6, v3

    .line 583
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iTotal:F

    div-float/2addr v7, v3

    .line 584
    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleAve:F

    .line 586
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgoSum:F

    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgo:I

    int-to-float v5, v5

    mul-float/2addr v5, v11

    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalAlgo:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-long v6, v1, v8

    add-long/2addr v6, v12

    div-long/2addr v6, v14

    long-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgoSum:F

    div-float/2addr v4, v3

    .line 587
    iput v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iAlgoTotal:F

    .line 589
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->prevTime:J

    .line 590
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->twtQuantization(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 591
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget v1, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    iput v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgo:I

    .line 593
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OP_result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget v3, v3, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    iget v4, v4, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycle:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleAve:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2i:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iTotal:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iAlgoTotal:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 597
    iget-object v0, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->algOut:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    return-object v0
.end method

.method public reinitialize()Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;
    .registers 3

    .line 173
    iget v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->modeSelection(IZ)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    move-result-object p0

    return-object p0
.end method

.method public reinitialize(Ljava/lang/String;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;
    .registers 3

    .line 177
    iget v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->latReq:I

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->modeSelectionDet(ILjava/lang/String;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    move-result-object p0

    return-object p0
.end method

.method public resetAbnormalApPatchStat()V
    .registers 2

    const/4 v0, 0x0

    .line 1155
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRTAnomalyDetCnt:I

    .line 1156
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mNumContinueAnomaly:I

    .line 1157
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mIsAbnormalAP:Z

    return-void
.end method

.method public resetDataArray()V
    .registers 2

    const/4 v0, 0x0

    .line 1143
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvIndex:I

    .line 1144
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvCount:I

    return-void
.end method

.method public resetQosTxgoodPatchStat()V
    .registers 2

    const/4 v0, 0x0

    .line 1161
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mGTwtTearCnt_Tdt:I

    .line 1162
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mobileGameCnt_Tdt:I

    .line 1163
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterTTDCnt:I

    .line 1164
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomDetCnt:I

    .line 1165
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTContinueAnom:I

    .line 1166
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterT:I

    return-void
.end method

.method public setCloudGame(I)V
    .registers 3

    .line 660
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serDetCloudGame:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 662
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->appTwtDisableFlag:Z

    goto :goto_b

    :cond_8
    const/4 p1, 0x0

    .line 664
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->appTwtDisableFlag:Z

    :goto_b
    return-void
.end method

.method public setIntvAlgo(I)V
    .registers 2

    .line 631
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvalAlgo:I

    .line 632
    iget-object p0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvCase3:Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/twt/SemTwtIntvCase3;->setTwtInterval(I)V

    return-void
.end method

.method public setTwtMetric(JJJ)V
    .registers 27

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 611
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->curTime:J

    long-to-float v7, v1

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    .line 613
    iget-wide v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->prevTime:J

    sub-long v10, v5, v8

    const-wide/16 v12, 0x1f4

    add-long/2addr v10, v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v10, v14

    long-to-float v10, v10

    div-float v10, v7, v10

    iput v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycle:F

    .line 614
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->awakeTimeSum:F

    add-float/2addr v10, v7

    iput v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->awakeTimeSum:F

    move-wide/from16 v14, p5

    long-to-float v7, v14

    long-to-float v11, v3

    div-float v14, v7, v11

    .line 615
    iput v14, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2i:F

    .line 616
    iget v14, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spSum:F

    const/high16 v15, 0x3f800000    # 1.0f

    mul-float/2addr v7, v15

    div-float/2addr v7, v11

    sub-long v18, v5, v8

    add-long v18, v18, v12

    const-wide/16 v15, 0x3e8

    div-long v12, v18, v15

    long-to-float v11, v12

    mul-float/2addr v11, v7

    add-float/2addr v14, v11

    iput v14, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spSum:F

    .line 617
    iget v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvSum:F

    sub-long v12, v5, v8

    const-wide/16 v17, 0x1f4

    add-long v12, v12, v17

    div-long/2addr v12, v15

    long-to-float v12, v12

    add-float/2addr v11, v12

    iput v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvSum:F

    div-float/2addr v14, v11

    .line 618
    iput v14, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iTotal:F

    div-float/2addr v10, v11

    .line 619
    iput v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleAve:F

    .line 621
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgoSum:F

    sub-long v8, v5, v8

    add-long v8, v8, v17

    div-long/2addr v8, v15

    long-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v10, v7

    iput v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->spAlgoSum:F

    div-float/2addr v10, v11

    .line 622
    iput v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iAlgoTotal:F

    .line 624
    iput-wide v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->prevTime:J

    .line 626
    iget-object v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SetMet. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycle:F

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->dutyCycleAve:F

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2i:F

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iTotal:F

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->s2iAlgoTotal:F

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    return-void
.end method

.method public tdtOverFlowPerSP(IILcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;)F
    .registers 46

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 696
    iget-object v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getMainCategoryServiceType()I

    move-result v2

    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serTypeCur:I

    .line 697
    iget-object v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getSubCategoryServiceType()I

    move-result v2

    iput v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->serSubTypeCur:I

    .line 698
    iget-object v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getTrafficInfo()[I

    move-result-object v2

    .line 699
    iget-object v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getTWTParams()[I

    move-result-object v3

    const/4 v4, 0x1

    .line 700
    aget v5, v3, v4

    const/4 v6, 0x2

    .line 701
    aget v3, v3, v6

    .line 703
    iget-object v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getNetworkServiceDetectionResults()[I

    move-result-object v7

    const/4 v8, 0x3

    .line 704
    aget v9, v7, v8

    invoke-virtual {v0, v9}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->setCloudGame(I)V

    .line 706
    iget-object v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getTWTStatus()Z

    move-result v9

    iput-boolean v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtNegotiated:Z

    .line 708
    iget-object v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getDiffStats()[J

    move-result-object v9

    .line 709
    iget-object v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getLinkSpeed()[I

    move-result-object v10

    .line 710
    iget-object v11, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v11}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getLinkLayerDiffStats()[J

    move-result-object v11

    .line 712
    aget-wide v12, v9, v6

    .line 713
    aget-wide v14, v9, v8

    const/16 v16, 0x6

    move-object/from16 v18, v7

    .line 714
    aget-wide v6, v9, v16

    const/16 v19, 0x7

    .line 715
    aget-wide v8, v9, v19

    move/from16 v21, v3

    const/4 v3, 0x0

    move/from16 v22, v5

    .line 717
    aget v5, v10, v3

    .line 718
    aget v10, v10, v4

    move-wide/from16 v23, v6

    .line 720
    aget-wide v6, v11, v3

    .line 721
    aget-wide v25, v11, v4

    const/16 v17, 0x2

    .line 722
    aget-wide v27, v11, v17

    const/16 v20, 0x3

    .line 723
    aget-wide v3, v11, v20

    const/16 v30, 0x5

    move-wide/from16 v31, v14

    .line 724
    aget-wide v14, v11, v30

    add-long v33, v6, v25

    move-wide/from16 v35, v12

    add-long v11, v33, v27

    const-wide/16 v33, 0x0

    cmp-long v13, v11, v33

    if-lez v13, :cond_88

    long-to-float v6, v6

    long-to-float v7, v11

    div-float/2addr v6, v7

    .line 729
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRate_Tdt:F

    :cond_88
    cmp-long v6, v3, v33

    if-lez v6, :cond_91

    long-to-float v6, v14

    long-to-float v7, v3

    div-float/2addr v6, v7

    .line 733
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->RxPktSize_Tdt:F

    :cond_91
    const/4 v6, 0x0

    if-nez v1, :cond_96

    move v7, v6

    goto :goto_98

    .line 736
    :cond_96
    iget v7, v1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->ulPacketSizeAvg:F

    :goto_98
    if-gtz p1, :cond_9d

    move/from16 v13, v21

    goto :goto_9f

    :cond_9d
    move/from16 v13, p1

    :goto_9f
    int-to-float v13, v13

    const/high16 v14, 0x447a0000    # 1000.0f

    mul-float/2addr v13, v14

    long-to-float v8, v8

    div-float/2addr v13, v8

    cmpl-float v8, v13, v6

    if-lez v8, :cond_aa

    goto :goto_ac

    :cond_aa
    const/high16 v13, 0x3f800000    # 1.0f

    :goto_ac
    const/high16 v8, 0x44af0000    # 1400.0f

    cmpl-float v15, v7, v8

    const/high16 v37, 0x44610000    # 900.0f

    const v38, 0x44898000    # 1100.0f

    if-ltz v15, :cond_c0

    int-to-float v7, v5

    const v15, 0x40466666    # 3.1f

    .line 756
    invoke-static {v7, v6, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorTxFunc(FFF)F

    move-result v7

    goto :goto_11b

    :cond_c0
    cmpl-float v15, v7, v38

    if-ltz v15, :cond_cd

    int-to-float v7, v5

    const v15, 0x40333333    # 2.8f

    .line 758
    invoke-static {v7, v6, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorTxFunc(FFF)F

    move-result v7

    goto :goto_11b

    :cond_cd
    cmpl-float v15, v7, v37

    if-ltz v15, :cond_da

    int-to-float v7, v5

    const v15, 0x402ccccd    # 2.7f

    .line 760
    invoke-static {v7, v6, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorTxFunc(FFF)F

    move-result v7

    goto :goto_11b

    :cond_da
    const/high16 v15, 0x442f0000    # 700.0f

    cmpl-float v15, v7, v15

    if-ltz v15, :cond_ec

    int-to-float v7, v5

    const v15, 0x3b16bb99    # 0.0023f

    const v9, 0x3ff5c28f    # 1.92f

    .line 762
    invoke-static {v7, v15, v9}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorTxFunc(FFF)F

    move-result v7

    goto :goto_11b

    :cond_ec
    const/high16 v9, 0x43fa0000    # 500.0f

    cmpl-float v9, v7, v9

    if-ltz v9, :cond_fe

    int-to-float v7, v5

    const v9, 0x3b4b295f    # 0.0031f

    const v15, 0x40170a3d    # 2.36f

    .line 764
    invoke-static {v7, v9, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorTxFunc(FFF)F

    move-result v7

    goto :goto_11b

    :cond_fe
    const/high16 v9, 0x43960000    # 300.0f

    cmpl-float v7, v7, v9

    if-ltz v7, :cond_110

    int-to-float v7, v5

    const v9, 0x3c09a027    # 0.0084f

    const v15, 0x4039999a    # 2.9f

    .line 766
    invoke-static {v7, v9, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorTxFunc(FFF)F

    move-result v7

    goto :goto_11b

    :cond_110
    int-to-float v7, v5

    const v9, 0x3c656042    # 0.014f

    const v15, 0x4041eb85    # 3.03f

    .line 768
    invoke-static {v7, v9, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorTxFunc(FFF)F

    move-result v7

    .line 771
    :goto_11b
    iget v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->RxPktSize_Tdt:F

    cmpl-float v8, v9, v8

    const/16 v15, 0x64

    if-ltz v8, :cond_13c

    if-lt v10, v15, :cond_132

    int-to-float v8, v10

    const v9, 0x3f19999a    # 0.6f

    const v14, -0x3e323d71    # -25.72f

    .line 773
    invoke-static {v8, v9, v14}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    move-result v8

    goto/16 :goto_1e2

    :cond_132
    int-to-float v8, v10

    const v9, 0x3eaa7efa    # 0.333f

    .line 775
    invoke-static {v8, v9, v6}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    move-result v8

    goto/16 :goto_1e2

    :cond_13c
    cmpl-float v8, v9, v38

    if-ltz v8, :cond_159

    if-lt v10, v15, :cond_14f

    int-to-float v8, v10

    const v9, 0x3f0ccccd    # 0.55f

    const v14, -0x3e5f3333    # -20.1f

    .line 779
    invoke-static {v8, v9, v14}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    move-result v8

    goto/16 :goto_1e2

    :cond_14f
    int-to-float v8, v10

    const v9, 0x3eb33333    # 0.35f

    .line 781
    invoke-static {v8, v9, v6}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    move-result v8

    goto/16 :goto_1e2

    :cond_159
    cmpl-float v8, v9, v37

    if-ltz v8, :cond_176

    if-lt v10, v15, :cond_16c

    int-to-float v8, v10

    const v9, 0x3f07ae14    # 0.53f

    const v14, -0x3e6b5c29    # -18.58f

    .line 785
    invoke-static {v8, v9, v14}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    move-result v8

    goto/16 :goto_1e2

    :cond_16c
    int-to-float v8, v10

    const v9, 0x3eaf1aa0    # 0.342f

    .line 787
    invoke-static {v8, v9, v6}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    move-result v8

    goto/16 :goto_1e2

    :cond_176
    const/high16 v8, 0x442f0000    # 700.0f

    cmpl-float v8, v9, v8

    if-ltz v8, :cond_193

    if-lt v10, v15, :cond_18a

    int-to-float v8, v10

    const v9, 0x3ef5c28f    # 0.48f

    const v14, -0x3e7d999a    # -16.3f

    .line 791
    invoke-static {v8, v9, v14}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    move-result v8

    goto :goto_1e2

    :cond_18a
    int-to-float v8, v10

    const v9, 0x3ea4dd2f    # 0.322f

    .line 793
    invoke-static {v8, v9, v6}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    move-result v8

    goto :goto_1e2

    :cond_193
    const/high16 v8, 0x43fa0000    # 500.0f

    cmpl-float v8, v9, v8

    if-ltz v8, :cond_1af

    if-lt v10, v15, :cond_1a6

    int-to-float v8, v10

    const v9, 0x3ebae148    # 0.365f

    const/high16 v14, -0x3e480000    # -23.0f

    .line 797
    invoke-static {v8, v9, v14}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    move-result v8

    goto :goto_1e2

    :cond_1a6
    int-to-float v8, v10

    const v9, 0x3e0a3d71    # 0.135f

    .line 799
    invoke-static {v8, v9, v6}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    move-result v8

    goto :goto_1e2

    :cond_1af
    const/high16 v8, 0x43960000    # 300.0f

    cmpl-float v8, v9, v8

    if-ltz v8, :cond_1cc

    if-lt v10, v15, :cond_1c3

    int-to-float v8, v10

    const v9, 0x3e75c28f    # 0.24f

    const v14, -0x3eb66666    # -12.6f

    .line 803
    invoke-static {v8, v9, v14}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    move-result v8

    goto :goto_1e2

    :cond_1c3
    int-to-float v8, v10

    const v9, 0x3de978d5    # 0.114f

    .line 805
    invoke-static {v8, v9, v6}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    move-result v8

    goto :goto_1e2

    :cond_1cc
    if-lt v10, v15, :cond_1da

    int-to-float v8, v10

    const v9, 0x3e126e98    # 0.143f

    const v14, -0x3f79999a    # -4.2f

    .line 809
    invoke-static {v8, v9, v14}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    move-result v8

    goto :goto_1e2

    :cond_1da
    int-to-float v8, v10

    const v9, 0x3dcccccd    # 0.1f

    .line 811
    invoke-static {v8, v9, v6}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mapFactorRxFunc(FFF)F

    move-result v8

    :goto_1e2
    int-to-float v9, v10

    mul-float/2addr v9, v8

    int-to-float v14, v5

    mul-float/2addr v14, v7

    const/high16 v37, 0x41000000    # 8.0f

    if-eqz v5, :cond_201

    if-eqz v10, :cond_201

    move/from16 v39, v7

    move-wide/from16 v6, v35

    long-to-float v15, v6

    mul-float v15, v15, v37

    mul-float v15, v15, v39

    move-wide/from16 v40, v3

    move-wide/from16 v3, v31

    move-wide/from16 v31, v11

    long-to-float v11, v3

    mul-float v11, v11, v37

    mul-float/2addr v11, v8

    add-float/2addr v15, v11

    goto :goto_220

    :cond_201
    move-wide/from16 v40, v3

    move/from16 v39, v7

    move-wide/from16 v3, v31

    move-wide/from16 v6, v35

    move-wide/from16 v31, v11

    if-nez v5, :cond_215

    if-eqz v10, :cond_215

    long-to-float v11, v3

    mul-float v11, v11, v37

    mul-float v15, v11, v8

    goto :goto_220

    :cond_215
    if-eqz v5, :cond_21f

    if-nez v10, :cond_21f

    long-to-float v8, v6

    mul-float v8, v8, v37

    mul-float v15, v8, v39

    goto :goto_220

    :cond_21f
    const/4 v15, 0x0

    :goto_220
    const-wide/16 v11, 0x3e8

    cmp-long v8, v23, v11

    if-ltz v8, :cond_22f

    const/high16 v8, 0x43340000    # 180.0f

    move-wide/from16 v11, v23

    const/high16 v24, 0x3f800000    # 1.0f

    move/from16 v23, v10

    goto :goto_246

    .line 832
    :cond_22f
    iget-object v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    iget v8, v8, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->congestCoe_Tdt:F

    move-wide/from16 v11, v23

    move/from16 v23, v10

    long-to-float v10, v11

    const/high16 v24, 0x447a0000    # 1000.0f

    div-float v10, v10, v24

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v10, v24, v10

    div-float v10, v8, v10

    sub-float v8, v8, v24

    sub-float v8, v10, v8

    .line 835
    :goto_246
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRate_Tdt:F

    const v36, 0x3f666666    # 0.9f

    cmpl-float v36, v10, v36

    if-lez v36, :cond_256

    div-float v10, v24, v10

    .line 836
    iput v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRateAmp_Tdt:F

    :cond_253
    :goto_253
    move/from16 p1, v9

    goto :goto_288

    :cond_256
    const v24, 0x3f19999a    # 0.6f

    cmpl-float v24, v10, v24

    if-ltz v24, :cond_265

    const v24, 0x3f99999a    # 1.2f

    div-float v10, v24, v10

    .line 838
    iput v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRateAmp_Tdt:F

    goto :goto_253

    :cond_265
    const/16 v24, 0x0

    cmpl-float v36, v10, v24

    if-lez v36, :cond_273

    const v24, 0x3fb33333    # 1.4f

    div-float v10, v24, v10

    .line 840
    iput v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRateAmp_Tdt:F

    goto :goto_253

    :cond_273
    cmpl-float v10, v10, v24

    if-nez v10, :cond_253

    add-long v25, v25, v27

    cmp-long v10, v25, v33

    if-lez v10, :cond_253

    const-wide/16 v27, 0x1

    add-long v25, v25, v27

    move/from16 p1, v9

    .line 842
    div-long v9, v25, v27

    long-to-float v9, v9

    iput v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRateAmp_Tdt:F

    :goto_288
    mul-float/2addr v15, v13

    mul-float/2addr v15, v8

    .line 844
    iget v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRateAmp_Tdt:F

    mul-float v10, v15, v9

    iget-object v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    move-wide/from16 v24, v3

    iget-wide v3, v13, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->overHead_Tdt:J

    move/from16 v26, v5

    long-to-float v5, v3

    mul-float/2addr v5, v8

    add-float/2addr v10, v5

    move-wide/from16 v27, v6

    iget-wide v5, v13, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->constOverHead_Tdt:J

    long-to-float v7, v5

    add-float/2addr v10, v7

    move/from16 v33, v10

    const/4 v7, 0x0

    .line 846
    aget v10, v2, v7

    const/4 v7, 0x1

    if-ne v10, v7, :cond_2aa

    .line 847
    iget v10, v13, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mBoostFactor1_Tdt:F

    goto :goto_2b2

    :cond_2aa
    const/4 v7, 0x2

    if-ne v10, v7, :cond_2b0

    .line 849
    iget v10, v13, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mBoostFactor2_Tdt:F

    goto :goto_2b2

    .line 851
    :cond_2b0
    iget v10, v13, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mBoostFactor3_Tdt:F

    :goto_2b2
    const/4 v7, 0x4

    .line 854
    aget v13, v18, v7

    const/4 v7, 0x1

    if-ne v13, v7, :cond_2d3

    const/4 v7, 0x0

    aget v13, v18, v7

    if-nez v13, :cond_2d3

    const/high16 v3, 0x40000000    # 2.0f

    .line 855
    invoke-static {v10, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRateAmp_Tdt:F

    mul-float/2addr v15, v4

    mul-float/2addr v3, v15

    iget-object v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    iget-wide v5, v4, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->overHead_Tdt:J

    long-to-float v5, v5

    mul-float/2addr v5, v8

    add-float/2addr v3, v5

    iget-wide v4, v4, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->constOverHead_Tdt:J

    long-to-float v4, v4

    add-float/2addr v3, v4

    goto :goto_2da

    :cond_2d3
    mul-float/2addr v15, v9

    mul-float/2addr v10, v15

    long-to-float v3, v3

    mul-float/2addr v3, v8

    add-float/2addr v10, v3

    long-to-float v3, v5

    add-float/2addr v3, v10

    :goto_2da
    const/4 v4, 0x4

    .line 861
    aget v5, v18, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2ec

    aget v7, v18, v16

    if-ne v7, v6, :cond_2ec

    .line 862
    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mobileGameCnt_Tdt:I

    if-ge v7, v4, :cond_2f3

    add-int/2addr v7, v6

    .line 863
    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mobileGameCnt_Tdt:I

    goto :goto_2f3

    .line 865
    :cond_2ec
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mobileGameCnt_Tdt:I

    if-lez v4, :cond_2f3

    sub-int/2addr v4, v6

    .line 866
    iput v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mobileGameCnt_Tdt:I

    .line 870
    :cond_2f3
    :goto_2f3
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mobileGameCnt_Tdt:I

    iget-object v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    iget v7, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCntThd_Tdt:I

    const/16 v8, 0x12c

    if-le v4, v7, :cond_34d

    .line 871
    iget v4, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCcaThd1_Tdt:I

    int-to-long v9, v4

    cmp-long v4, v11, v9

    if-gtz v4, :cond_30c

    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRate_Tdt:F

    iget v7, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgTxGoodThd1_Tdt:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_332

    .line 872
    :cond_30c
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mGTwtTearCnt_Tdt:I

    const/16 v7, 0xa

    if-nez v4, :cond_315

    .line 873
    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mGTwtTearCnt_Tdt:I

    goto :goto_332

    .line 874
    :cond_315
    iget v9, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCcaThd2_Tdt:I

    int-to-long v9, v9

    cmp-long v9, v11, v9

    if-gtz v9, :cond_324

    iget v9, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRate_Tdt:F

    iget v10, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgTxGoodThd2_Tdt:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_32e

    :cond_324
    const/4 v9, 0x1

    if-lt v4, v9, :cond_32e

    const/16 v9, 0x9

    if-gt v4, v9, :cond_32e

    .line 876
    iput v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mGTwtTearCnt_Tdt:I

    goto :goto_332

    :cond_32e
    if-ge v4, v7, :cond_332

    .line 878
    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mGTwtTearCnt_Tdt:I

    .line 882
    :cond_332
    :goto_332
    iget v4, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCcaThd3_Tdt:I

    int-to-long v9, v4

    cmp-long v4, v11, v9

    if-gez v4, :cond_34a

    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRate_Tdt:F

    iget v7, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgTxGoodThd3_Tdt:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_34a

    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mGTwtTearCnt_Tdt:I

    if-lez v4, :cond_34a

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    .line 884
    iput v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mGTwtTearCnt_Tdt:I

    goto :goto_34b

    :cond_34a
    const/4 v7, 0x1

    :goto_34b
    const/4 v4, 0x0

    goto :goto_351

    :cond_34d
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 887
    iput v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mGTwtTearCnt_Tdt:I

    :goto_351
    const-wide/32 v9, 0x1dcd6500

    const-wide/32 v36, 0x1dcd6500

    if-ne v5, v7, :cond_37f

    .line 899
    aget v5, v18, v4

    if-nez v5, :cond_378

    .line 900
    aget v4, v18, v16

    if-ne v4, v7, :cond_368

    .line 901
    iget-wide v9, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgInterT1_Tdt:J

    .line 902
    iget-wide v4, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgInterT2_Tdt:J

    .line 903
    iget v15, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCca1_Tdt:I

    goto :goto_383

    :cond_368
    if-nez v4, :cond_371

    .line 908
    iget-wide v9, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->acInterT1_Tdt:J

    .line 909
    iget-wide v4, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->acInterT2_Tdt:J

    .line 910
    iget v15, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->acCca1_Tdt:I

    goto :goto_383

    .line 915
    :cond_371
    iget-wide v9, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->vcInterT1_Tdt:J

    .line 916
    iget-wide v4, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->vcInterT2_Tdt:J

    .line 917
    iget v15, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->vcCca1_Tdt:I

    goto :goto_383

    .line 923
    :cond_378
    iget-wide v9, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgInterT1_Tdt:J

    .line 924
    iget-wide v4, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgInterT2_Tdt:J

    .line 925
    iget v15, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->mgCca1_Tdt:I

    goto :goto_383

    :cond_37f
    move-wide/from16 v4, v36

    const/16 v15, 0x64

    .line 933
    :goto_383
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomDetCnt:I

    if-lez v6, :cond_3b5

    const/4 v6, 0x0

    .line 934
    :goto_388
    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomDetCnt:I

    if-ge v6, v7, :cond_399

    .line 935
    iget-object v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomLife:[I

    aget v13, v7, v6

    const/16 v29, 0x1

    add-int/lit8 v13, v13, -0x1

    aput v13, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_388

    :cond_399
    const/16 v29, 0x1

    .line 937
    iget-object v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomLife:[I

    const/4 v13, 0x0

    aget v6, v6, v13

    if-nez v6, :cond_3b5

    add-int/lit8 v7, v7, -0x1

    .line 938
    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomDetCnt:I

    const/4 v6, 0x0

    .line 939
    :goto_3a7
    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomDetCnt:I

    if-ge v6, v7, :cond_3b5

    .line 940
    iget-object v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomLife:[I

    add-int/lit8 v13, v6, 0x1

    aget v35, v7, v13

    aput v35, v7, v6

    move v6, v13

    goto :goto_3a7

    .line 946
    :cond_3b5
    iget-boolean v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtNegotiated:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_402

    .line 947
    iget-object v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getTrackerStatus()Z

    move-result v6

    if-ne v6, v7, :cond_3ff

    if-eqz v1, :cond_3ff

    .line 948
    iget v6, v1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->interTimeDLMax1:F

    iget-object v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    move-wide/from16 v35, v9

    iget-wide v8, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->qoSInterTimeMaxTh1_Tdt:J

    long-to-float v8, v8

    cmpl-float v8, v6, v8

    if-ltz v8, :cond_407

    iget-wide v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->qoSInterTimeMaxTh2_Tdt:J

    long-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_407

    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mobileGameCnt_Tdt:I

    if-lez v6, :cond_407

    .line 951
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomDetCnt:I

    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mMaxInterTAnomNum:I

    if-ge v6, v7, :cond_407

    .line 952
    iget-object v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomLife:[I

    iget v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTWinSize:I

    aput v8, v7, v6

    const/4 v9, 0x1

    add-int/2addr v6, v9

    .line 953
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomDetCnt:I

    if-le v6, v9, :cond_407

    const/4 v10, 0x2

    sub-int/2addr v6, v10

    .line 955
    aget v6, v7, v6

    sub-int/2addr v8, v9

    if-ne v6, v8, :cond_3fb

    .line 956
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTContinueAnom:I

    add-int/2addr v6, v9

    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTContinueAnom:I

    goto :goto_407

    :cond_3fb
    const/4 v6, 0x0

    .line 958
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTContinueAnom:I

    goto :goto_407

    :cond_3ff
    move-wide/from16 v35, v9

    goto :goto_407

    :cond_402
    move-wide/from16 v35, v9

    const/4 v6, 0x0

    .line 965
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTContinueAnom:I

    .line 968
    :cond_407
    :goto_407
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomDetCnt:I

    iget-object v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    iget v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->qoSAnomalyCntThd_Tdt:I

    if-lt v6, v7, :cond_424

    .line 969
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterT:I

    if-nez v6, :cond_41c

    const/4 v7, 0x1

    .line 970
    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterT:I

    .line 971
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTWinSize:I

    add-int/2addr v6, v7

    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterTTDCnt:I

    goto :goto_425

    :cond_41c
    const/4 v7, 0x1

    if-le v6, v7, :cond_425

    const/16 v6, 0x12c

    .line 973
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterTTDCnt:I

    goto :goto_425

    :cond_424
    const/4 v7, 0x1

    .line 977
    :cond_425
    :goto_425
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterT:I

    if-ne v6, v7, :cond_459

    iget-boolean v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtNegotiated:Z

    if-nez v6, :cond_459

    .line 978
    iget-object v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getTrackerStatus()Z

    move-result v6

    if-ne v6, v7, :cond_459

    if-eqz v1, :cond_459

    .line 979
    iget v6, v1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->interTimeDLMax1:F

    iget-object v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    iget-wide v8, v8, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->qoSGoodInterTime_Tdt:J

    long-to-float v8, v8

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_451

    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterTTDCnt:I

    if-lez v6, :cond_451

    sub-int/2addr v6, v7

    .line 980
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterTTDCnt:I

    if-nez v6, :cond_459

    .line 982
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterT:I

    add-int/2addr v6, v7

    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterT:I

    goto :goto_459

    .line 984
    :cond_451
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterTTDCnt:I

    if-lez v6, :cond_459

    const/16 v6, 0x12c

    .line 985
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterTTDCnt:I

    .line 991
    :cond_459
    :goto_459
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mobileGameCnt_Tdt:I

    if-nez v6, :cond_466

    const/4 v6, 0x0

    .line 992
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterTTDCnt:I

    .line 993
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomDetCnt:I

    .line 994
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTContinueAnom:I

    .line 995
    iput v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterT:I

    .line 1000
    :cond_466
    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRTAnomalyDetCnt:I

    if-lez v6, :cond_494

    const/4 v6, 0x0

    .line 1001
    :goto_46b
    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRTAnomalyDetCnt:I

    if-ge v6, v7, :cond_47a

    .line 1002
    iget-object v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAnomalyLife:[I

    aget v8, v7, v6

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_46b

    :cond_47a
    const/4 v9, 0x1

    .line 1004
    iget-object v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAnomalyLife:[I

    const/4 v8, 0x0

    aget v6, v6, v8

    if-nez v6, :cond_494

    sub-int/2addr v7, v9

    .line 1005
    iput v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRTAnomalyDetCnt:I

    const/4 v6, 0x0

    .line 1006
    :goto_486
    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRTAnomalyDetCnt:I

    if-ge v6, v7, :cond_494

    .line 1007
    iget-object v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAnomalyLife:[I

    add-int/lit8 v8, v6, 0x1

    aget v9, v7, v8

    aput v9, v7, v6

    move v6, v8

    goto :goto_486

    .line 1012
    :cond_494
    iget-boolean v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtNegotiated:Z

    if-eqz v6, :cond_4dd

    .line 1013
    iget-object v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getTrackerStatus()Z

    move-result v6

    if-eqz v6, :cond_4e0

    if-eqz v1, :cond_4e0

    .line 1014
    iget v6, v1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->interTimeDLMax1:F

    move-wide/from16 v9, v35

    long-to-float v7, v9

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_4b0

    int-to-long v7, v15

    cmp-long v7, v11, v7

    if-lez v7, :cond_4ba

    :cond_4b0
    long-to-float v4, v4

    cmpl-float v4, v6, v4

    if-ltz v4, :cond_4e0

    int-to-long v4, v15

    cmp-long v4, v11, v4

    if-lez v4, :cond_4e0

    .line 1016
    :cond_4ba
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRTAnomalyDetCnt:I

    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mMaxAnomalyNum:I

    if-ge v4, v5, :cond_4e0

    .line 1017
    iget-object v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAnomalyLife:[I

    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mAnomalyWinSize:I

    aput v6, v5, v4

    const/4 v7, 0x1

    add-int/2addr v4, v7

    .line 1018
    iput v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRTAnomalyDetCnt:I

    if-le v4, v7, :cond_4e0

    const/4 v8, 0x2

    sub-int/2addr v4, v8

    .line 1020
    aget v4, v5, v4

    sub-int/2addr v6, v7

    if-ne v4, v6, :cond_4d9

    .line 1021
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mNumContinueAnomaly:I

    add-int/2addr v4, v7

    iput v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mNumContinueAnomaly:I

    goto :goto_4e0

    :cond_4d9
    const/4 v4, 0x0

    .line 1023
    iput v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mNumContinueAnomaly:I

    goto :goto_4e0

    :cond_4dd
    const/4 v4, 0x0

    .line 1030
    iput v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mNumContinueAnomaly:I

    .line 1033
    :cond_4e0
    :goto_4e0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->currentTimeMilliSec:J

    .line 1035
    iget-wide v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->prevTimeMilliSec:J

    sub-long/2addr v4, v6

    iget-object v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    iget-wide v6, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->resetQosPatchTimeThd_Tdt:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_4f4

    .line 1036
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->resetQosTxgoodPatchStat()V

    .line 1038
    :cond_4f4
    iget-wide v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->currentTimeMilliSec:J

    iget-wide v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->prevTimeMilliSec:J

    sub-long/2addr v4, v6

    iget-object v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    iget-wide v6, v6, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->resetAbnormalAPTimeThd_Tdt:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_504

    .line 1039
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->resetAbnormalApPatchStat()V

    .line 1042
    :cond_504
    iget-wide v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->currentTimeMilliSec:J

    iput-wide v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->prevTimeMilliSec:J

    .line 1044
    iget-boolean v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtNegotiated:Z

    if-eqz v6, :cond_523

    iget-boolean v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mIsAbnormalAP:Z

    if-nez v6, :cond_523

    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mRTAnomalyDetCnt:I

    iget-object v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->scpmParameterSet:Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;

    iget v8, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->abAPCntThd_Tdt:I

    if-ge v6, v8, :cond_51e

    iget v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mNumContinueAnomaly:I

    iget v7, v7, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$ScpmParameterSet;->abAPContCntThd_Tdt:I

    if-lt v6, v7, :cond_523

    :cond_51e
    const/4 v6, 0x1

    .line 1047
    iput-boolean v6, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mIsAbnormalAP:Z

    .line 1048
    iput-wide v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->abnormalApDetMilliSec:J

    .line 1052
    :cond_523
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mGTwtTearCnt_Tdt:I

    if-gtz v4, :cond_535

    iget-boolean v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mIsAbnormalAP:Z

    if-nez v4, :cond_535

    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterTTDCnt:I

    if-lez v4, :cond_530

    goto :goto_535

    :cond_530
    move/from16 v4, p2

    move/from16 v10, v33

    goto :goto_53d

    :cond_535
    :goto_535
    const v10, 0x47afc800    # 90000.0f

    const v3, 0x47afc800    # 90000.0f

    move/from16 v4, p2

    :goto_53d
    const/4 v5, 0x1

    if-ne v4, v5, :cond_550

    .line 1059
    iget v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->overflowThreshold:I

    sub-int v5, v22, v4

    int-to-float v4, v5

    cmpg-float v4, v4, v3

    if-gez v4, :cond_550

    .line 1062
    iget-object v4, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->setOverflow()V

    const/4 v4, 0x1

    goto :goto_551

    :cond_550
    const/4 v4, 0x0

    .line 1066
    :goto_551
    iget-object v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OW "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v21

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v22

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    .line 1067
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/4 v13, 0x0

    aput-object v9, v8, v13

    const-string v9, "%.0f"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v13

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v14

    move-wide/from16 v13, v27

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, v24

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v10, v7, [Ljava/lang/Object;

    .line 1068
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v10, v14

    const-string v13, "%.2f"

    invoke-static {v13, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v10, v7, [Ljava/lang/Object;

    .line 1069
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v10, v14

    invoke-static {v13, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v7, [Ljava/lang/Object;

    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TxGoodRate_Tdt:F

    .line 1070
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v8, v14

    invoke-static {v13, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v31

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v40

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v26

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v23

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mGTwtTearCnt_Tdt:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mIsAbnormalAP:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    if-nez v1, :cond_627

    const-wide/16 v10, 0x0

    goto :goto_630

    .line 1072
    :cond_627
    iget v7, v1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->interTimeDLMax1:F

    float-to-double v10, v7

    const-wide v12, 0x412e848000000000L    # 1000000.0

    div-double/2addr v10, v12

    :goto_630
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v8, v10

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    if-nez v1, :cond_649

    const-wide/16 v10, 0x0

    goto :goto_652

    .line 1073
    :cond_649
    iget v1, v1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;->interTimeDLMax2:F

    float-to-double v10, v1

    const-wide v12, 0x412e848000000000L    # 1000000.0

    div-double/2addr v10, v12

    :goto_652
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v2, v8

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    aget v1, v18, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    aget v1, v18, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v18, v30

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v18, v16

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v18, v19

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtNegotiated:Z

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1066
    invoke-virtual {v5, v1, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 1077
    iget-object v1, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLinterT "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterTTDCnt:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTAnomDetCnt:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mInterTContinueAnom:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mBadInterT:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    return v3
.end method

.method public twtQuantization(I)I
    .registers 2

    .line 1150
    div-int/lit16 p0, p1, 0x800

    rem-int/lit16 p1, p1, 0x800

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    const/4 p1, 0x1

    :goto_9
    add-int/2addr p0, p1

    mul-int/lit16 p0, p0, 0x800

    return p0
.end method

.method public updateDataArray(F)V
    .registers 8

    .line 1130
    iget-object v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getDiffStats()[J

    move-result-object v0

    .line 1132
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->pktCntDLPerSP:[J

    iget v2, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvIndex:I

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    aput-wide v4, v1, v2

    .line 1133
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->pktCntULPerSP:[J

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    aput-wide v4, v1, v2

    .line 1134
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->pktUlSize:[J

    const/4 v4, 0x2

    aget-wide v4, v0, v4

    aput-wide v4, v1, v2

    .line 1135
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->pktDlSize:[J

    const/4 v4, 0x3

    aget-wide v4, v0, v4

    aput-wide v4, v1, v2

    .line 1136
    iget-object v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TdtCca:[J

    float-to-long v4, p1

    aput-wide v4, v1, v2

    .line 1137
    iget-object p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TCca10002TRadio:[J

    const/4 v1, 0x6

    aget-wide v0, v0, v1

    aput-wide v0, p1, v2

    add-int/2addr v2, v3

    and-int/lit16 p1, v2, 0xff

    .line 1138
    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvIndex:I

    .line 1139
    iget p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvCount:I

    return-void
.end method

.method public updateStats()V
    .registers 21

    move-object/from16 v0, p0

    const/16 v1, 0x9

    new-array v1, v1, [J

    .line 1098
    fill-array-data v1, :array_ba

    .line 1102
    iget v2, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvCount:I

    iget v3, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->winSize:I

    if-ge v2, v3, :cond_11

    move v4, v2

    goto :goto_12

    :cond_11
    move v4, v3

    .line 1103
    :goto_12
    new-array v5, v4, [J

    if-eqz v2, :cond_b3

    if-eqz v3, :cond_b3

    const/4 v2, 0x0

    move v3, v2

    :goto_1a
    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/16 v9, 0x8

    if-ge v3, v4, :cond_84

    .line 1106
    iget v10, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->intvIndex:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    sub-int/2addr v10, v3

    and-int/lit16 v10, v10, 0xff

    aget-wide v12, v1, v2

    .line 1107
    iget-object v14, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TdtCca:[J

    aget-wide v15, v14, v10

    add-long/2addr v12, v15

    aput-wide v12, v1, v2

    .line 1108
    aget-wide v12, v14, v10

    aget-wide v15, v1, v11

    cmp-long v17, v12, v15

    if-lez v17, :cond_3a

    goto :goto_3b

    :cond_3a
    move-wide v12, v15

    :goto_3b
    aput-wide v12, v1, v11

    aget-wide v11, v1, v8

    .line 1109
    iget-object v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->pktDlSize:[J

    aget-wide v15, v13, v10

    add-long/2addr v11, v15

    iget-object v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->pktUlSize:[J

    aget-wide v15, v13, v10

    add-long/2addr v11, v15

    aput-wide v11, v1, v8

    aget-wide v11, v1, v7

    .line 1110
    iget-object v8, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->pktCntDLPerSP:[J

    aget-wide v15, v8, v10

    add-long/2addr v11, v15

    iget-object v13, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->pktCntULPerSP:[J

    aget-wide v15, v13, v10

    add-long/2addr v11, v15

    aput-wide v11, v1, v7

    aget-wide v11, v1, v6

    .line 1111
    iget-object v7, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TCca10002TRadio:[J

    aget-wide v15, v7, v10

    add-long/2addr v11, v15

    aput-wide v11, v1, v6

    const/4 v6, 0x6

    aget-wide v11, v1, v6

    .line 1112
    aget-wide v15, v8, v10

    add-long/2addr v11, v15

    aput-wide v11, v1, v6

    const/4 v6, 0x7

    aget-wide v11, v1, v6

    .line 1113
    aget-wide v15, v13, v10

    add-long/2addr v11, v15

    aput-wide v11, v1, v6

    aget-wide v6, v1, v9

    .line 1114
    aget-wide v11, v14, v10

    mul-long/2addr v11, v11

    add-long/2addr v6, v11

    aput-wide v6, v1, v9

    .line 1115
    aget-wide v6, v8, v10

    aget-wide v8, v13, v10

    add-long/2addr v6, v8

    aput-wide v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_84
    int-to-long v10, v4

    aget-wide v12, v1, v9

    mul-long/2addr v12, v10

    aget-wide v14, v1, v2

    mul-long v16, v14, v14

    sub-long v12, v12, v16

    mul-long v16, v10, v10

    const-wide/16 v18, 0x2

    .line 1118
    div-long v18, v16, v18

    add-long v12, v12, v18

    div-long v12, v12, v16

    aput-wide v12, v1, v9

    .line 1120
    div-int/lit8 v4, v4, 0x2

    int-to-long v3, v4

    add-long/2addr v14, v3

    div-long/2addr v14, v10

    aput-wide v14, v1, v2

    aget-wide v12, v1, v8

    add-long/2addr v12, v3

    .line 1121
    div-long/2addr v12, v10

    aput-wide v12, v1, v8

    aget-wide v8, v1, v7

    add-long/2addr v8, v3

    .line 1122
    div-long/2addr v8, v10

    aput-wide v8, v1, v7

    aget-wide v7, v1, v6

    add-long/2addr v7, v3

    .line 1123
    div-long/2addr v7, v10

    aput-wide v7, v1, v6

    .line 1126
    :cond_b3
    iget-object v0, v0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mTwtInfo:Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->setPacketMonitoringStats([J[J)V

    return-void

    nop

    :array_ba
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
