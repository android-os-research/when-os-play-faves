.class public Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;
.super Ljava/lang/Object;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TxRxSum"
.end annotation


# instance fields
.field public blacklist rxBytes:J

.field public blacklist rxPkts:J

.field public blacklist time:J

.field public blacklist txBytes:J

.field public blacklist txPkts:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$mupdateTxRxSumBytes(Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->updateTxRxSumBytes()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->reset()V

    return-void
.end method

.method public constructor blacklist <init>(JJ)V
    .registers 5

    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 850
    iput-wide p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    .line 851
    iput-wide p3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    return-void
.end method

.method public constructor blacklist <init>(JJJJJ)V
    .registers 11

    .line 840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 841
    iput-wide p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    .line 842
    iput-wide p3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    .line 843
    iput-wide p5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txBytes:J

    .line 844
    iput-wide p7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxBytes:J

    .line 845
    iput-wide p9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->time:J

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;)V
    .registers 4

    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 855
    iget-wide v0, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    .line 856
    iget-wide v0, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    .line 858
    iget-wide v0, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txBytes:J

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txBytes:J

    .line 859
    iget-wide v0, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxBytes:J

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxBytes:J

    .line 860
    iget-wide v0, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->time:J

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->time:J

    return-void
.end method

.method private blacklist updateTxRxSumBytes()V
    .registers 5

    const-wide/16 v0, -0x1

    .line 888
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txBytes:J

    .line 889
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxBytes:J

    .line 890
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$sfgetmTpDefaultIface()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 891
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$sfgetmTpDefaultIface()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txBytes:J

    .line 892
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$sfgetmTpDefaultIface()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxBytes:J

    .line 894
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->time:J

    return-void
.end method


# virtual methods
.method public blacklist reset()V
    .registers 3

    const-wide/16 v0, -0x1

    .line 865
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    .line 866
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    .line 868
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txBytes:J

    .line 869
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxBytes:J

    .line 870
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->time:J

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{txSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " rxSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateTcpTxAllRxSum()V
    .registers 1

    return-void
.end method

.method public blacklist updateTotalTxRxSum()V
    .registers 3

    .line 883
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    .line 884
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    return-void
.end method
