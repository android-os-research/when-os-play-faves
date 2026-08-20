.class public Lcom/android/internal/telephony/NetworkIndication;
.super Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;
.source "NetworkIndication.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2

    .line 61
    invoke-direct {p0}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method

.method private blacklist reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V
    .registers 3

    .line 398
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    :goto_10
    if-nez p0, :cond_14

    const/4 p0, -0x1

    goto :goto_18

    .line 399
    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    .line 400
    :goto_18
    invoke-static {p1, p2, p0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public blacklist barringInfoChanged(ILandroid/hardware/radio/network/CellIdentity;[Landroid/hardware/radio/network/BarringInfo;)V
    .registers 6

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    if-eqz p2, :cond_2d

    if-nez p3, :cond_b

    goto :goto_2d

    .line 84
    :cond_b
    new-instance p1, Landroid/telephony/BarringInfo;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Landroid/hardware/radio/network/CellIdentity;)Landroid/telephony/CellIdentity;

    move-result-object p2

    .line 85
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertHalBarringInfoList([Landroid/hardware/radio/network/BarringInfo;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/telephony/BarringInfo;-><init>(Landroid/telephony/CellIdentity;Landroid/util/SparseArray;)V

    .line 88
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p3, 0x451

    invoke-virtual {p2, p3, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 91
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mBarringInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    :cond_2d
    :goto_2d
    const-string p1, "645b16bb-c930-4c1c-9c5d-568696542e05"

    .line 78
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    const-string p2, "Invalid barringInfoChanged indication"

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/NetworkIndication;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 80
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist cdmaPrlChanged(II)V
    .registers 5

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p2, p1, v0

    .line 104
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x408

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 106
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaPrlChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist cellInfoList(I[Landroid/hardware/radio/network/CellInfo;)V
    .registers 5

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 117
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfoList([Landroid/hardware/radio/network/CellInfo;)Ljava/util/ArrayList;

    move-result-object p1

    .line 118
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40c

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 119
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilCellInfoListRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist currentLinkCapacityEstimate(ILandroid/hardware/radio/network/LinkCapacityEstimate;)V
    .registers 5

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 131
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalLceData(Landroid/hardware/radio/network/LinkCapacityEstimate;)Ljava/util/List;

    move-result-object p1

    .line 133
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x415

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 135
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mLceInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_20

    .line 136
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_20
    return-void
.end method

.method public blacklist currentPhysicalChannelConfigs(I[Landroid/hardware/radio/network/PhysicalChannelConfig;)V
    .registers 11

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 148
    new-instance p1, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    :try_start_c
    array-length v0, p2

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_af

    aget-object v3, p2, v2

    .line 151
    new-instance v4, Landroid/telephony/PhysicalChannelConfig$Builder;

    invoke-direct {v4}, Landroid/telephony/PhysicalChannelConfig$Builder;-><init>()V

    .line 152
    iget-object v5, v3, Landroid/hardware/radio/network/PhysicalChannelConfig;->band:Landroid/hardware/radio/network/PhysicalChannelConfigBand;

    invoke-virtual {v5}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getTag()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_63

    const/4 v6, 0x2

    if-eq v5, v6, :cond_59

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4f

    if-eq v5, v1, :cond_45

    .line 166
    iget-object v5, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported band type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/hardware/radio/network/PhysicalChannelConfig;->band:Landroid/hardware/radio/network/PhysicalChannelConfigBand;

    invoke-virtual {v7}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getTag()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_6c

    .line 163
    :cond_45
    iget-object v5, v3, Landroid/hardware/radio/network/PhysicalChannelConfig;->band:Landroid/hardware/radio/network/PhysicalChannelConfigBand;

    invoke-virtual {v5}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getNgranBand()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/PhysicalChannelConfig$Builder;->setBand(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    goto :goto_6c

    .line 160
    :cond_4f
    iget-object v5, v3, Landroid/hardware/radio/network/PhysicalChannelConfig;->band:Landroid/hardware/radio/network/PhysicalChannelConfigBand;

    invoke-virtual {v5}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getEutranBand()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/PhysicalChannelConfig$Builder;->setBand(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    goto :goto_6c

    .line 157
    :cond_59
    iget-object v5, v3, Landroid/hardware/radio/network/PhysicalChannelConfig;->band:Landroid/hardware/radio/network/PhysicalChannelConfigBand;

    invoke-virtual {v5}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getUtranBand()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/PhysicalChannelConfig$Builder;->setBand(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    goto :goto_6c

    .line 154
    :cond_63
    iget-object v5, v3, Landroid/hardware/radio/network/PhysicalChannelConfig;->band:Landroid/hardware/radio/network/PhysicalChannelConfigBand;

    invoke-virtual {v5}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getGeranBand()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/PhysicalChannelConfig$Builder;->setBand(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    .line 168
    :goto_6c
    iget v5, v3, Landroid/hardware/radio/network/PhysicalChannelConfig;->status:I

    .line 169
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertHalCellConnectionStatus(I)I

    move-result v5

    .line 168
    invoke-virtual {v4, v5}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellConnectionStatus(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v4

    iget v5, v3, Landroid/hardware/radio/network/PhysicalChannelConfig;->downlinkChannelNumber:I

    .line 170
    invoke-virtual {v4, v5}, Landroid/telephony/PhysicalChannelConfig$Builder;->setDownlinkChannelNumber(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v4

    iget v5, v3, Landroid/hardware/radio/network/PhysicalChannelConfig;->uplinkChannelNumber:I

    .line 171
    invoke-virtual {v4, v5}, Landroid/telephony/PhysicalChannelConfig$Builder;->setUplinkChannelNumber(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v4

    iget v5, v3, Landroid/hardware/radio/network/PhysicalChannelConfig;->cellBandwidthDownlinkKhz:I

    .line 172
    invoke-virtual {v4, v5}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellBandwidthDownlinkKhz(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v4

    iget v5, v3, Landroid/hardware/radio/network/PhysicalChannelConfig;->cellBandwidthUplinkKhz:I

    .line 173
    invoke-virtual {v4, v5}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellBandwidthUplinkKhz(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v4

    iget v5, v3, Landroid/hardware/radio/network/PhysicalChannelConfig;->rat:I

    .line 174
    invoke-static {v5}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/PhysicalChannelConfig$Builder;->setNetworkType(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v4

    iget v5, v3, Landroid/hardware/radio/network/PhysicalChannelConfig;->physicalCellId:I

    .line 175
    invoke-virtual {v4, v5}, Landroid/telephony/PhysicalChannelConfig$Builder;->setPhysicalCellId(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v4

    iget-object v3, v3, Landroid/hardware/radio/network/PhysicalChannelConfig;->contextIds:[I

    .line 176
    invoke-virtual {v4, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setContextIds([I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v3

    .line 177
    invoke-virtual {v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->build()Landroid/telephony/PhysicalChannelConfig;

    move-result-object v3

    .line 168
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ab
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_ab} :catch_c4

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_e

    .line 185
    :cond_af
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x44d

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 187
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhysicalChannelConfigurationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    :catch_c4
    move-exception p1

    const-string p2, "918f0970-9aa9-4bcd-a28e-e49a83fe77d5"

    .line 180
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    const-string v0, "RIL reported invalid PCC (AIDL)"

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/NetworkIndication;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 182
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid PhysicalChannelConfig "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist currentSignalStrength(ILandroid/hardware/radio/network/SignalStrength;)V
    .registers 5

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 200
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSignalStrength(Landroid/hardware/radio/network/SignalStrength;)Landroid/telephony/SignalStrength;

    move-result-object p1

    .line 202
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/RIL;->fixupSignalStrength10(Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    move-result-object p1

    .line 206
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_1f

    .line 207
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1f
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "57e8e923513d80a26102e450d335e89b4346be66"

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist imsNetworkStateChanged(I)V
    .registers 4

    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 218
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40d

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 220
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsNetworkStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist networkScanResult(ILandroid/hardware/radio/network/NetworkScanResult;)V
    .registers 5

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 232
    iget-object p1, p2, Landroid/hardware/radio/network/NetworkScanResult;->networkInfos:[Landroid/hardware/radio/network/CellInfo;

    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfoList([Landroid/hardware/radio/network/CellInfo;)Ljava/util/ArrayList;

    move-result-object p1

    .line 233
    new-instance v0, Lcom/android/internal/telephony/NetworkScanResult;

    iget v1, p2, Landroid/hardware/radio/network/NetworkScanResult;->status:I

    iget p2, p2, Landroid/hardware/radio/network/NetworkScanResult;->error:I

    invoke-direct {v0, v1, p2, p1}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    .line 234
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p2, 0x419

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 235
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilNetworkScanResultRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist networkStateChanged(I)V
    .registers 4

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 245
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3ea

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 247
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist nitzTimeReceived(ILjava/lang/String;JJ)V
    .registers 9

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 265
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f0

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-lez p1, :cond_5e

    cmp-long p1, p5, v0

    if-ltz p1, :cond_5e

    cmp-long p1, p5, p3

    if-ltz p1, :cond_1c

    goto :goto_5e

    :cond_1c
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x1

    .line 281
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 282
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, p2

    .line 284
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->ignore_nitz()Ljava/util/Optional;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4a

    .line 287
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const-string p1, "ignoring UNSOL_NITZ_TIME_RECEIVED"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_5d

    .line 289
    :cond_4a
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p2, :cond_59

    .line 290
    new-instance p3, Landroid/os/AsyncResult;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p1, p4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 294
    :cond_59
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iput-object p1, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    :goto_5d
    return-void

    :cond_5e
    :goto_5e
    const-string p1, "fc7c56d4-485d-475a-aaff-394203c6cdfc"

    .line 270
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    const-string p2, "NITZ indication with invalid parameter"

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/NetworkIndication;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 273
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NITZ parameter is invalid, ignoring nitzTimeReceived indication. receivedTimeMs = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", ageMs = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist registrationFailed(ILandroid/hardware/radio/network/CellIdentity;Ljava/lang/String;III)V
    .registers 15

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 311
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Landroid/hardware/radio/network/CellIdentity;)Landroid/telephony/CellIdentity;

    move-result-object p1

    .line 313
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v0, Lcom/android/internal/telephony/RegistrationFailedEvent;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/RegistrationFailedEvent;-><init>(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    const/16 v1, 0x450

    invoke-virtual {p2, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    if-eqz p1, :cond_51

    .line 316
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_51

    and-int/lit8 p2, p4, 0x3

    if-eqz p2, :cond_51

    and-int/lit8 p2, p4, -0x4

    if-nez p2, :cond_51

    if-ltz p5, :cond_51

    if-ltz p6, :cond_51

    const p2, 0x7fffffff

    if-ne p5, p2, :cond_38

    if-ne p6, p2, :cond_38

    goto :goto_51

    .line 328
    :cond_38
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRegistrationFailedRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance p2, Landroid/os/AsyncResult;

    new-instance v0, Lcom/android/internal/telephony/RegistrationFailedEvent;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/RegistrationFailedEvent;-><init>(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    const/4 p1, 0x0

    invoke-direct {p2, p1, v0, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    return-void

    :cond_51
    :goto_51
    const-string p1, "f16e5703-6105-4341-9eb3-e68189156eb4"

    .line 321
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    const-string p2, "Invalid registrationFailed indication"

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/NetworkIndication;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 324
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist restrictedStateChanged(II)V
    .registers 5

    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 341
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3ff

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 343
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_24

    .line 344
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_24
    return-void
.end method

.method public blacklist suppSvcNotify(ILandroid/hardware/radio/network/SuppSvcNotification;)V
    .registers 5

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 357
    new-instance p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {p1}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 358
    iget-boolean v0, p2, Landroid/hardware/radio/network/SuppSvcNotification;->isMT:Z

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 359
    iget v0, p2, Landroid/hardware/radio/network/SuppSvcNotification;->code:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 360
    iget v0, p2, Landroid/hardware/radio/network/SuppSvcNotification;->index:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 361
    iget v0, p2, Landroid/hardware/radio/network/SuppSvcNotification;->type:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    .line 362
    iget-object p2, p2, Landroid/hardware/radio/network/SuppSvcNotification;->number:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 364
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f3

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 366
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_35

    .line 367
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_35
    return-void
.end method

.method public blacklist voiceRadioTechChanged(II)V
    .registers 5

    .line 377
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p2, p1, v0

    .line 381
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40b

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 383
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceRadioTechChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method
