.class public Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;
.super Landroid/os/Handler;
.source "SemWifiRssiBasePoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller$ISemWifiRssiBasePollerCallBack;
    }
.end annotation


# static fields
.field private static final RSSI_BASE_POLL:I = 0x2

.field private static final RSSI_BASE_POLLING_INTERVAL:I = 0x3e8

.field private static final RSSI_BASE_START:I = 0x1

.field private static final RSSI_BASE_STOP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SemWifiRssiBasePoller"


# instance fields
.field private mBasePollStarted:Z

.field private mBaseRxGood:D

.field private mBaseTxBad:D

.field private mBaseTxGood:D

.field private mContext:Landroid/content/Context;

.field private mPrevBaseRxGood:D

.field private mPrevBaseTxBad:D

.field private mPrevBaseTxGood:D

.field private mRssi:I

.field private mRssiBasePollStarted:I

.field private mSemWifiRssiBasePollerCallBack:Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller$ISemWifiRssiBasePollerCallBack;

.field private mTxBadOnGoing:Z

.field private mTxIncreasedCount:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mTxIncreasedCount:I

    .line 36
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBasePollStarted:Z

    .line 46
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mTxBadOnGoing:Z

    .line 54
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setTxBadOnGoing(Z)V
    .registers 2

    .line 137
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mTxBadOnGoing:Z

    return-void
.end method


# virtual methods
.method public getTxBadOnGoing()Z
    .registers 1

    .line 133
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mTxBadOnGoing:Z

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    .line 59
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 60
    iget v1, p1, Landroid/os/Message;->what:I

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v6, :cond_b1

    if-eq v1, v5, :cond_3b

    const/4 v0, 0x3

    const-string v2, "SemWifiRssiBasePoller"

    if-eq v1, v0, :cond_32

    .line 127
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore msg id : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d8

    :cond_32
    const-string p1, "RSSI_BASE_STOP"

    .line 122
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBasePollStarted:Z

    goto/16 :goto_d8

    .line 74
    :cond_3b
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBasePollStarted:Z

    if-nez p1, :cond_41

    goto/16 :goto_d8

    :cond_41
    if-nez v0, :cond_45

    goto/16 :goto_d8

    .line 77
    :cond_45
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSuccessfulTxPacketsPerSecond()D

    move-result-wide v7

    iput-wide v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBaseTxGood:D

    .line 78
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLostTxPacketsPerSecond()D

    move-result-wide v7

    iput-wide v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBaseTxBad:D

    .line 79
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSuccessfulRxPacketsPerSecond()D

    move-result-wide v7

    iput-wide v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBaseRxGood:D

    .line 80
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mRssi:I

    .line 81
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->setTxBadOnGoing(Z)V

    .line 84
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBaseTxGood:D

    iget-wide v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mPrevBaseTxGood:D

    sub-double/2addr v0, v7

    .line 85
    iget-wide v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBaseTxBad:D

    iget-wide v9, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mPrevBaseTxBad:D

    sub-double/2addr v7, v9

    add-double/2addr v0, v7

    .line 87
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mRssi:I

    iget v9, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mRssiBasePollStarted:I

    sub-int/2addr p1, v9

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    cmpl-double v9, v0, v9

    if-gtz v9, :cond_7d

    const/4 v9, -0x7

    if-ge p1, v9, :cond_7a

    goto :goto_7d

    .line 98
    :cond_7a
    iput v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mTxIncreasedCount:I

    goto :goto_95

    :cond_7d
    :goto_7d
    const-wide/16 v9, 0x0

    cmpl-double p1, v0, v9

    if-lez p1, :cond_90

    div-double/2addr v7, v0

    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpl-double p1, v7, v0

    if-ltz p1, :cond_90

    .line 93
    invoke-direct {p0, v6}, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->setTxBadOnGoing(Z)V

    .line 96
    :cond_90
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mTxIncreasedCount:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mTxIncreasedCount:I

    .line 101
    :goto_95
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mTxIncreasedCount:I

    if-lt p1, v6, :cond_9e

    .line 102
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mSemWifiRssiBasePollerCallBack:Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller$ISemWifiRssiBasePollerCallBack;

    invoke-interface {p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller$ISemWifiRssiBasePollerCallBack;->notifyBaseTrafficDetected()V

    .line 114
    :cond_9e
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBaseTxGood:D

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mPrevBaseTxGood:D

    .line 115
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBaseTxBad:D

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mPrevBaseTxBad:D

    .line 116
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBaseRxGood:D

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mPrevBaseRxGood:D

    .line 118
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->removeMessages(I)V

    .line 119
    invoke-virtual {p0, v5, v2, v3}, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_d8

    .line 62
    :cond_b1
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBasePollStarted:Z

    if-eqz p1, :cond_b6

    goto :goto_d8

    :cond_b6
    if-nez v0, :cond_b9

    goto :goto_d8

    .line 65
    :cond_b9
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSuccessfulTxPacketsPerSecond()D

    move-result-wide v7

    iput-wide v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mPrevBaseTxGood:D

    .line 66
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLostTxPacketsPerSecond()D

    move-result-wide v7

    iput-wide v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mPrevBaseTxBad:D

    .line 67
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSuccessfulRxPacketsPerSecond()D

    move-result-wide v7

    iput-wide v7, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mPrevBaseRxGood:D

    .line 68
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mRssiBasePollStarted:I

    .line 69
    invoke-virtual {p0, v5, v2, v3}, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->sendEmptyMessageDelayed(IJ)Z

    .line 70
    iput v4, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mTxIncreasedCount:I

    .line 71
    iput-boolean v6, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mBasePollStarted:Z

    :goto_d8
    return-void
.end method

.method public setSemWifiRssiBasePollerCallBack(Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller$ISemWifiRssiBasePollerCallBack;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->mSemWifiRssiBasePollerCallBack:Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller$ISemWifiRssiBasePollerCallBack;

    return-void
.end method

.method public start()V
    .registers 2

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x3

    .line 145
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->sendEmptyMessage(I)Z

    return-void
.end method
