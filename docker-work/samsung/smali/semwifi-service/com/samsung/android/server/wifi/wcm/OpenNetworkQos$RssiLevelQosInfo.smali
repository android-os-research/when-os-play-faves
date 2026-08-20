.class public Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;
.super Ljava/lang/Object;
.source "OpenNetworkQos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RssiLevelQosInfo"
.end annotation


# instance fields
.field public mActiveRxBytes:J

.field public mActiveThroughput:J

.field public mActiveTime:J

.field public mActiveTxBytes:J

.field public mApCountOnChannel:D

.field public mAverageThroughput:J

.field public mCalculatedScore:I

.field public mCumulativeDnsResponseTime:J

.field public mCurrentThroughput:J

.field public mDnsFailCount:I

.field public mDnsPassCount:I

.field public mDwellTime:J

.field public mForcedSetScore:I

.field public mIpReachabilityLostCount:I

.field private mLastActiveRxBytes:J

.field private mLastActiveTime:J

.field private mLastCalculatedScore:J

.field private mLastTxBad:I

.field private mLastTxGood:I

.field public mLatestCloudScoreSummary:Ljava/lang/String;

.field public mLevelValue:I

.field public mMaximumThroughput:J

.field public mPer:D

.field public mQcFailCount:I

.field public mQcPassCount:I

.field public mScore:I

.field public mTotalRxBytes:J

.field public mTotalTxBytes:J

.field public mTxBad:I

.field public mTxGood:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)V
    .registers 7

    .line 643
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLevelValue:I

    .line 645
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_SCORE()[I

    move-result-object p1

    const/4 p2, 0x0

    aget p1, p1, p2

    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mScore:I

    .line 646
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_SCORE()[I

    move-result-object p1

    aget p1, p1, p2

    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCalculatedScore:I

    .line 647
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_SCORE()[I

    move-result-object p1

    aget p1, p1, p2

    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mForcedSetScore:I

    const-wide/16 v0, 0x0

    .line 648
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mMaximumThroughput:J

    .line 649
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCurrentThroughput:J

    .line 650
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mAverageThroughput:J

    .line 651
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveThroughput:J

    .line 652
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalTxBytes:J

    .line 653
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalRxBytes:J

    .line 654
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTxBytes:J

    .line 655
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveRxBytes:J

    .line 656
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDwellTime:J

    .line 657
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTime:J

    .line 658
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxBad:I

    .line 659
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxGood:I

    .line 660
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mQcPassCount:I

    .line 661
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mQcFailCount:I

    .line 662
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDnsPassCount:I

    .line 663
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDnsFailCount:I

    .line 664
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCumulativeDnsResponseTime:J

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 665
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mApCountOnChannel:D

    .line 666
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mIpReachabilityLostCount:I

    const-wide/16 v2, 0x0

    .line 667
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mPer:D

    .line 669
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCalculatedScore:I

    int-to-long v2, p1

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastCalculatedScore:J

    .line 670
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastActiveTime:J

    .line 671
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastActiveRxBytes:J

    .line 672
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastTxBad:I

    .line 673
    iput p2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastTxGood:I

    const-string p1, ""

    .line 674
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLatestCloudScoreSummary:Ljava/lang/String;

    return-void
.end method

.method private showToastBssidQosMapInfo(I)V
    .registers 10

    .line 746
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$fgettoastCount(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$fputtoastCount(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)V

    .line 747
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$fgettoastCount(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x1e

    const-string v1, "Level["

    if-nez v0, :cond_df

    .line 748
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$mgetLevelValue(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)I

    move-result v0

    .line 749
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 750
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "N/A"

    const/16 v5, -0x64

    if-ne p1, v5, :cond_34

    move-object v0, v1

    goto :goto_38

    :cond_34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_38
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]  "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_43

    goto :goto_54

    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dBm "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_54
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCurrentThroughput:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v0, v5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " kbps\nMax Tput: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mMaximumThroughput:J

    const-wide/32 v5, 0xf4240

    div-long/2addr v0, v5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " Mbps - "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING()[Ljava/lang/String;

    move-result-object v0

    .line 752
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByMaxTput()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nActive Tput: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveThroughput:J

    div-long/2addr v0, v5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING()[Ljava/lang/String;

    move-result-object p1

    .line 753
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByActiveTput()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nPER: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mPer:D

    .line 754
    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "% - "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByPer()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nRESULT: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING()[Ljava/lang/String;

    move-result-object p1

    .line 755
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndex()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 756
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1b3

    .line 757
    :cond_df
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$fgettoastCount(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)I

    move-result p1

    rem-int/lit8 p1, p1, 0x1e

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1b3

    .line 758
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 759
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mSsid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] - #Conn: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    iget v0, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mNumberOfConnections:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isCaptivePortal: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mIsCaptivePortal:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", Latest DNS Result: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    iget v0, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mLatestDnsResult:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mBssidQosMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;

    .line 761
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLevelValue:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - Quality: "

    .line 762
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndex()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING_SHORT()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByMaxTput()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING_SHORT()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByActiveTput()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING_SHORT()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByPer()I

    move-result v4

    aget-object v4, v5, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13a

    .line 765
    :cond_1a2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1b3
    :goto_1b3
    return-void
.end method


# virtual methods
.method public getQualityIndex()I
    .registers 2

    .line 706
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mScore:I

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$mgetQualityIndexFromScore(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;I)I

    move-result p0

    return p0
.end method

.method public getQualityIndexByActiveTput()I
    .registers 5

    .line 687
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTime:J

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1b

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalRxBytes:J

    const-wide/32 v2, 0xf4240

    cmp-long v0, v0, v2

    if-gez v0, :cond_12

    goto :goto_1b

    .line 692
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveThroughput:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->activeTputToIndex(J)I

    move-result p0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return p0
.end method

.method public getQualityIndexByMaxTput()I
    .registers 5

    .line 678
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDwellTime:J

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1c

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalRxBytes:J

    const-wide/32 v2, 0xf4240

    cmp-long v0, v0, v2

    if-gez v0, :cond_13

    goto :goto_1c

    .line 683
    :cond_13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mMaximumThroughput:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->maxTputToIndex(J)I

    move-result p0

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return p0
.end method

.method public getQualityIndexByPer()I
    .registers 6

    .line 696
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCalculatedScore:I

    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_SCORE()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne v0, v1, :cond_c

    return v2

    .line 699
    :cond_c
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxBad:I

    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxGood:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v3, 0x5dc

    cmp-long v0, v0, v3

    if-gez v0, :cond_19

    return v2

    .line 702
    :cond_19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mPer:D

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->perToIndex(D)I

    move-result p0

    return p0
.end method

.method public getScoreForCloud()Landroid/os/Bundle;
    .registers 22

    move-object/from16 v0, p0

    .line 770
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTime:J

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastActiveTime:J

    sub-long/2addr v1, v3

    .line 771
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v4, 0x7530

    cmp-long v4, v1, v4

    const-string v5, "weight"

    const-string v6, "score"

    if-gez v4, :cond_26

    .line 774
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_SCORE()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {v3, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-wide/16 v0, 0x0

    .line 775
    invoke-virtual {v3, v5, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v3

    .line 779
    :cond_26
    iget-wide v7, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveRxBytes:J

    iget-wide v9, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastActiveRxBytes:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    const-wide/16 v11, 0x8

    mul-long/2addr v7, v11

    div-long/2addr v7, v1

    .line 781
    iget v4, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxBad:I

    iget v11, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastTxBad:I

    sub-int/2addr v4, v11

    .line 782
    iget v11, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxGood:I

    iget v12, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastTxGood:I

    sub-int/2addr v11, v12

    int-to-double v12, v4

    int-to-double v14, v11

    add-double/2addr v14, v12

    div-double/2addr v12, v14

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v14

    .line 784
    iget-object v14, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    iget-wide v9, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mMaximumThroughput:J

    .line 785
    invoke-virtual {v14, v9, v10}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->maxTputToIndex(J)I

    move-result v9

    iget-object v10, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-virtual {v10, v7, v8}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->activeTputToIndex(J)I

    move-result v10

    iget-object v15, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-virtual {v15, v12, v13}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->perToIndex(D)I

    move-result v15

    invoke-virtual {v14, v9, v10, v15}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->calculateScore(III)I

    move-result v9

    .line 787
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->updateQualityScore()V

    .line 788
    new-instance v10, Ljava/text/DecimalFormat;

    const-string v14, "#.##"

    invoke-direct {v10, v14}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 789
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    const-wide/16 v17, 0x3e8

    div-long v5, v15, v17

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 791
    :try_start_82
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v14, "MM-dd HH:mm:ss.SSS"

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 792
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5
    :try_end_94
    .catch Ljava/lang/RuntimeException; {:try_start_82 .. :try_end_94} :catch_94

    .line 795
    :catch_94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getScoreForCloud["

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]: LastScore: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastCalculatedScore:J

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " @ "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastActiveTime:J

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", CurrentScore: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCalculatedScore:I

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTime:J

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", calculatedScoreFromDelta: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", Mx/dAc: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mMaximumThroughput:J

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v7, v7, v16

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", dTB/dTG: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    invoke-virtual {v10, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%]"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLatestCloudScoreSummary:Ljava/lang/String;

    .line 801
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetDBG()Z

    move-result v4

    if-eqz v4, :cond_11f

    iget-object v4, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLatestCloudScoreSummary:Ljava/lang/String;

    const-string v5, "OpenNetworkQos[4.00]"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_11f
    iget v4, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCalculatedScore:I

    int-to-long v4, v4

    iput-wide v4, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastCalculatedScore:J

    .line 804
    iget-wide v4, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveRxBytes:J

    iput-wide v4, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastActiveRxBytes:J

    .line 805
    iget-wide v4, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTime:J

    iput-wide v4, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastActiveTime:J

    .line 806
    iget v4, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxBad:I

    iput v4, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastTxBad:I

    .line 807
    iget v4, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxGood:I

    iput v4, v0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLastTxGood:I

    move-object/from16 v0, v20

    .line 809
    invoke-virtual {v3, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, v19

    .line 810
    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .registers 15

    .line 816
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 819
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetDBG()Z

    move-result v2

    const-wide/16 v3, 0x0

    const-string v5, " ["

    const-string v6, "-"

    const-string v7, ")"

    const-string v8, "("

    const-string v9, "["

    const-string v10, "] - "

    const-wide/16 v11, 0x3e8

    const-string v13, "/"

    if-eqz v2, :cond_19a

    const-string v2, "RSSI Level["

    .line 820
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLevelValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Quality: "

    .line 821
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndex()I

    move-result v10

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mForcedSetScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCalculatedScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByMaxTput()I

    move-result v6

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByActiveTput()I

    move-result v6

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByPer()I

    move-result v6

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DwellTime/ActiveTime: "

    .line 822
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDwellTime:J

    div-long/2addr v6, v11

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTime:J

    div-long/2addr v6, v11

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " sec, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Max/Ave/Active/Curr Tput "

    .line 823
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mMaximumThroughput:J

    div-long/2addr v6, v11

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mAverageThroughput:J

    div-long/2addr v6, v11

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveThroughput:J

    div-long/2addr v6, v11

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCurrentThroughput:J

    div-long/2addr v6, v11

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " kbps, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "TxBad/TxGood: "

    .line 824
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxBad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxGood:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mPer:D

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "TxBytes: "

    .line 825
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)Landroid/content/Context;

    move-result-object v2

    iget-wide v5, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalTxBytes:J

    invoke-static {v2, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "RxBytes: "

    .line 826
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)Landroid/content/Context;

    move-result-object v5

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalRxBytes:J

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "QC P/F: "

    .line 827
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mQcPassCount:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mQcFailCount:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "DNS P/F: "

    .line 828
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDnsPassCount:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mQcFailCount:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "DNS RTT: "

    .line 829
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDnsPassCount:I

    if-nez v5, :cond_15e

    goto :goto_162

    :cond_15e
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCumulativeDnsResponseTime:J

    int-to-long v5, v5

    div-long/2addr v3, v5

    :goto_162
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "msec, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ApCount: "

    .line 830
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mApCountOnChannel:D

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mIpReachabilityLostCount:I

    if-nez v0, :cond_182

    const-string p0, ""

    goto :goto_195

    :cond_182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIpReachabilityLostCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mIpReachabilityLostCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_195
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2c2

    :cond_19a
    const-string v2, "Lev["

    .line 833
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mLevelValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Q: "

    .line 834
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING_SHORT()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndex()I

    move-result v10

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mForcedSetScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCalculatedScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING_SHORT()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByMaxTput()I

    move-result v6

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING_SHORT()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByActiveTput()I

    move-result v6

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_STRING_SHORT()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByPer()I

    move-result v6

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", DT/AT: "

    .line 835
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDwellTime:J

    div-long/2addr v6, v11

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveTime:J

    div-long/2addr v6, v11

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", Mx/Av/Ac/Cr: "

    .line 836
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mMaximumThroughput:J

    div-long/2addr v6, v11

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mAverageThroughput:J

    div-long/2addr v6, v11

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mActiveThroughput:J

    div-long/2addr v6, v11

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCurrentThroughput:J

    div-long/2addr v6, v11

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", TB/TG: "

    .line 837
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxBad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTxGood:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mPer:D

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Tx/Rx: "

    .line 838
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)Landroid/content/Context;

    move-result-object v0

    iget-wide v5, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalTxBytes:J

    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)Landroid/content/Context;

    move-result-object v0

    iget-wide v5, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mTotalRxBytes:J

    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Q P/F: "

    .line 839
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mQcPassCount:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mQcFailCount:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", D P/F: "

    .line 840
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDnsPassCount:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mQcFailCount:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", D RTT: "

    .line 841
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mDnsPassCount:I

    if-nez v0, :cond_2ba

    goto :goto_2bf

    :cond_2ba
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCumulativeDnsResponseTime:J

    int-to-long v4, v0

    div-long v3, v2, v4

    :goto_2bf
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 843
    :goto_2c2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateQualityScore()V
    .registers 2

    const/16 v0, -0x64

    .line 710
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->updateQualityScore(I)V

    return-void
.end method

.method public updateQualityScore(I)V
    .registers 6

    .line 715
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByMaxTput()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByActiveTput()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->getQualityIndexByPer()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->calculateScore(III)I

    move-result v0

    if-eqz v0, :cond_16

    .line 716
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCalculatedScore:I

    .line 720
    :cond_16
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mForcedSetScore:I

    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetINDEX_TO_SCORE()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    if-eq v0, v1, :cond_24

    .line 721
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mForcedSetScore:I

    goto :goto_26

    .line 723
    :cond_24
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mCalculatedScore:I

    .line 727
    :goto_26
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mScore:I

    if-eq v1, v0, :cond_31

    .line 729
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->mScore:I

    .line 731
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$mreportOpenNetworkQosQualityScoreChange(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)V

    .line 735
    :cond_31
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateQualityScore - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], rssi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, -0x64

    if-ne p1, v1, :cond_62

    const-string v1, "N/A"

    goto :goto_66

    .line 737
    :cond_62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", #Conn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->this$0:Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;

    iget v1, v1, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->mNumberOfConnections:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenNetworkQos[4.00]"

    .line 736
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_8a
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;->-$$Nest$sfgetSMARTCM_DBG()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 741
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$RssiLevelQosInfo;->showToastBssidQosMapInfo(I)V

    :cond_93
    return-void
.end method
