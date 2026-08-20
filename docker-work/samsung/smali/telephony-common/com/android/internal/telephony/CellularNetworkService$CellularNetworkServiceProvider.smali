.class Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;
.super Landroid/telephony/NetworkService$NetworkServiceProvider;
.source "CellularNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CellularNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellularNetworkServiceProvider"
.end annotation


# instance fields
.field private final blacklist mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/Message;",
            "Landroid/telephony/NetworkServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CellularNetworkService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbackMap(Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mCallbackMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetRegistrationStateFromResult(Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;Ljava/lang/Object;I)Landroid/telephony/NetworkRegistrationInfo;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegistrationStateFromResult(Ljava/lang/Object;I)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/CellularNetworkService;I)V
    .registers 5

    .line 120
    iput-object p1, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->this$0:Lcom/android/internal/telephony/CellularNetworkService;

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/telephony/NetworkService$NetworkServiceProvider;-><init>(Landroid/telephony/NetworkService;I)V

    .line 114
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mCallbackMap:Ljava/util/Map;

    .line 123
    invoke-virtual {p0}, Landroid/telephony/NetworkService$NetworkServiceProvider;->getSlotIndex()I

    move-result p2

    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 125
    new-instance v0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider$1;-><init>(Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;Landroid/os/Looper;Lcom/android/internal/telephony/CellularNetworkService;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    .line 171
    iget-object p0, p2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist convertHalLteVopsSupportInfo(ZZ)Landroid/telephony/LteVopsSupportInfo;
    .registers 4

    const/4 p0, 0x2

    const/4 v0, 0x3

    if-eqz p1, :cond_6

    move p1, p0

    goto :goto_7

    :cond_6
    move p1, v0

    :goto_7
    if-eqz p2, :cond_a

    goto :goto_b

    :cond_a
    move p0, v0

    .line 674
    :goto_b
    new-instance p2, Landroid/telephony/LteVopsSupportInfo;

    invoke-direct {p2, p1, p0}, Landroid/telephony/LteVopsSupportInfo;-><init>(II)V

    return-object p2
.end method

.method private blacklist createRegistrationStateFromDataRegState(Ljava/lang/Object;)Landroid/telephony/NetworkRegistrationInfo;
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 339
    new-instance v2, Landroid/telephony/LteVopsSupportInfo;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v3}, Landroid/telephony/LteVopsSupportInfo;-><init>(II)V

    .line 343
    instance-of v4, v1, Landroid/hardware/radio/network/RegStateResult;

    const/4 v5, 0x2

    if-eqz v4, :cond_16

    .line 344
    check-cast v1, Landroid/hardware/radio/network/RegStateResult;

    invoke-direct {v0, v5, v3, v1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getNetworkRegistrationInfoAidl(IILandroid/hardware/radio/network/RegStateResult;)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    return-object v0

    .line 346
    :cond_16
    instance-of v4, v1, Landroid/hardware/radio/V1_6/RegStateResult;

    if-eqz v4, :cond_21

    .line 347
    check-cast v1, Landroid/hardware/radio/V1_6/RegStateResult;

    invoke-direct {v0, v5, v3, v1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getNetworkRegistrationInfo1_6(IILandroid/hardware/radio/V1_6/RegStateResult;)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    return-object v0

    .line 349
    :cond_21
    instance-of v4, v1, Landroid/hardware/radio/V1_5/RegStateResult;

    if-eqz v4, :cond_2c

    .line 350
    check-cast v1, Landroid/hardware/radio/V1_5/RegStateResult;

    invoke-direct {v0, v5, v3, v1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getNetworkRegistrationInfo(IILandroid/hardware/radio/V1_5/RegStateResult;)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    return-object v0

    .line 352
    :cond_2c
    instance-of v4, v1, Landroid/hardware/radio/V1_0/DataRegStateResult;

    const/4 v6, 0x0

    if-eqz v4, :cond_60

    .line 353
    check-cast v1, Landroid/hardware/radio/V1_0/DataRegStateResult;

    .line 355
    iget v3, v1, Landroid/hardware/radio/V1_0/DataRegStateResult;->regState:I

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegStateFromHalRegState(I)I

    move-result v3

    .line 356
    iget v4, v1, Landroid/hardware/radio/V1_0/DataRegStateResult;->rat:I

    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v4

    .line 357
    iget v7, v1, Landroid/hardware/radio/V1_0/DataRegStateResult;->reasonDataDenied:I

    .line 358
    iget v8, v1, Landroid/hardware/radio/V1_0/DataRegStateResult;->regState:I

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->isEmergencyOnly(I)Z

    move-result v8

    .line 359
    iget v9, v1, Landroid/hardware/radio/V1_0/DataRegStateResult;->maxDataCalls:I

    .line 360
    iget-object v1, v1, Landroid/hardware/radio/V1_0/DataRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_0/CellIdentity;

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Ljava/lang/Object;)Landroid/telephony/CellIdentity;

    move-result-object v1

    :goto_4f
    move-object/from16 v26, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v23, v6

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v17, v7

    move/from16 v22, v9

    goto/16 :goto_135

    .line 361
    :cond_60
    instance-of v4, v1, Landroid/hardware/radio/V1_2/DataRegStateResult;

    if-eqz v4, :cond_83

    .line 362
    check-cast v1, Landroid/hardware/radio/V1_2/DataRegStateResult;

    .line 364
    iget v3, v1, Landroid/hardware/radio/V1_2/DataRegStateResult;->regState:I

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegStateFromHalRegState(I)I

    move-result v3

    .line 365
    iget v4, v1, Landroid/hardware/radio/V1_2/DataRegStateResult;->rat:I

    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v4

    .line 366
    iget v7, v1, Landroid/hardware/radio/V1_2/DataRegStateResult;->reasonDataDenied:I

    .line 367
    iget v8, v1, Landroid/hardware/radio/V1_2/DataRegStateResult;->regState:I

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->isEmergencyOnly(I)Z

    move-result v8

    .line 368
    iget v9, v1, Landroid/hardware/radio/V1_2/DataRegStateResult;->maxDataCalls:I

    .line 369
    iget-object v1, v1, Landroid/hardware/radio/V1_2/DataRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_2/CellIdentity;

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Ljava/lang/Object;)Landroid/telephony/CellIdentity;

    move-result-object v1

    goto :goto_4f

    .line 370
    :cond_83
    instance-of v2, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;

    if-eqz v2, :cond_14a

    .line 371
    check-cast v1, Landroid/hardware/radio/V1_4/DataRegStateResult;

    .line 373
    iget-object v2, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    iget v2, v2, Landroid/hardware/radio/V1_2/DataRegStateResult;->regState:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegStateFromHalRegState(I)I

    move-result v2

    .line 374
    iget-object v4, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    iget v4, v4, Landroid/hardware/radio/V1_2/DataRegStateResult;->rat:I

    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v4

    .line 376
    iget-object v6, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    iget v7, v6, Landroid/hardware/radio/V1_2/DataRegStateResult;->reasonDataDenied:I

    .line 377
    iget v6, v6, Landroid/hardware/radio/V1_2/DataRegStateResult;->regState:I

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->isEmergencyOnly(I)Z

    move-result v8

    .line 378
    iget-object v6, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    iget v9, v6, Landroid/hardware/radio/V1_2/DataRegStateResult;->maxDataCalls:I

    .line 379
    iget-object v6, v6, Landroid/hardware/radio/V1_2/DataRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_2/CellIdentity;

    invoke-static {v6}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Ljava/lang/Object;)Landroid/telephony/CellIdentity;

    move-result-object v6

    .line 380
    iget-object v10, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    .line 383
    iget-object v11, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->vopsInfo:Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;

    invoke-virtual {v11}, Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;->getDiscriminator()B

    move-result v11

    if-ne v11, v3, :cond_d1

    iget-object v11, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    iget v11, v11, Landroid/hardware/radio/V1_2/DataRegStateResult;->rat:I

    .line 384
    invoke-static {v11}, Landroid/telephony/ServiceState;->rilRadioTechnologyToAccessNetworkType(I)I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_d1

    .line 386
    iget-object v1, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->vopsInfo:Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;

    .line 387
    invoke-virtual {v1}, Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;->lteVopsInfo()Landroid/hardware/radio/V1_4/LteVopsInfo;

    move-result-object v1

    .line 388
    iget-boolean v3, v1, Landroid/hardware/radio/V1_4/LteVopsInfo;->isVopsSupported:Z

    iget-boolean v1, v1, Landroid/hardware/radio/V1_4/LteVopsInfo;->isEmcBearerSupported:Z

    invoke-direct {v0, v3, v1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->convertHalLteVopsSupportInfo(ZZ)Landroid/telephony/LteVopsSupportInfo;

    move-result-object v1

    goto :goto_11f

    .line 391
    :cond_d1
    iget-object v11, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->vopsInfo:Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;

    invoke-virtual {v11}, Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;->getDiscriminator()B

    move-result v11

    if-ne v11, v3, :cond_f8

    iget-object v11, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    iget v11, v11, Landroid/hardware/radio/V1_2/DataRegStateResult;->rat:I

    .line 392
    invoke-static {v11}, Landroid/telephony/ServiceState;->rilRadioTechnologyToAccessNetworkType(I)I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_f8

    const-string v3, "Use VopsSupportInfo when DataRat is IWLAN in legacy IWLAN operation mode"

    .line 394
    invoke-static {v3}, Lcom/android/internal/telephony/CellularNetworkService;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 395
    iget-object v1, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->vopsInfo:Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;

    .line 396
    invoke-virtual {v1}, Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;->lteVopsInfo()Landroid/hardware/radio/V1_4/LteVopsInfo;

    move-result-object v1

    .line 397
    iget-boolean v3, v1, Landroid/hardware/radio/V1_4/LteVopsInfo;->isVopsSupported:Z

    iget-boolean v1, v1, Landroid/hardware/radio/V1_4/LteVopsInfo;->isEmcBearerSupported:Z

    invoke-direct {v0, v3, v1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->convertHalLteVopsSupportInfo(ZZ)Landroid/telephony/LteVopsSupportInfo;

    move-result-object v1

    goto :goto_11f

    .line 401
    :cond_f8
    iget-object v11, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->vopsInfo:Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;

    invoke-virtual {v11}, Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;->getDiscriminator()B

    move-result v11

    if-ne v11, v3, :cond_11a

    iget-object v11, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    iget v11, v11, Landroid/hardware/radio/V1_2/DataRegStateResult;->rat:I

    .line 402
    invoke-static {v11}, Landroid/telephony/ServiceState;->rilRadioTechnologyToAccessNetworkType(I)I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_11a

    .line 404
    iget-object v1, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->vopsInfo:Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;

    .line 405
    invoke-virtual {v1}, Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;->lteVopsInfo()Landroid/hardware/radio/V1_4/LteVopsInfo;

    move-result-object v1

    .line 406
    iget-boolean v3, v1, Landroid/hardware/radio/V1_4/LteVopsInfo;->isVopsSupported:Z

    iget-boolean v1, v1, Landroid/hardware/radio/V1_4/LteVopsInfo;->isEmcBearerSupported:Z

    invoke-direct {v0, v3, v1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->convertHalLteVopsSupportInfo(ZZ)Landroid/telephony/LteVopsSupportInfo;

    move-result-object v1

    goto :goto_11f

    .line 410
    :cond_11a
    new-instance v1, Landroid/telephony/LteVopsSupportInfo;

    invoke-direct {v1, v3, v3}, Landroid/telephony/LteVopsSupportInfo;-><init>(II)V

    .line 415
    :goto_11f
    iget-boolean v3, v10, Landroid/hardware/radio/V1_4/NrIndicators;->isEndcAvailable:Z

    .line 416
    iget-boolean v11, v10, Landroid/hardware/radio/V1_4/NrIndicators;->isNrAvailable:Z

    .line 417
    iget-boolean v10, v10, Landroid/hardware/radio/V1_4/NrIndicators;->isDcNrRestricted:Z

    move-object/from16 v26, v1

    move v15, v2

    move/from16 v25, v3

    move/from16 v16, v4

    move-object v1, v6

    move/from16 v17, v7

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    .line 423
    :goto_135
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getPlmnFromCellIdentity(Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object v21

    .line 424
    invoke-direct {v0, v15, v5, v8}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getAvailableServices(IIZ)Ljava/util/List;

    move-result-object v19

    .line 427
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo;

    const/4 v13, 0x2

    const/4 v14, 0x1

    move-object v12, v0

    move/from16 v18, v8

    move-object/from16 v20, v1

    invoke-direct/range {v12 .. v26}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;IZZZLandroid/telephony/VopsSupportInfo;)V

    return-object v0

    .line 419
    :cond_14a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type of DataRegStateResult "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CellularNetworkService;->-$$Nest$smloge(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist createRegistrationStateFromVoiceRegState(Ljava/lang/Object;)Landroid/telephony/NetworkRegistrationInfo;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 269
    instance-of v2, v1, Landroid/hardware/radio/network/RegStateResult;

    const/4 v3, 0x1

    if-eqz v2, :cond_10

    .line 270
    check-cast v1, Landroid/hardware/radio/network/RegStateResult;

    invoke-direct {v0, v3, v3, v1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getNetworkRegistrationInfoAidl(IILandroid/hardware/radio/network/RegStateResult;)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    return-object v0

    .line 272
    :cond_10
    instance-of v2, v1, Landroid/hardware/radio/V1_6/RegStateResult;

    if-eqz v2, :cond_1b

    .line 273
    check-cast v1, Landroid/hardware/radio/V1_6/RegStateResult;

    invoke-direct {v0, v3, v3, v1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getNetworkRegistrationInfo1_6(IILandroid/hardware/radio/V1_6/RegStateResult;)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    return-object v0

    .line 275
    :cond_1b
    instance-of v2, v1, Landroid/hardware/radio/V1_5/RegStateResult;

    if-eqz v2, :cond_26

    .line 276
    check-cast v1, Landroid/hardware/radio/V1_5/RegStateResult;

    invoke-direct {v0, v3, v3, v1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getNetworkRegistrationInfo(IILandroid/hardware/radio/V1_5/RegStateResult;)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    return-object v0

    .line 278
    :cond_26
    instance-of v2, v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    if-eqz v2, :cond_65

    .line 279
    check-cast v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    .line 281
    iget v2, v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->regState:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegStateFromHalRegState(I)I

    move-result v7

    .line 282
    iget v2, v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->rat:I

    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v8

    .line 283
    iget v9, v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->reasonForDenial:I

    .line 284
    iget v2, v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->regState:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->isEmergencyOnly(I)Z

    move-result v10

    .line 285
    iget-boolean v14, v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->cssSupported:Z

    .line 286
    iget v15, v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->roamingIndicator:I

    .line 287
    iget v2, v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->systemIsInPrl:I

    .line 288
    iget v13, v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->defaultRoamingIndicator:I

    .line 289
    invoke-direct {v0, v7, v3, v10}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getAvailableServices(IIZ)Ljava/util/List;

    move-result-object v11

    .line 291
    iget-object v1, v1, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_0/CellIdentity;

    .line 292
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Ljava/lang/Object;)Landroid/telephony/CellIdentity;

    move-result-object v12

    .line 293
    invoke-direct {v0, v12}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getPlmnFromCellIdentity(Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object v0

    .line 295
    new-instance v1, Landroid/telephony/NetworkRegistrationInfo;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v4, v1

    move v3, v13

    move-object v13, v0

    move/from16 v16, v2

    move/from16 v17, v3

    invoke-direct/range {v4 .. v17}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;ZIII)V

    return-object v1

    .line 299
    :cond_65
    instance-of v2, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    if-eqz v2, :cond_a4

    .line 300
    check-cast v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    .line 302
    iget v2, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->regState:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegStateFromHalRegState(I)I

    move-result v7

    .line 303
    iget v2, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->rat:I

    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v8

    .line 304
    iget v9, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->reasonForDenial:I

    .line 305
    iget v2, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->regState:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->isEmergencyOnly(I)Z

    move-result v10

    .line 306
    iget-boolean v14, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->cssSupported:Z

    .line 307
    iget v15, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->roamingIndicator:I

    .line 308
    iget v2, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->systemIsInPrl:I

    .line 309
    iget v13, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->defaultRoamingIndicator:I

    .line 310
    invoke-direct {v0, v7, v3, v10}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getAvailableServices(IIZ)Ljava/util/List;

    move-result-object v11

    .line 312
    iget-object v1, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_2/CellIdentity;

    .line 313
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Ljava/lang/Object;)Landroid/telephony/CellIdentity;

    move-result-object v12

    .line 314
    invoke-direct {v0, v12}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getPlmnFromCellIdentity(Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object v0

    .line 316
    new-instance v1, Landroid/telephony/NetworkRegistrationInfo;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v4, v1

    move v3, v13

    move-object v13, v0

    move/from16 v16, v2

    move/from16 v17, v3

    invoke-direct/range {v4 .. v17}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;ZIII)V

    return-object v1

    :cond_a4
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getAvailableServices(IIZ)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 218
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x5

    if-eqz p3, :cond_10

    .line 224
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_10
    const/4 p3, 0x1

    if-eq p1, v0, :cond_15

    if-ne p1, p3, :cond_39

    :cond_15
    const/4 p1, 0x2

    if-ne p2, p1, :cond_20

    .line 228
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_20
    if-ne p2, p3, :cond_39

    .line 230
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    .line 231
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x4

    .line 232
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_39
    :goto_39
    return-object p0
.end method

.method private blacklist getNetworkRegistrationInfo(IILandroid/hardware/radio/V1_5/RegStateResult;)Landroid/telephony/NetworkRegistrationInfo;
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 438
    iget v3, v2, Landroid/hardware/radio/V1_5/RegStateResult;->regState:I

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegStateFromHalRegState(I)I

    move-result v3

    .line 439
    iget v4, v2, Landroid/hardware/radio/V1_5/RegStateResult;->regState:I

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->isEmergencyOnly(I)Z

    move-result v6

    .line 440
    invoke-direct {v0, v3, v1, v6}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getAvailableServices(IIZ)Ljava/util/List;

    move-result-object v7

    .line 442
    iget-object v4, v2, Landroid/hardware/radio/V1_5/RegStateResult;->cellIdentity:Landroid/hardware/radio/V1_5/CellIdentity;

    .line 443
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Ljava/lang/Object;)Landroid/telephony/CellIdentity;

    move-result-object v8

    .line 444
    iget-object v9, v2, Landroid/hardware/radio/V1_5/RegStateResult;->registeredPlmn:Ljava/lang/String;

    .line 445
    iget v5, v2, Landroid/hardware/radio/V1_5/RegStateResult;->reasonForDenial:I

    .line 447
    iget v4, v2, Landroid/hardware/radio/V1_5/RegStateResult;->rat:I

    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v4

    .line 448
    iget-object v10, v0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 449
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v10

    invoke-static {v4, v8, v10}, Lcom/android/internal/telephony/CellularNetworkService;->getNetworkTypeForCellIdentity(ILandroid/telephony/CellIdentity;I)I

    move-result v4

    .line 459
    new-instance v10, Landroid/telephony/LteVopsSupportInfo;

    const/4 v11, 0x1

    invoke-direct {v10, v11, v11}, Landroid/telephony/LteVopsSupportInfo;-><init>(II)V

    .line 463
    iget-object v12, v2, Landroid/hardware/radio/V1_5/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;

    invoke-virtual {v12}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->getDiscriminator()B

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v11, :cond_77

    if-eq v12, v13, :cond_53

    const-string v0, "No access tech specific info passes for RegStateResult"

    .line 488
    invoke-static {v0}, Lcom/android/internal/telephony/CellularNetworkService;->-$$Nest$smlog(Ljava/lang/String;)V

    move-object/from16 v19, v10

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    goto :goto_90

    .line 477
    :cond_53
    iget-object v2, v2, Landroid/hardware/radio/V1_5/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;

    .line 478
    invoke-virtual {v2}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->eutranInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    move-result-object v2

    .line 480
    iget-object v10, v2, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    iget-boolean v12, v10, Landroid/hardware/radio/V1_4/NrIndicators;->isDcNrRestricted:Z

    .line 481
    iget-boolean v15, v10, Landroid/hardware/radio/V1_4/NrIndicators;->isNrAvailable:Z

    .line 482
    iget-boolean v10, v10, Landroid/hardware/radio/V1_4/NrIndicators;->isEndcAvailable:Z

    .line 483
    iget-object v2, v2, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->lteVopsInfo:Landroid/hardware/radio/V1_4/LteVopsInfo;

    iget-boolean v14, v2, Landroid/hardware/radio/V1_4/LteVopsInfo;->isVopsSupported:Z

    iget-boolean v2, v2, Landroid/hardware/radio/V1_4/LteVopsInfo;->isEmcBearerSupported:Z

    invoke-direct {v0, v14, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->convertHalLteVopsSupportInfo(ZZ)Landroid/telephony/LteVopsSupportInfo;

    move-result-object v0

    move-object/from16 v19, v0

    move/from16 v18, v10

    move v14, v12

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    goto :goto_90

    .line 467
    :cond_77
    iget-object v0, v2, Landroid/hardware/radio/V1_5/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;

    .line 468
    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->cdmaInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    move-result-object v0

    .line 469
    iget-boolean v2, v0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->cssSupported:Z

    .line 470
    iget v12, v0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->roamingIndicator:I

    .line 471
    iget v14, v0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->systemIsInPrl:I

    .line 472
    iget v0, v0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->defaultRoamingIndicator:I

    move/from16 v17, v0

    move-object/from16 v19, v10

    move/from16 v16, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    move v10, v2

    :goto_90
    if-eq v1, v11, :cond_bc

    if-eq v1, v13, :cond_a8

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown domain passed to CellularNetworkService= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CellularNetworkService;->-$$Nest$smloge(Ljava/lang/String;)V

    .line 503
    :cond_a8
    new-instance v16, Landroid/telephony/NetworkRegistrationInfo;

    const/16 v10, 0x10

    move-object/from16 v0, v16

    move/from16 v1, p1

    move/from16 v2, p2

    move v11, v14

    move v12, v15

    move/from16 v13, v18

    move-object/from16 v14, v19

    invoke-direct/range {v0 .. v14}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;IZZZLandroid/telephony/VopsSupportInfo;)V

    return-object v16

    .line 495
    :cond_bc
    new-instance v14, Landroid/telephony/NetworkRegistrationInfo;

    move-object v0, v14

    move/from16 v1, p1

    move/from16 v2, p2

    move v11, v12

    move/from16 v12, v16

    move/from16 v13, v17

    invoke-direct/range {v0 .. v13}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;ZIII)V

    return-object v14
.end method

.method private blacklist getNetworkRegistrationInfo1_6(IILandroid/hardware/radio/V1_6/RegStateResult;)Landroid/telephony/NetworkRegistrationInfo;
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 591
    iget v3, v2, Landroid/hardware/radio/V1_6/RegStateResult;->regState:I

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegStateFromHalRegState(I)I

    move-result v3

    .line 592
    iget v4, v2, Landroid/hardware/radio/V1_6/RegStateResult;->regState:I

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->isEmergencyOnly(I)Z

    move-result v6

    .line 593
    invoke-direct {v0, v3, v1, v6}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getAvailableServices(IIZ)Ljava/util/List;

    move-result-object v7

    .line 595
    iget-object v4, v2, Landroid/hardware/radio/V1_6/RegStateResult;->cellIdentity:Landroid/hardware/radio/V1_5/CellIdentity;

    .line 596
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Ljava/lang/Object;)Landroid/telephony/CellIdentity;

    move-result-object v8

    .line 597
    iget-object v9, v2, Landroid/hardware/radio/V1_6/RegStateResult;->registeredPlmn:Ljava/lang/String;

    .line 598
    iget v5, v2, Landroid/hardware/radio/V1_6/RegStateResult;->reasonForDenial:I

    .line 600
    iget v4, v2, Landroid/hardware/radio/V1_6/RegStateResult;->rat:I

    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v4

    .line 601
    iget-object v10, v0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 602
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v10

    invoke-static {v4, v8, v10}, Lcom/android/internal/telephony/CellularNetworkService;->getNetworkTypeForCellIdentity(ILandroid/telephony/CellIdentity;I)I

    move-result v4

    .line 614
    iget-object v2, v2, Landroid/hardware/radio/V1_6/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;

    .line 617
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->getDiscriminator()B

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v14, 0x0

    if-eq v10, v12, :cond_b0

    if-eq v10, v11, :cond_77

    const/4 v0, 0x3

    if-eq v10, v0, :cond_53

    const/4 v0, 0x4

    if-eq v10, v0, :cond_4b

    const-string v0, "No access tech specific info passes for RegStateResult"

    .line 641
    invoke-static {v0}, Lcom/android/internal/telephony/CellularNetworkService;->-$$Nest$smlog(Ljava/lang/String;)V

    move-object/from16 v19, v14

    goto :goto_6c

    .line 638
    :cond_4b
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->geranDtmSupported()Z

    move-result v0

    move v10, v0

    move-object/from16 v19, v14

    goto :goto_6d

    .line 633
    :cond_53
    new-instance v0, Landroid/telephony/NrVopsSupportInfo;

    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->ngranNrVopsInfo()Landroid/hardware/radio/V1_6/NrVopsInfo;

    move-result-object v10

    iget-byte v10, v10, Landroid/hardware/radio/V1_6/NrVopsInfo;->vopsSupported:B

    .line 634
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->ngranNrVopsInfo()Landroid/hardware/radio/V1_6/NrVopsInfo;

    move-result-object v14

    iget-byte v14, v14, Landroid/hardware/radio/V1_6/NrVopsInfo;->emcSupported:B

    .line 635
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->ngranNrVopsInfo()Landroid/hardware/radio/V1_6/NrVopsInfo;

    move-result-object v2

    iget-byte v2, v2, Landroid/hardware/radio/V1_6/NrVopsInfo;->emfSupported:B

    invoke-direct {v0, v10, v14, v2}, Landroid/telephony/NrVopsSupportInfo;-><init>(III)V

    move-object/from16 v19, v0

    :goto_6c
    const/4 v10, 0x0

    :goto_6d
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    goto :goto_d4

    .line 625
    :cond_77
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->eutranInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    iget-boolean v10, v10, Landroid/hardware/radio/V1_4/NrIndicators;->isDcNrRestricted:Z

    .line 626
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->eutranInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    iget-boolean v14, v14, Landroid/hardware/radio/V1_4/NrIndicators;->isNrAvailable:Z

    .line 627
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->eutranInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    iget-boolean v15, v15, Landroid/hardware/radio/V1_4/NrIndicators;->isEndcAvailable:Z

    .line 629
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->eutranInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->lteVopsInfo:Landroid/hardware/radio/V1_4/LteVopsInfo;

    iget-boolean v13, v13, Landroid/hardware/radio/V1_4/LteVopsInfo;->isVopsSupported:Z

    .line 630
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->eutranInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->lteVopsInfo:Landroid/hardware/radio/V1_4/LteVopsInfo;

    iget-boolean v2, v2, Landroid/hardware/radio/V1_4/LteVopsInfo;->isEmcBearerSupported:Z

    .line 628
    invoke-direct {v0, v13, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->convertHalLteVopsSupportInfo(ZZ)Landroid/telephony/LteVopsSupportInfo;

    move-result-object v0

    move-object/from16 v19, v0

    move/from16 v16, v14

    move/from16 v18, v15

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move v14, v10

    const/4 v10, 0x0

    goto :goto_d4

    .line 619
    :cond_b0
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->cdmaInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->cssSupported:Z

    .line 620
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->cdmaInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    move-result-object v10

    iget v10, v10, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->roamingIndicator:I

    .line 621
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->cdmaInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    move-result-object v13

    iget v13, v13, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->systemIsInPrl:I

    .line 622
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->cdmaInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    move-result-object v2

    iget v2, v2, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->defaultRoamingIndicator:I

    move/from16 v17, v2

    move v15, v13

    move-object/from16 v19, v14

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move v13, v10

    move v10, v0

    :goto_d4
    if-eq v1, v12, :cond_100

    if-eq v1, v11, :cond_ec

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown domain passed to CellularNetworkService= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CellularNetworkService;->-$$Nest$smloge(Ljava/lang/String;)V

    .line 656
    :cond_ec
    new-instance v15, Landroid/telephony/NetworkRegistrationInfo;

    const/16 v10, 0x10

    move-object v0, v15

    move/from16 v1, p1

    move/from16 v2, p2

    move v11, v14

    move/from16 v12, v16

    move/from16 v13, v18

    move-object/from16 v14, v19

    invoke-direct/range {v0 .. v14}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;IZZZLandroid/telephony/VopsSupportInfo;)V

    return-object v15

    .line 648
    :cond_100
    new-instance v14, Landroid/telephony/NetworkRegistrationInfo;

    move-object v0, v14

    move/from16 v1, p1

    move/from16 v2, p2

    move v11, v13

    move v12, v15

    move/from16 v13, v17

    invoke-direct/range {v0 .. v13}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;ZIII)V

    return-object v14
.end method

.method private blacklist getNetworkRegistrationInfoAidl(IILandroid/hardware/radio/network/RegStateResult;)Landroid/telephony/NetworkRegistrationInfo;
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 513
    iget v3, v2, Landroid/hardware/radio/network/RegStateResult;->regState:I

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegStateFromHalRegState(I)I

    move-result v3

    .line 514
    iget v4, v2, Landroid/hardware/radio/network/RegStateResult;->regState:I

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->isEmergencyOnly(I)Z

    move-result v6

    .line 515
    invoke-direct {v0, v3, v1, v6}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getAvailableServices(IIZ)Ljava/util/List;

    move-result-object v7

    .line 517
    iget-object v4, v2, Landroid/hardware/radio/network/RegStateResult;->cellIdentity:Landroid/hardware/radio/network/CellIdentity;

    .line 518
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Landroid/hardware/radio/network/CellIdentity;)Landroid/telephony/CellIdentity;

    move-result-object v8

    .line 519
    iget-object v9, v2, Landroid/hardware/radio/network/RegStateResult;->registeredPlmn:Ljava/lang/String;

    .line 520
    iget v5, v2, Landroid/hardware/radio/network/RegStateResult;->reasonForDenial:I

    .line 522
    iget v4, v2, Landroid/hardware/radio/network/RegStateResult;->rat:I

    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v4

    const/16 v10, 0x13

    if-ne v4, v10, :cond_2c

    const/16 v4, 0xd

    :cond_2c
    const/4 v10, 0x0

    .line 537
    iget-object v2, v2, Landroid/hardware/radio/network/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/network/AccessTechnologySpecificInfo;

    .line 540
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getTag()I

    move-result v11

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v11, v13, :cond_b3

    if-eq v11, v12, :cond_7a

    const/4 v0, 0x3

    if-eq v11, v0, :cond_56

    const/4 v0, 0x4

    if-eq v11, v0, :cond_47

    const-string v0, "No access tech specific info passes for RegStateResult"

    .line 564
    invoke-static {v0}, Lcom/android/internal/telephony/CellularNetworkService;->-$$Nest$smlog(Ljava/lang/String;)V

    move-object/from16 v19, v10

    goto :goto_6f

    .line 561
    :cond_47
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getGeranDtmSupported()Z

    move-result v0

    move-object/from16 v19, v10

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    goto/16 :goto_d3

    .line 556
    :cond_56
    new-instance v0, Landroid/telephony/NrVopsSupportInfo;

    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getNgranNrVopsInfo()Landroid/hardware/radio/network/NrVopsInfo;

    move-result-object v10

    iget-byte v10, v10, Landroid/hardware/radio/network/NrVopsInfo;->vopsSupported:B

    .line 557
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getNgranNrVopsInfo()Landroid/hardware/radio/network/NrVopsInfo;

    move-result-object v11

    iget-byte v11, v11, Landroid/hardware/radio/network/NrVopsInfo;->emcSupported:B

    .line 558
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getNgranNrVopsInfo()Landroid/hardware/radio/network/NrVopsInfo;

    move-result-object v2

    iget-byte v2, v2, Landroid/hardware/radio/network/NrVopsInfo;->emfSupported:B

    invoke-direct {v0, v10, v11, v2}, Landroid/telephony/NrVopsSupportInfo;-><init>(III)V

    move-object/from16 v19, v0

    :goto_6f
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    goto :goto_d6

    .line 548
    :cond_7a
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getEutranInfo()Landroid/hardware/radio/network/EutranRegistrationInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/hardware/radio/network/EutranRegistrationInfo;->nrIndicators:Landroid/hardware/radio/network/NrIndicators;

    iget-boolean v10, v10, Landroid/hardware/radio/network/NrIndicators;->isDcNrRestricted:Z

    .line 549
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getEutranInfo()Landroid/hardware/radio/network/EutranRegistrationInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/hardware/radio/network/EutranRegistrationInfo;->nrIndicators:Landroid/hardware/radio/network/NrIndicators;

    iget-boolean v11, v11, Landroid/hardware/radio/network/NrIndicators;->isNrAvailable:Z

    .line 550
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getEutranInfo()Landroid/hardware/radio/network/EutranRegistrationInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/hardware/radio/network/EutranRegistrationInfo;->nrIndicators:Landroid/hardware/radio/network/NrIndicators;

    iget-boolean v15, v15, Landroid/hardware/radio/network/NrIndicators;->isEndcAvailable:Z

    .line 552
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getEutranInfo()Landroid/hardware/radio/network/EutranRegistrationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/hardware/radio/network/EutranRegistrationInfo;->lteVopsInfo:Landroid/hardware/radio/network/LteVopsInfo;

    iget-boolean v14, v14, Landroid/hardware/radio/network/LteVopsInfo;->isVopsSupported:Z

    .line 553
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getEutranInfo()Landroid/hardware/radio/network/EutranRegistrationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/hardware/radio/network/EutranRegistrationInfo;->lteVopsInfo:Landroid/hardware/radio/network/LteVopsInfo;

    iget-boolean v2, v2, Landroid/hardware/radio/network/LteVopsInfo;->isEmcBearerSupported:Z

    .line 551
    invoke-direct {v0, v14, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->convertHalLteVopsSupportInfo(ZZ)Landroid/telephony/LteVopsSupportInfo;

    move-result-object v0

    move-object/from16 v19, v0

    move v14, v10

    move/from16 v16, v11

    move/from16 v18, v15

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    goto :goto_d6

    .line 542
    :cond_b3
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getCdmaInfo()Landroid/hardware/radio/network/Cdma2000RegistrationInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/hardware/radio/network/Cdma2000RegistrationInfo;->cssSupported:Z

    .line 543
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getCdmaInfo()Landroid/hardware/radio/network/Cdma2000RegistrationInfo;

    move-result-object v11

    iget v11, v11, Landroid/hardware/radio/network/Cdma2000RegistrationInfo;->roamingIndicator:I

    .line 544
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getCdmaInfo()Landroid/hardware/radio/network/Cdma2000RegistrationInfo;

    move-result-object v14

    iget v14, v14, Landroid/hardware/radio/network/Cdma2000RegistrationInfo;->systemIsInPrl:I

    .line 545
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getCdmaInfo()Landroid/hardware/radio/network/Cdma2000RegistrationInfo;

    move-result-object v2

    iget v2, v2, Landroid/hardware/radio/network/Cdma2000RegistrationInfo;->defaultRoamingIndicator:I

    move/from16 v17, v2

    move-object/from16 v19, v10

    move v15, v14

    const/4 v14, 0x0

    const/16 v16, 0x0

    :goto_d3
    const/16 v18, 0x0

    move v10, v0

    :goto_d6
    if-eq v1, v13, :cond_102

    if-eq v1, v12, :cond_ee

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown domain passed to CellularNetworkService= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CellularNetworkService;->-$$Nest$smloge(Ljava/lang/String;)V

    .line 579
    :cond_ee
    new-instance v15, Landroid/telephony/NetworkRegistrationInfo;

    const/16 v10, 0x10

    move-object v0, v15

    move/from16 v1, p1

    move/from16 v2, p2

    move v11, v14

    move/from16 v12, v16

    move/from16 v13, v18

    move-object/from16 v14, v19

    invoke-direct/range {v0 .. v14}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;IZZZLandroid/telephony/VopsSupportInfo;)V

    return-object v15

    .line 571
    :cond_102
    new-instance v14, Landroid/telephony/NetworkRegistrationInfo;

    move-object v0, v14

    move/from16 v1, p1

    move/from16 v2, p2

    move v12, v15

    move/from16 v13, v17

    invoke-direct/range {v0 .. v13}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;ZIII)V

    return-object v14
.end method

.method private blacklist getPlmnFromCellIdentity(Landroid/telephony/CellIdentity;)Ljava/lang/String;
    .registers 4

    const-string p0, ""

    if-eqz p1, :cond_2d

    .line 255
    instance-of v0, p1, Landroid/telephony/CellIdentityCdma;

    if-eqz v0, :cond_9

    goto :goto_2d

    .line 257
    :cond_9
    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_2d

    .line 262
    :cond_1e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2d
    :goto_2d
    return-object p0
.end method

.method private blacklist getRegStateFromHalRegState(I)I
    .registers 5

    const/4 p0, 0x1

    if-eq p1, p0, :cond_17

    const/4 p0, 0x2

    if-eq p1, p0, :cond_17

    const/4 v0, 0x3

    if-eq p1, v0, :cond_16

    const/4 v1, 0x4

    if-eq p1, v1, :cond_15

    const/4 v2, 0x5

    if-eq p1, v2, :cond_14

    packed-switch p1, :pswitch_data_18

    const/4 p0, 0x0

    return p0

    :cond_14
    return v2

    :cond_15
    :pswitch_15
    return v1

    :cond_16
    :pswitch_16
    return v0

    :cond_17
    :pswitch_17
    return p0

    :pswitch_data_18
    .packed-switch 0xc
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch
.end method

.method private blacklist getRegistrationStateFromResult(Ljava/lang/Object;I)Landroid/telephony/NetworkRegistrationInfo;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x1

    if-ne p2, v1, :cond_c

    .line 246
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->createRegistrationStateFromVoiceRegState(Ljava/lang/Object;)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    return-object p0

    :cond_c
    const/4 v1, 0x2

    if-ne p2, v1, :cond_14

    .line 248
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->createRegistrationStateFromDataRegState(Ljava/lang/Object;)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    return-object p0

    :cond_14
    return-object v0
.end method

.method private blacklist isEmergencyOnly(I)Z
    .registers 2

    packed-switch p1, :pswitch_data_8

    :pswitch_3
    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_8
    .packed-switch 0xa
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 700
    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkStateChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public whitelist requestNetworkRegistrationInfo(ILandroid/telephony/NetworkServiceCallback;)V
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 683
    iget-object p1, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 684
    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iget-object p0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    goto :goto_44

    :cond_16
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2c

    .line 687
    iget-object p1, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 688
    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    iget-object p0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    goto :goto_44

    .line 691
    :cond_2c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestNetworkRegistrationInfo invalid domain "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CellularNetworkService;->-$$Nest$smloge(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 692
    invoke-virtual {p2, v0, p0}, Landroid/telephony/NetworkServiceCallback;->onRequestNetworkRegistrationInfoComplete(ILandroid/telephony/NetworkRegistrationInfo;)V

    :goto_44
    return-void
.end method
