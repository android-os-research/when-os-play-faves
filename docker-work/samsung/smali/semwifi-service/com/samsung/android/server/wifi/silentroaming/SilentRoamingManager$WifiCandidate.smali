.class public Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;
.super Ljava/lang/Object;
.source "SilentRoamingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiCandidate"
.end annotation


# instance fields
.field private mCalculatedThroughputScore:D

.field private final mCarrierOrPrivileged:Z

.field private final mChannelWidth:I

.field private final mConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mEphemeral:Z

.field private final mEstimatedPercentInternetAvailability:I

.field private final mFrequency:I

.field private final mHasNoInternetAccess:Z

.field private final mIsCurrentBssid:Z

.field private final mIsCurrentNetwork:Z

.field private final mIsMetered:Z

.field private final mIsNoInternetAccessExpected:Z

.field private final mIsOpenNetwork:Z

.field private final mKey:Ljava/lang/String;

.field private final mLastSelectionWeight:D

.field private final mNetworkId:I

.field private final mOemPaid:Z

.field private final mOemPrivate:Z

.field private final mPasspoint:Z

.field private final mPredictedThroughputMbps:I

.field private final mRestricted:Z

.field private final mScanRssi:I

.field private final mSecondaryInternet:Z

.field private final mTrusted:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;IIIDZZZZI)V
    .registers 15

    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 796
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mCalculatedThroughputScore:D

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mKey:Ljava/lang/String;

    .line 809
    iget p1, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mNetworkId:I

    .line 810
    iput-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 811
    iput p3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mScanRssi:I

    .line 812
    iput p4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mFrequency:I

    .line 813
    iput p5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mChannelWidth:I

    .line 814
    iput-wide p6, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mLastSelectionWeight:D

    .line 815
    iput-boolean p8, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsCurrentNetwork:Z

    .line 816
    iput-boolean p9, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsCurrentBssid:Z

    .line 817
    iput-boolean p10, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsMetered:Z

    .line 818
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mHasNoInternetAccess:Z

    .line 819
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->isNoInternetAccessExpected()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsNoInternetAccessExpected:Z

    .line 820
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiConfigurationUtil;->isConfigForOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsOpenNetwork:Z

    .line 821
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mPasspoint:Z

    .line 822
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mEphemeral:Z

    .line 823
    iget-boolean p1, p2, Landroid/net/wifi/WifiConfiguration;->trusted:Z

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mTrusted:Z

    .line 824
    iget-boolean p1, p2, Landroid/net/wifi/WifiConfiguration;->oemPaid:Z

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mOemPaid:Z

    .line 825
    iget-boolean p1, p2, Landroid/net/wifi/WifiConfiguration;->oemPrivate:Z

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mOemPrivate:Z

    .line 826
    iget-boolean p1, p2, Landroid/net/wifi/WifiConfiguration;->dbsSecondaryInternet:Z

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mSecondaryInternet:Z

    .line 827
    iput-boolean p11, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mCarrierOrPrivileged:Z

    .line 828
    iput p12, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mPredictedThroughputMbps:I

    const/4 p1, 0x0

    .line 829
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mEstimatedPercentInternetAvailability:I

    .line 830
    iget-boolean p1, p2, Landroid/net/wifi/WifiConfiguration;->restricted:Z

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mRestricted:Z

    return-void
.end method


# virtual methods
.method public getCalculatedThroughputScore()D
    .registers 3

    .line 930
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mCalculatedThroughputScore:D

    return-wide v0
.end method

.method public getChannelWidth()I
    .registers 1

    .line 918
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mChannelWidth:I

    return p0
.end method

.method public getEstimatedPercentInternetAvailability()I
    .registers 1

    .line 914
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mEstimatedPercentInternetAvailability:I

    return p0
.end method

.method public getFrequency()I
    .registers 1

    .line 906
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mFrequency:I

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 834
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getLastSelectionWeight()D
    .registers 3

    .line 890
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mLastSelectionWeight:D

    return-wide v0
.end method

.method public getNetworkConfigId()I
    .registers 1

    .line 838
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mNetworkId:I

    return p0
.end method

.method public getPredictedThroughputMbps()I
    .registers 1

    .line 910
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mPredictedThroughputMbps:I

    return p0
.end method

.method public getScanRssi()I
    .registers 1

    .line 902
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mScanRssi:I

    return p0
.end method

.method public getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 1

    .line 922
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method public hasNoInternetAccess()Z
    .registers 1

    .line 882
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mHasNoInternetAccess:Z

    return p0
.end method

.method public isCarrierOrPrivileged()Z
    .registers 1

    .line 874
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mCarrierOrPrivileged:Z

    return p0
.end method

.method public isCurrentBssid()Z
    .registers 1

    .line 898
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsCurrentBssid:Z

    return p0
.end method

.method public isCurrentNetwork()Z
    .registers 1

    .line 894
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsCurrentNetwork:Z

    return p0
.end method

.method public isEphemeral()Z
    .registers 1

    .line 850
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mEphemeral:Z

    return p0
.end method

.method public isMetered()Z
    .registers 1

    .line 878
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsMetered:Z

    return p0
.end method

.method public isNoInternetAccessExpected()Z
    .registers 1

    .line 886
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsNoInternetAccessExpected:Z

    return p0
.end method

.method public isOemPaid()Z
    .registers 1

    .line 862
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mOemPaid:Z

    return p0
.end method

.method public isOemPrivate()Z
    .registers 1

    .line 866
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mOemPrivate:Z

    return p0
.end method

.method public isOpenNetwork()Z
    .registers 1

    .line 842
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsOpenNetwork:Z

    return p0
.end method

.method public isPasspoint()Z
    .registers 1

    .line 846
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mPasspoint:Z

    return p0
.end method

.method public isRestricted()Z
    .registers 1

    .line 858
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mRestricted:Z

    return p0
.end method

.method public isSecondaryInternet()Z
    .registers 1

    .line 870
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mSecondaryInternet:Z

    return p0
.end method

.method public isTrusted()Z
    .registers 1

    .line 854
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mTrusted:Z

    return p0
.end method

.method public setCalculatedThroughputScore(D)V
    .registers 3

    .line 926
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mCalculatedThroughputScore:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 934
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 936
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getLastSelectionWeight()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    const-string v2, ", "

    const-string v3, ""

    if-eqz v1, :cond_37

    .line 938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastSelectionWeight = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getLastSelectionWeight()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_38

    :cond_37
    move-object v1, v3

    .line 942
    :goto_38
    new-instance v4, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {v4}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 943
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Candidate { configId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getNetworkConfigId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    invoke-virtual {v4, v0}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", freq = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getFrequency()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rssi = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getScanRssi()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Mbps = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getPredictedThroughputMbps()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Score = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getCalculatedThroughputScore()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", pInternet = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getEstimatedPercentInternetAvailability()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isCurrentBssid()Z

    move-result v0

    if-eqz v0, :cond_a5

    const-string v0, "connected, "

    goto :goto_a6

    :cond_a5
    move-object v0, v3

    :goto_a6
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isCurrentNetwork()Z

    move-result v0

    if-eqz v0, :cond_b2

    const-string v0, "current, "

    goto :goto_b3

    :cond_b2
    move-object v0, v3

    :goto_b3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v0, :cond_c1

    const-string v0, "hidden, "

    goto :goto_c2

    :cond_c1
    move-object v0, v3

    :goto_c2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_ce

    const-string v0, "ephemeral"

    goto :goto_d0

    :cond_ce
    const-string v0, "saved"

    :goto_d0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_df

    const-string v0, "trusted, "

    goto :goto_e0

    :cond_df
    move-object v0, v3

    :goto_e0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_ec

    const-string v0, "restricted, "

    goto :goto_ed

    :cond_ec
    move-object v0, v3

    :goto_ed
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isOemPaid()Z

    move-result v0

    if-eqz v0, :cond_f9

    const-string v0, "oemPaid, "

    goto :goto_fa

    :cond_f9
    move-object v0, v3

    :goto_fa
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isOemPrivate()Z

    move-result v0

    if-eqz v0, :cond_106

    const-string v0, "oemPrivate, "

    goto :goto_107

    :cond_106
    move-object v0, v3

    :goto_107
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isSecondaryInternet()Z

    move-result v0

    if-eqz v0, :cond_113

    const-string v0, "secondaryInternet, "

    goto :goto_114

    :cond_113
    move-object v0, v3

    :goto_114
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isCarrierOrPrivileged()Z

    move-result v0

    if-eqz v0, :cond_120

    const-string v0, "priv, "

    goto :goto_121

    :cond_120
    move-object v0, v3

    :goto_121
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isMetered()Z

    move-result v0

    if-eqz v0, :cond_12d

    const-string v0, "metered, "

    goto :goto_12e

    :cond_12d
    move-object v0, v3

    :goto_12e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->hasNoInternetAccess()Z

    move-result v0

    if-eqz v0, :cond_13a

    const-string v0, "noInternet, "

    goto :goto_13b

    :cond_13a
    move-object v0, v3

    :goto_13b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isNoInternetAccessExpected()Z

    move-result v0

    if-eqz v0, :cond_147

    const-string v0, "noInternetExpected, "

    goto :goto_148

    :cond_147
    move-object v0, v3

    :goto_148
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_153

    const-string v3, "passpoint, "

    :cond_153
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isOpenNetwork()Z

    move-result p0

    if-eqz p0, :cond_15f

    const-string p0, "open"

    goto :goto_161

    :cond_15f
    const-string p0, "secure"

    :goto_161
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
