.class abstract Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;
.super Ljava/lang/Object;
.source "BigdataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "PdcData"
.end annotation


# instance fields
.field protected mAdpsSetting:I

.field protected mAssocStatusCode:I

.field protected mBssid:Ljava/lang/String;

.field protected final mCategoryId:I

.field protected mFrequency:I

.field protected mKeyMgmt:I

.field protected mLocallyGenerated:I

.field protected mNetworkInternalType:I

.field protected mNl80211Mode:I

.field protected mOui:Ljava/lang/String;

.field protected final mPatternId:Ljava/lang/String;

.field protected mReason:I

.field protected mRssi:I

.field protected mScreenState:I

.field protected mSsid:Ljava/lang/String;

.field protected mVersion:Ljava/lang/String;

.field protected mWpaSupplicantState:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 5

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mRssi:I

    const-string v0, "00:00:00"

    .line 55
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mOui:Ljava/lang/String;

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mFrequency:I

    const-string v1, "unknown"

    .line 57
    iput-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mVersion:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mSsid:Ljava/lang/String;

    const-string v1, "00:00:00:00:00:00"

    .line 59
    iput-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mBssid:Ljava/lang/String;

    .line 60
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mLocallyGenerated:I

    .line 61
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mScreenState:I

    .line 62
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mReason:I

    .line 63
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mAssocStatusCode:I

    .line 64
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mNetworkInternalType:I

    .line 65
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mAdpsSetting:I

    .line 66
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mWpaSupplicantState:I

    .line 67
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mNl80211Mode:I

    .line 68
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mKeyMgmt:I

    .line 71
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mPatternId:Ljava/lang/String;

    .line 72
    iput p2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mCategoryId:I

    return-void
.end method


# virtual methods
.method protected getBigDataBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_98

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->getBigdataParameterString()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_90

    const-string v2, "feature"

    .line 181
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data"

    .line 182
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mPatternId:Ljava/lang/String;

    const-string v1, "patternId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mCategoryId:I

    const-string v1, "categoryId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    iget p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mLocallyGenerated:I

    const-string v1, "locallyGenerated"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    iget p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mFrequency:I

    const-string v1, "frequency"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    iget-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mOui:Ljava/lang/String;

    const-string v1, "oui"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mBssid:Ljava/lang/String;

    const-string v1, "bssid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mSsid:Ljava/lang/String;

    const-string v1, "ssid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mScreenState:I

    const-string v1, "screen_on"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    iget p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mReason:I

    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    iget p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mAssocStatusCode:I

    const-string v1, "assocReason"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    iget p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mRssi:I

    const-string v1, "rssi"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    iget p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mNetworkInternalType:I

    const-string v1, "apTypeInt"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    iget p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mWpaSupplicantState:I

    const-string v1, "wpaState"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    iget p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mAdpsSetting:I

    const-string v1, "adpsState"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    iget p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mNl80211Mode:I

    const-string v1, "80211mode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mKeyMgmt:I

    const-string p1, "wpaSecureType"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 179
    :cond_90
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "data should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 175
    :cond_98
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "feature name should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method abstract getBigdataParameterString()Ljava/lang/String;
.end method

.method protected set80211ModeInternal(I)V
    .registers 2

    .line 146
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mNl80211Mode:I

    return-void
.end method

.method protected setAdpsSettingsInternal(I)V
    .registers 2

    .line 142
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mAdpsSetting:I

    return-void
.end method

.method protected setAssocRejectReasonInternal(I)V
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    .line 129
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mAssocStatusCode:I

    :cond_5
    return-void
.end method

.method protected setBssidAndOuiInternal(Ljava/lang/String;)V
    .registers 4

    const-string v0, "00:00:00:00:00:00"

    .line 87
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 89
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mBssid:Ljava/lang/String;

    .line 91
    :cond_e
    iget-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mBssid:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_23

    .line 92
    iget-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mBssid:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mOui:Ljava/lang/String;

    :cond_23
    return-void
.end method

.method protected setDisconnectInfoInternal(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)V
    .registers 3

    if-eqz p1, :cond_48

    .line 155
    iget-object v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wifiInfoSsid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setSsidInternal(Ljava/lang/String;)V

    .line 156
    iget-object v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wifiInfoBssid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setBssidAndOuiInternal(Ljava/lang/String;)V

    .line 157
    iget-object v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->oui:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setOuiInternal(Ljava/lang/String;)V

    .line 158
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->frequency:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setFrequencyInternal(I)V

    .line 159
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->locallyGenerated:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setLocallyGeneratedInternal(I)V

    .line 160
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->screenState:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setScreenStateInternal(I)V

    .line 161
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->disconnectReason:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setReasonInternal(I)V

    .line 162
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->assocRejectStatusCode:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setAssocRejectReasonInternal(I)V

    .line 163
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wpaRssi:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setRssiInternal(I)V

    .line 164
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->networkInternalType:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setNetworkTypeInternal(I)V

    .line 165
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wpaState:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setSupplicantStateInternal(I)V

    .line 166
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->adpsState:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setAdpsSettingsInternal(I)V

    .line 167
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->nl80211Mode:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->set80211ModeInternal(I)V

    .line 168
    iget p1, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->wpaKeyMgmt:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setKeyMgmtInternal(I)V

    :cond_48
    return-void
.end method

.method protected setFrequencyInternal(I)V
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    .line 105
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mFrequency:I

    :cond_5
    return-void
.end method

.method protected setKeyMgmtInternal(I)V
    .registers 2

    .line 150
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mKeyMgmt:I

    return-void
.end method

.method protected setLocallyGeneratedInternal(I)V
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    .line 111
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mLocallyGenerated:I

    :cond_5
    return-void
.end method

.method protected setNetworkTypeInternal(I)V
    .registers 2

    .line 134
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mNetworkInternalType:I

    return-void
.end method

.method protected setOuiInternal(Ljava/lang/String;)V
    .registers 3

    const-string v0, "00:00:00"

    .line 97
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 99
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mOui:Ljava/lang/String;

    :cond_e
    return-void
.end method

.method protected setReasonInternal(I)V
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    .line 123
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mReason:I

    :cond_5
    return-void
.end method

.method protected setRssiInternal(I)V
    .registers 2

    .line 76
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mRssi:I

    return-void
.end method

.method protected setScreenStateInternal(I)V
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    .line 117
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mScreenState:I

    :cond_5
    return-void
.end method

.method protected setSsidInternal(Ljava/lang/String;)V
    .registers 3

    const-string v0, "unknown"

    .line 80
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 82
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mSsid:Ljava/lang/String;

    :cond_e
    return-void
.end method

.method protected setSupplicantStateInternal(I)V
    .registers 2

    .line 138
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mWpaSupplicantState:I

    return-void
.end method
