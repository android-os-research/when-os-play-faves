.class Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
.super Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;
.source "BigdataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Pdc1Builder"
.end annotation


# instance fields
.field protected mConnectDuration:I

.field private mDhcpReason:I

.field private mDisconnectInternalReason:I

.field private mDns1:Ljava/lang/String;

.field private mDns2:Ljava/lang/String;

.field private mGatewayAddress:Ljava/lang/String;

.field private mHandleState:Ljava/lang/String;

.field private mIpAddress:Ljava/lang/String;

.field private mIpSettings:I

.field private mLastProcessId:I

.field private mNetworkMask:I

.field private mPackageName:Ljava/lang/String;

.field private mPreviousProcessId:I

.field private mSnsUnwantedReason:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 224
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;-><init>(Ljava/lang/String;I)V

    const/4 p1, -0x1

    .line 206
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDisconnectInternalReason:I

    .line 207
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mConnectDuration:I

    const-string p2, "unknown"

    .line 208
    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mHandleState:Ljava/lang/String;

    .line 209
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mLastProcessId:I

    .line 210
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mPreviousProcessId:I

    .line 211
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mSnsUnwantedReason:I

    .line 212
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDhcpReason:I

    .line 213
    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mPackageName:Ljava/lang/String;

    .line 216
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mIpSettings:I

    const-string p2, "0.0.0.0"

    .line 217
    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mIpAddress:Ljava/lang/String;

    .line 218
    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mGatewayAddress:Ljava/lang/String;

    .line 219
    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDns1:Ljava/lang/String;

    .line 220
    iput-object p2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDns2:Ljava/lang/String;

    .line 221
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mNetworkMask:I

    return-void
.end method


# virtual methods
.method build()Landroid/os/Bundle;
    .registers 4

    const-string v0, "PDC1"

    .line 389
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->getBigDataBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 390
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mConnectDuration:I

    const-string v2, "conn_duration"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 391
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mIpSettings:I

    const-string v2, "ipAssignment"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 392
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mIpAddress:Ljava/lang/String;

    const-string v2, "ip"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mGatewayAddress:Ljava/lang/String;

    const-string v2, "gw"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDns1:Ljava/lang/String;

    const-string v2, "dns1"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDns2:Ljava/lang/String;

    const-string v2, "dns2"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mNetworkMask:I

    const-string v1, "networkPrefix"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method getBigdataParameterString()Ljava/lang/String;
    .registers 4

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mOui:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mFrequency:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mRssi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mWpaSupplicantState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mLocallyGenerated:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mReason:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDisconnectInternalReason:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mConnectDuration:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mCategoryId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDhcpReason:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mAdpsSetting:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mScreenState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mHandleState:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mLastProcessId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mPreviousProcessId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mSnsUnwantedReason:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mNetworkInternalType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mBssid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mGatewayAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method setAdpsSettings(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 2

    .line 243
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mAdpsSetting:I

    return-object p0
.end method

.method setBssid(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 2

    .line 318
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setBssidAndOuiInternal(Ljava/lang/String;)V

    return-object p0
.end method

.method setDhcpResult(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 2

    .line 263
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDhcpReason:I

    return-object p0
.end method

.method setDisconnectInfo(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 3

    .line 370
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setDisconnectInfoInternal(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)V

    if-eqz p1, :cond_37

    .line 372
    iget-object v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->handleState:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setHandleState(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 373
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->lastProcessMessage:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setLastProcessMessageId(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 374
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->previousProcessMessage:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setPreviousProcessMessageId(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 376
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->connectionDurationMinutes:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setDuration(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 378
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->ipSetting:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setIpSetting(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 379
    iget-object v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->ip:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setIpAddress(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 380
    iget-object v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->gateway:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setGatewayAddress(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 381
    iget-object v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->dns1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setDns1Address(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 382
    iget-object v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->dns2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setDns2Address(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    .line 383
    iget p1, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->netMask:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setNetMask(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    :cond_37
    return-object p0
.end method

.method setDisconnectInternalReason(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 2

    .line 233
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDisconnectInternalReason:I

    return-object p0
.end method

.method setDisconnectReason(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 2

    .line 258
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setReasonInternal(I)V

    return-object p0
.end method

.method setDns1Address(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 3

    const-string v0, "unknown"

    .line 344
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDns1:Ljava/lang/String;

    .line 345
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "0.0.0.0"

    .line 346
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDns1:Ljava/lang/String;

    :cond_12
    return-object p0
.end method

.method setDns2Address(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 3

    const-string v0, "unknown"

    .line 352
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDns2:Ljava/lang/String;

    .line 353
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "0.0.0.0"

    .line 354
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mDns2:Ljava/lang/String;

    :cond_12
    return-object p0
.end method

.method setDuration(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 2

    .line 238
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mConnectDuration:I

    return-object p0
.end method

.method setFrequency(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 2

    .line 293
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setFrequencyInternal(I)V

    return-object p0
.end method

.method setGatewayAddress(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 3

    const-string v0, "unknown"

    .line 336
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mGatewayAddress:Ljava/lang/String;

    .line 337
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "0.0.0.0"

    .line 338
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mGatewayAddress:Ljava/lang/String;

    :cond_12
    return-object p0
.end method

.method setHandleState(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 3

    const-string v0, "unknown"

    .line 288
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mHandleState:Ljava/lang/String;

    return-object p0
.end method

.method setIpAddress(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 3

    const-string v0, "unknown"

    .line 328
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mIpAddress:Ljava/lang/String;

    .line 329
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "0.0.0.0"

    .line 330
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mIpAddress:Ljava/lang/String;

    :cond_12
    return-object p0
.end method

.method setIpSetting(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 2

    .line 323
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mIpSettings:I

    return-object p0
.end method

.method setLastProcessMessageId(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 2

    .line 278
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mLastProcessId:I

    return-object p0
.end method

.method setLocallyGenerated(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 2

    .line 253
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setLocallyGeneratedInternal(I)V

    return-object p0
.end method

.method setNetMask(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 2

    .line 360
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mNetworkMask:I

    return-object p0
.end method

.method setNetworkType(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 2

    .line 228
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setNetworkTypeInternal(I)V

    return-object p0
.end method

.method setOui(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 2

    .line 273
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setOuiInternal(Ljava/lang/String;)V

    return-object p0
.end method

.method setPackageName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 3

    const-string v0, "unknown"

    .line 303
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method setPreviousProcessMessageId(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 2

    .line 283
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mPreviousProcessId:I

    return-object p0
.end method

.method setRssi(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 2

    .line 365
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setRssiInternal(I)V

    return-object p0
.end method

.method setScreenState(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 2

    .line 248
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setScreenStateInternal(I)V

    return-object p0
.end method

.method setSsid(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 2

    .line 313
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setSsidInternal(Ljava/lang/String;)V

    return-object p0
.end method

.method setSupplicantState(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 2

    .line 298
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setSupplicantStateInternal(I)V

    return-object p0
.end method

.method setUnwantedReason(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 2

    .line 268
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->mSnsUnwantedReason:I

    return-object p0
.end method

.method setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;
    .registers 3

    const-string v0, "unknown"

    .line 308
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mVersion:Ljava/lang/String;

    return-object p0
.end method
