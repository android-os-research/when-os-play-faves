.class public Lcom/android/internal/telephony/RadioIndication;
.super Landroid/hardware/radio/V1_6/IRadioIndication$Stub;
.source "RadioIndication.java"


# instance fields
.field blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public static synthetic blacklist $r8$lambda$SDjd1-QVeQHtgv1XJAI-ATtQw7E(Ljava/lang/Integer;)I
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RadioIndication;->lambda$physicalChannelConfigsIndication$1(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$vNJrA08mNuS5vcCLSuuuAGWjcRk(Ljava/lang/Integer;)I
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RadioIndication;->lambda$physicalChannelConfigsIndication$0(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2

    .line 133
    invoke-direct {p0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method

.method private static synthetic blacklist lambda$physicalChannelConfigsIndication$0(Ljava/lang/Integer;)I
    .registers 1

    .line 1252
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static synthetic blacklist lambda$physicalChannelConfigsIndication$1(Ljava/lang/Integer;)I
    .registers 1

    .line 1283
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private blacklist physicalChannelConfigsIndication(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1229
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1231
    :try_start_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_155

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1232
    instance-of v2, v1, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;

    if-eqz v2, :cond_3a

    .line 1233
    check-cast v1, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;

    .line 1236
    new-instance v2, Landroid/telephony/PhysicalChannelConfig$Builder;

    invoke-direct {v2}, Landroid/telephony/PhysicalChannelConfig$Builder;-><init>()V

    iget v3, v1, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->status:I

    .line 1237
    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellConnectionStatus(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellConnectionStatus(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget v1, v1, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->cellBandwidthDownlink:I

    .line 1239
    invoke-virtual {v2, v1}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellBandwidthDownlinkKhz(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v1

    .line 1240
    invoke-virtual {v1}, Landroid/telephony/PhysicalChannelConfig$Builder;->build()Landroid/telephony/PhysicalChannelConfig;

    move-result-object v1

    .line 1236
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1241
    :cond_3a
    instance-of v2, v1, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;

    if-eqz v2, :cond_8b

    .line 1242
    check-cast v1, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;

    .line 1244
    new-instance v2, Landroid/telephony/PhysicalChannelConfig$Builder;

    invoke-direct {v2}, Landroid/telephony/PhysicalChannelConfig$Builder;-><init>()V

    .line 1245
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/RadioIndication;->setFrequencyRangeOrChannelNumber(Landroid/telephony/PhysicalChannelConfig$Builder;Landroid/hardware/radio/V1_4/PhysicalChannelConfig;)V

    .line 1246
    iget-object v3, v1, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->base:Landroid/hardware/radio/V1_2/PhysicalChannelConfig;

    iget v3, v3, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->status:I

    .line 1247
    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellConnectionStatus(I)I

    move-result v3

    .line 1246
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellConnectionStatus(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget-object v3, v1, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->base:Landroid/hardware/radio/V1_2/PhysicalChannelConfig;

    iget v3, v3, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->cellBandwidthDownlink:I

    .line 1248
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellBandwidthDownlinkKhz(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rat:I

    .line 1250
    invoke-static {v3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v3

    .line 1249
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setNetworkType(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->physicalCellId:I

    .line 1251
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setPhysicalCellId(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget-object v1, v1, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->contextIds:Ljava/util/ArrayList;

    .line 1252
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/telephony/RadioIndication$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/telephony/RadioIndication$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/telephony/PhysicalChannelConfig$Builder;->setContextIds([I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v1

    .line 1253
    invoke-virtual {v1}, Landroid/telephony/PhysicalChannelConfig$Builder;->build()Landroid/telephony/PhysicalChannelConfig;

    move-result-object v1

    .line 1246
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1254
    :cond_8b
    instance-of v2, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;

    if-eqz v2, :cond_13d

    .line 1255
    check-cast v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;

    .line 1257
    new-instance v2, Landroid/telephony/PhysicalChannelConfig$Builder;

    invoke-direct {v2}, Landroid/telephony/PhysicalChannelConfig$Builder;-><init>()V

    .line 1258
    iget-object v3, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->band:Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    invoke-virtual {v3}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->getDiscriminator()B

    move-result v3

    if-eqz v3, :cond_e2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_d8

    const/4 v4, 0x2

    if-eq v3, v4, :cond_ce

    const/4 v4, 0x3

    if-eq v3, v4, :cond_c4

    .line 1272
    iget-object v3, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported band "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->band:Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    invoke-virtual {v5}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->getDiscriminator()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_eb

    .line 1269
    :cond_c4
    iget-object v3, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->band:Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    invoke-virtual {v3}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->ngranBand()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setBand(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    goto :goto_eb

    .line 1266
    :cond_ce
    iget-object v3, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->band:Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    invoke-virtual {v3}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->eutranBand()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setBand(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    goto :goto_eb

    .line 1263
    :cond_d8
    iget-object v3, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->band:Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    invoke-virtual {v3}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->utranBand()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setBand(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    goto :goto_eb

    .line 1260
    :cond_e2
    iget-object v3, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->band:Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    invoke-virtual {v3}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->geranBand()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setBand(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    .line 1274
    :goto_eb
    iget v3, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->status:I

    .line 1275
    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellConnectionStatus(I)I

    move-result v3

    .line 1274
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellConnectionStatus(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->downlinkChannelNumber:I

    .line 1276
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setDownlinkChannelNumber(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->uplinkChannelNumber:I

    .line 1277
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setUplinkChannelNumber(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->cellBandwidthDownlinkKhz:I

    .line 1278
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellBandwidthDownlinkKhz(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->cellBandwidthUplinkKhz:I

    .line 1279
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellBandwidthUplinkKhz(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->rat:I

    .line 1281
    invoke-static {v3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v3

    .line 1280
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setNetworkType(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->physicalCellId:I

    .line 1282
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setPhysicalCellId(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget-object v1, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->contextIds:Ljava/util/ArrayList;

    .line 1283
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/telephony/RadioIndication$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/internal/telephony/RadioIndication$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/telephony/PhysicalChannelConfig$Builder;->setContextIds([I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v1

    .line 1284
    invoke-virtual {v1}, Landroid/telephony/PhysicalChannelConfig$Builder;->build()Landroid/telephony/PhysicalChannelConfig;

    move-result-object v1

    .line 1274
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 1286
    :cond_13d
    iget-object v2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported PhysicalChannelConfig "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V
    :try_end_153
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_153} :catch_16a

    goto/16 :goto_d

    .line 1296
    :cond_155
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x44d

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1298
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhysicalChannelConfigurationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    :catch_16a
    move-exception p1

    const-string v0, "918f0970-9aa9-4bcd-a28e-e49a83fe77d5"

    .line 1290
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "RIL reported invalid PCC (HIDL)"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RadioIndication;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 1292
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid PhysicalChannelConfig "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V
    .registers 3

    .line 1392
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

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

    .line 1393
    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    .line 1394
    :goto_18
    invoke-static {p1, p2, p0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist responseApnUnthrottled(ILjava/lang/String;)V
    .registers 5

    .line 1383
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1385
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x41c

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1387
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mApnUnthrottledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private blacklist responseCellInfoList(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 868
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 869
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x40c

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 870
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilCellInfoListRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private blacklist responseDataCallListChanged(ILjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1358
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1360
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f2

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1362
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "KDI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bf

    .line 1363
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "kddi_cpa_on"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_bf

    .line 1364
    move-object p1, p2

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bf

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    const-string v2, ""

    move v3, v1

    .line 1366
    :goto_47
    iget-object v4, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, " "

    if-ge v3, v4, :cond_94

    .line 1367
    iget-object v4, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "responseDataCallListChanged(), dnses.get("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 1370
    :cond_94
    iget-object v3, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "responseDataCallListChanged(), modifyDnses = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1371
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RadioIndication;->modifyDnsByCpa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    goto/16 :goto_38

    .line 1377
    :cond_bf
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalDataCallResultList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1378
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mDataCallListChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private blacklist responseNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V
    .registers 5

    .line 1304
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1306
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p2, Landroid/hardware/radio/V1_1/NetworkScanResult;->networkInfos:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1307
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1308
    new-instance v0, Lcom/android/internal/telephony/NetworkScanResult;

    iget v1, p2, Landroid/hardware/radio/V1_1/NetworkScanResult;->status:I

    iget p2, p2, Landroid/hardware/radio/V1_1/NetworkScanResult;->error:I

    invoke-direct {v0, v1, p2, p1}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    .line 1309
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p2, 0x419

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1310
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilNetworkScanResultRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private blacklist responseNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V
    .registers 5

    .line 1315
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1317
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p2, Landroid/hardware/radio/V1_2/NetworkScanResult;->networkInfos:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1318
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1319
    new-instance v0, Lcom/android/internal/telephony/NetworkScanResult;

    iget v1, p2, Landroid/hardware/radio/V1_2/NetworkScanResult;->status:I

    iget p2, p2, Landroid/hardware/radio/V1_2/NetworkScanResult;->error:I

    invoke-direct {v0, v1, p2, p1}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    .line 1320
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p2, 0x419

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1321
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilNetworkScanResultRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private blacklist responseNetworkScan_1_4(ILandroid/hardware/radio/V1_4/NetworkScanResult;)V
    .registers 5

    .line 1326
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1328
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p2, Landroid/hardware/radio/V1_4/NetworkScanResult;->networkInfos:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1329
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1330
    new-instance v0, Lcom/android/internal/telephony/NetworkScanResult;

    iget v1, p2, Landroid/hardware/radio/V1_4/NetworkScanResult;->status:I

    iget p2, p2, Landroid/hardware/radio/V1_4/NetworkScanResult;->error:I

    invoke-direct {v0, v1, p2, p1}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    .line 1331
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p2, 0x419

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1332
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilNetworkScanResultRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private blacklist responseNetworkScan_1_5(ILandroid/hardware/radio/V1_5/NetworkScanResult;)V
    .registers 5

    .line 1337
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1339
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p2, Landroid/hardware/radio/V1_5/NetworkScanResult;->networkInfos:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1340
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1341
    new-instance v0, Lcom/android/internal/telephony/NetworkScanResult;

    iget v1, p2, Landroid/hardware/radio/V1_5/NetworkScanResult;->status:I

    iget p2, p2, Landroid/hardware/radio/V1_5/NetworkScanResult;->error:I

    invoke-direct {v0, v1, p2, p1}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    .line 1342
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p2, 0x419

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1343
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilNetworkScanResultRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private blacklist responseNetworkScan_1_6(ILandroid/hardware/radio/V1_6/NetworkScanResult;)V
    .registers 5

    .line 1348
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1350
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p2, Landroid/hardware/radio/V1_6/NetworkScanResult;->networkInfos:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1351
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1352
    new-instance v0, Lcom/android/internal/telephony/NetworkScanResult;

    iget v1, p2, Landroid/hardware/radio/V1_6/NetworkScanResult;->status:I

    iget p2, p2, Landroid/hardware/radio/V1_6/NetworkScanResult;->error:I

    invoke-direct {v0, v1, p2, p1}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    .line 1353
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p2, 0x419

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1354
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilNetworkScanResultRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private blacklist setFrequencyRangeOrChannelNumber(Landroid/telephony/PhysicalChannelConfig$Builder;Landroid/hardware/radio/V1_4/PhysicalChannelConfig;)V
    .registers 5

    .line 1216
    iget-object v0, p2, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rfInfo:Landroid/hardware/radio/V1_4/RadioFrequencyInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_4/RadioFrequencyInfo;->getDiscriminator()B

    move-result v0

    if-eqz v0, :cond_32

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    .line 1224
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported frequency type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rfInfo:Landroid/hardware/radio/V1_4/RadioFrequencyInfo;

    invoke-virtual {p2}, Landroid/hardware/radio/V1_4/RadioFrequencyInfo;->getDiscriminator()B

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_3b

    .line 1221
    :cond_28
    iget-object p0, p2, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rfInfo:Landroid/hardware/radio/V1_4/RadioFrequencyInfo;

    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/RadioFrequencyInfo;->channelNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/telephony/PhysicalChannelConfig$Builder;->setDownlinkChannelNumber(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    goto :goto_3b

    .line 1218
    :cond_32
    iget-object p0, p2, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rfInfo:Landroid/hardware/radio/V1_4/RadioFrequencyInfo;

    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/RadioFrequencyInfo;->range()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/telephony/PhysicalChannelConfig$Builder;->setFrequencyRange(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    :goto_3b
    return-void
.end method


# virtual methods
.method public blacklist barringInfoChanged(ILandroid/hardware/radio/V1_5/CellIdentity;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/hardware/radio/V1_5/CellIdentity;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/BarringInfo;",
            ">;)V"
        }
    .end annotation

    .line 1185
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    if-eqz p2, :cond_2d

    if-nez p3, :cond_b

    goto :goto_2d

    .line 1196
    :cond_b
    new-instance p1, Landroid/telephony/BarringInfo;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Ljava/lang/Object;)Landroid/telephony/CellIdentity;

    move-result-object p2

    .line 1197
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertHalBarringInfoList(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/telephony/BarringInfo;-><init>(Landroid/telephony/CellIdentity;Landroid/util/SparseArray;)V

    .line 1200
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p3, 0x451

    invoke-virtual {p2, p3, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1203
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mBarringInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    :cond_2d
    :goto_2d
    const-string p1, "645b16bb-c930-4c1c-9c5d-568696542e05"

    .line 1189
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    const-string p2, "Invalid barringInfoChanged indication"

    .line 1188
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 1192
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V
    .registers 6

    .line 540
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    const/4 p1, 0x0

    if-nez p2, :cond_29

    const/4 p2, 0x4

    new-array p2, p2, [C

    .line 548
    iget-boolean v0, p3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->isPresent:Z

    int-to-char v0, v0

    aput-char v0, p2, v1

    const/4 v0, 0x1

    .line 549
    iget-byte v1, p3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signalType:B

    int-to-char v1, v1

    aput-char v1, p2, v0

    const/4 v0, 0x2

    .line 550
    iget-byte v1, p3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->alertPitch:B

    int-to-char v1, v1

    aput-char v1, p2, v0

    const/4 v0, 0x3

    .line 551
    iget-byte p3, p3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signal:B

    int-to-char p3, p3

    aput-char p3, p2, v0

    .line 552
    iget-object p3, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/RIL;->writeMetricsCallRing([C)V

    goto :goto_2a

    :cond_29
    move-object p2, p1

    .line 555
    :goto_2a
    iget-object p3, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3fa

    invoke-virtual {p3, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 557
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_3f

    .line 558
    new-instance p3, Landroid/os/AsyncResult;

    invoke-direct {p3, p1, p2, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_3f
    return-void
.end method

.method public blacklist callStateChanged(I)V
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 157
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 159
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist carrierInfoForImsiEncryption(I)V
    .registers 4

    .line 1068
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1070
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x418

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1072
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCarrierInfoForImsiEncryptionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    invoke-direct {p1, v1, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V
    .registers 5

    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 630
    new-instance p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    invoke-direct {p1}, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;-><init>()V

    .line 631
    iget-object v0, p2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->number:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    .line 632
    iget v0, p2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberPresentation:I

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->presentationFromCLIP(I)I

    move-result v0

    iput v0, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    .line 634
    iget-object v1, p2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->name:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->name:Ljava/lang/String;

    .line 635
    iput v0, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->namePresentation:I

    .line 636
    iget-object v0, p2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->signalInfoRecord:Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    iget-boolean v1, v0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->isPresent:Z

    iput v1, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    .line 637
    iget-byte v1, v0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signalType:B

    iput v1, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    .line 638
    iget-byte v1, v0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->alertPitch:B

    iput v1, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    .line 639
    iget-byte v0, v0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signal:B

    iput v0, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    .line 640
    iget v0, p2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberType:I

    iput v0, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberType:I

    .line 641
    iget p2, p2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberPlan:I

    iput p2, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPlan:I

    .line 643
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x401

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 645
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallWaitingInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V
    .registers 14

    .line 662
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 664
    iget-object p1, p2, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->infoRec:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v0, v1

    :goto_d
    if-ge v0, p1, :cond_104

    .line 666
    iget-object v2, p2, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->infoRec:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;

    .line 667
    iget v4, v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    packed-switch v4, :pswitch_data_106

    .line 746
    :pswitch_1c
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RIL_UNSOL_CDMA_INFO_REC: unsupported record. Got "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->idToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 737
    :pswitch_3c
    iget-object v2, v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;

    .line 738
    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;

    iget-byte v4, v2, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;->upLink:B

    iget-byte v2, v2, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;->downLink:B

    invoke-direct {v3, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;-><init>(II)V

    .line 742
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;)V

    goto/16 :goto_f4

    .line 731
    :pswitch_54
    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;

    iget-object v2, v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    .line 732
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;

    iget-byte v2, v2, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;->cause:B

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;-><init>(I)V

    .line 733
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;)V

    goto/16 :goto_f4

    .line 720
    :pswitch_6a
    iget-object v2, v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;

    .line 721
    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;

    iget-byte v4, v2, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;->lineCtrlPolarityIncluded:B

    iget-byte v5, v2, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;->lineCtrlToggle:B

    iget-byte v6, v2, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;->lineCtrlReverse:B

    iget-byte v2, v2, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;->lineCtrlPowerDenial:B

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;-><init>(IIII)V

    .line 727
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;)V

    goto :goto_f4

    .line 704
    :pswitch_85
    iget-object v2, v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    .line 705
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;

    .line 707
    new-instance v10, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;

    iget-object v3, v2, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;->redirectingNumber:Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    iget-object v4, v3, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->number:Ljava/lang/String;

    iget-byte v5, v3, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->numberType:B

    iget-byte v6, v3, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->numberPlan:B

    iget-byte v7, v3, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->pi:B

    iget-byte v8, v3, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->si:B

    iget v9, v2, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;->redirectingReason:I

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;-><init>(Ljava/lang/String;IIIII)V

    .line 715
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v2, v10}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;)V

    goto :goto_f4

    .line 693
    :pswitch_a7
    iget-object v2, v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    .line 694
    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 696
    iget-boolean v4, v2, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->isPresent:Z

    iget-byte v5, v2, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signalType:B

    iget-byte v6, v2, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->alertPitch:B

    iget-byte v2, v2, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signal:B

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;-><init>(IIII)V

    .line 700
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;)V

    goto :goto_f4

    .line 681
    :pswitch_c2
    iget-object v2, v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    .line 682
    new-instance v10, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    iget-object v5, v2, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->number:Ljava/lang/String;

    iget-byte v6, v2, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->numberType:B

    iget-byte v7, v2, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->numberPlan:B

    iget-byte v8, v2, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->pi:B

    iget-byte v9, v2, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->si:B

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;-><init>(ILjava/lang/String;IIII)V

    .line 689
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v2, v10}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;)V

    goto :goto_f4

    .line 672
    :pswitch_e0
    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    iget-object v2, v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    .line 674
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;

    iget-object v2, v2, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;->alphaBuf:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;-><init>(ILjava/lang/String;)V

    .line 675
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;)V

    .line 750
    :goto_f4
    iget-object v3, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v4, 0x403

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 751
    iget-object v3, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    :cond_104
    return-void

    nop

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_e0
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
        :pswitch_a7
        :pswitch_85
        :pswitch_6a
        :pswitch_e0
        :pswitch_54
        :pswitch_1c
        :pswitch_3c
    .end packed-switch
.end method

.method public blacklist cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V
    .registers 5

    .line 571
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 573
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3fc

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 575
    new-instance p1, Landroid/telephony/SmsMessage;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSmsMessage(Landroid/hardware/radio/V1_0/CdmaSmsMessage;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 576
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_25

    .line 577
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_25
    return-void
.end method

.method public blacklist cdmaOtaProvisionStatus(II)V
    .registers 5

    .line 650
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    aput p2, p1, v1

    .line 655
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x402

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 657
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mOtaProvisionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist cdmaPrlChanged(II)V
    .registers 5

    .line 784
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    aput p2, p1, v1

    .line 789
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x408

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 791
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaPrlChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist cdmaRuimSmsStorageFull(I)V
    .registers 4

    .line 596
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 598
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3fe

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 600
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_16

    .line 601
    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_16
    return-void
.end method

.method public blacklist cdmaSubscriptionSourceChanged(II)V
    .registers 5

    .line 772
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    aput p2, p1, v1

    .line 777
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x407

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 779
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscriptionChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist cellInfoList(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 836
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RadioIndication;->responseCellInfoList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist cellInfoList_1_2(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 842
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 843
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RadioIndication;->responseCellInfoList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist cellInfoList_1_4(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 849
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 850
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RadioIndication;->responseCellInfoList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist cellInfoList_1_5(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 857
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RadioIndication;->responseCellInfoList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist cellInfoList_1_6(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 863
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 864
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RadioIndication;->responseCellInfoList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist currentEmergencyNumberList(ILjava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/EmergencyNumber;",
            ">;)V"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 377
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 380
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/V1_4/EmergencyNumber;

    .line 381
    new-instance v9, Landroid/telephony/emergency/EmergencyNumber;

    iget-object v2, v0, Landroid/hardware/radio/V1_4/EmergencyNumber;->number:Ljava/lang/String;

    iget-object v1, v0, Landroid/hardware/radio/V1_4/EmergencyNumber;->mcc:Ljava/lang/String;

    .line 382
    invoke-static {v1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/hardware/radio/V1_4/EmergencyNumber;->mnc:Ljava/lang/String;

    iget v5, v0, Landroid/hardware/radio/V1_4/EmergencyNumber;->categories:I

    iget-object v6, v0, Landroid/hardware/radio/V1_4/EmergencyNumber;->urns:Ljava/util/ArrayList;

    iget v7, v0, Landroid/hardware/radio/V1_4/EmergencyNumber;->sources:I

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    .line 385
    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 388
    :cond_3a
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x44e

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 391
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/BaseCommands;->cacheEmergencyNumberListIndication(Ljava/util/List;)V

    .line 394
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyNumberListRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist currentLinkCapacityEstimate(ILandroid/hardware/radio/V1_2/LinkCapacityEstimate;)V
    .registers 5

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 269
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalLceData(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 271
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x415

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 273
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mLceInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_20

    .line 274
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_20
    return-void
.end method

.method public blacklist currentLinkCapacityEstimate_1_6(ILandroid/hardware/radio/V1_6/LinkCapacityEstimate;)V
    .registers 5

    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 285
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalLceData(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 287
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x415

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 289
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mLceInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_20

    .line 290
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_20
    return-void
.end method

.method public blacklist currentPhysicalChannelConfigs(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 368
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RadioIndication;->physicalChannelConfigsIndication(Ljava/util/List;)V

    return-void
.end method

.method public blacklist currentPhysicalChannelConfigs_1_4(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 350
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RadioIndication;->physicalChannelConfigsIndication(Ljava/util/List;)V

    return-void
.end method

.method public blacklist currentPhysicalChannelConfigs_1_6(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 359
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RadioIndication;->physicalChannelConfigsIndication(Ljava/util/List;)V

    return-void
.end method

.method public blacklist currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V
    .registers 5

    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 251
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSignalStrength(Ljava/lang/Object;)Landroid/telephony/SignalStrength;

    move-result-object p1

    .line 253
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/RIL;->fixupSignalStrength10(Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    move-result-object p1

    .line 257
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_1f

    .line 258
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1f
    return-void
.end method

.method public blacklist currentSignalStrength_1_2(ILandroid/hardware/radio/V1_2/SignalStrength;)V
    .registers 5

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 301
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSignalStrength(Ljava/lang/Object;)Landroid/telephony/SignalStrength;

    move-result-object p1

    .line 305
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_19

    .line 306
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_19
    return-void
.end method

.method public blacklist currentSignalStrength_1_4(ILandroid/hardware/radio/V1_4/SignalStrength;)V
    .registers 5

    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 318
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSignalStrength(Ljava/lang/Object;)Landroid/telephony/SignalStrength;

    move-result-object p1

    .line 322
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_19

    .line 323
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_19
    return-void
.end method

.method public blacklist currentSignalStrength_1_6(ILandroid/hardware/radio/V1_6/SignalStrength;)V
    .registers 5

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 335
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSignalStrength(Ljava/lang/Object;)Landroid/telephony/SignalStrength;

    move-result-object p1

    .line 339
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_19

    .line 340
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_19
    return-void
.end method

.method public blacklist dataCallListChanged(ILjava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 401
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->responseDataCallListChanged(ILjava/util/List;)V

    return-void
.end method

.method public blacklist dataCallListChanged_1_4(ILjava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 437
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->responseDataCallListChanged(ILjava/util/List;)V

    return-void
.end method

.method public blacklist dataCallListChanged_1_5(ILjava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 444
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->responseDataCallListChanged(ILjava/util/List;)V

    return-void
.end method

.method public blacklist dataCallListChanged_1_6(ILjava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 450
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->responseDataCallListChanged(ILjava/util/List;)V

    return-void
.end method

.method public blacklist enterEmergencyCallbackMode(I)V
    .registers 4

    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 618
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 620
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_16

    .line 621
    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_16
    return-void
.end method

.method public blacklist exitEmergencyCallbackMode(I)V
    .registers 4

    .line 796
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 798
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x409

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 800
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mExitEmergencyCallbackModeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist hardwareConfigChanged(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    .line 951
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 953
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalHardwareConfigList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 955
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x410

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 957
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mHardwareConfigChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist imsNetworkStateChanged(I)V
    .registers 4

    .line 915
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 917
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40d

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 919
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsNetworkStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist indicateRingbackTone(IZ)V
    .registers 5

    .line 756
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 758
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x405

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 760
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingbackToneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V
    .registers 5

    .line 1083
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1086
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/hardware/radio/V1_1/KeepaliveStatus;->sessionHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/hardware/radio/V1_1/KeepaliveStatus;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x41a

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1090
    new-instance p1, Lcom/android/internal/telephony/data/KeepaliveStatus;

    iget v0, p2, Landroid/hardware/radio/V1_1/KeepaliveStatus;->sessionHandle:I

    iget p2, p2, Landroid/hardware/radio/V1_1/KeepaliveStatus;->code:I

    invoke-direct {p1, v0, p2}, Lcom/android/internal/telephony/data/KeepaliveStatus;-><init>(II)V

    .line 1092
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mNattKeepaliveStatusRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V
    .registers 5

    .line 1032
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1034
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalLceData(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 1036
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x415

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1038
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mLceInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_20

    .line 1039
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_20
    return-void
.end method

.method public blacklist modemReset(ILjava/lang/String;)V
    .registers 5

    .line 1055
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1057
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x417

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1059
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/RIL;->writeMetricsModemRestartEvent(Ljava/lang/String;)V

    .line 1060
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mModemResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist modifyDnsByCpa(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kddi_cpa_static_dns1"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    iget-object v1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "kddi_cpa_static_dns2"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 411
    iget-object v2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modifyDnsByCpa (cpaDns1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "cpaDns2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", dnses:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    const-string v2, ""

    const-string v3, "0.0.0.0"

    if-eqz v1, :cond_53

    .line 413
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    :cond_53
    move-object v1, v3

    :cond_54
    const-string v4, "modDnses:"

    const-string v5, " "

    const-string v6, "1.0.0.0"

    if-eqz v0, :cond_62

    .line 414
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 415
    :cond_62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a1

    move-object v0, v6

    move-object v1, v0

    .line 428
    :cond_6a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 429
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", cpaDns1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cpaDns2:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-object p1

    .line 419
    :cond_a1
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tmpDns[0]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v7, p1, v2

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", tmpDns[1]:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget-object v9, p1, v8

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 421
    aget-object v0, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    aput-object v6, p1, v2

    .line 422
    :cond_d3
    aget-object v0, p1, v8

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    aput-object v6, p1, v8

    .line 423
    :cond_dd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tmpDns[0]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v8

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V
    .registers 3

    .line 887
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->responseNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V

    return-void
.end method

.method public blacklist networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V
    .registers 3

    .line 893
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->responseNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V

    return-void
.end method

.method public blacklist networkScanResult_1_4(ILandroid/hardware/radio/V1_4/NetworkScanResult;)V
    .registers 3

    .line 899
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->responseNetworkScan_1_4(ILandroid/hardware/radio/V1_4/NetworkScanResult;)V

    return-void
.end method

.method public blacklist networkScanResult_1_5(ILandroid/hardware/radio/V1_5/NetworkScanResult;)V
    .registers 3

    .line 905
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->responseNetworkScan_1_5(ILandroid/hardware/radio/V1_5/NetworkScanResult;)V

    return-void
.end method

.method public blacklist networkScanResult_1_6(ILandroid/hardware/radio/V1_6/NetworkScanResult;)V
    .registers 3

    .line 911
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->responseNetworkScan_1_6(ILandroid/hardware/radio/V1_6/NetworkScanResult;)V

    return-void
.end method

.method public blacklist networkStateChanged(I)V
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 169
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3ea

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 171
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist newBroadcastSms(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 584
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p1

    .line 586
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    .line 587
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3fd

    .line 586
    invoke-virtual {p2, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 590
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_24

    .line 591
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_24
    return-void
.end method

.method public blacklist newSms(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 177
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p1

    .line 178
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3eb

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 180
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->semCreateFromPdu(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object p1

    .line 182
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_35

    .line 183
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    if-nez p1, :cond_2a

    move-object v1, v0

    goto :goto_2f

    .line 184
    :cond_2a
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, p1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    :goto_2f
    invoke-direct {p2, v0, v1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 183
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_35
    return-void
.end method

.method public blacklist newSmsOnSim(II)V
    .registers 5

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 202
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3ed

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 204
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsOnSimRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_20

    .line 205
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_20
    return-void
.end method

.method public blacklist newSmsStatusReport(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 191
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p1

    .line 192
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3ec

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 194
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_20

    .line 195
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_20
    return-void
.end method

.method public blacklist nitzTimeReceived(ILjava/lang/String;J)V
    .registers 7

    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 226
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f0

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, v1

    .line 231
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p1, p3

    .line 233
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->ignore_nitz()Ljava/util/Optional;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_33

    .line 236
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const-string p1, "ignoring UNSOL_NITZ_TIME_RECEIVED"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_46

    .line 238
    :cond_33
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p2, :cond_42

    .line 239
    new-instance p3, Landroid/os/AsyncResult;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p1, p4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 243
    :cond_42
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iput-object p1, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    :goto_46
    return-void
.end method

.method public blacklist onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V
    .registers 9

    .line 974
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 977
    new-instance p1, Lcom/android/internal/telephony/gsm/SsData;

    invoke-direct {p1}, Lcom/android/internal/telephony/gsm/SsData;-><init>()V

    .line 979
    iget v0, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->serviceType:I

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/SsData;->ServiceTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 980
    iget v0, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->requestType:I

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/SsData;->RequestTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$RequestType;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    .line 981
    iget v0, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->teleserviceType:I

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/SsData;->TeleserviceTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/gsm/SsData;->teleserviceType:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    .line 982
    iget v0, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->serviceClass:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceClass:I

    .line 983
    iget v0, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->result:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SsData;->result:I

    .line 985
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeCF()Z

    move-result v0

    const-string v2, " : "

    if-eqz v0, :cond_a1

    iget-object v0, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    .line 986
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->isTypeInterrogation()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 987
    iget-object p2, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->cfData:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/radio/V1_0/CfData;

    .line 988
    iget-object v0, p2, Landroid/hardware/radio/V1_0/CfData;->cfInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 989
    new-array v3, v0, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    :goto_4f
    if-ge v1, v0, :cond_e8

    .line 992
    iget-object v3, p2, Landroid/hardware/radio/V1_0/CfData;->cfInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CallForwardInfo;

    .line 993
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    new-instance v5, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v5}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v5, v4, v1

    .line 995
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v4, v4, v1

    iget v5, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->status:I

    iput v5, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 996
    iget v5, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    iput v5, v4, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 997
    iget v5, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    iput v5, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 998
    iget v5, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    iput v5, v4, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 999
    iget-object v5, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1000
    iget v3, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    iput v3, v4, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1002
    iget-object v3, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SS Data] CF Info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 1005
    :cond_a1
    iget-object p2, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/radio/V1_0/SsInfoData;

    .line 1006
    iget-object v0, p2, Landroid/hardware/radio/V1_0/SsInfoData;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1007
    new-array v3, v0, [I

    iput-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    :goto_b3
    if-ge v1, v0, :cond_e8

    .line 1009
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    iget-object v4, p2, Landroid/hardware/radio/V1_0/SsInfoData;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v1

    .line 1010
    iget-object v3, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SS Data] SS Info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b3

    .line 1014
    :cond_e8
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x413

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1016
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_fe

    .line 1017
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_fe
    return-void
.end method

.method public blacklist onUssd(IILjava/lang/String;)V
    .registers 8

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 212
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3ee

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const/4 p2, 0x1

    aput-object p3, p1, p2

    .line 218
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_44

    .line 219
    new-instance p2, Landroid/os/AsyncResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_44
    return-void
.end method

.method public blacklist pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V
    .registers 6

    .line 1044
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1046
    new-instance p1, Landroid/telephony/PcoData;

    iget v0, p2, Landroid/hardware/radio/V1_0/PcoDataInfo;->cid:I

    iget-object v1, p2, Landroid/hardware/radio/V1_0/PcoDataInfo;->bearerProto:Ljava/lang/String;

    iget v2, p2, Landroid/hardware/radio/V1_0/PcoDataInfo;->pcoId:I

    iget-object p2, p2, Landroid/hardware/radio/V1_0/PcoDataInfo;->contents:Ljava/util/ArrayList;

    .line 1047
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p2

    invoke-direct {p1, v0, v1, v2, p2}, Landroid/telephony/PcoData;-><init>(ILjava/lang/String;I[B)V

    .line 1049
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x416

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1051
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mPcoDataRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V
    .registers 5

    .line 963
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 965
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, p1}, Lcom/android/internal/telephony/RILUtils;->convertHalRadioCapability(Landroid/hardware/radio/V1_0/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;

    move-result-object p1

    .line 967
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x412

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 969
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneRadioCapabilityChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist radioStateChanged(II)V
    .registers 6

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 145
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalRadioState(I)I

    move-result p1

    .line 147
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "radioStateChanged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3e8

    invoke-virtual {p2, v2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    .line 151
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/BaseCommands;->setRadioState(IZ)V

    return-void
.end method

.method public blacklist registrationFailed(ILandroid/hardware/radio/V1_5/CellIdentity;Ljava/lang/String;III)V
    .registers 15

    .line 1150
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1151
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Ljava/lang/Object;)Landroid/telephony/CellIdentity;

    move-result-object p1

    .line 1153
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

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

    .line 1157
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

    .line 1170
    :cond_38
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

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

    .line 1163
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    const-string p2, "Invalid registrationFailed indication"

    .line 1162
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 1166
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist resendIncallMute(I)V
    .registers 4

    .line 764
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 766
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x406

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 768
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mResendIncallMuteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist restrictedStateChanged(II)V
    .registers 5

    .line 606
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 608
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3ff

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 610
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_24

    .line 611
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_24
    return-void
.end method

.method public blacklist rilConnected(I)V
    .registers 4

    .line 804
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 806
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40a

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 814
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget v0, p1, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscription:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/RIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 817
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p1, 0xf

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V

    return-void
.end method

.method public blacklist simPhonebookChanged(I)V
    .registers 4

    .line 1101
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1104
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x41d

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 1107
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSimPhonebookChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist simPhonebookRecordsReceived(IBLjava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IB",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/PhonebookRecordInfo;",
            ">;)V"
        }
    .end annotation

    .line 1118
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1120
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1122
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;

    .line 1123
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalPhonebookRecordInfo(Landroid/hardware/radio/V1_6/PhonebookRecordInfo;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1127
    :cond_23
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x41e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " records"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1127
    invoke-virtual {v0, v1, p3}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1131
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSimPhonebookRecordsReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p3, Landroid/os/AsyncResult;

    new-instance v0, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;

    invoke-direct {v0, p2, p1}, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;-><init>(ILjava/util/List;)V

    const/4 p1, 0x0

    invoke-direct {p3, p1, v0, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V
    .registers 5

    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 529
    new-instance p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {p1}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    .line 530
    iget v0, p2, Landroid/hardware/radio/V1_0/SimRefreshResult;->type:I

    iput v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 531
    iget v0, p2, Landroid/hardware/radio/V1_0/SimRefreshResult;->efId:I

    iput v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    .line 532
    iget-object p2, p2, Landroid/hardware/radio/V1_0/SimRefreshResult;->aid:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    .line 534
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f9

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 536
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccRefreshRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist simSmsStorageFull(I)V
    .registers 4

    .line 517
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 519
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f8

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 521
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_16

    .line 522
    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_16
    return-void
.end method

.method public blacklist simStatusChanged(I)V
    .registers 4

    .line 563
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 565
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3fb

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 567
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist srvccStateNotify(II)V
    .registers 5

    .line 935
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    aput p2, p1, v1

    .line 940
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x40f

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 942
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/RIL;->writeMetricsSrvcc(I)V

    .line 944
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSrvccStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist stkCallControlAlphaNotify(ILjava/lang/String;)V
    .registers 5

    .line 1022
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1024
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x414

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1026
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCcAlphaRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_1c

    .line 1027
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1c
    return-void
.end method

.method public blacklist stkCallSetup(IJ)V
    .registers 6

    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 509
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x3f7

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 511
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCallSetUpRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_24

    .line 512
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_24
    return-void
.end method

.method public blacklist stkEventNotify(ILjava/lang/String;)V
    .registers 5

    .line 497
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 499
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f6

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 501
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatEventRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_1c

    .line 502
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1c
    return-void
.end method

.method public blacklist stkProactiveCommand(ILjava/lang/String;)V
    .registers 5

    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 489
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f5

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 491
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatProCmdRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_1c

    .line 492
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1c
    return-void
.end method

.method public blacklist stkSessionEnd(I)V
    .registers 4

    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 479
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f4

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 481
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSessionEndRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_1c

    .line 482
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1c
    return-void
.end method

.method public blacklist subscriptionStatusChanged(IZ)V
    .registers 5

    .line 923
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    aput p2, p1, v1

    .line 928
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40e

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 930
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSubscriptionStatusRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V
    .registers 5

    .line 460
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 462
    new-instance p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {p1}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 463
    iget-boolean v0, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->isMT:Z

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 464
    iget v0, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->code:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 465
    iget v0, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->index:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 466
    iget v0, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->type:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    .line 467
    iget-object p2, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->number:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 469
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f3

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 471
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_35

    .line 472
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_35
    return-void
.end method

.method public blacklist uiccApplicationsEnablementChanged(IZ)V
    .registers 5

    .line 875
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 878
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x44f

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 881
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mUiccApplicationsEnablementRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist unthrottleApn(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 456
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->responseApnUnthrottled(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist voiceRadioTechChanged(II)V
    .registers 5

    .line 821
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    aput p2, p1, v1

    .line 826
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40b

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 828
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceRadioTechChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method
