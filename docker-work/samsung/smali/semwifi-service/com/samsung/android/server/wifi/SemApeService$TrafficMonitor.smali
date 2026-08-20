.class Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;
.super Ljava/lang/Object;
.source "SemApeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrafficMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;
    }
.end annotation


# static fields
.field private static final BACKGROUND_THRESHOLD:I = 0x20000

.field private static final BACKGROUND_THRESHOLD_LARGE:I = 0x20000

.field private static final BANDWIDTH_DECREASING_FACTOR:I = 0x2

.field private static final BANDWIDTH_INCREASING_FACTOR:D = 1.5

.field private static final BG_BW_CHANGE_RATIO:D = 0.1

.field private static final BG_DECREASING_SMOOTHING_FACTOR:D = 0.5

.field private static final BG_INCREASING_SMOOTHING_FACTOR:D = 0.2

.field private static final BG_QUICK_CLIMBING_FACTOR:D = 0.7

.field private static final BG_UTILIZATION_FACTOR:D = 0.7

.field private static final EMA_SMOOTHING_FACTOR:I = 0x2

.field private static final HIGH_BITRATE_THRESHOLD:I = 0x5dc

.field private static final HIGH_BITRATE_THRESHOLD_FACTOR:F = 0.02f

.field private static final INITIAL_LINKSPEED_DIVIDE_FACTOR:I = 0xa

.field private static final INITIAL_MIN_BANDWIDTH:I = 0x5

.field private static final LOW_BITRATE_THRESHOLD_FACTOR:F = 0.1f

.field private static final MAX_CONTINUOUS_OUTLIER:I = 0x3

.field private static final MAX_INTERVAL_COUNT:I = 0x5

.field private static final MID_BITRATE_THRESHOLD:I = 0x64

.field private static final MID_BITRATE_THRESHOLD_FACTOR:F = 0.04f


# instance fields
.field private mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

.field private mAppMaxRxBitrate:J

.field private mAppMaxTxBitrate:J

.field private mContinuousOutlier:I

.field private mCountIntervalNoBgTraffic:I

.field private final mCumulativeSMA:[J

.field private final mEmaSpeed:[J

.field private mInterval:I

.field private mIsBgSetToMax:Z

.field private mIsInitialRoundDone:Z

.field private mIsRulesDeleted:Z

.field private final mLastRxSpeed:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastTime:J

.field private final mLastTxSpeed:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mLongEmaSpeed:[D

.field private mPrevSpeedRxUid:J

.field private mRunningSeconds:I

.field private final mShortEmaSpeed:[D

.field private final mSmaSpeed:[J

.field private final mStdDevWithEma:[J

.field private mThresholdRxBitRate:J

.field private mThresholdTxBitRate:J

.field private mTotalMaxBandwidth:J

.field private mTotalRxBytes:J

.field private mTotalSecondsOfApeEnabled:J

.field private mTotalSecondsOfBackgroundLimited:J

.field private mTotalTxBytes:J

.field private mUidRxBytes:J

.field private mUidTxBytes:J

.field private mUpperBoundBandwidth:I

.field private mUpperBoundGuardSeconds:I

.field private mUpperBoundReleasedSeconds:I

.field private mUpperBoundRemainingSeconds:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemApeService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppInfo(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTotalSecondsOfApeEnabled(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalSecondsOfApeEnabled:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTotalSecondsOfBackgroundLimited(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalSecondsOfBackgroundLimited:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$minitVariables(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->initVariables()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/SemApeService;ILjava/lang/String;)V
    .registers 5

    .line 754
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    if-eqz p3, :cond_d

    .line 757
    invoke-static {p3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->isSemGamePackage(Ljava/lang/String;)Z

    move-result p3

    goto :goto_e

    :cond_d
    move p3, p1

    .line 758
    :goto_e
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    invoke-direct {v0, p0, p2, p3}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;-><init>(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;IZ)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    const-wide/16 p2, 0x0

    .line 760
    iput-wide p2, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mThresholdRxBitRate:J

    .line 761
    iput-wide p2, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mThresholdTxBitRate:J

    .line 762
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mLastRxSpeed:Ljava/util/LinkedList;

    .line 763
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mLastTxSpeed:Ljava/util/LinkedList;

    .line 764
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mInterval:I

    const/4 p2, 0x2

    new-array p3, p2, [J

    .line 765
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mSmaSpeed:[J

    new-array p3, p2, [J

    .line 766
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mEmaSpeed:[J

    new-array p3, p2, [J

    .line 767
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mStdDevWithEma:[J

    new-array p3, p2, [D

    .line 768
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mLongEmaSpeed:[D

    new-array p3, p2, [D

    .line 769
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mShortEmaSpeed:[D

    .line 770
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mIsInitialRoundDone:Z

    new-array p1, p2, [J

    .line 771
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mCumulativeSMA:[J

    return-void
.end method

.method private computeEmaSpeed(JJI)J
    .registers 10

    .line 876
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mIsInitialRoundDone:Z

    const/4 v1, 0x1

    if-nez v0, :cond_8

    if-ne p5, v1, :cond_8

    goto :goto_1b

    :cond_8
    const/4 v0, 0x5

    .line 879
    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 880
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mIsInitialRoundDone:Z

    if-eqz p0, :cond_12

    goto :goto_13

    :cond_12
    move v0, p5

    :goto_13
    sub-long/2addr p1, p3

    const-wide/16 v2, 0x2

    mul-long/2addr p1, v2

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 884
    div-long/2addr p1, v0

    add-long/2addr p1, p3

    :goto_1b
    return-wide p1
.end method

.method private computeMeanAbsDev(Ljava/util/LinkedList;J)J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;J)J"
        }
    .end annotation

    .line 899
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p0

    const-wide/16 v0, 0x0

    if-nez p0, :cond_9

    return-wide v0

    .line 903
    :cond_9
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/4 v2, 0x5

    if-gt p0, v2, :cond_12

    const/4 p0, 0x0

    goto :goto_17

    :cond_12
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p0

    sub-int/2addr p0, v2

    .line 904
    :goto_17
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 905
    invoke-virtual {p1, p0, v2}, Ljava/util/LinkedList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, p2

    .line 906
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_23

    .line 908
    :cond_3a
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p0

    int-to-long p0, p0

    div-long/2addr v0, p0

    return-wide v0
.end method

.method private computeSmaSpeed(JIIILjava/util/LinkedList;)J
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIII",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 850
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mIsInitialRoundDone:Z

    if-nez v0, :cond_e

    .line 851
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mCumulativeSMA:[J

    aget-wide v0, p0, p3

    add-long/2addr v0, p1

    aput-wide v0, p0, p3

    int-to-long p3, p4

    .line 852
    div-long/2addr v0, p3

    goto :goto_2b

    :cond_e
    const-wide/16 v0, 0x0

    .line 855
    invoke-virtual {p6}, Ljava/util/LinkedList;->size()I

    move-result p4

    if-lez p4, :cond_20

    .line 856
    invoke-virtual {p6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 858
    :cond_20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mCumulativeSMA:[J

    aget-wide v2, p0, p3

    add-long/2addr v2, p1

    sub-long/2addr v2, v0

    aput-wide v2, p0, p3

    int-to-long p3, p5

    .line 859
    div-long v0, v2, p3

    .line 861
    :goto_2b
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p6, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-wide v0
.end method

.method private computeSmoothingSpeed(IID)D
    .registers 9

    int-to-double v0, p2

    mul-double/2addr v0, p3

    int-to-double p0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p3

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    return-wide v0
.end method

.method private deleteRuleCondition(JJJJ)V
    .registers 10

    .line 1308
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeService;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mIsBgSetToMax:Z

    if-eqz v0, :cond_57

    .line 1309
    :cond_c
    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->isHavingBackgroundTraffic(JJJJ)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_55

    .line 1310
    iget p1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mCountIntervalNoBgTraffic:I

    const/4 p3, 0x1

    add-int/2addr p1, p3

    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mCountIntervalNoBgTraffic:I

    const/4 p4, 0x5

    if-ne p1, p4, :cond_57

    .line 1312
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeService;)Z

    move-result p1

    if-eqz p1, :cond_3e

    const-string p1, "For continuous 5, the background traffic is below 128Kbps, so will delete the rule"

    .line 1313
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 1314
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeService;)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget p6, p5, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    iget p5, p5, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->appUid:I

    invoke-static {p1, p4, p6, p5}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$mdeleteRule(Lcom/samsung/android/server/wifi/SemApeService;Ljava/lang/String;II)I

    .line 1315
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fputmRulesApplied(Lcom/samsung/android/server/wifi/SemApeService;Z)V

    goto :goto_43

    :cond_3e
    const-string p1, "For continuous 5, the background traffic is below 128Kbps, but rule has been already deleted"

    .line 1317
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 1319
    :goto_43
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mIsBgSetToMax:Z

    .line 1320
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mIsRulesDeleted:Z

    .line 1321
    iput p2, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mCountIntervalNoBgTraffic:I

    .line 1322
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget p2, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->appUid:I

    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/server/wifi/SemApeService;->storeBgBandwidth(II)V

    goto :goto_57

    .line 1325
    :cond_55
    iput p2, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mCountIntervalNoBgTraffic:I

    :cond_57
    :goto_57
    return-void
.end method

.method private initVariables()V
    .registers 10

    .line 778
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mLastRxSpeed:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 779
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mLastTxSpeed:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    .line 780
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mInterval:I

    .line 781
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mSmaSpeed:[J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    aput-wide v3, v1, v0

    .line 782
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mEmaSpeed:[J

    aput-wide v3, v1, v2

    aput-wide v3, v1, v0

    .line 783
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mIsInitialRoundDone:Z

    .line 784
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mCumulativeSMA:[J

    aput-wide v3, v1, v2

    aput-wide v3, v1, v0

    .line 785
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mStdDevWithEma:[J

    aput-wide v3, v1, v2

    aput-wide v3, v1, v0

    .line 786
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mLongEmaSpeed:[D

    const-wide/16 v5, 0x0

    aput-wide v5, v1, v2

    aput-wide v5, v1, v0

    .line 787
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mShortEmaSpeed:[D

    aput-wide v5, v1, v2

    aput-wide v5, v1, v0

    .line 788
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mRunningSeconds:I

    .line 790
    iput v2, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundBandwidth:I

    .line 791
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundRemainingSeconds:I

    .line 792
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundGuardSeconds:I

    const/16 v1, 0xa

    .line 793
    iput v1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundReleasedSeconds:I

    .line 795
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mPrevSpeedRxUid:J

    .line 798
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeService;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalTxBytes:J

    .line 799
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeService;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalRxBytes:J

    .line 800
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v5, v5, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->appUid:I

    invoke-static {v5}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUidTxBytes:J

    .line 801
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v5, v5, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->appUid:I

    invoke-static {v5}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUidRxBytes:J

    .line 802
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mCountIntervalNoBgTraffic:I

    .line 803
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mLastTime:J

    .line 804
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppMaxRxBitrate:J

    .line 805
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppMaxTxBitrate:J

    .line 806
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalMaxBandwidth:J

    .line 807
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mIsRulesDeleted:Z

    .line 808
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mIsBgSetToMax:Z

    .line 809
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mContinuousOutlier:I

    .line 810
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTimeLatestBandwidthCaptured(Lcom/samsung/android/server/wifi/SemApeService;)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-eqz v0, :cond_c9

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmLatestUid(Lcom/samsung/android/server/wifi/SemApeService;)I

    move-result v0

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v5, v5, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->appUid:I

    if-ne v0, v5, :cond_c9

    .line 811
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTimeLatestBandwidthCaptured(Lcom/samsung/android/server/wifi/SemApeService;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x7530

    cmp-long v0, v5, v7

    if-lez v0, :cond_ae

    goto :goto_c9

    .line 817
    :cond_ae
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Historical background bandwidth value "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmLatestBandwidth(Lcom/samsung/android/server/wifi/SemApeService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    goto :goto_da

    .line 812
    :cond_c9
    :goto_c9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0, v3, v4}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fputmTimeLatestBandwidthCaptured(Lcom/samsung/android/server/wifi/SemApeService;J)V

    .line 813
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    const/4 v3, 0x5

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fputmLatestBandwidth(Lcom/samsung/android/server/wifi/SemApeService;I)V

    .line 814
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    const/4 v3, -0x1

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fputmLatestUid(Lcom/samsung/android/server/wifi/SemApeService;I)V

    .line 819
    :goto_da
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmMaxRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeService;)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmMaxTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeService;)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/2addr v0, v1

    .line 820
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmLatestBandwidth(Lcom/samsung/android/server/wifi/SemApeService;)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    iput v0, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->computedBandwidth:I

    iput v0, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->targetBandwidth:I

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initVariables: Bandwidth bg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    return-void
.end method

.method private isHavingBackgroundTraffic(JJJJ)I
    .registers 9

    sub-long/2addr p1, p5

    sub-long/2addr p3, p7

    const-wide/32 p5, 0x20000

    cmp-long p0, p1, p5

    if-lez p0, :cond_b

    const/4 p0, 0x2

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    cmp-long p1, p3, p5

    if-lez p1, :cond_12

    add-int/lit8 p0, p0, 0x1

    :cond_12
    return p0
.end method

.method private updateStats(J)V
    .registers 9

    .line 1331
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalSecondsOfApeEnabled:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalSecondsOfApeEnabled:J

    .line 1333
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeService;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1334
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    mul-int/lit16 v0, v0, 0x400

    long-to-double p1, p1

    int-to-double v0, v0

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v4

    cmpl-double p1, p1, v0

    if-lez p1, :cond_26

    .line 1338
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalSecondsOfBackgroundLimited:J

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalSecondsOfBackgroundLimited:J

    :cond_26
    return-void
.end method


# virtual methods
.method public changeUid(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;)V
    .registers 6

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change in UID from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->appUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->appUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 833
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v3, v2, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->appUid:I

    invoke-static {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$mdeleteRule(Lcom/samsung/android/server/wifi/SemApeService;Ljava/lang/String;II)I

    .line 834
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    .line 835
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->initVariables()V

    return-void
.end method

.method public periodicFunction()V
    .registers 60

    move-object/from16 v9, p0

    .line 948
    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v10

    .line 949
    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v12

    .line 951
    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->appUid:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v14

    .line 952
    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->appUid:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v7

    .line 954
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 955
    iget-wide v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mLastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x80

    mul-long/2addr v2, v4

    const-wide/16 v16, 0x3e8

    div-long v2, v2, v16

    const-wide/16 v5, 0x0

    cmp-long v4, v2, v5

    if-nez v4, :cond_3e

    const-wide/16 v16, 0x80

    goto :goto_40

    :cond_3e
    move-wide/from16 v16, v2

    .line 957
    :goto_40
    iput-wide v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mLastTime:J

    .line 959
    iget-wide v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalRxBytes:J

    sub-long v0, v10, v0

    div-long v3, v0, v16

    .line 960
    iget-wide v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalTxBytes:J

    sub-long v0, v12, v0

    div-long v1, v0, v16

    .line 962
    iget-wide v5, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUidRxBytes:J

    sub-long v5, v14, v5

    div-long v5, v5, v16

    move-wide/from16 v20, v14

    .line 963
    iget-wide v14, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUidTxBytes:J

    sub-long v14, v7, v14

    div-long v14, v14, v16

    .line 966
    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->isGameApp:Z

    move-wide/from16 v16, v7

    const-wide/high16 v23, 0x3ff8000000000000L    # 1.5

    if-eqz v0, :cond_d0

    .line 967
    iget v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mInterval:I

    if-nez v0, :cond_6d

    .line 968
    iput-wide v5, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mPrevSpeedRxUid:J

    goto :goto_d0

    .line 971
    :cond_6d
    iget-wide v7, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mPrevSpeedRxUid:J

    const-wide/16 v25, 0x2

    cmp-long v0, v7, v25

    move-wide/from16 v29, v12

    if-lez v0, :cond_c8

    long-to-double v12, v5

    long-to-double v7, v7

    mul-double v7, v7, v23

    cmpl-double v0, v12, v7

    if-lez v0, :cond_c8

    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mEmaSpeed:[J

    const/4 v7, 0x0

    aget-wide v12, v0, v7

    const-wide/16 v31, 0x3

    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mStdDevWithEma:[J

    aget-wide v33, v0, v7

    mul-long v33, v33, v31

    add-long v12, v12, v33

    cmp-long v0, v5, v12

    if-lez v0, :cond_c8

    iget v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mContinuousOutlier:I

    const/4 v7, 0x3

    if-ge v0, v7, :cond_c9

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remove temporal outlier: speedRxUid="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " mPrevSpeedRxUid="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mPrevSpeedRxUid:J

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " mContinuousOutlier="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mContinuousOutlier:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 976
    iget-wide v12, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mPrevSpeedRxUid:J

    .line 977
    iget v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mContinuousOutlier:I

    const/4 v8, 0x1

    add-int/2addr v0, v8

    iput v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mContinuousOutlier:I

    goto :goto_cd

    :cond_c8
    const/4 v7, 0x3

    :cond_c9
    const/4 v0, 0x0

    .line 979
    iput v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mContinuousOutlier:I

    move-wide v12, v5

    .line 981
    :goto_cd
    iput-wide v5, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mPrevSpeedRxUid:J

    goto :goto_d6

    :cond_d0
    :goto_d0
    move-wide/from16 v29, v12

    const/4 v7, 0x3

    const-wide/16 v25, 0x2

    move-wide v12, v5

    :goto_d6
    sub-long v5, v3, v12

    sub-long v7, v1, v14

    .line 985
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 990
    iget-object v6, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mSmaSpeed:[J

    const/4 v5, 0x0

    iget v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mInterval:I

    const/16 v28, 0x1

    add-int/lit8 v31, v0, 0x1

    const/16 v32, 0x5

    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mLastRxSpeed:Ljava/util/LinkedList;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-wide/from16 v34, v10

    move-wide v10, v1

    move-wide v1, v12

    move-wide/from16 v36, v7

    move-wide v7, v3

    move v3, v5

    move/from16 v4, v31

    move/from16 v5, v32

    move-object/from16 v18, v6

    move-object/from16 v6, v33

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->computeSmaSpeed(JIIILjava/util/LinkedList;)J

    move-result-wide v0

    const/4 v2, 0x0

    aput-wide v0, v18, v2

    .line 991
    iget-object v6, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mSmaSpeed:[J

    const/4 v3, 0x1

    iget v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mInterval:I

    const/16 v18, 0x1

    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x5

    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mLastTxSpeed:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    move-object/from16 v19, v1

    move-wide v1, v14

    move-object/from16 v28, v6

    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->computeSmaSpeed(JIIILjava/util/LinkedList;)J

    move-result-wide v0

    aput-wide v0, v28, v18

    .line 994
    iget-object v6, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mEmaSpeed:[J

    const/16 v19, 0x0

    aget-wide v3, v6, v19

    iget v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mInterval:I

    add-int/lit8 v5, v0, 0x1

    move-object/from16 v0, p0

    move-wide v1, v12

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->computeEmaSpeed(JJI)J

    move-result-wide v0

    aput-wide v0, v6, v19

    .line 995
    iget-object v6, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mEmaSpeed:[J

    aget-wide v3, v6, v18

    iget v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mInterval:I

    add-int/lit8 v5, v0, 0x1

    move-object/from16 v0, p0

    move-wide v1, v14

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->computeEmaSpeed(JJI)J

    move-result-wide v0

    aput-wide v0, v6, v18

    .line 998
    iget v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mRunningSeconds:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mRunningSeconds:I

    const/16 v5, 0xf

    .line 999
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v0, v2, v0

    .line 1000
    iget-object v4, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mLongEmaSpeed:[D

    long-to-double v5, v12

    mul-double v31, v5, v0

    const/16 v19, 0x0

    aget-wide v40, v4, v19

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v44, v2, v0

    mul-double v40, v40, v44

    add-double v31, v31, v40

    aput-wide v31, v4, v19

    long-to-double v2, v14

    mul-double/2addr v0, v2

    const/16 v19, 0x1

    .line 1001
    aget-wide v40, v4, v19

    mul-double v40, v40, v44

    add-double v0, v0, v40

    aput-wide v0, v4, v19

    .line 1003
    iget v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mRunningSeconds:I

    const/4 v4, 0x5

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    const-wide/high16 v40, 0x4000000000000000L    # 2.0

    div-double v0, v40, v0

    .line 1004
    iget-object v4, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mShortEmaSpeed:[D

    mul-double/2addr v5, v0

    const/16 v27, 0x0

    aget-wide v40, v4, v27

    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    sub-double v42, v31, v0

    mul-double v40, v40, v42

    add-double v5, v5, v40

    aput-wide v5, v4, v27

    mul-double/2addr v2, v0

    .line 1005
    aget-wide v0, v4, v19

    mul-double v0, v0, v42

    add-double/2addr v2, v0

    aput-wide v2, v4, v19

    .line 1008
    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mStdDevWithEma:[J

    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mLastRxSpeed:Ljava/util/LinkedList;

    iget-object v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mEmaSpeed:[J

    aget-wide v2, v2, v27

    invoke-direct {v9, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->computeMeanAbsDev(Ljava/util/LinkedList;J)J

    move-result-wide v1

    aput-wide v1, v0, v27

    .line 1009
    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mStdDevWithEma:[J

    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mLastTxSpeed:Ljava/util/LinkedList;

    iget-object v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mEmaSpeed:[J

    aget-wide v2, v2, v19

    invoke-direct {v9, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->computeMeanAbsDev(Ljava/util/LinkedList;J)J

    move-result-wide v1

    aput-wide v1, v0, v19

    .line 1012
    iget-wide v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppMaxRxBitrate:J

    cmp-long v0, v12, v0

    if-lez v0, :cond_1c2

    .line 1013
    iput-wide v12, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppMaxRxBitrate:J

    .line 1016
    :cond_1c2
    iget-wide v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppMaxTxBitrate:J

    cmp-long v0, v14, v0

    if-lez v0, :cond_1ca

    .line 1017
    iput-wide v14, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppMaxTxBitrate:J

    .line 1020
    :cond_1ca
    iget-wide v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalMaxBandwidth:J

    cmp-long v0, v0, v7

    if-gez v0, :cond_1d2

    .line 1021
    iput-wide v7, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalMaxBandwidth:J

    .line 1023
    :cond_1d2
    iget-wide v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalMaxBandwidth:J

    cmp-long v0, v0, v10

    if-gez v0, :cond_1da

    .line 1024
    iput-wide v10, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalMaxBandwidth:J

    .line 1028
    :cond_1da
    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmMaxRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeService;)I

    move-result v0

    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmMaxTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeService;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v5, 0x32

    if-le v0, v5, :cond_1fe

    .line 1030
    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmMaxRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeService;)I

    move-result v0

    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmMaxTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeService;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1032
    :cond_1fe
    iget v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundRemainingSeconds:I

    if-lez v1, :cond_208

    .line 1033
    iget v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundBandwidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_208
    move v6, v0

    move-wide/from16 v3, v36

    .line 1036
    invoke-direct {v9, v3, v4}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->updateStats(J)V

    .line 1041
    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeService;)Z

    move-result v0

    const/16 v33, 0xa

    const-string v1, ")"

    if-nez v0, :cond_30c

    iget-boolean v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mIsBgSetToMax:Z

    if-nez v0, :cond_30c

    move/from16 v37, v6

    .line 1042
    iget-wide v5, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalRxBytes:J

    sub-long v5, v34, v5

    move-object v2, v1

    iget-wide v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalTxBytes:J

    sub-long v40, v29, v0

    iget-wide v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUidRxBytes:J

    sub-long v42, v20, v0

    iget-wide v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUidTxBytes:J

    sub-long v44, v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v46, v10

    move-object v10, v2

    move-wide/from16 v57, v14

    move-wide/from16 v14, v31

    move-wide/from16 v31, v57

    move-wide v1, v5

    move-wide/from16 v48, v3

    const/4 v11, 0x5

    move-wide/from16 v3, v40

    move/from16 v50, v37

    move-wide/from16 v5, v42

    move/from16 v15, v19

    move/from16 v14, v27

    move-wide/from16 v51, v48

    move-wide/from16 v18, v7

    move-wide/from16 v57, v12

    const/4 v13, 0x3

    move-wide/from16 v11, v16

    move-wide/from16 v16, v57

    move-wide/from16 v7, v44

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->isHavingBackgroundTraffic(JJJJ)I

    move-result v0

    if-lez v0, :cond_322

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rule will be applied since the background traffic exists and delta (Bytes: Rx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalRxBytes:J

    sub-long v1, v34, v1

    sub-long v1, v1, v20

    iget-wide v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUidRxBytes:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Tx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalTxBytes:J

    sub-long v1, v29, v1

    sub-long/2addr v1, v11

    iget-wide v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUidTxBytes:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 1050
    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmMaxRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeService;)I

    move-result v0

    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmMaxTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeService;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    .line 1051
    iget-boolean v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mIsRulesDeleted:Z

    if-eqz v1, :cond_2f3

    .line 1054
    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTimeLatestBandwidthCaptured(Lcom/samsung/android/server/wifi/SemApeService;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2e1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v5, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTimeLatestBandwidthCaptured(Lcom/samsung/android/server/wifi/SemApeService;)J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x7530

    cmp-long v1, v1, v5

    if-lez v1, :cond_2c1

    goto :goto_2e1

    .line 1061
    :cond_2c1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Historical max value after download stopped in between APE Session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmLatestBandwidth(Lcom/samsung/android/server/wifi/SemApeService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Mbps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    goto :goto_2f1

    .line 1055
    :cond_2e1
    :goto_2e1
    iput-wide v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalMaxBandwidth:J

    .line 1056
    iput-wide v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppMaxTxBitrate:J

    .line 1057
    iput-wide v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppMaxRxBitrate:J

    .line 1058
    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v1, v3, v4}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fputmTimeLatestBandwidthCaptured(Lcom/samsung/android/server/wifi/SemApeService;J)V

    .line 1059
    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fputmLatestBandwidth(Lcom/samsung/android/server/wifi/SemApeService;I)V

    .line 1063
    :goto_2f1
    iput-boolean v14, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mIsRulesDeleted:Z

    .line 1065
    :cond_2f3
    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget-object v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmLatestBandwidth(Lcom/samsung/android/server/wifi/SemApeService;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->computedBandwidth:I

    iput v0, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->targetBandwidth:I

    iput v0, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    move/from16 v22, v15

    goto :goto_324

    :cond_30c
    move-wide/from16 v51, v3

    move/from16 v50, v6

    move-wide/from16 v46, v10

    move-wide/from16 v31, v14

    move/from16 v15, v19

    move/from16 v14, v27

    move-object v10, v1

    move-wide/from16 v18, v7

    move-wide/from16 v57, v12

    const/4 v13, 0x3

    move-wide/from16 v11, v16

    move-wide/from16 v16, v57

    :cond_322
    move/from16 v22, v14

    .line 1070
    :goto_324
    iget-boolean v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mIsInitialRoundDone:Z

    if-nez v0, :cond_332

    .line 1071
    iget v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mInterval:I

    add-int/2addr v0, v15

    iput v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mInterval:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_332

    .line 1073
    iput-boolean v15, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mIsInitialRoundDone:Z

    .line 1076
    :cond_332
    iget-boolean v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mIsInitialRoundDone:Z

    const/16 v25, 0x2

    if-nez v0, :cond_344

    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    if-ne v0, v15, :cond_344

    const-string v0, "Waiting for the App traffic to be stabilized"

    .line 1077
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    goto :goto_351

    .line 1078
    :cond_344
    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeService;)Z

    move-result v0

    if-nez v0, :cond_356

    iget-boolean v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mIsBgSetToMax:Z

    if-eqz v0, :cond_351

    goto :goto_356

    :cond_351
    :goto_351
    move-object v0, v10

    move-wide/from16 v39, v11

    goto/16 :goto_76c

    .line 1081
    :cond_356
    :goto_356
    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mEmaSpeed:[J

    aget-wide v1, v0, v14

    const-wide/16 v3, 0x64

    cmp-long v5, v1, v3

    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    const-wide/16 v26, 0x5dc

    if-lez v5, :cond_371

    cmp-long v5, v1, v26

    if-gtz v5, :cond_371

    const-wide v38, 0x3fa47ae140000000L    # 0.03999999910593033

    goto :goto_37d

    :cond_371
    cmp-long v5, v1, v26

    if-lez v5, :cond_37b

    const-wide v38, 0x3f947ae140000000L    # 0.019999999552965164

    goto :goto_37d

    :cond_37b
    move-wide/from16 v38, v6

    .line 1086
    :goto_37d
    aget-wide v40, v0, v15

    cmp-long v0, v40, v3

    if-lez v0, :cond_38d

    cmp-long v0, v40, v26

    if-gtz v0, :cond_38d

    const-wide v6, 0x3fa47ae140000000L    # 0.03999999910593033

    goto :goto_396

    :cond_38d
    cmp-long v0, v40, v26

    if-lez v0, :cond_396

    const-wide v6, 0x3f947ae140000000L    # 0.019999999552965164

    :cond_396
    :goto_396
    long-to-double v0, v1

    mul-double v0, v0, v38

    double-to-long v0, v0

    const-wide/16 v2, 0x2

    .line 1091
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mThresholdRxBitRate:J

    .line 1092
    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mEmaSpeed:[J

    aget-wide v0, v0, v15

    long-to-double v0, v0

    mul-double/2addr v0, v6

    double-to-long v0, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mThresholdTxBitRate:J

    .line 1094
    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mSmaSpeed:[J

    aget-wide v0, v0, v14

    iget-object v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mEmaSpeed:[J

    aget-wide v2, v2, v14

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 1095
    iget-object v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mSmaSpeed:[J

    aget-wide v2, v2, v15

    iget-object v4, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mEmaSpeed:[J

    aget-wide v4, v4, v15

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 1099
    iget-wide v4, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalRxBytes:J

    sub-long v4, v34, v4

    sub-long v4, v4, v20

    iget-wide v6, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUidRxBytes:J

    add-long/2addr v4, v6

    const-wide/16 v7, 0x1

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 1100
    iget-wide v13, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalTxBytes:J

    sub-long v13, v29, v13

    sub-long/2addr v13, v11

    move-object/from16 v38, v10

    move-wide/from16 v39, v11

    iget-wide v10, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUidTxBytes:J

    add-long/2addr v13, v10

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    const-wide/32 v12, 0x20000

    cmp-long v4, v4, v12

    if-lez v4, :cond_3f1

    move v12, v15

    goto :goto_3f2

    :cond_3f1
    const/4 v12, 0x0

    :goto_3f2
    const-wide/32 v4, 0x20000

    cmp-long v4, v10, v4

    if-lez v4, :cond_3fb

    move v10, v15

    goto :goto_3fc

    :cond_3fb
    const/4 v10, 0x0

    :goto_3fc
    const-wide v4, 0x4062c00000000000L    # 150.0

    if-eqz v12, :cond_40c

    .line 1108
    iget-wide v7, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mThresholdRxBitRate:J

    cmp-long v6, v0, v7

    if-gtz v6, :cond_40a

    goto :goto_40c

    :cond_40a
    const/4 v7, 0x0

    goto :goto_439

    :cond_40c
    :goto_40c
    if-eqz v10, :cond_414

    iget-wide v6, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mThresholdTxBitRate:J

    cmp-long v6, v2, v6

    if-gtz v6, :cond_40a

    :cond_414
    if-eqz v12, :cond_6db

    iget-object v6, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget-boolean v6, v6, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->isGameApp:Z

    if-eqz v6, :cond_6db

    iget-object v6, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mEmaSpeed:[J

    const/4 v7, 0x0

    aget-wide v13, v6, v7

    long-to-double v13, v13

    cmpg-double v6, v13, v4

    if-gez v6, :cond_6db

    iget-object v6, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mLongEmaSpeed:[D

    aget-wide v13, v6, v7

    iget-object v6, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mShortEmaSpeed:[D

    aget-wide v48, v6, v7

    sub-double v13, v13, v48

    iget-wide v4, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mThresholdRxBitRate:J

    long-to-double v4, v4

    mul-double v4, v4, v23

    cmpl-double v4, v13, v4

    if-lez v4, :cond_6db

    .line 1114
    :goto_439
    iget-object v4, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mEmaSpeed:[J

    aget-wide v5, v4, v7

    iget-object v8, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mSmaSpeed:[J

    aget-wide v13, v8, v7

    cmp-long v7, v5, v13

    if-gez v7, :cond_450

    if-eqz v12, :cond_450

    move/from16 v45, v12

    iget-wide v11, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mThresholdRxBitRate:J

    cmp-long v7, v0, v11

    if-gtz v7, :cond_486

    goto :goto_452

    :cond_450
    move/from16 v45, v12

    :goto_452
    aget-wide v11, v4, v15

    aget-wide v53, v8, v15

    cmp-long v7, v11, v53

    if-gez v7, :cond_462

    if-eqz v10, :cond_462

    iget-wide v11, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mThresholdTxBitRate:J

    cmp-long v7, v2, v11

    if-gtz v7, :cond_486

    :cond_462
    iget-object v7, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget-boolean v7, v7, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->isGameApp:Z

    if-eqz v7, :cond_639

    long-to-double v11, v5

    const-wide v48, 0x4062c00000000000L    # 150.0

    cmpg-double v7, v11, v48

    if-gez v7, :cond_639

    iget-object v7, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mLongEmaSpeed:[D

    const/4 v11, 0x0

    aget-wide v53, v7, v11

    iget-object v7, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mShortEmaSpeed:[D

    aget-wide v55, v7, v11

    sub-double v53, v53, v55

    iget-wide v11, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mThresholdRxBitRate:J

    long-to-double v11, v11

    mul-double v11, v11, v23

    cmpl-double v7, v53, v11

    if-lez v7, :cond_639

    .line 1118
    :cond_486
    iget-object v7, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget-boolean v7, v7, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->isGameApp:Z

    if-eqz v7, :cond_4e0

    long-to-double v11, v5

    const-wide v43, 0x4062c00000000000L    # 150.0

    cmpg-double v7, v11, v43

    if-gez v7, :cond_4e0

    iget-object v7, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mLongEmaSpeed:[D

    const/4 v11, 0x0

    aget-wide v43, v7, v11

    iget-object v7, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mShortEmaSpeed:[D

    aget-wide v48, v7, v11

    sub-double v43, v43, v48

    iget-wide v11, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mThresholdRxBitRate:J

    long-to-double v11, v11

    mul-double v11, v11, v23

    cmpl-double v7, v43, v11

    if-lez v7, :cond_4e0

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Case1: decreasing for gaming app, LongEMA("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mLongEmaSpeed:[D

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    double-to-int v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ShortEMA("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mShortEmaSpeed:[D

    aget-wide v3, v1, v2

    double-to-int v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is larger than 1.5*threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mThresholdRxBitRate:J

    long-to-double v1, v1

    mul-double v1, v1, v23

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    goto :goto_525

    :cond_4e0
    cmp-long v5, v5, v13

    if-gez v5, :cond_501

    if-eqz v45, :cond_501

    .line 1120
    iget-wide v5, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mThresholdRxBitRate:J

    cmp-long v5, v0, v5

    if-lez v5, :cond_501

    .line 1121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Case1: decreasing trend since Rx(EMA < SMA), rxDelta="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    goto :goto_525

    .line 1122
    :cond_501
    aget-wide v0, v4, v15

    aget-wide v4, v8, v15

    cmp-long v0, v0, v4

    if-gez v0, :cond_525

    if-eqz v10, :cond_525

    iget-wide v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mThresholdTxBitRate:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_525

    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Case1: decreasing trend since Tx(EMA < SMA), txDelta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 1126
    :cond_525
    :goto_525
    iget-wide v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalRxBytes:J

    sub-long v1, v34, v0

    iget-wide v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalTxBytes:J

    sub-long v3, v29, v3

    iget-wide v5, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUidRxBytes:J

    sub-long v5, v20, v5

    iget-wide v7, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUidTxBytes:J

    sub-long v7, v39, v7

    move-object/from16 v0, p0

    const-wide/16 v11, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->isHavingBackgroundTraffic(JJJJ)I

    move-result v0

    if-lez v0, :cond_635

    .line 1129
    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    if-le v0, v15, :cond_635

    int-to-long v0, v0

    .line 1133
    iget-wide v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalMaxBandwidth:J

    iget-wide v4, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppMaxRxBitrate:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    if-eqz v45, :cond_56a

    cmp-long v4, v2, v11

    if-lez v4, :cond_56a

    sub-long v0, v2, v11

    .line 1136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changing the background bandwidth to old Rx max speed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 1139
    :cond_56a
    iget-wide v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalMaxBandwidth:J

    iget-wide v4, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppMaxTxBitrate:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    if-eqz v10, :cond_591

    cmp-long v4, v2, v11

    if-lez v4, :cond_591

    sub-long/2addr v2, v11

    .line 1141
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changing the background bandwidth to old Tx max speed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 1144
    :cond_591
    iget-object v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v3, v2, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->computedBandwidth:I

    if-le v3, v15, :cond_5a9

    .line 1145
    iget v4, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundGuardSeconds:I

    if-eqz v4, :cond_59f

    iget v4, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundBandwidth:I

    if-le v3, v4, :cond_5a9

    .line 1147
    :cond_59f
    div-int/lit8 v4, v3, 0x2

    int-to-long v4, v4

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v2, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->computedBandwidth:I

    .line 1148
    :cond_5a9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update bandwidth(Mbps: lastComp="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " comp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->computedBandwidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " prob="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 1152
    iget v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundRemainingSeconds:I

    if-nez v1, :cond_631

    move-wide/from16 v1, v51

    long-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 1153
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundBandwidth:I

    .line 1154
    iget-object v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->computedBandwidth:I

    if-le v2, v1, :cond_5fa

    add-int/2addr v2, v1

    .line 1155
    div-int/lit8 v2, v2, 0x2

    iput v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundBandwidth:I

    :cond_5fa
    const/16 v11, 0xf

    .line 1156
    iput v11, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundRemainingSeconds:I

    .line 1157
    iget v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundReleasedSeconds:I

    if-ge v1, v11, :cond_608

    const/16 v1, 0xf

    mul-int/lit8 v1, v1, 0x2

    .line 1158
    iput v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundRemainingSeconds:I

    :cond_608
    const/16 v1, 0x8

    .line 1159
    iput v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundGuardSeconds:I

    const/4 v1, 0x0

    .line 1160
    iput v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundReleasedSeconds:I

    .line 1161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New upperbound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundBandwidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " remainingSeconds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundRemainingSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    goto/16 :goto_76c

    :cond_631
    const/16 v11, 0xf

    goto/16 :goto_76c

    :cond_635
    move-object/from16 v0, v38

    goto/16 :goto_76c

    :cond_639
    move-object/from16 v0, v38

    move-wide/from16 v1, v51

    const/16 v11, 0xf

    .line 1167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Case2: increasing trend since (EMA > SMA), speedBackground="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 1168
    iget-object v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mEmaSpeed:[J

    const/4 v4, 0x0

    aget-wide v5, v3, v4

    iget-object v7, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mSmaSpeed:[J

    aget-wide v12, v7, v4

    cmp-long v4, v5, v12

    if-lez v4, :cond_66f

    aget-wide v36, v3, v15

    aget-wide v41, v7, v15

    move-wide/from16 v48, v12

    iget-wide v11, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mThresholdTxBitRate:J

    sub-long v41, v41, v11

    cmp-long v4, v36, v41

    if-gez v4, :cond_681

    goto :goto_671

    :cond_66f
    move-wide/from16 v48, v12

    :goto_671
    aget-wide v3, v3, v15

    aget-wide v7, v7, v15

    cmp-long v3, v3, v7

    if-lez v3, :cond_76c

    iget-wide v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mThresholdRxBitRate:J

    sub-long v12, v48, v3

    cmp-long v3, v5, v12

    if-ltz v3, :cond_76c

    .line 1170
    :cond_681
    iget-object v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    mul-int/lit16 v4, v3, 0x400

    int-to-double v4, v4

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v6

    sub-int/2addr v3, v15

    mul-int/lit16 v3, v3, 0x400

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    double-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_76c

    .line 1171
    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v2, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->computedBandwidth:I

    int-to-double v3, v2

    move/from16 v5, v50

    int-to-double v6, v5

    const-wide v10, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v6, v10

    cmpg-double v3, v3, v6

    if-gez v3, :cond_6d2

    iget v3, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->targetBandwidth:I

    int-to-double v3, v3

    int-to-double v12, v2

    mul-double/2addr v12, v10

    cmpl-double v3, v3, v12

    if-lez v3, :cond_6d2

    int-to-double v3, v2

    mul-double v3, v3, v23

    double-to-int v1, v3

    add-int/2addr v2, v15

    .line 1173
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    double-to-int v2, v6

    .line 1174
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1175
    iget-object v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v3, v2, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->computedBandwidth:I

    if-ne v1, v3, :cond_6ce

    if-ge v1, v5, :cond_6ce

    add-int/lit8 v1, v1, 0x1

    .line 1177
    :cond_6ce
    iput v1, v2, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->computedBandwidth:I

    goto/16 :goto_76c

    :cond_6d2
    add-int/2addr v2, v15

    .line 1179
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->computedBandwidth:I

    goto/16 :goto_76c

    :cond_6db
    move/from16 v45, v12

    move-object/from16 v0, v38

    move/from16 v5, v50

    move-wide/from16 v1, v51

    .line 1188
    iget-object v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mEmaSpeed:[J

    const/4 v4, 0x0

    aget-wide v6, v3, v4

    iget-object v8, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mSmaSpeed:[J

    aget-wide v11, v8, v4

    cmp-long v4, v6, v11

    if-gez v4, :cond_6f2

    if-nez v45, :cond_6fd

    :cond_6f2
    aget-wide v3, v3, v15

    aget-wide v6, v8, v15

    cmp-long v3, v3, v6

    if-gez v3, :cond_703

    if-nez v10, :cond_6fd

    goto :goto_703

    :cond_6fd
    const-string v1, "Case4: stable but EMA is slightly less than SMA - keep the current computedBandwidth"

    .line 1204
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    goto :goto_76c

    .line 1189
    :cond_703
    :goto_703
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Case3: stable state - SMA and EMA difference is in between the threshold, speedBackground="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 1190
    iget-object v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    mul-int/lit16 v4, v3, 0x400

    int-to-double v6, v4

    const-wide v10, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v6, v10

    sub-int/2addr v3, v15

    mul-int/lit16 v3, v3, 0x400

    int-to-double v3, v3

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    double-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_76c

    .line 1191
    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v2, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->computedBandwidth:I

    int-to-double v3, v2

    int-to-double v6, v5

    const-wide v10, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v6, v10

    cmpg-double v3, v3, v6

    if-gez v3, :cond_765

    iget v3, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->targetBandwidth:I

    int-to-double v3, v3

    int-to-double v12, v2

    mul-double/2addr v12, v10

    cmpl-double v3, v3, v12

    if-lez v3, :cond_765

    int-to-double v3, v2

    mul-double v3, v3, v23

    double-to-int v1, v3

    add-int/2addr v2, v15

    .line 1193
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    double-to-int v2, v6

    .line 1194
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1195
    iget-object v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v3, v2, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->computedBandwidth:I

    if-ne v1, v3, :cond_762

    if-ge v1, v5, :cond_762

    add-int/lit8 v1, v1, 0x1

    .line 1197
    :cond_762
    iput v1, v2, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->computedBandwidth:I

    goto :goto_76c

    :cond_765
    add-int/2addr v2, v15

    .line 1199
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->computedBandwidth:I

    .line 1210
    :cond_76c
    :goto_76c
    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v2, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->computedBandwidth:I

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->computedBandwidth:I

    .line 1211
    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v2, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->computedBandwidth:I

    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->targetBandwidth:I

    if-eq v2, v1, :cond_7aa

    if-le v2, v1, :cond_793

    const-wide v3, 0x3fc999999999999aL    # 0.2

    .line 1214
    invoke-direct {v9, v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->computeSmoothingSpeed(IID)D

    move-result-wide v1

    double-to-int v1, v1

    .line 1215
    iget-object v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->targetBandwidth:I

    if-ne v1, v2, :cond_7a2

    add-int/lit8 v1, v1, 0x1

    goto :goto_7a2

    :cond_793
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 1218
    invoke-direct {v9, v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->computeSmoothingSpeed(IID)D

    move-result-wide v1

    double-to-int v1, v1

    .line 1219
    iget-object v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->targetBandwidth:I

    if-ne v1, v2, :cond_7a2

    add-int/lit8 v1, v1, -0x1

    .line 1222
    :cond_7a2
    :goto_7a2
    iget-object v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v2, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->targetBandwidth:I

    .line 1225
    :cond_7aa
    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmStaticBandwidth(Lcom/samsung/android/server/wifi/SemApeService;)I

    move-result v1

    if-eqz v1, :cond_7c0

    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    iget-object v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmStaticBandwidth(Lcom/samsung/android/server/wifi/SemApeService;)I

    move-result v2

    if-eq v1, v2, :cond_7c0

    move v8, v15

    goto :goto_7c2

    :cond_7c0
    move/from16 v8, v22

    :goto_7c2
    if-nez v8, :cond_7df

    .line 1228
    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v2, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->targetBandwidth:I

    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v1, v1

    iget-object v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpl-double v1, v1, v3

    if-lez v1, :cond_8fb

    .line 1229
    :cond_7df
    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v2, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 1230
    iget v3, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->targetBandwidth:I

    iput v3, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 1231
    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmStaticBandwidth(Lcom/samsung/android/server/wifi/SemApeService;)I

    move-result v1

    if-eqz v1, :cond_805

    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    iget-object v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmStaticBandwidth(Lcom/samsung/android/server/wifi/SemApeService;)I

    move-result v3

    if-eq v1, v3, :cond_805

    .line 1232
    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget-object v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmStaticBandwidth(Lcom/samsung/android/server/wifi/SemApeService;)I

    move-result v3

    iput v3, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 1234
    :cond_805
    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeService;)Z

    move-result v1

    if-eqz v1, :cond_8a3

    .line 1235
    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    const/16 v3, 0x32

    if-le v1, v3, :cond_861

    iget v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundRemainingSeconds:I

    if-nez v1, :cond_861

    .line 1236
    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeService;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v4, v4, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->appUid:I

    invoke-static {v0, v1, v2, v4}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$mdeleteRule(Lcom/samsung/android/server/wifi/SemApeService;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_8fb

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rules are deleted for ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") with bandwidth(Mbps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), since its more than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 1239
    iput-boolean v15, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mIsBgSetToMax:Z

    .line 1240
    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fputmRulesApplied(Lcom/samsung/android/server/wifi/SemApeService;Z)V

    goto/16 :goto_8fb

    .line 1243
    :cond_861
    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeService;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v4, v4, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    invoke-static {v1, v3, v2, v4}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$mreplaceRule(Lcom/samsung/android/server/wifi/SemApeService;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_8fb

    .line 1244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rules are replaced for ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") with bandwidth(Mbps: last="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    goto :goto_8fb

    :cond_8a3
    const/16 v3, 0x32

    .line 1248
    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    if-lt v0, v3, :cond_8b3

    iget v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundRemainingSeconds:I

    if-lez v0, :cond_8b0

    goto :goto_8b3

    .line 1258
    :cond_8b0
    iput-boolean v15, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mIsBgSetToMax:Z

    goto :goto_8fb

    .line 1250
    :cond_8b3
    :goto_8b3
    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v4, v2, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->appUid:I

    invoke-static {v0, v1, v4, v2}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$mapplyRule(Lcom/samsung/android/server/wifi/SemApeService;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_8fb

    .line 1251
    iget-object v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0, v15}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fputmRulesApplied(Lcom/samsung/android/server/wifi/SemApeService;Z)V

    const/4 v0, 0x0

    .line 1252
    iput-boolean v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mIsBgSetToMax:Z

    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rules are applied for ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") with bandwidth(Mbps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") since its less than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 1263
    :cond_8fb
    :goto_8fb
    iget-wide v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalRxBytes:J

    sub-long v1, v34, v0

    iget-wide v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalTxBytes:J

    sub-long v3, v29, v3

    iget-wide v5, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUidRxBytes:J

    sub-long v5, v20, v5

    iget-wide v7, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUidTxBytes:J

    sub-long v7, v39, v7

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->deleteRuleCondition(JJJJ)V

    .line 1268
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v1, 0x18

    new-array v1, v1, [Ljava/lang/Object;

    .line 1272
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v15

    iget-object v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mSmaSpeed:[J

    aget-wide v4, v2, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v25

    iget-object v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mSmaSpeed:[J

    aget-wide v4, v2, v15

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const/4 v2, 0x4

    iget-object v4, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mEmaSpeed:[J

    aget-wide v4, v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mEmaSpeed:[J

    aget-wide v2, v2, v15

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/4 v2, 0x6

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 1273
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->targetBandwidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->computedBandwidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v33

    const/16 v2, 0xb

    iget v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundRemainingSeconds:I

    if-lez v3, :cond_987

    iget v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundBandwidth:I

    goto :goto_988

    :cond_987
    const/4 v3, -0x1

    :goto_988
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    iget-wide v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mThresholdRxBitRate:J

    .line 1274
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    iget-wide v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mThresholdTxBitRate:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    iget-object v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mAppInfo:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->appUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeService;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const/16 v2, 0x10

    iget-object v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mStdDevWithEma:[J

    const/4 v4, 0x0

    aget-wide v5, v3, v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x11

    iget-object v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mStdDevWithEma:[J

    aget-wide v5, v3, v15

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x12

    iget-object v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mLongEmaSpeed:[D

    aget-wide v5, v3, v4

    .line 1275
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x13

    iget-object v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mLongEmaSpeed:[D

    aget-wide v5, v3, v15

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x14

    iget-object v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mShortEmaSpeed:[D

    aget-wide v3, v3, v4

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x15

    iget-object v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mShortEmaSpeed:[D

    aget-wide v3, v3, v15

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x16

    iget-object v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmMaxRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeService;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x17

    iget-object v3, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmMaxTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeService;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "speedUid(K: R=%d T=%d) SMA(K: R=%d T=%d) EMA(K: R=%d T=%d) speedTotal(K: R=%d T=%d) bandwidth(M: Bg=%d Target=%d Comp=%d Upper=%d) Threshold(K: R=%d T=%d) UID=%d Rule=%b StdDev(K: R=%d T=%d) LongEMA(K: R=%.1f T=%.1f) ShortEMA(K: R=%.1f T=%.1f) maxLinkSpeed(M: R=%d T=%d)"

    .line 1268
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1277
    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeService;)Z

    move-result v1

    if-nez v1, :cond_a38

    iget-boolean v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mIsBgSetToMax:Z

    if-eqz v1, :cond_a34

    goto :goto_a38

    .line 1281
    :cond_a34
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    goto :goto_a40

    .line 1278
    :cond_a38
    :goto_a38
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 1279
    iget-object v1, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$mrecordHistory(Lcom/samsung/android/server/wifi/SemApeService;Ljava/lang/String;)V

    :goto_a40
    move-wide/from16 v0, v29

    .line 1284
    iput-wide v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalTxBytes:J

    move-wide/from16 v0, v34

    .line 1285
    iput-wide v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mTotalRxBytes:J

    move-wide/from16 v0, v39

    .line 1286
    iput-wide v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUidTxBytes:J

    move-wide/from16 v0, v20

    .line 1287
    iput-wide v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUidRxBytes:J

    .line 1289
    iget v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundRemainingSeconds:I

    if-lez v0, :cond_a5f

    sub-int/2addr v0, v15

    .line 1290
    iput v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundRemainingSeconds:I

    .line 1291
    iget v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundGuardSeconds:I

    if-lez v0, :cond_a64

    sub-int/2addr v0, v15

    .line 1292
    iput v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundGuardSeconds:I

    goto :goto_a64

    .line 1294
    :cond_a5f
    iget v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundReleasedSeconds:I

    add-int/2addr v0, v15

    iput v0, v9, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->mUpperBoundReleasedSeconds:I

    :cond_a64
    :goto_a64
    return-void
.end method
