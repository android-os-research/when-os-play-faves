.class Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;
.super Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
.source "BigdataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Pdc4Builder"
.end annotation


# instance fields
.field private mCarHUVersion:Ljava/lang/String;

.field private mCarManufacturer:Ljava/lang/String;

.field private mCarModelName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 617
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;-><init>(Ljava/lang/String;I)V

    const-string p1, "unknown"

    .line 612
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;->mCarManufacturer:Ljava/lang/String;

    .line 613
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;->mCarModelName:Ljava/lang/String;

    .line 614
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;->mCarHUVersion:Ljava/lang/String;

    return-void
.end method

.method private getBigDataBundle()Landroid/os/Bundle;
    .registers 5

    .line 650
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PDC4"

    .line 651
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a1

    .line 654
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;->getBigdataParameterString()Ljava/lang/String;

    move-result-object v2

    .line 655
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_99

    const-string v3, "feature"

    .line 658
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data"

    .line 659
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mPatternId:Ljava/lang/String;

    const-string v2, "patternId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mCategoryId:I

    const-string v2, "categoryId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 662
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mLocallyGenerated:I

    const-string v2, "locallyGenerated"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 663
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mFrequency:I

    const-string v2, "frequency"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 664
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mOui:Ljava/lang/String;

    const-string v2, "oui"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mBssid:Ljava/lang/String;

    const-string v2, "bssid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mSsid:Ljava/lang/String;

    const-string v2, "ssid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mScreenState:I

    const-string v2, "screen_on"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 668
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mReason:I

    const-string v2, "reason"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 669
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mAssocStatusCode:I

    const-string v2, "assocReason"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 670
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mRssi:I

    const-string v2, "rssi"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 671
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mNetworkInternalType:I

    const-string v2, "apTypeInt"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 672
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mWpaSupplicantState:I

    const-string v2, "wpaState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 673
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mNl80211Mode:I

    const-string v2, "80211mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 674
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mKeyMgmt:I

    const-string v2, "wpaSecureType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 675
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;->mCarManufacturer:Ljava/lang/String;

    const-string v2, "carManufacturer"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;->mCarModelName:Ljava/lang/String;

    const-string v1, "carName"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 656
    :cond_99
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "data should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 652
    :cond_a1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "feature name should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method build()Landroid/os/Bundle;
    .registers 1

    .line 646
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;->getBigDataBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method getBigdataParameterString()Ljava/lang/String;
    .registers 4

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mCategoryId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mOui:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mFrequency:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mRssi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mKeyMgmt:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mNetworkInternalType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mWpaSupplicantState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mLocallyGenerated:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mCategoryId:I

    if-nez v2, :cond_56

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mReason:I

    goto :goto_58

    :cond_56
    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mAssocStatusCode:I

    :goto_58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mConnectDuration:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;->mCarManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;->mCarModelName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;->mCarHUVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mBssid:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method setCarHUVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;
    .registers 3

    const-string v0, "unknown"

    .line 631
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;->mCarHUVersion:Ljava/lang/String;

    return-object p0
.end method

.method bridge synthetic setDisconnectInfo(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 2

    .line 611
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;->setDisconnectInfo(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;

    move-result-object p0

    return-object p0
.end method

.method setDisconnectInfo(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;
    .registers 3

    .line 636
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setDisconnectInfoInternal(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)V

    if-eqz p1, :cond_14

    .line 638
    iget-object v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->handleState:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setHandleState(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 639
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->lastProcessMessage:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setLastProcessMessageId(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 640
    iget p1, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->connectionDurationMinutes:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setDuration(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    :cond_14
    return-object p0
.end method

.method setManufacturer(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;
    .registers 3

    const-string v0, "unknown"

    .line 621
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;->mCarManufacturer:Ljava/lang/String;

    return-object p0
.end method

.method setModelName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;
    .registers 3

    const-string v0, "unknown"

    .line 626
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;->mCarModelName:Ljava/lang/String;

    return-object p0
.end method
