.class Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;
.super Ljava/lang/Object;
.source "LinkBandwidthEstimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/LinkBandwidthEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BandwidthState"
.end annotation


# instance fields
.field blacklist mAvgUsedKbps:I

.field blacklist mBwSampleKbps:I

.field blacklist mBwSampleValid:Z

.field blacklist mBwSampleValidTimeMs:J

.field blacklist mByteDeltaAccThr:I

.field blacklist mFilterKbps:I

.field blacklist mLastReportedBwKbps:I

.field private final blacklist mLink:I

.field blacklist mStaticBwKbps:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mresetBandwidthFilter(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->resetBandwidthFilter()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateBandwidthFilter(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->updateBandwidthFilter()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateBandwidthSample(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->updateBandwidthSample(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateByteCountThr(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->updateByteCountThr()V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;I)V
    .registers 4

    .line 704
    iput-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    invoke-static {}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$sfgetBYTE_DELTA_THRESHOLD_KB()[[I

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    aget p1, p1, v0

    iput p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    .line 705
    iput p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLink:I

    return-void
.end method

.method private blacklist calculateByteCountThreshold(II)I
    .registers 7

    int-to-long p0, p1

    const-wide/16 v0, 0x8

    .line 893
    div-long/2addr p0, v0

    int-to-long v2, p2

    mul-long/2addr p0, v2

    const-wide/16 v2, 0x3

    mul-long/2addr p0, v2

    .line 894
    div-long/2addr p0, v0

    const-wide/32 v0, 0x7fffffff

    .line 895
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method private blacklist calculateErrorPercent(II)I
    .registers 5

    sub-int/2addr p1, p2

    int-to-long p0, p1

    const-wide/16 v0, 0x64

    mul-long/2addr p0, v0

    int-to-long v0, p2

    .line 932
    div-long/2addr p0, v0

    const-wide/16 v0, 0x2710

    .line 933
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    const-wide/16 v0, -0x2710

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method private blacklist getAvgLinkBandwidthKbps()I
    .registers 2

    .line 850
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->getAvgUsedLinkBandwidthKbps()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mAvgUsedKbps:I

    if-lez v0, :cond_9

    return v0

    .line 854
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->getAvgUsedBandwidthAdjacentThreeLevelKbps()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mAvgUsedKbps:I

    if-lez v0, :cond_12

    return v0

    .line 859
    :cond_12
    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mStaticBwKbps:I

    return p0
.end method

.method private blacklist getAvgUsedBandwidthAdjacentThreeLevelKbps()I
    .registers 10

    .line 804
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmDataRat(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataRatName(I)Ljava/lang/String;

    move-result-object v0

    .line 805
    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmPlmn(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$mlookupNetwork(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    move-result-object v0

    .line 807
    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmSignalLevel(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->getAvgUsedBandwidthAtLevel(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;I)I

    move-result v1

    .line 808
    iget-object v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v3}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmSignalLevel(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->getAvgUsedBandwidthAtLevel(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;I)I

    move-result v3

    if-lez v1, :cond_33

    if-lez v3, :cond_33

    add-int/2addr v1, v3

    .line 810
    div-int/lit8 v1, v1, 0x2

    return v1

    :cond_33
    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    move v6, v5

    :goto_38
    const/4 v7, 0x5

    if-gt v6, v2, :cond_58

    .line 816
    iget-object v8, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v8}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmSignalLevel(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I

    move-result v8

    add-int/2addr v8, v6

    if-ltz v8, :cond_55

    if-lt v8, v7, :cond_47

    goto :goto_55

    .line 820
    :cond_47
    iget v7, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLink:I

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->getCount(II)I

    move-result v7

    add-int/2addr v1, v7

    .line 821
    iget v7, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLink:I

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->getValue(II)J

    move-result-wide v7

    add-long/2addr v3, v7

    :cond_55
    :goto_55
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    :cond_58
    if-lt v1, v7, :cond_5e

    int-to-long v0, v1

    .line 825
    div-long/2addr v3, v0

    long-to-int p0, v3

    return p0

    :cond_5e
    return v5
.end method

.method private blacklist getAvgUsedBandwidthAtLevel(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;I)I
    .registers 6

    const/4 v0, -0x1

    if-ltz p2, :cond_19

    const/4 v1, 0x5

    if-lt p2, v1, :cond_7

    goto :goto_19

    .line 835
    :cond_7
    iget v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLink:I

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->getCount(II)I

    move-result v2

    if-lt v2, v1, :cond_19

    .line 837
    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLink:I

    invoke-virtual {p1, p0, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->getValue(II)J

    move-result-wide p0

    int-to-long v0, v2

    div-long/2addr p0, v0

    long-to-int p0, p0

    return p0

    :cond_19
    :goto_19
    return v0
.end method

.method private blacklist getAvgUsedLinkBandwidthKbps()I
    .registers 5

    .line 787
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmDataRat(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataRatName(I)Ljava/lang/String;

    move-result-object v0

    .line 788
    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmPlmn(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v3}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmTac(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->lookupNetwork(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    move-result-object v1

    .line 789
    iget v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLink:I

    iget-object v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v3}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmSignalLevel(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->getCount(II)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_39

    .line 791
    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLink:I

    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmSignalLevel(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I

    move-result p0

    invoke-virtual {v1, v0, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->getValue(II)J

    move-result-wide v0

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0

    .line 795
    :cond_39
    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmPlmn(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$mlookupNetwork(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    move-result-object v0

    .line 796
    iget v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLink:I

    iget-object v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmSignalLevel(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->getCount(II)I

    move-result v1

    if-lt v1, v3, :cond_61

    .line 798
    iget v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLink:I

    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmSignalLevel(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I

    move-result p0

    invoke-virtual {v0, v2, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->getValue(II)J

    move-result-wide v2

    int-to-long v0, v1

    div-long/2addr v2, v0

    long-to-int p0, v2

    return p0

    :cond_61
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist getCurrentCount()I
    .registers 4

    .line 843
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmDataRat(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataRatName(I)Ljava/lang/String;

    move-result-object v0

    .line 844
    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmPlmn(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$mlookupNetwork(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    move-result-object v0

    .line 845
    iget v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLink:I

    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmSignalLevel(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->getCount(II)I

    move-result p0

    return p0
.end method

.method private blacklist resetBandwidthFilter()V
    .registers 2

    const/4 v0, 0x0

    .line 863
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mBwSampleValid:Z

    .line 864
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->getAvgLinkBandwidthKbps()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mFilterKbps:I

    return-void
.end method

.method private blacklist updateBandwidthFilter()V
    .registers 10

    .line 736
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->getAvgLinkBandwidthKbps()I

    move-result v0

    .line 739
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mBwSampleValid:Z

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mBwSampleKbps:I

    goto :goto_c

    :cond_b
    move v1, v0

    .line 741
    :goto_c
    iget-object v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmTelephonyFacade(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Lcom/android/internal/telephony/TelephonyFacade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/TelephonyFacade;->getElapsedSinceBootMillis()J

    move-result-wide v2

    .line 742
    iget-wide v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mBwSampleValidTimeMs:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    .line 747
    iget-object v5, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v5}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmBandwidthUpdateSignalDbm(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v6}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmSignalStrengthDbm(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_54

    iget-object v5, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v5}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmBandwidthUpdatePlmn(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v7}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmPlmn(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Ljava/lang/String;

    move-result-object v7

    .line 748
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    iget-object v5, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v5}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmBandwidthUpdateDataRat(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I

    move-result v5

    iget-object v7, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v7}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmDataRat(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I

    move-result v7

    if-ne v5, v7, :cond_54

    iget-boolean v5, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mBwSampleValid:Z

    .line 756
    :cond_54
    iget-boolean v5, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mBwSampleValid:Z

    if-eqz v5, :cond_5a

    .line 757
    iput-wide v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mBwSampleValidTimeMs:J

    .line 760
    :cond_5a
    iget v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mFilterKbps:I

    if-ne v1, v2, :cond_5f

    return-void

    :cond_5f
    const/16 v2, 0x18

    if-le v4, v2, :cond_65

    const/4 v2, 0x0

    goto :goto_73

    :cond_65
    const-wide/high16 v2, 0x4060000000000000L    # 128.0

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    int-to-double v4, v4

    mul-double/2addr v4, v7

    int-to-double v6, v6

    div-double/2addr v4, v6

    .line 765
    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v2, v4

    :goto_73
    if-nez v2, :cond_78

    .line 767
    iput v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mFilterKbps:I

    return-void

    .line 770
    :cond_78
    iget v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mFilterKbps:I

    int-to-long v3, v3

    int-to-long v5, v2

    mul-long/2addr v3, v5

    mul-int/lit16 v5, v1, 0x80

    int-to-long v5, v5

    add-long/2addr v3, v5

    mul-int v5, v1, v2

    int-to-long v5, v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x80

    .line 772
    div-long/2addr v3, v5

    const-wide/32 v5, 0x7fffffff

    .line 773
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mFilterKbps:I

    .line 775
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 776
    iget-object v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    iget v5, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLink:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " lastSampleWeight="

    .line 777
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    .line 778
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " filterInKbps="

    .line 779
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " avgKbps="

    .line 780
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " filterOutKbps="

    .line 781
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mFilterKbps:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 782
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 776
    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logv(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateBandwidthSample(JJ)V
    .registers 7

    .line 709
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->updateByteCountThr()V

    .line 710
    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_b

    return-void

    :cond_b
    const-wide/16 v0, 0xc8

    cmp-long v0, p3, v0

    if-gez v0, :cond_12

    return-void

    :cond_12
    const-wide/16 v0, 0x8

    mul-long/2addr p1, v0

    .line 716
    div-long/2addr p1, p3

    const-wide/16 p3, 0x3e8

    mul-long/2addr p1, p3

    const-wide/16 p3, 0x400

    div-long/2addr p1, p3

    .line 717
    iget p3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mStaticBwKbps:I

    int-to-long p3, p3

    const-wide/16 v0, 0xf

    mul-long/2addr p3, v0

    cmp-long p3, p1, p3

    if-gtz p3, :cond_6e

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-gez p3, :cond_2d

    goto :goto_6e

    :cond_2d
    long-to-int p1, p1

    const/4 p2, 0x1

    .line 722
    iput-boolean p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mBwSampleValid:Z

    .line 723
    iput p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mBwSampleKbps:I

    .line 725
    iget-object p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmDataRat(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataRatName(I)Ljava/lang/String;

    move-result-object p2

    .line 726
    iget-object p3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {p3}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmPlmn(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$mlookupNetwork(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    move-result-object p3

    int-to-long v0, p1

    .line 728
    iget p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLink:I

    iget-object p4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {p4}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmSignalLevel(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I

    move-result p4

    invoke-virtual {p3, v0, v1, p1, p4}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->update(JII)V

    .line 731
    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmPlmn(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {p4}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmTac(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I

    move-result p4

    invoke-virtual {p1, p3, p4, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->lookupNetwork(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    move-result-object p1

    .line 732
    iget p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLink:I

    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmSignalLevel(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I

    move-result p0

    invoke-virtual {p1, v0, v1, p2, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->update(JII)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method private blacklist updateByteCountThr()V
    .registers 4

    .line 869
    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mStaticBwKbps:I

    const/16 v1, 0x1388

    if-le v0, v1, :cond_33

    .line 870
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->getAvgUsedLinkBandwidthKbps()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->calculateByteCountThreshold(II)I

    move-result v0

    .line 873
    invoke-static {}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$sfgetBYTE_DELTA_THRESHOLD_KB()[[I

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLink:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmSignalLevel(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I

    move-result v2

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    if-lez v0, :cond_32

    .line 876
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    const/high16 v1, 0x7d0000

    .line 877
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    :cond_32
    return-void

    .line 883
    :cond_33
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->calculateByteCountThreshold(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    const/16 v1, 0x2800

    .line 886
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    .line 888
    invoke-static {}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$sfgetBYTE_DELTA_THRESHOLD_KB()[[I

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLink:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x400

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    return-void
.end method


# virtual methods
.method public blacklist calculateError()V
    .registers 13

    .line 905
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mBwSampleValid:Z

    if-eqz v0, :cond_b9

    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->getCurrentCount()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_b9

    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mAvgUsedKbps:I

    if-gtz v0, :cond_11

    goto/16 :goto_b9

    .line 909
    :cond_11
    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLastReportedBwKbps:I

    iget v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mBwSampleKbps:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->calculateErrorPercent(II)I

    move-result v0

    .line 910
    iget v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mAvgUsedKbps:I

    iget v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mBwSampleKbps:I

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->calculateErrorPercent(II)I

    move-result v1

    .line 911
    iget v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mFilterKbps:I

    iget v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mBwSampleKbps:I

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->calculateErrorPercent(II)I

    move-result v10

    .line 912
    iget v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mStaticBwKbps:I

    iget v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mBwSampleKbps:I

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->calculateErrorPercent(II)I

    move-result v11

    .line 914
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLink:I

    iget-object v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v4}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmDataRat(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v5}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmDataRat(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$mgetNrMode(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v6}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmSignalLevel(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I

    move-result v6

    iget v9, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mBwSampleKbps:I

    move v7, v0

    move v8, v11

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeBandwidthStats(IIIIIII)V

    .line 917
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 918
    iget-object v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    iget v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLink:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sampKbps "

    .line 919
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mBwSampleKbps:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " filtKbps "

    .line 920
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mFilterKbps:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " reportKbps "

    .line 921
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLastReportedBwKbps:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " avgUsedKbps "

    .line 922
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mAvgUsedKbps:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " csKbps "

    .line 923
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mStaticBwKbps:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " intErrPercent "

    .line 924
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " avgErrPercent "

    .line 925
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " extErrPercent "

    .line 926
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " csErrPercent "

    .line 927
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 928
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 918
    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    :cond_b9
    :goto_b9
    return-void
.end method

.method public blacklist hasLargeBwChange()Z
    .registers 3

    .line 899
    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLastReportedBwKbps:I

    iget v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mFilterKbps:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 900
    iget v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mAvgUsedKbps:I

    if-lez v1, :cond_17

    mul-int/lit8 v0, v0, 0x64

    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLastReportedBwKbps:I

    mul-int/lit8 p0, p0, 0xf

    if-le v0, p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method
