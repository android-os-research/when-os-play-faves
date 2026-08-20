.class public Lcom/android/internal/telephony/RILUtils;
.super Ljava/lang/Object;
.source "RILUtils.java"


# static fields
.field public static final blacklist CDMA_BROADCAST_SMS_NO_OF_SERVICE_CATEGORIES:I = 0x1f

.field public static final blacklist CDMA_BSI_NO_OF_INTS_STRUCT:I = 0x3

.field public static final blacklist RADIO_POWER_FAILURE_BUGREPORT_UUID:Ljava/lang/String; = "316f3801-fa21-4954-a42f-0041eada3b31"

.field public static final blacklist RADIO_POWER_FAILURE_NO_RF_CALIBRATION_UUID:Ljava/lang/String; = "316f3801-fa21-4954-a42f-0041eada3b33"

.field public static final blacklist RADIO_POWER_FAILURE_RF_HARDWARE_ISSUE_UUID:Ljava/lang/String; = "316f3801-fa21-4954-a42f-0041eada3b32"

.field private static final blacklist WRAPPER_CLASSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$08CLzOYCTOaVE6nc5IrxCdQOstE(Landroid/hardware/radio/V1_6/QosSession;)Landroid/telephony/data/QosBearerSession;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBearerSession(Landroid/hardware/radio/V1_6/QosSession;)Landroid/telephony/data/QosBearerSession;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$42QPXXaz-9r6t6j8_lLfyIB4QvM(Landroid/hardware/radio/V1_5/LinkAddress;)Landroid/net/LinkAddress;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->lambda$convertDataCallResultToMultiMtu$9(Landroid/hardware/radio/V1_5/LinkAddress;)Landroid/net/LinkAddress;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$6QuNUqs-ZF9o9otPlVDatRvD14c(Landroid/hardware/radio/V1_5/LinkAddress;)Landroid/net/LinkAddress;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->lambda$convertDataCallResultToMultiMtu$13(Landroid/hardware/radio/V1_5/LinkAddress;)Landroid/net/LinkAddress;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$7HdKUCGLevGX-NMO9QGOLrk6Ues(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->lambda$convertDataCallResultToMultiMtu$16(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$BXCOnM8xuJfYInklNwVDCSAW2M8(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->lambda$convertDataCallResultToMultiMtu$5(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$FWbKBGSe4ChwVcGf9OTJ_8G6rKo(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->lambda$convertDataCallResultToMultiMtu$15(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$GebymWlGoNnuJpLeyr4zRWpDmmU(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->lambda$convertDataCallResultToMultiMtu$10(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$N22tLpmEaMovLvDffptESPzVaPU(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->lambda$convertDataCallResultToMultiMtu$11(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$VrJrDwVgB7SLMdXVDQXnPMpvaNQ(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->lambda$convertDataCallResultToMultiMtu$7(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$WWHHz2xJCx3S91T2rF8c21CTWF4(Landroid/hardware/radio/V1_5/LinkAddress;)Landroid/net/LinkAddress;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->lambda$convertHalDataCallResult$1(Landroid/hardware/radio/V1_5/LinkAddress;)Landroid/net/LinkAddress;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$X9REGKW7SQrwwvSviZ2K2smRJgw(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->lambda$convertDataCallResultToMultiMtu$8(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$gBWeFKs6ffSMrG_kLr7al9gL2fo(Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;)Landroid/telephony/data/RouteSelectionDescriptor;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->lambda$convertHalSlicingConfig$3(Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;)Landroid/telephony/data/RouteSelectionDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$j6Jvnrv7UYMwUCcLayxOXthp21M(Landroid/hardware/radio/V1_6/UrspRule;)Landroid/telephony/data/UrspRule;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->lambda$convertHalSlicingConfig$4(Landroid/hardware/radio/V1_6/UrspRule;)Landroid/telephony/data/UrspRule;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$lmLvsFIrNSs-lOS8hd5YWKc0Q3M(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->lambda$convertDataCallResultToMultiMtu$12(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$nY9lHm57B9G6EWUGOY_tO2r9f2s(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->lambda$convertDataCallResultToMultiMtu$6(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$prYlqErHcbcum-1TE8okhXth0w4(Landroid/hardware/radio/V1_6/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->lambda$convertHalSlicingConfig$2(Landroid/hardware/radio/V1_6/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$sD3Qk8-Ug-TFRudr_OoB-Qioe9k(Landroid/hardware/radio/V1_6/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalSliceInfo(Landroid/hardware/radio/V1_6/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$vEJ0A1XN7wjQW6raKwhYyGQZY-c(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->lambda$convertDataCallResultToMultiMtu$14(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$yppQZCFQbdkwLZE9aAeDCr6o0BU(Landroid/hardware/radio/V1_5/LinkAddress;)Landroid/net/LinkAddress;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->lambda$convertHalDataCallResult$0(Landroid/hardware/radio/V1_5/LinkAddress;)Landroid/net/LinkAddress;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 395
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Character;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/Byte;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/lang/Short;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Ljava/lang/Long;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Ljava/lang/Float;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Ljava/lang/Double;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/RILUtils;->WRAPPER_CLASSES:Ljava/util/Set;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist appendPrimitiveArrayToArrayList([BLjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 4645
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-byte v2, p0, v1

    .line 4646
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return-void
.end method

.method public static blacklist arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 4675
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_18

    .line 4677
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_18
    return-object v1
.end method

.method public static blacklist convertDataCallResultListToMultiMtu(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;"
        }
    .end annotation

    .line 5580
    new-instance v0, Ljava/util/ArrayList;

    .line 5581
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5583
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5584
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertDataCallResultToMultiMtu(Ljava/lang/Object;)Landroid/telephony/data/DataCallResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1f
    return-object v0
.end method

.method public static blacklist convertDataCallResultToMultiMtu(Ljava/lang/Object;)Landroid/telephony/data/DataCallResponse;
    .registers 31
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 5399
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5400
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5402
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5404
    instance-of v5, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    if-eqz v5, :cond_a2

    .line 5405
    check-cast v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 5407
    iget v5, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->status:I

    .line 5408
    iget v7, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->suggestedRetryTime:I

    int-to-long v7, v7

    .line 5409
    iget v9, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->cid:I

    .line 5410
    iget v10, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->active:I

    .line 5411
    iget-object v11, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->type:Ljava/lang/String;

    invoke-static {v11}, Landroid/telephony/data/ApnSetting;->getProtocolIntFromString(Ljava/lang/String;)I

    move-result v11

    .line 5412
    iget-object v12, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 5413
    iget-object v13, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->addresses:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const-string v14, "\\s+"

    if-nez v13, :cond_3d

    .line 5414
    iget-object v13, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->addresses:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    goto :goto_3e

    :cond_3d
    move-object v13, v1

    .line 5416
    :goto_3e
    iget-object v15, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->dnses:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4d

    .line 5417
    iget-object v15, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->dnses:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    goto :goto_4e

    :cond_4d
    move-object v15, v1

    .line 5419
    :goto_4e
    iget-object v6, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->gateways:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5d

    .line 5420
    iget-object v6, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->gateways:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_5e

    :cond_5d
    move-object v6, v1

    .line 5422
    :goto_5e
    iget-object v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->pcscf:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 5423
    iget-object v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->pcscf:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_6e

    :cond_6d
    const/4 v1, 0x0

    .line 5425
    :goto_6e
    iget v0, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->mtu:I

    if-eqz v13, :cond_88

    .line 5427
    array-length v14, v13

    move/from16 p0, v0

    const/4 v0, 0x0

    :goto_76
    if-ge v0, v14, :cond_8a

    aget-object v18, v13, v0

    move-object/from16 v19, v1

    .line 5428
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v19

    goto :goto_76

    :cond_88
    move/from16 p0, v0

    :cond_8a
    move-object/from16 v19, v1

    move/from16 v13, p0

    move v14, v13

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move v4, v10

    move-object/from16 v1, v19

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move v3, v14

    move v10, v5

    const/16 p0, 0x0

    goto/16 :goto_1b6

    .line 5431
    :cond_a2
    instance-of v1, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    if-eqz v1, :cond_137

    .line 5432
    check-cast v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    .line 5434
    iget v5, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cause:I

    .line 5435
    iget v1, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->suggestedRetryTime:I

    int-to-long v7, v1

    .line 5436
    iget v9, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cid:I

    .line 5437
    iget v10, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->active:I

    .line 5438
    iget v11, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->type:I

    .line 5439
    iget-object v12, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 5440
    iget-object v1, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v6, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v6}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 5441
    iget-object v6, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v13, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda6;

    invoke-direct {v13}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v6, v13}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, [Ljava/lang/String;

    .line 5442
    iget-object v6, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v13, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda7;

    invoke-direct {v13}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v6, v13}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 5443
    iget-object v13, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v13

    new-instance v14, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda8;

    invoke-direct {v14}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v13, v14}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    .line 5444
    iget v0, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->mtu:I

    const v14, 0xffff

    and-int/2addr v14, v0

    shr-int/lit8 v0, v0, 0x10

    .line 5446
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 p0, v0

    if-eqz v1, :cond_120

    .line 5448
    array-length v0, v1

    move-object/from16 v19, v3

    const/4 v3, 0x0

    :goto_10e
    if-ge v3, v0, :cond_122

    aget-object v20, v1, v3

    move/from16 v21, v0

    .line 5449
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v21

    goto :goto_10e

    :cond_120
    move-object/from16 v19, v3

    :cond_122
    move-object v1, v13

    move v13, v14

    move/from16 v3, v18

    move-object/from16 v17, v19

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v14, p0

    move-object/from16 v18, v4

    move v4, v10

    const/16 p0, 0x0

    goto/16 :goto_1b5

    :cond_137
    move-object/from16 v19, v3

    .line 5452
    instance-of v1, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;

    if-eqz v1, :cond_1c2

    .line 5453
    check-cast v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;

    .line 5455
    iget v5, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cause:I

    .line 5456
    iget v1, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->suggestedRetryTime:I

    int-to-long v7, v1

    .line 5457
    iget v9, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cid:I

    .line 5458
    iget v10, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->active:I

    .line 5459
    iget v11, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->type:I

    .line 5460
    iget-object v12, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 5461
    iget-object v1, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 5463
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    .line 5465
    iget-object v1, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, [Ljava/lang/String;

    .line 5466
    iget-object v1, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda11;

    invoke-direct {v3}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [Ljava/lang/String;

    .line 5467
    iget-object v1, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda12;

    invoke-direct {v3}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda12;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 5468
    iget v3, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV4:I

    iget v13, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV6:I

    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 5469
    iget v13, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV4:I

    .line 5470
    iget v0, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV6:I

    move v14, v0

    move-object/from16 v18, v4

    move v4, v10

    move-object/from16 v17, v19

    const/16 p0, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_1b5
    move v10, v5

    :goto_1b6
    move-wide/from16 v28, v7

    move-object v8, v2

    move-object v2, v12

    move-object v12, v15

    move v15, v9

    move v9, v11

    move-object v11, v6

    move-wide/from16 v6, v28

    goto/16 :goto_28a

    .line 5471
    :cond_1c2
    instance-of v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;

    if-eqz v1, :cond_3d2

    .line 5472
    check-cast v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;

    .line 5474
    iget v5, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cause:I

    .line 5475
    iget-wide v7, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->suggestedRetryTime:J

    .line 5476
    iget v9, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cid:I

    .line 5477
    iget v10, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->active:I

    .line 5478
    iget v11, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->type:I

    .line 5479
    iget-object v12, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 5480
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda13;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 5482
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    .line 5483
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda14;

    invoke-direct {v3}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda14;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, [Ljava/lang/String;

    .line 5484
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [Ljava/lang/String;

    .line 5485
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 5486
    iget v3, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV4:I

    iget v13, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV6:I

    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 5487
    iget v13, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV4:I

    .line 5488
    iget v14, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV6:I

    move-object/from16 p0, v1

    .line 5489
    iget-byte v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->handoverFailureMode:B

    move/from16 v18, v1

    .line 5490
    iget v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pduSessionId:I

    move/from16 v19, v1

    .line 5492
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/V1_6/Qos;

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalQos(Landroid/hardware/radio/V1_6/Qos;)Landroid/telephony/data/Qos;

    move-result-object v1

    move-object/from16 v20, v1

    .line 5493
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->qosSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    move-object/from16 v21, v2

    new-instance v2, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 5494
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 5496
    iget-object v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    .line 5495
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;->getDiscriminator()B

    move-result v2

    if-nez v2, :cond_266

    const/4 v0, 0x0

    goto :goto_270

    .line 5497
    :cond_266
    iget-object v0, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;->value()Landroid/hardware/radio/V1_6/SliceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalSliceInfo(Landroid/hardware/radio/V1_6/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;

    move-result-object v0

    :goto_270
    move-object/from16 v17, v1

    move-object v2, v12

    move-object v12, v15

    move-object/from16 v1, p0

    move-object/from16 p0, v0

    move v15, v9

    move v9, v11

    move-object v11, v6

    move-wide v6, v7

    move-object/from16 v8, v21

    move/from16 v21, v18

    move-object/from16 v18, v4

    move v4, v10

    move v10, v5

    move-object/from16 v28, v20

    move/from16 v20, v19

    move-object/from16 v19, v28

    .line 5504
    :goto_28a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move/from16 v22, v14

    const-string v14, ", "

    if-eqz v12, :cond_2dc

    move/from16 v23, v13

    .line 5506
    array-length v13, v12

    move/from16 v24, v3

    const/4 v3, 0x0

    :goto_29b
    if-ge v3, v13, :cond_2d9

    aget-object v0, v12, v3

    move-object/from16 v25, v12

    .line 5507
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 5510
    :try_start_2a5
    invoke-static {v12}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 5511
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2ac
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a5 .. :try_end_2ac} :catch_2b1

    move-object/from16 v27, v5

    move/from16 v26, v13

    goto :goto_2d0

    :catch_2b1
    move-exception v0

    move/from16 v26, v13

    .line 5513
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v5

    const-string v5, "Unknown dns: "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    :goto_2d0
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v12, v25

    move/from16 v13, v26

    move-object/from16 v5, v27

    goto :goto_29b

    :cond_2d9
    move-object/from16 v27, v5

    goto :goto_2e2

    :cond_2dc
    move/from16 v24, v3

    move-object/from16 v27, v5

    move/from16 v23, v13

    .line 5519
    :goto_2e2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_325

    .line 5521
    array-length v5, v11

    const/4 v12, 0x0

    :goto_2eb
    if-ge v12, v5, :cond_325

    aget-object v0, v11, v12

    .line 5522
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 5525
    :try_start_2f3
    invoke-static {v13}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 5526
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2fa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f3 .. :try_end_2fa} :catch_2ff

    move/from16 v25, v5

    move-object/from16 v26, v11

    goto :goto_31e

    :catch_2ff
    move-exception v0

    move/from16 v25, v5

    .line 5528
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v11

    const-string v11, "Unknown gateway: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    :goto_31e
    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v25

    move-object/from16 v11, v26

    goto :goto_2eb

    .line 5534
    :cond_325
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_368

    .line 5536
    array-length v11, v1

    const/4 v12, 0x0

    :goto_32e
    if-ge v12, v11, :cond_368

    aget-object v0, v1, v12

    .line 5537
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 5541
    :try_start_336
    invoke-static {v13}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 5542
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_33d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_336 .. :try_end_33d} :catch_342

    move-object/from16 v16, v1

    move/from16 v25, v11

    goto :goto_361

    :catch_342
    move-exception v0

    move-object/from16 v16, v1

    .line 5544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v11

    const-string v11, "Unknown pcscf: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    :goto_361
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v16

    move/from16 v11, v25

    goto :goto_32e

    .line 5549
    :cond_368
    new-instance v0, Landroid/telephony/data/DataCallResponse$Builder;

    invoke-direct {v0}, Landroid/telephony/data/DataCallResponse$Builder;-><init>()V

    .line 5550
    invoke-virtual {v0, v10}, Landroid/telephony/data/DataCallResponse$Builder;->setCause(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 5551
    invoke-virtual {v0, v6, v7}, Landroid/telephony/data/DataCallResponse$Builder;->setRetryDurationMillis(J)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 5552
    invoke-virtual {v0, v15}, Landroid/telephony/data/DataCallResponse$Builder;->setId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 5553
    invoke-virtual {v0, v4}, Landroid/telephony/data/DataCallResponse$Builder;->setLinkStatus(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 5554
    invoke-virtual {v0, v9}, Landroid/telephony/data/DataCallResponse$Builder;->setProtocolType(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 5555
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setInterfaceName(Ljava/lang/String;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 5556
    invoke-virtual {v0, v8}, Landroid/telephony/data/DataCallResponse$Builder;->setAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move-object/from16 v1, v27

    .line 5557
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setDnsAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 5558
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataCallResponse$Builder;->setGatewayAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 5559
    invoke-virtual {v0, v5}, Landroid/telephony/data/DataCallResponse$Builder;->setPcscfAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v3, v24

    .line 5560
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataCallResponse$Builder;->setMtu(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v13, v23

    .line 5561
    invoke-virtual {v0, v13}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV4(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v14, v22

    .line 5562
    invoke-virtual {v0, v14}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV6(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v1, v21

    .line 5563
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setHandoverFailureMode(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v1, v20

    .line 5564
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setPduSessionId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move-object/from16 v1, v19

    .line 5565
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setDefaultQos(Landroid/telephony/data/Qos;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move-object/from16 v1, v17

    .line 5566
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setQosBearerSessions(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move-object/from16 v1, p0

    .line 5567
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setSliceInfo(Landroid/telephony/data/NetworkSliceInfo;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move-object/from16 v1, v18

    .line 5568
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setTrafficDescriptors(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 5569
    invoke-virtual {v0}, Landroid/telephony/data/DataCallResponse$Builder;->build()Landroid/telephony/data/DataCallResponse;

    move-result-object v0

    return-object v0

    .line 5499
    :cond_3d2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported SetupDataCallResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist convertHalBarringInfoList(Ljava/util/List;)Landroid/util/SparseArray;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/V1_5/BarringInfo;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/BarringInfo$BarringServiceInfo;",
            ">;"
        }
    .end annotation

    .line 3339
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 3340
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_5/BarringInfo;

    .line 3341
    iget v2, v1, Landroid/hardware/radio/V1_5/BarringInfo;->barringType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3c

    .line 3343
    iget-object v2, v1, Landroid/hardware/radio/V1_5/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;

    invoke-virtual {v2}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->getDiscriminator()B

    move-result v2

    if-eq v2, v3, :cond_23

    goto :goto_9

    .line 3351
    :cond_23
    iget-object v2, v1, Landroid/hardware/radio/V1_5/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;

    .line 3352
    invoke-virtual {v2}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->conditional()Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;

    move-result-object v2

    .line 3353
    iget v3, v1, Landroid/hardware/radio/V1_5/BarringInfo;->serviceType:I

    new-instance v4, Landroid/telephony/BarringInfo$BarringServiceInfo;

    iget v1, v1, Landroid/hardware/radio/V1_5/BarringInfo;->barringType:I

    iget-boolean v5, v2, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->isBarred:Z

    iget v6, v2, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->factor:I

    iget v2, v2, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->timeSeconds:I

    invoke-direct {v4, v1, v5, v6, v2}, Landroid/telephony/BarringInfo$BarringServiceInfo;-><init>(IZII)V

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9

    .line 3361
    :cond_3c
    iget v2, v1, Landroid/hardware/radio/V1_5/BarringInfo;->serviceType:I

    new-instance v3, Landroid/telephony/BarringInfo$BarringServiceInfo;

    iget v1, v1, Landroid/hardware/radio/V1_5/BarringInfo;->barringType:I

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v4, v4}, Landroid/telephony/BarringInfo$BarringServiceInfo;-><init>(IZII)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9

    :cond_4a
    return-object v0
.end method

.method public static blacklist convertHalBarringInfoList([Landroid/hardware/radio/network/BarringInfo;)Landroid/util/SparseArray;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/radio/network/BarringInfo;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/BarringInfo$BarringServiceInfo;",
            ">;"
        }
    .end annotation

    .line 3377
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 3378
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_3a

    aget-object v4, p0, v3

    .line 3379
    iget v5, v4, Landroid/hardware/radio/network/BarringInfo;->barringType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2b

    .line 3381
    iget-object v5, v4, Landroid/hardware/radio/network/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/network/BarringTypeSpecificInfo;

    if-nez v5, :cond_16

    goto :goto_37

    .line 3386
    :cond_16
    iget v5, v4, Landroid/hardware/radio/network/BarringInfo;->serviceType:I

    new-instance v6, Landroid/telephony/BarringInfo$BarringServiceInfo;

    iget v7, v4, Landroid/hardware/radio/network/BarringInfo;->barringType:I

    iget-object v4, v4, Landroid/hardware/radio/network/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/network/BarringTypeSpecificInfo;

    iget-boolean v8, v4, Landroid/hardware/radio/network/BarringTypeSpecificInfo;->isBarred:Z

    iget v9, v4, Landroid/hardware/radio/network/BarringTypeSpecificInfo;->factor:I

    iget v4, v4, Landroid/hardware/radio/network/BarringTypeSpecificInfo;->timeSeconds:I

    invoke-direct {v6, v7, v8, v9, v4}, Landroid/telephony/BarringInfo$BarringServiceInfo;-><init>(IZII)V

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_37

    .line 3394
    :cond_2b
    iget v5, v4, Landroid/hardware/radio/network/BarringInfo;->serviceType:I

    new-instance v6, Landroid/telephony/BarringInfo$BarringServiceInfo;

    iget v4, v4, Landroid/hardware/radio/network/BarringInfo;->barringType:I

    invoke-direct {v6, v4, v2, v2, v2}, Landroid/telephony/BarringInfo$BarringServiceInfo;-><init>(IZII)V

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_3a
    return-object v0
.end method

.method public static blacklist convertHalCardStatus(Landroid/hardware/radio/sim/CardStatus;)Lcom/android/internal/telephony/uicc/IccCardStatus;
    .registers 7

    .line 4382
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 4383
    iget v1, p0, Landroid/hardware/radio/sim/CardStatus;->cardState:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 4384
    iget v1, p0, Landroid/hardware/radio/sim/CardStatus;->universalPinState:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 4385
    iget v1, p0, Landroid/hardware/radio/sim/CardStatus;->gsmUmtsSubscriptionAppIndex:I

    iput v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 4386
    iget v1, p0, Landroid/hardware/radio/sim/CardStatus;->cdmaSubscriptionAppIndex:I

    iput v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 4387
    iget v1, p0, Landroid/hardware/radio/sim/CardStatus;->imsSubscriptionAppIndex:I

    iput v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 4388
    iget-object v1, p0, Landroid/hardware/radio/sim/CardStatus;->atr:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    .line 4389
    iget-object v1, p0, Landroid/hardware/radio/sim/CardStatus;->iccid:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    .line 4390
    iget-object v1, p0, Landroid/hardware/radio/sim/CardStatus;->eid:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    .line 4392
    iget-object v1, p0, Landroid/hardware/radio/sim/CardStatus;->applications:[Landroid/hardware/radio/sim/AppStatus;

    array-length v1, v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4394
    new-array v2, v1, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    const/4 v2, 0x0

    :goto_35
    if-ge v2, v1, :cond_7b

    .line 4396
    iget-object v3, p0, Landroid/hardware/radio/sim/CardStatus;->applications:[Landroid/hardware/radio/sim/AppStatus;

    aget-object v3, v3, v2

    .line 4397
    new-instance v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 4398
    iget v5, v3, Landroid/hardware/radio/sim/AppStatus;->appType:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 4399
    iget v5, v3, Landroid/hardware/radio/sim/AppStatus;->appState:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 4400
    iget v5, v3, Landroid/hardware/radio/sim/AppStatus;->persoSubstate:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 4402
    iget-object v5, v3, Landroid/hardware/radio/sim/AppStatus;->aidPtr:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 4403
    iget-object v5, v3, Landroid/hardware/radio/sim/AppStatus;->appLabelPtr:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 4404
    iget-boolean v5, v3, Landroid/hardware/radio/sim/AppStatus;->pin1Replaced:Z

    iput-boolean v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:Z

    .line 4405
    iget v5, v3, Landroid/hardware/radio/sim/AppStatus;->pin1:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 4406
    iget v3, v3, Landroid/hardware/radio/sim/AppStatus;->pin2:I

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v3

    iput-object v3, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 4407
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 4409
    :cond_7b
    new-instance v1, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;-><init>()V

    .line 4410
    iget-object p0, p0, Landroid/hardware/radio/sim/CardStatus;->slotMap:Landroid/hardware/radio/config/SlotPortMapping;

    iget v2, p0, Landroid/hardware/radio/config/SlotPortMapping;->physicalSlotId:I

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPhysicalSlotIndex:I

    .line 4411
    iget p0, p0, Landroid/hardware/radio/config/SlotPortMapping;->portId:I

    iput p0, v1, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    .line 4412
    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    return-object v0
.end method

.method public static blacklist convertHalCardStatus(Ljava/lang/Object;)Lcom/android/internal/telephony/uicc/IccCardStatus;
    .registers 12

    .line 4301
    instance-of v0, p0, Landroid/hardware/radio/V1_5/CardStatus;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 4302
    move-object v1, p0

    check-cast v1, Landroid/hardware/radio/V1_5/CardStatus;

    .line 4303
    iget-object p0, v1, Landroid/hardware/radio/V1_5/CardStatus;->base:Landroid/hardware/radio/V1_4/CardStatus;

    iget-object p0, p0, Landroid/hardware/radio/V1_4/CardStatus;->base:Landroid/hardware/radio/V1_2/CardStatus;

    iget-object p0, p0, Landroid/hardware/radio/V1_2/CardStatus;->base:Landroid/hardware/radio/V1_0/CardStatus;

    :goto_e
    move-object v10, v1

    move-object v1, p0

    move-object p0, v10

    goto :goto_1a

    .line 4304
    :cond_12
    instance-of v0, p0, Landroid/hardware/radio/V1_0/CardStatus;

    if-eqz v0, :cond_19

    .line 4306
    check-cast p0, Landroid/hardware/radio/V1_0/CardStatus;

    goto :goto_e

    :cond_19
    move-object p0, v1

    .line 4312
    :goto_1a
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v1, :cond_98

    .line 4314
    iget v5, v1, Landroid/hardware/radio/V1_0/CardStatus;->cardState:I

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 4315
    iget v5, v1, Landroid/hardware/radio/V1_0/CardStatus;->universalPinState:I

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 4316
    iget v5, v1, Landroid/hardware/radio/V1_0/CardStatus;->gsmUmtsSubscriptionAppIndex:I

    iput v5, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 4317
    iget v5, v1, Landroid/hardware/radio/V1_0/CardStatus;->cdmaSubscriptionAppIndex:I

    iput v5, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 4318
    iget v5, v1, Landroid/hardware/radio/V1_0/CardStatus;->imsSubscriptionAppIndex:I

    iput v5, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 4319
    iget-object v5, v1, Landroid/hardware/radio/V1_0/CardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v4, :cond_44

    move v5, v4

    .line 4325
    :cond_44
    new-array v6, v5, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    move v6, v3

    :goto_49
    if-ge v6, v5, :cond_98

    .line 4327
    iget-object v7, v1, Landroid/hardware/radio/V1_0/CardStatus;->applications:Ljava/util/ArrayList;

    .line 4328
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/V1_0/AppStatus;

    .line 4329
    new-instance v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v8}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 4330
    iget v9, v7, Landroid/hardware/radio/V1_0/AppStatus;->appType:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 4331
    iget v9, v7, Landroid/hardware/radio/V1_0/AppStatus;->appState:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 4332
    iget v9, v7, Landroid/hardware/radio/V1_0/AppStatus;->persoSubstate:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 4334
    iget-object v9, v7, Landroid/hardware/radio/V1_0/AppStatus;->aidPtr:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 4335
    iget-object v9, v7, Landroid/hardware/radio/V1_0/AppStatus;->appLabelPtr:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 4336
    iget v9, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin1Replaced:I

    if-eqz v9, :cond_7e

    move v9, v2

    goto :goto_7f

    :cond_7e
    move v9, v3

    :goto_7f
    iput-boolean v9, v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:Z

    .line 4337
    iget v9, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin1:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 4338
    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin2:I

    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v7

    iput-object v7, v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 4339
    iget-object v7, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    :cond_98
    if-eqz p0, :cond_11b

    .line 4343
    new-instance v1, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;-><init>()V

    .line 4344
    iget-object v5, p0, Landroid/hardware/radio/V1_5/CardStatus;->base:Landroid/hardware/radio/V1_4/CardStatus;

    iget-object v6, v5, Landroid/hardware/radio/V1_4/CardStatus;->base:Landroid/hardware/radio/V1_2/CardStatus;

    iget v7, v6, Landroid/hardware/radio/V1_2/CardStatus;->physicalSlotId:I

    iput v7, v1, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPhysicalSlotIndex:I

    .line 4345
    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    .line 4346
    iget-object v1, v6, Landroid/hardware/radio/V1_2/CardStatus;->atr:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    .line 4347
    iget-object v1, v6, Landroid/hardware/radio/V1_2/CardStatus;->iccid:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    .line 4348
    iget-object v1, v5, Landroid/hardware/radio/V1_4/CardStatus;->eid:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    .line 4349
    iget-object v1, p0, Landroid/hardware/radio/V1_5/CardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_be

    goto :goto_bf

    :cond_be
    move v4, v1

    .line 4355
    :goto_bf
    new-array v1, v4, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    move v1, v3

    :goto_c4
    if-ge v1, v4, :cond_11b

    .line 4357
    iget-object v5, p0, Landroid/hardware/radio/V1_5/CardStatus;->applications:Ljava/util/ArrayList;

    .line 4358
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_5/AppStatus;

    .line 4359
    new-instance v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 4360
    iget-object v7, v5, Landroid/hardware/radio/V1_5/AppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->appType:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 4361
    iget-object v7, v5, Landroid/hardware/radio/V1_5/AppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->appState:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 4362
    iget v7, v5, Landroid/hardware/radio/V1_5/AppStatus;->persoSubstate:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 4364
    iget-object v7, v5, Landroid/hardware/radio/V1_5/AppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget-object v8, v7, Landroid/hardware/radio/V1_0/AppStatus;->aidPtr:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 4365
    iget-object v8, v7, Landroid/hardware/radio/V1_0/AppStatus;->appLabelPtr:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 4366
    iget v8, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin1Replaced:I

    if-eqz v8, :cond_ff

    move v8, v2

    goto :goto_100

    :cond_ff
    move v8, v3

    :goto_100
    iput-boolean v8, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:Z

    .line 4367
    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin1:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 4368
    iget-object v5, v5, Landroid/hardware/radio/V1_5/AppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v5, v5, Landroid/hardware/radio/V1_0/AppStatus;->pin2:I

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v5

    iput-object v5, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 4369
    iget-object v5, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c4

    :cond_11b
    return-object v0
.end method

.method public static blacklist convertHalCarrierList(Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/V1_0/Carrier;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation

    .line 4244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4245
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_59

    .line 4246
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/Carrier;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/Carrier;->mcc:Ljava/lang/String;

    .line 4247
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/Carrier;

    iget-object v5, v2, Landroid/hardware/radio/V1_0/Carrier;->mnc:Ljava/lang/String;

    .line 4249
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/Carrier;

    iget v2, v2, Landroid/hardware/radio/V1_0/Carrier;->matchType:I

    .line 4250
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/Carrier;

    iget-object v3, v3, Landroid/hardware/radio/V1_0/Carrier;->matchData:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v6, :cond_34

    move-object v6, v3

    move-object v8, v7

    :goto_32
    move-object v9, v8

    goto :goto_4d

    :cond_34
    const/4 v6, 0x2

    if-ne v2, v6, :cond_3c

    move-object v6, v7

    move-object v8, v6

    move-object v9, v8

    move-object v7, v3

    goto :goto_4d

    :cond_3c
    const/4 v6, 0x3

    if-ne v2, v6, :cond_43

    move-object v8, v3

    move-object v6, v7

    move-object v9, v6

    goto :goto_4d

    :cond_43
    const/4 v6, 0x4

    if-ne v2, v6, :cond_4a

    move-object v9, v3

    move-object v6, v7

    move-object v8, v6

    goto :goto_4d

    :cond_4a
    move-object v6, v7

    move-object v8, v6

    goto :goto_32

    .line 4260
    :goto_4d
    new-instance v2, Landroid/service/carrier/CarrierIdentifier;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Landroid/service/carrier/CarrierIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_59
    return-object v0
.end method

.method public static blacklist convertHalCarrierList([Landroid/hardware/radio/sim/Carrier;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/radio/sim/Carrier;",
            ")",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation

    .line 4272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4273
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_40

    .line 4274
    aget-object v2, p0, v1

    iget-object v4, v2, Landroid/hardware/radio/sim/Carrier;->mcc:Ljava/lang/String;

    .line 4275
    iget-object v5, v2, Landroid/hardware/radio/sim/Carrier;->mnc:Ljava/lang/String;

    .line 4277
    iget v3, v2, Landroid/hardware/radio/sim/Carrier;->matchType:I

    .line 4278
    iget-object v2, v2, Landroid/hardware/radio/sim/Carrier;->matchData:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v3, v6, :cond_1b

    move-object v6, v2

    move-object v8, v7

    :goto_19
    move-object v9, v8

    goto :goto_34

    :cond_1b
    const/4 v6, 0x2

    if-ne v3, v6, :cond_23

    move-object v6, v7

    move-object v8, v6

    move-object v9, v8

    move-object v7, v2

    goto :goto_34

    :cond_23
    const/4 v6, 0x3

    if-ne v3, v6, :cond_2a

    move-object v8, v2

    move-object v6, v7

    move-object v9, v6

    goto :goto_34

    :cond_2a
    const/4 v6, 0x4

    if-ne v3, v6, :cond_31

    move-object v9, v2

    move-object v6, v7

    move-object v8, v6

    goto :goto_34

    :cond_31
    move-object v6, v7

    move-object v8, v6

    goto :goto_19

    .line 4288
    :goto_34
    new-instance v2, Landroid/service/carrier/CarrierIdentifier;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Landroid/service/carrier/CarrierIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_40
    return-object v0
.end method

.method public static blacklist convertHalCdmaSignalStrength(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;
    .registers 9

    .line 3116
    new-instance v6, Landroid/telephony/CellSignalStrengthCdma;

    iget v0, p0, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->dbm:I

    neg-int v1, v0

    iget p0, p0, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->ecio:I

    neg-int v2, p0

    iget p0, p1, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->dbm:I

    neg-int v3, p0

    iget p0, p1, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->ecio:I

    neg-int v4, p0

    iget v5, p1, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->signalNoiseRatio:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/CellSignalStrengthCdma;-><init>(IIIII)V

    return-object v6
.end method

.method public static blacklist convertHalCdmaSignalStrength(Landroid/hardware/radio/network/CdmaSignalStrength;Landroid/hardware/radio/network/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;
    .registers 9

    .line 3130
    new-instance v6, Landroid/telephony/CellSignalStrengthCdma;

    iget v0, p0, Landroid/hardware/radio/network/CdmaSignalStrength;->dbm:I

    neg-int v1, v0

    iget p0, p0, Landroid/hardware/radio/network/CdmaSignalStrength;->ecio:I

    neg-int v2, p0

    iget p0, p1, Landroid/hardware/radio/network/EvdoSignalStrength;->dbm:I

    neg-int v3, p0

    iget p0, p1, Landroid/hardware/radio/network/EvdoSignalStrength;->ecio:I

    neg-int v4, p0

    iget v5, p1, Landroid/hardware/radio/network/EvdoSignalStrength;->signalNoiseRatio:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/CellSignalStrengthCdma;-><init>(IIIII)V

    return-object v6
.end method

.method public static blacklist convertHalCdmaSmsMessage(Landroid/hardware/radio/V1_0/CdmaSmsMessage;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .registers 10

    .line 695
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 696
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 697
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 704
    iget v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->teleserviceId:I

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 706
    iget-boolean v4, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->isServicePresent:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1c

    const/4 v3, 0x1

    .line 707
    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_24

    :cond_1c
    if-nez v3, :cond_22

    const/4 v3, 0x2

    .line 711
    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_24

    .line 713
    :cond_22
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 716
    :goto_24
    iget v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->serviceCategory:I

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 719
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget v4, v3, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digitMode:I

    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    .line 720
    iput v6, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 721
    iget v6, v3, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberMode:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    iput v6, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 722
    iget v6, v3, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberType:I

    iput v6, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 723
    iget v6, v3, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberPlan:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    iput v6, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 724
    iget-object v3, v3, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-byte v3, v3

    .line 725
    iput v3, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 726
    new-array v6, v3, [B

    move v7, v5

    :goto_4f
    if-ge v7, v3, :cond_6c

    .line 728
    iget-object v8, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v6, v7

    if-nez v4, :cond_69

    .line 732
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v8

    aput-byte v8, v6, v7

    :cond_69
    add-int/lit8 v7, v7, 0x1

    goto :goto_4f

    .line 736
    :cond_6c
    iput-object v6, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 738
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget v4, v3, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->subaddressType:I

    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 739
    iget-boolean v4, v3, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->odd:Z

    int-to-byte v4, v4

    iput-byte v4, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 740
    iget-object v3, v3, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-byte v3, v3

    if-gez v3, :cond_83

    move v3, v5

    .line 748
    :cond_83
    new-array v4, v3, [B

    move v6, v5

    :goto_86
    if-ge v6, v3, :cond_9b

    .line 751
    iget-object v7, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget-object v7, v7, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_86

    .line 754
    :cond_9b
    iput-object v4, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 764
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gez v3, :cond_a6

    move v3, v5

    .line 769
    :cond_a6
    new-array v4, v3, [B

    :goto_a8
    if-ge v5, v3, :cond_bb

    .line 771
    iget-object v6, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_a8

    .line 774
    :cond_bb
    iput-object v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 777
    iput-object v1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 778
    iput-object v2, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 780
    new-instance p0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsAddress;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V

    return-object p0
.end method

.method public static blacklist convertHalCdmaSmsMessage(Landroid/hardware/radio/messaging/CdmaSmsMessage;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .registers 10

    .line 794
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 795
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 796
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 799
    iget-object v3, p0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->address:Landroid/hardware/radio/messaging/CdmaSmsAddress;

    iget v4, v3, Landroid/hardware/radio/messaging/CdmaSmsAddress;->digitMode:I

    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    .line 800
    iput v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 801
    iget-boolean v5, v3, Landroid/hardware/radio/messaging/CdmaSmsAddress;->isNumberModeDataNetwork:Z

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    iput v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 802
    iget v5, v3, Landroid/hardware/radio/messaging/CdmaSmsAddress;->numberType:I

    iput v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 803
    iget v5, v3, Landroid/hardware/radio/messaging/CdmaSmsAddress;->numberPlan:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    iput v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 804
    iget-object v3, v3, Landroid/hardware/radio/messaging/CdmaSmsAddress;->digits:[B

    array-length v5, v3

    iput v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 805
    array-length v3, v3

    new-array v5, v3, [B

    const/4 v6, 0x0

    move v7, v6

    :goto_34
    if-ge v7, v3, :cond_49

    .line 807
    iget-object v8, p0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->address:Landroid/hardware/radio/messaging/CdmaSmsAddress;

    iget-object v8, v8, Landroid/hardware/radio/messaging/CdmaSmsAddress;->digits:[B

    aget-byte v8, v8, v7

    aput-byte v8, v5, v7

    if-nez v4, :cond_46

    .line 810
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v8

    aput-byte v8, v5, v7

    :cond_46
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    .line 813
    :cond_49
    iput-object v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 816
    iget-object v3, p0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/messaging/CdmaSmsSubaddress;

    iget v4, v3, Landroid/hardware/radio/messaging/CdmaSmsSubaddress;->subaddressType:I

    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 817
    iget-boolean v4, v3, Landroid/hardware/radio/messaging/CdmaSmsSubaddress;->odd:Z

    int-to-byte v4, v4

    iput-byte v4, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 818
    iget-object v3, v3, Landroid/hardware/radio/messaging/CdmaSmsSubaddress;->digits:[B

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 823
    iget v3, p0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->teleserviceId:I

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 824
    iget-boolean v4, p0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->isServicePresent:Z

    if-eqz v4, :cond_66

    const/4 v3, 0x1

    .line 825
    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_6e

    :cond_66
    if-nez v3, :cond_6c

    const/4 v3, 0x2

    .line 829
    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_6e

    .line 831
    :cond_6c
    iput v6, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 834
    :goto_6e
    iget v3, p0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->serviceCategory:I

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 837
    iget-object p0, p0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->bearerData:[B

    iput-object p0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 840
    iput-object v1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 841
    iput-object v2, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 843
    new-instance p0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsAddress;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V

    return-object p0
.end method

.method public static blacklist convertHalCellConnectionStatus(I)I
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    return v0
.end method

.method public static blacklist convertHalCellIdentity(Landroid/hardware/radio/network/CellIdentity;)Landroid/telephony/CellIdentity;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2743
    :cond_4
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_42

    return-object v0

    .line 2755
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getNr()Landroid/hardware/radio/network/CellIdentityNr;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityNr(Landroid/hardware/radio/network/CellIdentityNr;)Landroid/telephony/CellIdentityNr;

    move-result-object p0

    return-object p0

    .line 2749
    :pswitch_15
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getLte()Landroid/hardware/radio/network/CellIdentityLte;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityLte(Landroid/hardware/radio/network/CellIdentityLte;)Landroid/telephony/CellIdentityLte;

    move-result-object p0

    return-object p0

    .line 2747
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getCdma()Landroid/hardware/radio/network/CellIdentityCdma;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityCdma(Landroid/hardware/radio/network/CellIdentityCdma;)Landroid/telephony/CellIdentityCdma;

    move-result-object p0

    return-object p0

    .line 2753
    :pswitch_27
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getTdscdma()Landroid/hardware/radio/network/CellIdentityTdscdma;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityTdscdma(Landroid/hardware/radio/network/CellIdentityTdscdma;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object p0

    return-object p0

    .line 2751
    :pswitch_30
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getWcdma()Landroid/hardware/radio/network/CellIdentityWcdma;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityWcdma(Landroid/hardware/radio/network/CellIdentityWcdma;)Landroid/telephony/CellIdentityWcdma;

    move-result-object p0

    return-object p0

    .line 2745
    :pswitch_39
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getGsm()Landroid/hardware/radio/network/CellIdentityGsm;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityGsm(Landroid/hardware/radio/network/CellIdentityGsm;)Landroid/telephony/CellIdentityGsm;

    move-result-object p0

    return-object p0

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_39
        :pswitch_30
        :pswitch_27
        :pswitch_1e
        :pswitch_15
        :pswitch_c
    .end packed-switch
.end method

.method public static blacklist convertHalCellIdentity(Ljava/lang/Object;)Landroid/telephony/CellIdentity;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2654
    :cond_4
    instance-of v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_7d

    .line 2655
    check-cast p0, Landroid/hardware/radio/V1_0/CellIdentity;

    .line 2657
    iget v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellInfoType:I

    if-eq v1, v7, :cond_6a

    if-eq v1, v5, :cond_57

    if-eq v1, v4, :cond_44

    if-eq v1, v3, :cond_31

    if-eq v1, v2, :cond_1e

    goto/16 :goto_134

    .line 2679
    :cond_1e
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v7, :cond_134

    .line 2680
    iget-object p0, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityTdscdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object p0

    return-object p0

    .line 2674
    :cond_31
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v7, :cond_134

    .line 2675
    iget-object p0, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityWcdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityWcdma;

    move-result-object p0

    return-object p0

    .line 2669
    :cond_44
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v7, :cond_134

    .line 2670
    iget-object p0, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityLte(Ljava/lang/Object;)Landroid/telephony/CellIdentityLte;

    move-result-object p0

    return-object p0

    .line 2664
    :cond_57
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v7, :cond_134

    .line 2665
    iget-object p0, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityCdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityCdma;

    move-result-object p0

    return-object p0

    .line 2659
    :cond_6a
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v7, :cond_134

    .line 2660
    iget-object p0, p0, Landroid/hardware/radio/V1_0/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityGsm(Ljava/lang/Object;)Landroid/telephony/CellIdentityGsm;

    move-result-object p0

    return-object p0

    .line 2684
    :cond_7d
    instance-of v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;

    if-eqz v1, :cond_f0

    .line 2685
    check-cast p0, Landroid/hardware/radio/V1_2/CellIdentity;

    .line 2687
    iget v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellInfoType:I

    if-eq v1, v7, :cond_dd

    if-eq v1, v5, :cond_ca

    if-eq v1, v4, :cond_b7

    if-eq v1, v3, :cond_a4

    if-eq v1, v2, :cond_91

    goto/16 :goto_134

    .line 2709
    :cond_91
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v7, :cond_134

    .line 2710
    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityTdscdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object p0

    return-object p0

    .line 2704
    :cond_a4
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v7, :cond_134

    .line 2705
    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityWcdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityWcdma;

    move-result-object p0

    return-object p0

    .line 2699
    :cond_b7
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v7, :cond_134

    .line 2700
    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityLte(Ljava/lang/Object;)Landroid/telephony/CellIdentityLte;

    move-result-object p0

    return-object p0

    .line 2694
    :cond_ca
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v7, :cond_134

    .line 2695
    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityCdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityCdma;

    move-result-object p0

    return-object p0

    .line 2689
    :cond_dd
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v7, :cond_134

    .line 2690
    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityGsm(Ljava/lang/Object;)Landroid/telephony/CellIdentityGsm;

    move-result-object p0

    return-object p0

    .line 2714
    :cond_f0
    instance-of v1, p0, Landroid/hardware/radio/V1_5/CellIdentity;

    if-eqz v1, :cond_134

    .line 2715
    check-cast p0, Landroid/hardware/radio/V1_5/CellIdentity;

    .line 2717
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->getDiscriminator()B

    move-result v1

    packed-switch v1, :pswitch_data_136

    goto :goto_134

    .line 2729
    :pswitch_fe
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->nr()Landroid/hardware/radio/V1_5/CellIdentityNr;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityNr(Ljava/lang/Object;)Landroid/telephony/CellIdentityNr;

    move-result-object p0

    return-object p0

    .line 2723
    :pswitch_107
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->lte()Landroid/hardware/radio/V1_5/CellIdentityLte;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityLte(Ljava/lang/Object;)Landroid/telephony/CellIdentityLte;

    move-result-object p0

    return-object p0

    .line 2721
    :pswitch_110
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->cdma()Landroid/hardware/radio/V1_2/CellIdentityCdma;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityCdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityCdma;

    move-result-object p0

    return-object p0

    .line 2727
    :pswitch_119
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->tdscdma()Landroid/hardware/radio/V1_5/CellIdentityTdscdma;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityTdscdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object p0

    return-object p0

    .line 2725
    :pswitch_122
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->wcdma()Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityWcdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityWcdma;

    move-result-object p0

    return-object p0

    .line 2719
    :pswitch_12b
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->gsm()Landroid/hardware/radio/V1_5/CellIdentityGsm;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityGsm(Ljava/lang/Object;)Landroid/telephony/CellIdentityGsm;

    move-result-object p0

    return-object p0

    :cond_134
    :goto_134
    return-object v0

    nop

    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_12b
        :pswitch_122
        :pswitch_119
        :pswitch_110
        :pswitch_107
        :pswitch_fe
    .end packed-switch
.end method

.method public static blacklist convertHalCellIdentityCdma(Landroid/hardware/radio/network/CellIdentityCdma;)Landroid/telephony/CellIdentityCdma;
    .registers 10

    .line 2835
    new-instance v8, Landroid/telephony/CellIdentityCdma;

    iget v1, p0, Landroid/hardware/radio/network/CellIdentityCdma;->networkId:I

    iget v2, p0, Landroid/hardware/radio/network/CellIdentityCdma;->systemId:I

    iget v3, p0, Landroid/hardware/radio/network/CellIdentityCdma;->baseStationId:I

    iget v4, p0, Landroid/hardware/radio/network/CellIdentityCdma;->longitude:I

    iget v5, p0, Landroid/hardware/radio/network/CellIdentityCdma;->latitude:I

    iget-object p0, p0, Landroid/hardware/radio/network/CellIdentityCdma;->operatorNames:Landroid/hardware/radio/network/OperatorInfo;

    iget-object v6, p0, Landroid/hardware/radio/network/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/radio/network/OperatorInfo;->alphaShort:Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/telephony/CellIdentityCdma;-><init>(IIIIILjava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public static blacklist convertHalCellIdentityCdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityCdma;
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2812
    :cond_4
    instance-of v1, p0, Landroid/hardware/radio/V1_0/CellIdentityCdma;

    if-eqz v1, :cond_1f

    .line 2813
    check-cast p0, Landroid/hardware/radio/V1_0/CellIdentityCdma;

    .line 2815
    new-instance v8, Landroid/telephony/CellIdentityCdma;

    iget v1, p0, Landroid/hardware/radio/V1_0/CellIdentityCdma;->networkId:I

    iget v2, p0, Landroid/hardware/radio/V1_0/CellIdentityCdma;->systemId:I

    iget v3, p0, Landroid/hardware/radio/V1_0/CellIdentityCdma;->baseStationId:I

    iget v4, p0, Landroid/hardware/radio/V1_0/CellIdentityCdma;->longitude:I

    iget v5, p0, Landroid/hardware/radio/V1_0/CellIdentityCdma;->latitude:I

    const-string v6, ""

    const-string v7, ""

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/telephony/CellIdentityCdma;-><init>(IIIIILjava/lang/String;Ljava/lang/String;)V

    return-object v8

    .line 2817
    :cond_1f
    instance-of v1, p0, Landroid/hardware/radio/V1_2/CellIdentityCdma;

    if-eqz v1, :cond_3e

    .line 2818
    check-cast p0, Landroid/hardware/radio/V1_2/CellIdentityCdma;

    .line 2820
    new-instance v8, Landroid/telephony/CellIdentityCdma;

    iget-object v0, p0, Landroid/hardware/radio/V1_2/CellIdentityCdma;->base:Landroid/hardware/radio/V1_0/CellIdentityCdma;

    iget v1, v0, Landroid/hardware/radio/V1_0/CellIdentityCdma;->networkId:I

    iget v2, v0, Landroid/hardware/radio/V1_0/CellIdentityCdma;->systemId:I

    iget v3, v0, Landroid/hardware/radio/V1_0/CellIdentityCdma;->baseStationId:I

    iget v4, v0, Landroid/hardware/radio/V1_0/CellIdentityCdma;->longitude:I

    iget v5, v0, Landroid/hardware/radio/V1_0/CellIdentityCdma;->latitude:I

    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentityCdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/telephony/CellIdentityCdma;-><init>(IIIIILjava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_3e
    return-object v0
.end method

.method public static blacklist convertHalCellIdentityGsm(Landroid/hardware/radio/network/CellIdentityGsm;)Landroid/telephony/CellIdentityGsm;
    .registers 12

    .line 2800
    new-instance v10, Landroid/telephony/CellIdentityGsm;

    iget v1, p0, Landroid/hardware/radio/network/CellIdentityGsm;->lac:I

    iget v2, p0, Landroid/hardware/radio/network/CellIdentityGsm;->cid:I

    iget v3, p0, Landroid/hardware/radio/network/CellIdentityGsm;->arfcn:I

    .line 2801
    iget-byte v0, p0, Landroid/hardware/radio/network/CellIdentityGsm;->bsic:B

    const/4 v4, -0x1

    if-ne v0, v4, :cond_10

    const v0, 0x7fffffff

    :cond_10
    move v4, v0

    iget-object v5, p0, Landroid/hardware/radio/network/CellIdentityGsm;->mcc:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/radio/network/CellIdentityGsm;->mnc:Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/radio/network/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/network/OperatorInfo;

    iget-object v7, p0, Landroid/hardware/radio/network/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/radio/network/OperatorInfo;->alphaShort:Ljava/lang/String;

    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/telephony/CellIdentityGsm;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-object v10
.end method

.method public static blacklist convertHalCellIdentityGsm(Ljava/lang/Object;)Landroid/telephony/CellIdentityGsm;
    .registers 15

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2767
    :cond_4
    instance-of v1, p0, Landroid/hardware/radio/V1_0/CellIdentityGsm;

    const v2, 0x7fffffff

    const/4 v3, -0x1

    if-eqz v1, :cond_2f

    .line 2768
    check-cast p0, Landroid/hardware/radio/V1_0/CellIdentityGsm;

    .line 2770
    new-instance v0, Landroid/telephony/CellIdentityGsm;

    iget v5, p0, Landroid/hardware/radio/V1_0/CellIdentityGsm;->lac:I

    iget v6, p0, Landroid/hardware/radio/V1_0/CellIdentityGsm;->cid:I

    iget v7, p0, Landroid/hardware/radio/V1_0/CellIdentityGsm;->arfcn:I

    .line 2771
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/CellIdentityGsm;->bsic:B

    if-ne v1, v3, :cond_1c

    move v8, v2

    goto :goto_1d

    :cond_1c
    move v8, v1

    :goto_1d
    iget-object v9, p0, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mcc:Ljava/lang/String;

    iget-object v10, p0, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mnc:Ljava/lang/String;

    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    const-string v11, ""

    const-string v12, ""

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Landroid/telephony/CellIdentityGsm;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-object v0

    .line 2773
    :cond_2f
    instance-of v1, p0, Landroid/hardware/radio/V1_2/CellIdentityGsm;

    if-eqz v1, :cond_5a

    .line 2774
    check-cast p0, Landroid/hardware/radio/V1_2/CellIdentityGsm;

    .line 2776
    new-instance v0, Landroid/telephony/CellIdentityGsm;

    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v5, v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;->lac:I

    iget v6, v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;->cid:I

    iget v7, v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;->arfcn:I

    .line 2777
    iget-byte v4, v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;->bsic:B

    if-ne v4, v3, :cond_45

    move v8, v2

    goto :goto_46

    :cond_45
    move v8, v4

    :goto_46
    iget-object v9, v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mcc:Ljava/lang/String;

    iget-object v10, v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mnc:Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v11, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v12, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Landroid/telephony/CellIdentityGsm;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-object v0

    .line 2780
    :cond_5a
    instance-of v1, p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;

    if-eqz v1, :cond_81

    .line 2781
    check-cast p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;

    .line 2783
    new-instance v0, Landroid/telephony/CellIdentityGsm;

    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v4, v1, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v5, v4, Landroid/hardware/radio/V1_0/CellIdentityGsm;->lac:I

    iget v6, v4, Landroid/hardware/radio/V1_0/CellIdentityGsm;->cid:I

    iget v7, v4, Landroid/hardware/radio/V1_0/CellIdentityGsm;->arfcn:I

    .line 2784
    iget-byte v8, v4, Landroid/hardware/radio/V1_0/CellIdentityGsm;->bsic:B

    if-ne v8, v3, :cond_71

    move v8, v2

    .line 2785
    :cond_71
    iget-object v9, v4, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mcc:Ljava/lang/String;

    iget-object v10, v4, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mnc:Ljava/lang/String;

    iget-object v1, v1, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v11, v1, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v12, v1, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    iget-object v13, p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;->additionalPlmns:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Landroid/telephony/CellIdentityGsm;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    :cond_81
    return-object v0
.end method

.method public static blacklist convertHalCellIdentityLte(Landroid/hardware/radio/network/CellIdentityLte;)Landroid/telephony/CellIdentityLte;
    .registers 15

    .line 2878
    new-instance v13, Landroid/telephony/CellIdentityLte;

    iget v1, p0, Landroid/hardware/radio/network/CellIdentityLte;->ci:I

    iget v2, p0, Landroid/hardware/radio/network/CellIdentityLte;->pci:I

    iget v3, p0, Landroid/hardware/radio/network/CellIdentityLte;->tac:I

    iget v4, p0, Landroid/hardware/radio/network/CellIdentityLte;->earfcn:I

    iget-object v5, p0, Landroid/hardware/radio/network/CellIdentityLte;->bands:[I

    iget v6, p0, Landroid/hardware/radio/network/CellIdentityLte;->bandwidth:I

    iget-object v7, p0, Landroid/hardware/radio/network/CellIdentityLte;->mcc:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/radio/network/CellIdentityLte;->mnc:Ljava/lang/String;

    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentityLte;->operatorNames:Landroid/hardware/radio/network/OperatorInfo;

    iget-object v9, v0, Landroid/hardware/radio/network/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v10, v0, Landroid/hardware/radio/network/OperatorInfo;->alphaShort:Ljava/lang/String;

    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentityLte;->additionalPlmns:[Ljava/lang/String;

    .line 2880
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    iget-object p0, p0, Landroid/hardware/radio/network/CellIdentityLte;->csgInfo:Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;

    .line 2881
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalClosedSubscriberGroupInfo(Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object v12

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/telephony/CellIdentityLte;-><init>(IIII[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v13
.end method

.method public static blacklist convertHalCellIdentityLte(Ljava/lang/Object;)Landroid/telephony/CellIdentityLte;
    .registers 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 2846
    :cond_6
    instance-of v2, v0, Landroid/hardware/radio/V1_0/CellIdentityLte;

    const/4 v3, 0x0

    if-eqz v2, :cond_30

    .line 2847
    check-cast v0, Landroid/hardware/radio/V1_0/CellIdentityLte;

    .line 2849
    new-instance v1, Landroid/telephony/CellIdentityLte;

    iget v5, v0, Landroid/hardware/radio/V1_0/CellIdentityLte;->ci:I

    iget v6, v0, Landroid/hardware/radio/V1_0/CellIdentityLte;->pci:I

    iget v7, v0, Landroid/hardware/radio/V1_0/CellIdentityLte;->tac:I

    iget v8, v0, Landroid/hardware/radio/V1_0/CellIdentityLte;->earfcn:I

    new-array v9, v3, [I

    const v10, 0x7fffffff

    iget-object v11, v0, Landroid/hardware/radio/V1_0/CellIdentityLte;->mcc:Ljava/lang/String;

    iget-object v12, v0, Landroid/hardware/radio/V1_0/CellIdentityLte;->mnc:Ljava/lang/String;

    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    const/16 v16, 0x0

    const-string v13, ""

    const-string v14, ""

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Landroid/telephony/CellIdentityLte;-><init>(IIII[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v1

    .line 2851
    :cond_30
    instance-of v2, v0, Landroid/hardware/radio/V1_2/CellIdentityLte;

    if-eqz v2, :cond_5c

    .line 2852
    check-cast v0, Landroid/hardware/radio/V1_2/CellIdentityLte;

    .line 2854
    new-instance v1, Landroid/telephony/CellIdentityLte;

    iget-object v2, v0, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v5, v2, Landroid/hardware/radio/V1_0/CellIdentityLte;->ci:I

    iget v6, v2, Landroid/hardware/radio/V1_0/CellIdentityLte;->pci:I

    iget v7, v2, Landroid/hardware/radio/V1_0/CellIdentityLte;->tac:I

    iget v8, v2, Landroid/hardware/radio/V1_0/CellIdentityLte;->earfcn:I

    new-array v9, v3, [I

    iget v10, v0, Landroid/hardware/radio/V1_2/CellIdentityLte;->bandwidth:I

    iget-object v11, v2, Landroid/hardware/radio/V1_0/CellIdentityLte;->mcc:Ljava/lang/String;

    iget-object v12, v2, Landroid/hardware/radio/V1_0/CellIdentityLte;->mnc:Ljava/lang/String;

    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v13, v0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v14, v0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    const/16 v16, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Landroid/telephony/CellIdentityLte;-><init>(IIII[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v1

    .line 2858
    :cond_5c
    instance-of v2, v0, Landroid/hardware/radio/V1_5/CellIdentityLte;

    if-eqz v2, :cond_a6

    .line 2859
    check-cast v0, Landroid/hardware/radio/V1_5/CellIdentityLte;

    .line 2861
    new-instance v14, Landroid/telephony/CellIdentityLte;

    iget-object v1, v0, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v1, v1, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget v2, v1, Landroid/hardware/radio/V1_0/CellIdentityLte;->ci:I

    iget v3, v1, Landroid/hardware/radio/V1_0/CellIdentityLte;->pci:I

    iget v4, v1, Landroid/hardware/radio/V1_0/CellIdentityLte;->tac:I

    iget v5, v1, Landroid/hardware/radio/V1_0/CellIdentityLte;->earfcn:I

    iget-object v1, v0, Landroid/hardware/radio/V1_5/CellIdentityLte;->bands:Ljava/util/ArrayList;

    .line 2862
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v6, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v6}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v6

    iget-object v1, v0, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget v7, v1, Landroid/hardware/radio/V1_2/CellIdentityLte;->bandwidth:I

    iget-object v8, v1, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    iget-object v9, v8, Landroid/hardware/radio/V1_0/CellIdentityLte;->mcc:Ljava/lang/String;

    iget-object v10, v8, Landroid/hardware/radio/V1_0/CellIdentityLte;->mnc:Ljava/lang/String;

    iget-object v1, v1, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v11, v1, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v12, v1, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    iget-object v13, v0, Landroid/hardware/radio/V1_5/CellIdentityLte;->additionalPlmns:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellIdentityLte;->optionalCsgInfo:Landroid/hardware/radio/V1_5/OptionalCsgInfo;

    .line 2865
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalClosedSubscriberGroupInfo(Landroid/hardware/radio/V1_5/OptionalCsgInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object v0

    move-object v1, v14

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v0

    invoke-direct/range {v1 .. v13}, Landroid/telephony/CellIdentityLte;-><init>(IIII[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v14

    :cond_a6
    return-object v1
.end method

.method public static blacklist convertHalCellIdentityNr(Landroid/hardware/radio/network/CellIdentityNr;)Landroid/telephony/CellIdentityNr;
    .registers 14

    .line 3002
    new-instance v12, Landroid/telephony/CellIdentityNr;

    iget v1, p0, Landroid/hardware/radio/network/CellIdentityNr;->pci:I

    iget v2, p0, Landroid/hardware/radio/network/CellIdentityNr;->tac:I

    iget v3, p0, Landroid/hardware/radio/network/CellIdentityNr;->nrarfcn:I

    iget-object v4, p0, Landroid/hardware/radio/network/CellIdentityNr;->bands:[I

    iget-object v5, p0, Landroid/hardware/radio/network/CellIdentityNr;->mcc:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/radio/network/CellIdentityNr;->mnc:Ljava/lang/String;

    iget-wide v7, p0, Landroid/hardware/radio/network/CellIdentityNr;->nci:J

    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentityNr;->operatorNames:Landroid/hardware/radio/network/OperatorInfo;

    iget-object v9, v0, Landroid/hardware/radio/network/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v10, v0, Landroid/hardware/radio/network/OperatorInfo;->alphaShort:Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/radio/network/CellIdentityNr;->additionalPlmns:[Ljava/lang/String;

    .line 3004
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/telephony/CellIdentityNr;-><init>(III[ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-object v12
.end method

.method public static blacklist convertHalCellIdentityNr(Ljava/lang/Object;)Landroid/telephony/CellIdentityNr;
    .registers 14

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2977
    :cond_4
    instance-of v1, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;

    if-eqz v1, :cond_2b

    .line 2978
    check-cast p0, Landroid/hardware/radio/V1_4/CellIdentityNr;

    .line 2980
    new-instance v12, Landroid/telephony/CellIdentityNr;

    iget v1, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->pci:I

    iget v2, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->tac:I

    iget v3, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->nrarfcn:I

    const/4 v0, 0x0

    new-array v4, v0, [I

    iget-object v5, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->mcc:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->mnc:Ljava/lang/String;

    iget-wide v7, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->nci:J

    iget-object p0, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v10, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/telephony/CellIdentityNr;-><init>(III[ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-object v12

    .line 2983
    :cond_2b
    instance-of v1, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;

    if-eqz v1, :cond_63

    .line 2984
    check-cast p0, Landroid/hardware/radio/V1_5/CellIdentityNr;

    .line 2986
    new-instance v12, Landroid/telephony/CellIdentityNr;

    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget v1, v0, Landroid/hardware/radio/V1_4/CellIdentityNr;->pci:I

    iget v2, v0, Landroid/hardware/radio/V1_4/CellIdentityNr;->tac:I

    iget v3, v0, Landroid/hardware/radio/V1_4/CellIdentityNr;->nrarfcn:I

    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;->bands:Ljava/util/ArrayList;

    .line 2987
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v5, v0, Landroid/hardware/radio/V1_4/CellIdentityNr;->mcc:Ljava/lang/String;

    iget-object v6, v0, Landroid/hardware/radio/V1_4/CellIdentityNr;->mnc:Ljava/lang/String;

    iget-wide v7, v0, Landroid/hardware/radio/V1_4/CellIdentityNr;->nci:J

    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, v0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v10, v0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    iget-object v11, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;->additionalPlmns:Ljava/util/ArrayList;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/telephony/CellIdentityNr;-><init>(III[ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-object v12

    :cond_63
    return-object v0
.end method

.method public static blacklist convertHalCellIdentityTdscdma(Landroid/hardware/radio/network/CellIdentityTdscdma;)Landroid/telephony/CellIdentityTdscdma;
    .registers 13

    .line 2964
    new-instance v11, Landroid/telephony/CellIdentityTdscdma;

    iget-object v1, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->mcc:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->mnc:Ljava/lang/String;

    iget v3, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->lac:I

    iget v4, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->cid:I

    iget v5, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->cpid:I

    iget v6, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->uarfcn:I

    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->operatorNames:Landroid/hardware/radio/network/OperatorInfo;

    iget-object v7, v0, Landroid/hardware/radio/network/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v8, v0, Landroid/hardware/radio/network/OperatorInfo;->alphaShort:Ljava/lang/String;

    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->additionalPlmns:[Ljava/lang/String;

    .line 2966
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object p0, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->csgInfo:Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;

    .line 2967
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalClosedSubscriberGroupInfo(Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityTdscdma;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v11
.end method

.method public static blacklist convertHalCellIdentityTdscdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityTdscdma;
    .registers 13

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2934
    :cond_4
    instance-of v1, p0, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    if-eqz v1, :cond_27

    .line 2935
    check-cast p0, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    .line 2937
    new-instance v11, Landroid/telephony/CellIdentityTdscdma;

    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->mcc:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->mnc:Ljava/lang/String;

    iget v3, p0, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->lac:I

    iget v4, p0, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->cid:I

    iget v5, p0, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->cpid:I

    const v6, 0x7fffffff

    .line 2938
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    const-string v7, ""

    const-string v8, ""

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityTdscdma;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v11

    .line 2939
    :cond_27
    instance-of v1, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    if-eqz v1, :cond_4d

    .line 2940
    check-cast p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    .line 2942
    new-instance v11, Landroid/telephony/CellIdentityTdscdma;

    iget-object v0, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    iget-object v1, v0, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->mcc:Ljava/lang/String;

    iget-object v2, v0, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->mnc:Ljava/lang/String;

    iget v3, v0, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->lac:I

    iget v4, v0, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->cid:I

    iget v5, v0, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->cpid:I

    iget v6, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->uarfcn:I

    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v7, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 2944
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityTdscdma;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v11

    .line 2945
    :cond_4d
    instance-of v1, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;

    if-eqz v1, :cond_82

    .line 2946
    check-cast p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;

    .line 2948
    new-instance v11, Landroid/telephony/CellIdentityTdscdma;

    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    iget-object v1, v0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    iget-object v2, v1, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->mcc:Ljava/lang/String;

    iget-object v3, v1, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->mnc:Ljava/lang/String;

    iget v4, v1, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->lac:I

    iget v5, v1, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->cid:I

    iget v6, v1, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->cpid:I

    iget v7, v0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->uarfcn:I

    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, v0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v9, v0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    iget-object v10, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->additionalPlmns:Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->optionalCsgInfo:Landroid/hardware/radio/V1_5/OptionalCsgInfo;

    .line 2951
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalClosedSubscriberGroupInfo(Landroid/hardware/radio/V1_5/OptionalCsgInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object p0

    move-object v0, v11

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, p0

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityTdscdma;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v11

    :cond_82
    return-object v0
.end method

.method public static blacklist convertHalCellIdentityWcdma(Landroid/hardware/radio/network/CellIdentityWcdma;)Landroid/telephony/CellIdentityWcdma;
    .registers 13

    .line 2921
    new-instance v11, Landroid/telephony/CellIdentityWcdma;

    iget v1, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->lac:I

    iget v2, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->cid:I

    iget v3, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->psc:I

    iget v4, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->uarfcn:I

    iget-object v5, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->mcc:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->mnc:Ljava/lang/String;

    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/network/OperatorInfo;

    iget-object v7, v0, Landroid/hardware/radio/network/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v8, v0, Landroid/hardware/radio/network/OperatorInfo;->alphaShort:Ljava/lang/String;

    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->additionalPlmns:[Ljava/lang/String;

    .line 2923
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object p0, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->csgInfo:Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;

    .line 2924
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalClosedSubscriberGroupInfo(Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityWcdma;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v11
.end method

.method public static blacklist convertHalCellIdentityWcdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityWcdma;
    .registers 13

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2891
    :cond_4
    instance-of v1, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    if-eqz v1, :cond_27

    .line 2892
    check-cast p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    .line 2894
    new-instance v11, Landroid/telephony/CellIdentityWcdma;

    iget v1, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    iget v2, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->cid:I

    iget v3, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->psc:I

    iget v4, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->uarfcn:I

    iget-object v5, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    const/4 v10, 0x0

    const-string v7, ""

    const-string v8, ""

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityWcdma;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v11

    .line 2896
    :cond_27
    instance-of v1, p0, Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    if-eqz v1, :cond_4e

    .line 2897
    check-cast p0, Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    .line 2899
    new-instance v11, Landroid/telephony/CellIdentityWcdma;

    iget-object v0, p0, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v1, v0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    iget v2, v0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->cid:I

    iget v3, v0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->psc:I

    iget v4, v0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->uarfcn:I

    iget-object v5, v0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    iget-object v6, v0, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v7, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityWcdma;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v11

    .line 2902
    :cond_4e
    instance-of v1, p0, Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    if-eqz v1, :cond_83

    .line 2903
    check-cast p0, Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    .line 2905
    new-instance v11, Landroid/telephony/CellIdentityWcdma;

    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v1, v0, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    iget v2, v1, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    iget v3, v1, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->cid:I

    iget v4, v1, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->psc:I

    iget v5, v1, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->uarfcn:I

    iget-object v6, v1, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    iget-object v7, v1, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v8, v0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v9, v0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    iget-object v10, p0, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->additionalPlmns:Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->optionalCsgInfo:Landroid/hardware/radio/V1_5/OptionalCsgInfo;

    .line 2908
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalClosedSubscriberGroupInfo(Landroid/hardware/radio/V1_5/OptionalCsgInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object p0

    move-object v0, v11

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, p0

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityWcdma;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v11

    :cond_83
    return-object v0
.end method

.method private static blacklist convertHalCellInfo(Landroid/hardware/radio/network/CellInfo;J)Landroid/telephony/CellInfo;
    .registers 12

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2605
    :cond_4
    iget v2, p0, Landroid/hardware/radio/network/CellInfo;->connectionStatus:I

    .line 2606
    iget-boolean v3, p0, Landroid/hardware/radio/network/CellInfo;->registered:Z

    .line 2607
    iget-object v1, p0, Landroid/hardware/radio/network/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    invoke-virtual {v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getTag()I

    move-result v1

    if-eqz v1, :cond_a9

    const/4 v4, 0x1

    if-eq v1, v4, :cond_8f

    const/4 v4, 0x2

    if-eq v1, v4, :cond_75

    const/4 v4, 0x3

    if-eq v1, v4, :cond_56

    const/4 v4, 0x4

    if-eq v1, v4, :cond_3c

    const/4 v4, 0x5

    if-eq v1, v4, :cond_20

    return-object v0

    .line 2614
    :cond_20
    iget-object p0, p0, Landroid/hardware/radio/network/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    .line 2615
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getCdma()Landroid/hardware/radio/network/CellInfoCdma;

    move-result-object p0

    .line 2616
    new-instance v0, Landroid/telephony/CellInfoCdma;

    iget-object v1, p0, Landroid/hardware/radio/network/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/network/CellIdentityCdma;

    .line 2617
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityCdma(Landroid/hardware/radio/network/CellIdentityCdma;)Landroid/telephony/CellIdentityCdma;

    move-result-object v6

    iget-object v1, p0, Landroid/hardware/radio/network/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/network/CdmaSignalStrength;

    iget-object p0, p0, Landroid/hardware/radio/network/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/network/EvdoSignalStrength;

    .line 2618
    invoke-static {v1, p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/network/CdmaSignalStrength;Landroid/hardware/radio/network/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v7

    move-object v1, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Landroid/telephony/CellInfoCdma;-><init>(IZJLandroid/telephony/CellIdentityCdma;Landroid/telephony/CellSignalStrengthCdma;)V

    return-object v0

    .line 2638
    :cond_3c
    iget-object p0, p0, Landroid/hardware/radio/network/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getNr()Landroid/hardware/radio/network/CellInfoNr;

    move-result-object p0

    .line 2639
    new-instance v0, Landroid/telephony/CellInfoNr;

    iget-object v1, p0, Landroid/hardware/radio/network/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/network/CellIdentityNr;

    .line 2640
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityNr(Landroid/hardware/radio/network/CellIdentityNr;)Landroid/telephony/CellIdentityNr;

    move-result-object v6

    iget-object p0, p0, Landroid/hardware/radio/network/CellInfoNr;->signalStrengthNr:Landroid/hardware/radio/network/NrSignalStrength;

    .line 2641
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalNrSignalStrength(Landroid/hardware/radio/network/NrSignalStrength;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object v7

    move-object v1, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Landroid/telephony/CellInfoNr;-><init>(IZJLandroid/telephony/CellIdentityNr;Landroid/telephony/CellSignalStrengthNr;)V

    return-object v0

    .line 2621
    :cond_56
    iget-object p0, p0, Landroid/hardware/radio/network/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getLte()Landroid/hardware/radio/network/CellInfoLte;

    move-result-object p0

    .line 2622
    new-instance v0, Landroid/telephony/CellInfoLte;

    iget-object v1, p0, Landroid/hardware/radio/network/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/network/CellIdentityLte;

    .line 2623
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityLte(Landroid/hardware/radio/network/CellIdentityLte;)Landroid/telephony/CellIdentityLte;

    move-result-object v6

    iget-object p0, p0, Landroid/hardware/radio/network/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/network/LteSignalStrength;

    .line 2624
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Landroid/hardware/radio/network/LteSignalStrength;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v7

    new-instance v8, Landroid/telephony/CellConfigLte;

    invoke-direct {v8}, Landroid/telephony/CellConfigLte;-><init>()V

    move-object v1, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v8}, Landroid/telephony/CellInfoLte;-><init>(IZJLandroid/telephony/CellIdentityLte;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellConfigLte;)V

    return-object v0

    .line 2632
    :cond_75
    iget-object p0, p0, Landroid/hardware/radio/network/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    .line 2633
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getTdscdma()Landroid/hardware/radio/network/CellInfoTdscdma;

    move-result-object p0

    .line 2634
    new-instance v0, Landroid/telephony/CellInfoTdscdma;

    iget-object v1, p0, Landroid/hardware/radio/network/CellInfoTdscdma;->cellIdentityTdscdma:Landroid/hardware/radio/network/CellIdentityTdscdma;

    .line 2635
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityTdscdma(Landroid/hardware/radio/network/CellIdentityTdscdma;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object v6

    iget-object p0, p0, Landroid/hardware/radio/network/CellInfoTdscdma;->signalStrengthTdscdma:Landroid/hardware/radio/network/TdscdmaSignalStrength;

    .line 2636
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Landroid/hardware/radio/network/TdscdmaSignalStrength;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v7

    move-object v1, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Landroid/telephony/CellInfoTdscdma;-><init>(IZJLandroid/telephony/CellIdentityTdscdma;Landroid/telephony/CellSignalStrengthTdscdma;)V

    return-object v0

    .line 2626
    :cond_8f
    iget-object p0, p0, Landroid/hardware/radio/network/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    .line 2627
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getWcdma()Landroid/hardware/radio/network/CellInfoWcdma;

    move-result-object p0

    .line 2628
    new-instance v0, Landroid/telephony/CellInfoWcdma;

    iget-object v1, p0, Landroid/hardware/radio/network/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/network/CellIdentityWcdma;

    .line 2629
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityWcdma(Landroid/hardware/radio/network/CellIdentityWcdma;)Landroid/telephony/CellIdentityWcdma;

    move-result-object v6

    iget-object p0, p0, Landroid/hardware/radio/network/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/network/WcdmaSignalStrength;

    .line 2630
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalWcdmaSignalStrength(Landroid/hardware/radio/network/WcdmaSignalStrength;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v7

    move-object v1, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Landroid/telephony/CellInfoWcdma;-><init>(IZJLandroid/telephony/CellIdentityWcdma;Landroid/telephony/CellSignalStrengthWcdma;)V

    return-object v0

    .line 2609
    :cond_a9
    iget-object p0, p0, Landroid/hardware/radio/network/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getGsm()Landroid/hardware/radio/network/CellInfoGsm;

    move-result-object p0

    .line 2610
    new-instance v0, Landroid/telephony/CellInfoGsm;

    iget-object v1, p0, Landroid/hardware/radio/network/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/network/CellIdentityGsm;

    .line 2611
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityGsm(Landroid/hardware/radio/network/CellIdentityGsm;)Landroid/telephony/CellIdentityGsm;

    move-result-object v6

    iget-object p0, p0, Landroid/hardware/radio/network/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/network/GsmSignalStrength;

    .line 2612
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/network/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v7

    move-object v1, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Landroid/telephony/CellInfoGsm;-><init>(IZJLandroid/telephony/CellIdentityGsm;Landroid/telephony/CellSignalStrengthGsm;)V

    return-object v0
.end method

.method private static blacklist convertHalCellInfo(Ljava/lang/Object;J)Landroid/telephony/CellInfo;
    .registers 28

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 2338
    :cond_6
    instance-of v2, v0, Landroid/hardware/radio/V1_0/CellInfo;

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v2, :cond_e3

    .line 2339
    check-cast v0, Landroid/hardware/radio/V1_0/CellInfo;

    const v2, 0x7fffffff

    .line 2342
    iget-boolean v9, v0, Landroid/hardware/radio/V1_0/CellInfo;->registered:Z

    .line 2343
    iget v10, v0, Landroid/hardware/radio/V1_0/CellInfo;->cellInfoType:I

    if-eq v10, v8, :cond_b1

    if-eq v10, v7, :cond_8e

    if-eq v10, v6, :cond_68

    if-eq v10, v5, :cond_46

    if-eq v10, v4, :cond_24

    return-object v1

    .line 2372
    :cond_24
    iget-object v0, v0, Landroid/hardware/radio/V1_0/CellInfo;->tdscdma:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/V1_0/CellInfoTdscdma;

    .line 2373
    iget-object v3, v0, Landroid/hardware/radio/V1_0/CellInfoTdscdma;->cellIdentityTdscdma:Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityTdscdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object v3

    .line 2374
    iget-object v0, v0, Landroid/hardware/radio/V1_0/CellInfoTdscdma;->signalStrengthTdscdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v0

    move-object v6, v0

    move-object v0, v1

    move-object v5, v0

    move-object v7, v5

    move-object v8, v7

    move-object v10, v8

    move-object v11, v10

    move-object v14, v11

    move-object v12, v3

    move v13, v4

    move-object v3, v14

    move-object v4, v3

    goto/16 :goto_d0

    .line 2366
    :cond_46
    iget-object v0, v0, Landroid/hardware/radio/V1_0/CellInfo;->wcdma:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/V1_0/CellInfoWcdma;

    .line 2367
    iget-object v3, v0, Landroid/hardware/radio/V1_0/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityWcdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    .line 2368
    iget-object v0, v0, Landroid/hardware/radio/V1_0/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/V1_0/WcdmaSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalWcdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    move-object v4, v1

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v10, v8

    move-object v12, v10

    move-object v14, v12

    move-object v11, v3

    move v13, v5

    move-object v5, v0

    move-object v0, v14

    move-object v3, v0

    goto/16 :goto_d0

    .line 2359
    :cond_68
    iget-object v0, v0, Landroid/hardware/radio/V1_0/CellInfo;->lte:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/V1_0/CellInfoLte;

    .line 2360
    iget-object v3, v0, Landroid/hardware/radio/V1_0/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_0/CellIdentityLte;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityLte(Ljava/lang/Object;)Landroid/telephony/CellIdentityLte;

    move-result-object v3

    .line 2361
    iget-object v0, v0, Landroid/hardware/radio/V1_0/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    .line 2362
    new-instance v4, Landroid/telephony/CellConfigLte;

    invoke-direct {v4}, Landroid/telephony/CellConfigLte;-><init>()V

    move-object v5, v1

    move-object v7, v5

    move-object v8, v7

    move-object v11, v8

    move-object v12, v11

    move-object v10, v3

    move-object v14, v4

    move v13, v6

    move-object v4, v0

    move-object v0, v12

    move-object v3, v0

    move-object v6, v3

    goto :goto_d0

    .line 2352
    :cond_8e
    iget-object v0, v0, Landroid/hardware/radio/V1_0/CellInfo;->cdma:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/V1_0/CellInfoCdma;

    .line 2353
    iget-object v3, v0, Landroid/hardware/radio/V1_0/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_0/CellIdentityCdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityCdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityCdma;

    move-result-object v3

    .line 2354
    iget-object v4, v0, Landroid/hardware/radio/V1_0/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v0, v0, Landroid/hardware/radio/V1_0/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-static {v4, v0}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v10, v6

    move-object v11, v10

    move-object v12, v11

    move-object v14, v12

    move-object v8, v3

    move v13, v7

    move-object v3, v0

    move-object v0, v14

    move-object v7, v0

    goto :goto_d0

    .line 2346
    :cond_b1
    iget-object v0, v0, Landroid/hardware/radio/V1_0/CellInfo;->gsm:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/V1_0/CellInfoGsm;

    .line 2347
    iget-object v3, v0, Landroid/hardware/radio/V1_0/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityGsm(Ljava/lang/Object;)Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    .line 2348
    iget-object v0, v0, Landroid/hardware/radio/V1_0/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/V1_0/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v10, v6

    move-object v11, v10

    move-object v12, v11

    move-object v14, v12

    move-object v7, v3

    move v13, v8

    move-object v3, v14

    move-object v8, v3

    :goto_d0
    move-object/from16 v23, v0

    move-object/from16 v22, v7

    move-object v7, v8

    move-object v0, v11

    move-object v15, v12

    move-object/from16 v16, v14

    move-object v8, v3

    move-object v3, v6

    move v11, v9

    move-object v14, v10

    move v10, v2

    move-object v6, v4

    move-object v2, v1

    move-object v4, v2

    goto/16 :goto_488

    .line 2378
    :cond_e3
    instance-of v2, v0, Landroid/hardware/radio/V1_2/CellInfo;

    if-eqz v2, :cond_1bc

    .line 2379
    check-cast v0, Landroid/hardware/radio/V1_2/CellInfo;

    .line 2381
    iget v2, v0, Landroid/hardware/radio/V1_2/CellInfo;->connectionStatus:I

    .line 2382
    iget-boolean v9, v0, Landroid/hardware/radio/V1_2/CellInfo;->registered:Z

    .line 2383
    iget v10, v0, Landroid/hardware/radio/V1_2/CellInfo;->cellInfoType:I

    if-eq v10, v8, :cond_185

    if-eq v10, v7, :cond_162

    if-eq v10, v6, :cond_13c

    if-eq v10, v5, :cond_11a

    if-eq v10, v4, :cond_fa

    return-object v1

    .line 2412
    :cond_fa
    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfo;->tdscdma:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/V1_2/CellInfoTdscdma;

    .line 2413
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfoTdscdma;->cellIdentityTdscdma:Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityTdscdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object v3

    .line 2414
    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfoTdscdma;->signalStrengthTdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v0

    move-object v7, v0

    move-object v0, v1

    move-object v5, v0

    move-object v6, v5

    move-object v8, v6

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v14, v12

    move-object v13, v3

    goto/16 :goto_1a3

    .line 2406
    :cond_11a
    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfo;->wcdma:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/V1_2/CellInfoWcdma;

    .line 2407
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityWcdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    .line 2408
    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalWcdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    move-object v6, v0

    move-object v0, v1

    move-object v7, v0

    move-object v8, v7

    move-object v10, v8

    move-object v11, v10

    move-object v13, v11

    move-object v14, v13

    move-object v12, v3

    move v4, v5

    move-object v3, v14

    move-object v5, v3

    goto/16 :goto_1a4

    .line 2399
    :cond_13c
    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfo;->lte:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/V1_2/CellInfoLte;

    .line 2400
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityLte(Ljava/lang/Object;)Landroid/telephony/CellIdentityLte;

    move-result-object v3

    .line 2401
    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    .line 2402
    new-instance v4, Landroid/telephony/CellConfigLte;

    invoke-direct {v4}, Landroid/telephony/CellConfigLte;-><init>()V

    move-object v5, v0

    move-object v0, v1

    move-object v7, v0

    move-object v8, v7

    move-object v10, v8

    move-object v12, v10

    move-object v13, v12

    move-object v11, v3

    move-object v14, v4

    move v4, v6

    move-object v3, v13

    move-object v6, v3

    goto :goto_1a4

    .line 2392
    :cond_162
    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfo;->cdma:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/V1_2/CellInfoCdma;

    .line 2393
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_2/CellIdentityCdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityCdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityCdma;

    move-result-object v3

    .line 2394
    iget-object v4, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-static {v4, v0}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    move-object v5, v1

    move-object v6, v5

    move-object v8, v6

    move-object v11, v8

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v10, v3

    move v4, v7

    move-object v3, v0

    move-object v0, v14

    move-object v7, v0

    goto :goto_1a4

    .line 2386
    :cond_185
    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfo;->gsm:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/V1_2/CellInfoGsm;

    .line 2387
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityGsm(Ljava/lang/Object;)Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    .line 2388
    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/V1_0/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    move-object v5, v1

    move-object v6, v5

    move-object v7, v6

    move-object v10, v7

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move v4, v8

    move-object v8, v3

    :goto_1a3
    move-object v3, v14

    :goto_1a4
    move-object/from16 v23, v0

    move-object/from16 v22, v8

    move-object v0, v12

    move-object v15, v13

    move-object/from16 v16, v14

    move-object v8, v3

    move v13, v4

    move-object v3, v7

    move-object v7, v10

    move-object v14, v11

    move-object v4, v1

    move v10, v2

    move v11, v9

    move-object v2, v4

    move-object/from16 v24, v6

    move-object v6, v5

    move-object/from16 v5, v24

    goto/16 :goto_488

    .line 2418
    :cond_1bc
    instance-of v2, v0, Landroid/hardware/radio/V1_4/CellInfo;

    const/4 v3, 0x6

    if-eqz v2, :cond_2c9

    .line 2419
    check-cast v0, Landroid/hardware/radio/V1_4/CellInfo;

    .line 2421
    iget v2, v0, Landroid/hardware/radio/V1_4/CellInfo;->connectionStatus:I

    .line 2422
    iget-boolean v9, v0, Landroid/hardware/radio/V1_4/CellInfo;->isRegistered:Z

    .line 2423
    iget-object v10, v0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v10}, Landroid/hardware/radio/V1_4/CellInfo$Info;->getDiscriminator()B

    move-result v10

    if-eqz v10, :cond_297

    if-eq v10, v8, :cond_272

    if-eq v10, v7, :cond_250

    if-eq v10, v6, :cond_22c

    if-eq v10, v5, :cond_1fe

    if-eq v10, v4, :cond_1da

    return-object v1

    .line 2458
    :cond_1da
    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->nr()Landroid/hardware/radio/V1_4/CellInfoNr;

    move-result-object v0

    .line 2459
    iget-object v4, v0, Landroid/hardware/radio/V1_4/CellInfoNr;->cellidentity:Landroid/hardware/radio/V1_4/CellIdentityNr;

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityNr(Ljava/lang/Object;)Landroid/telephony/CellIdentityNr;

    move-result-object v4

    .line 2460
    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellInfoNr;->signalStrength:Landroid/hardware/radio/V1_4/NrSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalNrSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object v0

    move-object v6, v1

    move-object v8, v6

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move v5, v3

    move-object v7, v4

    move-object v3, v0

    move-object/from16 v0, v16

    move-object v4, v0

    goto/16 :goto_2b8

    .line 2439
    :cond_1fe
    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->lte()Landroid/hardware/radio/V1_4/CellInfoLte;

    move-result-object v0

    .line 2440
    iget-object v3, v0, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityLte(Ljava/lang/Object;)Landroid/telephony/CellIdentityLte;

    move-result-object v3

    .line 2441
    iget-object v4, v0, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v4, v4, Landroid/hardware/radio/V1_2/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v4

    .line 2442
    new-instance v5, Landroid/telephony/CellConfigLte;

    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellInfoLte;->cellConfig:Landroid/hardware/radio/V1_4/CellConfigLte;

    iget-boolean v0, v0, Landroid/hardware/radio/V1_4/CellConfigLte;->isEndcAvailable:Z

    invoke-direct {v5, v0}, Landroid/telephony/CellConfigLte;-><init>(Z)V

    move-object v0, v1

    move-object v7, v0

    move-object v8, v7

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v14, v12

    move-object v15, v14

    move-object v13, v3

    move-object/from16 v16, v5

    move v5, v6

    move-object v3, v15

    move-object v6, v4

    goto :goto_24d

    .line 2452
    :cond_22c
    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->tdscdma()Landroid/hardware/radio/V1_2/CellInfoTdscdma;

    move-result-object v0

    .line 2453
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfoTdscdma;->cellIdentityTdscdma:Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityTdscdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object v3

    .line 2454
    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfoTdscdma;->signalStrengthTdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v0

    move-object v10, v0

    move-object v0, v1

    move-object v6, v0

    move-object v7, v6

    move-object v8, v7

    move-object v11, v8

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v16, v14

    move-object v15, v3

    move v5, v4

    move-object/from16 v3, v16

    :goto_24d
    move-object v4, v3

    goto/16 :goto_2b8

    .line 2446
    :cond_250
    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->wcdma()Landroid/hardware/radio/V1_2/CellInfoWcdma;

    move-result-object v0

    .line 2447
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityWcdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    .line 2448
    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalWcdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    move-object v8, v0

    move-object v0, v1

    move-object v4, v0

    move-object v6, v4

    move-object v7, v6

    move-object v10, v7

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v15, v13

    move-object/from16 v16, v15

    move-object v14, v3

    move-object/from16 v3, v16

    goto :goto_2b8

    .line 2432
    :cond_272
    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->cdma()Landroid/hardware/radio/V1_2/CellInfoCdma;

    move-result-object v0

    .line 2433
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_2/CellIdentityCdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityCdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityCdma;

    move-result-object v3

    .line 2434
    iget-object v4, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-static {v4, v0}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    move-object v4, v0

    move-object v0, v1

    move-object v6, v0

    move-object v8, v6

    move-object v10, v8

    move-object v11, v10

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object v12, v3

    move v5, v7

    move-object/from16 v3, v16

    move-object v7, v3

    goto :goto_2b8

    .line 2426
    :cond_297
    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->gsm()Landroid/hardware/radio/V1_2/CellInfoGsm;

    move-result-object v0

    .line 2427
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityGsm(Ljava/lang/Object;)Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    .line 2428
    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/V1_0/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    move-object v4, v1

    move-object v6, v4

    move-object v7, v6

    move-object v10, v7

    move-object v12, v10

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object v11, v3

    move v5, v8

    move-object/from16 v3, v16

    move-object v8, v3

    :goto_2b8
    move-object/from16 v23, v0

    move-object/from16 v22, v11

    move-object v0, v14

    move v11, v9

    move-object v14, v13

    move v13, v5

    move-object v5, v8

    move-object v8, v4

    move-object v4, v3

    move-object v3, v10

    move v10, v2

    move-object v2, v7

    move-object v7, v12

    goto/16 :goto_488

    .line 2464
    :cond_2c9
    instance-of v2, v0, Landroid/hardware/radio/V1_5/CellInfo;

    if-eqz v2, :cond_3cf

    .line 2465
    check-cast v0, Landroid/hardware/radio/V1_5/CellInfo;

    .line 2467
    iget v2, v0, Landroid/hardware/radio/V1_5/CellInfo;->connectionStatus:I

    .line 2468
    iget-boolean v9, v0, Landroid/hardware/radio/V1_5/CellInfo;->registered:Z

    .line 2469
    iget-object v10, v0, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v10}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->getDiscriminator()B

    move-result v10

    if-eqz v10, :cond_39b

    if-eq v10, v8, :cond_379

    if-eq v10, v7, :cond_356

    if-eq v10, v6, :cond_330

    if-eq v10, v5, :cond_30c

    if-eq v10, v4, :cond_2e6

    return-object v1

    .line 2480
    :cond_2e6
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->cdma()Landroid/hardware/radio/V1_2/CellInfoCdma;

    move-result-object v0

    .line 2481
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_2/CellIdentityCdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityCdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityCdma;

    move-result-object v3

    .line 2482
    iget-object v4, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-static {v4, v0}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    :goto_2fa
    move-object v4, v1

    move-object v6, v4

    move-object v8, v6

    move-object v10, v8

    move-object v11, v10

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object v12, v3

    move v5, v7

    move-object v3, v0

    move-object/from16 v0, v16

    move-object v7, v0

    goto/16 :goto_3bc

    .line 2512
    :cond_30c
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->nr()Landroid/hardware/radio/V1_5/CellInfoNr;

    move-result-object v0

    .line 2513
    iget-object v4, v0, Landroid/hardware/radio/V1_5/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityNr(Ljava/lang/Object;)Landroid/telephony/CellIdentityNr;

    move-result-object v4

    .line 2514
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfoNr;->signalStrengthNr:Landroid/hardware/radio/V1_4/NrSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalNrSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object v0

    :goto_31e
    move-object v6, v1

    move-object v7, v6

    move-object v8, v7

    move-object v10, v8

    move-object v12, v10

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move v5, v3

    move-object v11, v4

    move-object v4, v0

    move-object/from16 v0, v16

    move-object v3, v0

    goto/16 :goto_3bc

    .line 2488
    :cond_330
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->lte()Landroid/hardware/radio/V1_5/CellInfoLte;

    move-result-object v0

    .line 2489
    iget-object v3, v0, Landroid/hardware/radio/V1_5/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityLte(Ljava/lang/Object;)Landroid/telephony/CellIdentityLte;

    move-result-object v3

    .line 2490
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    .line 2491
    new-instance v4, Landroid/telephony/CellConfigLte;

    invoke-direct {v4}, Landroid/telephony/CellConfigLte;-><init>()V

    move-object v7, v1

    move-object v8, v7

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v14, v12

    move-object v15, v14

    move-object v13, v3

    move-object/from16 v16, v4

    move v5, v6

    move-object v6, v0

    move-object v0, v15

    move-object v3, v0

    goto :goto_377

    .line 2504
    :cond_356
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    .line 2505
    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->tdscdma()Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    move-result-object v0

    .line 2506
    iget-object v3, v0, Landroid/hardware/radio/V1_5/CellInfoTdscdma;->cellIdentityTdscdma:Landroid/hardware/radio/V1_5/CellIdentityTdscdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityTdscdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object v3

    .line 2507
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfoTdscdma;->signalStrengthTdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v0

    move-object v8, v0

    move-object v0, v1

    move-object v6, v0

    move-object v7, v6

    move-object v10, v7

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v16, v14

    move-object v15, v3

    move v5, v4

    move-object/from16 v3, v16

    :goto_377
    move-object v4, v3

    goto :goto_3bc

    .line 2496
    :cond_379
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    .line 2497
    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->wcdma()Landroid/hardware/radio/V1_5/CellInfoWcdma;

    move-result-object v0

    .line 2498
    iget-object v3, v0, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityWcdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    .line 2499
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalWcdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    :goto_38b
    move-object v7, v0

    move-object v0, v1

    move-object v4, v0

    move-object v6, v4

    move-object v8, v6

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v15, v13

    move-object/from16 v16, v15

    move-object v14, v3

    move-object/from16 v3, v16

    goto :goto_3bc

    .line 2473
    :cond_39b
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->gsm()Landroid/hardware/radio/V1_5/CellInfoGsm;

    move-result-object v0

    .line 2474
    iget-object v3, v0, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityGsm(Ljava/lang/Object;)Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    .line 2475
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/V1_0/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    :goto_3ad
    move-object v4, v1

    move-object v6, v4

    move-object v7, v6

    move-object v11, v7

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object v10, v3

    move v5, v8

    move-object/from16 v3, v16

    move-object v8, v3

    :goto_3bc
    move-object/from16 v23, v0

    move-object/from16 v22, v10

    move-object v0, v14

    move v10, v2

    move-object v2, v11

    move-object v14, v13

    move v13, v5

    move-object v5, v7

    move v11, v9

    move-object v7, v12

    move-object/from16 v24, v8

    move-object v8, v3

    move-object/from16 v3, v24

    goto/16 :goto_488

    .line 2518
    :cond_3cf
    instance-of v2, v0, Landroid/hardware/radio/V1_6/CellInfo;

    if-eqz v2, :cond_4d0

    .line 2519
    check-cast v0, Landroid/hardware/radio/V1_6/CellInfo;

    .line 2521
    iget v2, v0, Landroid/hardware/radio/V1_6/CellInfo;->connectionStatus:I

    .line 2522
    iget-boolean v9, v0, Landroid/hardware/radio/V1_6/CellInfo;->registered:Z

    .line 2523
    iget-object v10, v0, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v10}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->getDiscriminator()B

    move-result v10

    if-eqz v10, :cond_474

    if-eq v10, v8, :cond_460

    if-eq v10, v7, :cond_43d

    if-eq v10, v6, :cond_416

    if-eq v10, v5, :cond_402

    if-eq v10, v4, :cond_3ec

    return-object v1

    .line 2534
    :cond_3ec
    iget-object v0, v0, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->cdma()Landroid/hardware/radio/V1_2/CellInfoCdma;

    move-result-object v0

    .line 2535
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_2/CellIdentityCdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityCdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityCdma;

    move-result-object v3

    .line 2536
    iget-object v4, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-static {v4, v0}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    goto/16 :goto_2fa

    .line 2566
    :cond_402
    iget-object v0, v0, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->nr()Landroid/hardware/radio/V1_6/CellInfoNr;

    move-result-object v0

    .line 2567
    iget-object v4, v0, Landroid/hardware/radio/V1_6/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityNr(Ljava/lang/Object;)Landroid/telephony/CellIdentityNr;

    move-result-object v4

    .line 2568
    iget-object v0, v0, Landroid/hardware/radio/V1_6/CellInfoNr;->signalStrengthNr:Landroid/hardware/radio/V1_6/NrSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalNrSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object v0

    goto/16 :goto_31e

    .line 2542
    :cond_416
    iget-object v0, v0, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->lte()Landroid/hardware/radio/V1_6/CellInfoLte;

    move-result-object v0

    .line 2543
    iget-object v3, v0, Landroid/hardware/radio/V1_6/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityLte(Ljava/lang/Object;)Landroid/telephony/CellIdentityLte;

    move-result-object v3

    .line 2544
    iget-object v0, v0, Landroid/hardware/radio/V1_6/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_6/LteSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    .line 2545
    new-instance v4, Landroid/telephony/CellConfigLte;

    invoke-direct {v4}, Landroid/telephony/CellConfigLte;-><init>()V

    move-object v7, v1

    move-object v8, v7

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v14, v12

    move-object v15, v14

    move-object v13, v3

    move-object/from16 v16, v4

    move v5, v6

    move-object v6, v0

    move-object v0, v15

    move-object v3, v0

    goto/16 :goto_377

    .line 2558
    :cond_43d
    iget-object v0, v0, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    .line 2559
    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->tdscdma()Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    move-result-object v0

    .line 2560
    iget-object v3, v0, Landroid/hardware/radio/V1_5/CellInfoTdscdma;->cellIdentityTdscdma:Landroid/hardware/radio/V1_5/CellIdentityTdscdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityTdscdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object v3

    .line 2561
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfoTdscdma;->signalStrengthTdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v0

    move-object v8, v0

    move-object v0, v1

    move-object v6, v0

    move-object v7, v6

    move-object v10, v7

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v16, v14

    move-object v15, v3

    move v5, v4

    move-object/from16 v3, v16

    goto/16 :goto_377

    .line 2550
    :cond_460
    iget-object v0, v0, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    .line 2551
    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->wcdma()Landroid/hardware/radio/V1_5/CellInfoWcdma;

    move-result-object v0

    .line 2552
    iget-object v3, v0, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityWcdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    .line 2553
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalWcdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    goto/16 :goto_38b

    .line 2527
    :cond_474
    iget-object v0, v0, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->gsm()Landroid/hardware/radio/V1_5/CellInfoGsm;

    move-result-object v0

    .line 2528
    iget-object v3, v0, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityGsm(Ljava/lang/Object;)Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    .line 2529
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/V1_0/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    goto/16 :goto_3ad

    :goto_488
    packed-switch v13, :pswitch_data_4d2

    return-object v1

    .line 2589
    :pswitch_48c
    new-instance v0, Landroid/telephony/CellInfoNr;

    move-object v9, v0

    move-wide/from16 v12, p1

    move-object v14, v2

    move-object v15, v4

    invoke-direct/range {v9 .. v15}, Landroid/telephony/CellInfoNr;-><init>(IZJLandroid/telephony/CellIdentityNr;Landroid/telephony/CellSignalStrengthNr;)V

    return-object v0

    .line 2586
    :pswitch_497
    new-instance v0, Landroid/telephony/CellInfoTdscdma;

    move-object v9, v0

    move-wide/from16 v12, p1

    move-object v14, v15

    move-object v15, v3

    invoke-direct/range {v9 .. v15}, Landroid/telephony/CellInfoTdscdma;-><init>(IZJLandroid/telephony/CellIdentityTdscdma;Landroid/telephony/CellSignalStrengthTdscdma;)V

    return-object v0

    .line 2584
    :pswitch_4a2
    new-instance v1, Landroid/telephony/CellInfoWcdma;

    move-object v9, v1

    move-wide/from16 v12, p1

    move-object v14, v0

    move-object v15, v5

    invoke-direct/range {v9 .. v15}, Landroid/telephony/CellInfoWcdma;-><init>(IZJLandroid/telephony/CellIdentityWcdma;Landroid/telephony/CellSignalStrengthWcdma;)V

    return-object v1

    .line 2582
    :pswitch_4ad
    new-instance v0, Landroid/telephony/CellInfoLte;

    move-object v9, v0

    move-wide/from16 v12, p1

    move-object v15, v6

    invoke-direct/range {v9 .. v16}, Landroid/telephony/CellInfoLte;-><init>(IZJLandroid/telephony/CellIdentityLte;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellConfigLte;)V

    return-object v0

    .line 2580
    :pswitch_4b7
    new-instance v0, Landroid/telephony/CellInfoCdma;

    move-object v2, v0

    move v3, v10

    move v4, v11

    move-wide/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Landroid/telephony/CellInfoCdma;-><init>(IZJLandroid/telephony/CellIdentityCdma;Landroid/telephony/CellSignalStrengthCdma;)V

    return-object v0

    .line 2578
    :pswitch_4c2
    new-instance v0, Landroid/telephony/CellInfoGsm;

    move-object/from16 v17, v0

    move/from16 v18, v10

    move/from16 v19, v11

    move-wide/from16 v20, p1

    invoke-direct/range {v17 .. v23}, Landroid/telephony/CellInfoGsm;-><init>(IZJLandroid/telephony/CellIdentityGsm;Landroid/telephony/CellSignalStrengthGsm;)V

    return-object v0

    :cond_4d0
    return-object v1

    nop

    :pswitch_data_4d2
    .packed-switch 0x1
        :pswitch_4c2
        :pswitch_4b7
        :pswitch_4ad
        :pswitch_4a2
        :pswitch_497
        :pswitch_48c
    .end packed-switch
.end method

.method public static blacklist convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 2289
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2290
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    return-object v0

    .line 2291
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 2292
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2293
    invoke-static {v3, v1, v2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfo(Ljava/lang/Object;J)Landroid/telephony/CellInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_2a
    return-object v0
.end method

.method public static blacklist convertHalCellInfoList([Landroid/hardware/radio/network/CellInfo;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/radio/network/CellInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 2305
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2306
    array-length v1, p0

    if-nez v1, :cond_a

    return-object v0

    .line 2307
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 2308
    array-length v3, p0

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v3, :cond_1e

    aget-object v5, p0, v4

    .line 2309
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfo(Landroid/hardware/radio/network/CellInfo;J)Landroid/telephony/CellInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_1e
    return-object v0
.end method

.method private static blacklist convertHalClosedSubscriberGroupInfo(Landroid/hardware/radio/V1_5/OptionalCsgInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;
    .registers 4

    .line 3316
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/OptionalCsgInfo;->getDiscriminator()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    .line 3318
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/OptionalCsgInfo;->csgInfo()Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;

    move-result-object p0

    goto :goto_e

    :cond_d
    move-object p0, v1

    :goto_e
    if-nez p0, :cond_11

    return-object v1

    .line 3320
    :cond_11
    new-instance v0, Landroid/telephony/ClosedSubscriberGroupInfo;

    iget-boolean v1, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIndication:Z

    iget-object v2, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->homeNodebName:Ljava/lang/String;

    iget p0, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIdentity:I

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/ClosedSubscriberGroupInfo;-><init>(ZLjava/lang/String;I)V

    return-object v0
.end method

.method private static blacklist convertHalClosedSubscriberGroupInfo(Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 3327
    :cond_4
    new-instance v0, Landroid/telephony/ClosedSubscriberGroupInfo;

    iget-boolean v1, p0, Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;->csgIndication:Z

    iget-object v2, p0, Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;->homeNodebName:Ljava/lang/String;

    iget p0, p0, Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;->csgIdentity:I

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/ClosedSubscriberGroupInfo;-><init>(ZLjava/lang/String;I)V

    return-object v0
.end method

.method public static blacklist convertHalDataCallResult(Landroid/hardware/radio/data/SetupDataCallResult;)Landroid/telephony/data/DataCallResponse;
    .registers 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 3653
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3654
    iget-object v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->addresses:[Landroid/hardware/radio/data/LinkAddress;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_e
    if-ge v5, v3, :cond_24

    aget-object v6, v2, v5

    .line 3655
    iget-object v7, v6, Landroid/hardware/radio/data/LinkAddress;->address:Ljava/lang/String;

    iget v8, v6, Landroid/hardware/radio/data/LinkAddress;->addressProperties:I

    iget-wide v9, v6, Landroid/hardware/radio/data/LinkAddress;->deprecationTime:J

    iget-wide v11, v6, Landroid/hardware/radio/data/LinkAddress;->expirationTime:J

    invoke-static/range {v7 .. v12}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;IJJ)Landroid/net/LinkAddress;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 3658
    :cond_24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3659
    iget-object v3, p0, Landroid/hardware/radio/data/SetupDataCallResult;->dnses:[Ljava/lang/String;

    const-string v5, "RILUtils"

    if-eqz v3, :cond_59

    .line 3660
    array-length v6, v3

    move v7, v4

    :goto_31
    if-ge v7, v6, :cond_59

    aget-object v8, v3, v7

    .line 3661
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 3664
    :try_start_39
    invoke-static {v8}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 3665
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_40} :catch_41

    goto :goto_56

    :catch_41
    move-exception v9

    .line 3667
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown dns: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v9}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_56
    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    .line 3671
    :cond_59
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3672
    iget-object v6, p0, Landroid/hardware/radio/data/SetupDataCallResult;->gateways:[Ljava/lang/String;

    if-eqz v6, :cond_8c

    .line 3673
    array-length v7, v6

    move v8, v4

    :goto_64
    if-ge v8, v7, :cond_8c

    aget-object v9, v6, v8

    .line 3674
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 3677
    :try_start_6c
    invoke-static {v9}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    .line 3678
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_73
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6c .. :try_end_73} :catch_74

    goto :goto_89

    :catch_74
    move-exception v10

    .line 3680
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown gateway: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9, v10}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_89
    add-int/lit8 v8, v8, 0x1

    goto :goto_64

    .line 3684
    :cond_8c
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3685
    iget-object v7, p0, Landroid/hardware/radio/data/SetupDataCallResult;->pcscf:[Ljava/lang/String;

    if-eqz v7, :cond_bf

    .line 3686
    array-length v8, v7

    move v9, v4

    :goto_97
    if-ge v9, v8, :cond_bf

    aget-object v10, v7, v9

    .line 3687
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 3690
    :try_start_9f
    invoke-static {v10}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v11

    .line 3691
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9f .. :try_end_a6} :catch_a7

    goto :goto_bc

    :catch_a7
    move-exception v11

    .line 3693
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown pcscf: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10, v11}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_bc
    add-int/lit8 v9, v9, 0x1

    goto :goto_97

    .line 3697
    :cond_bf
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3698
    iget-object v7, p0, Landroid/hardware/radio/data/SetupDataCallResult;->qosSessions:[Landroid/hardware/radio/data/QosSession;

    array-length v8, v7

    move v9, v4

    :goto_c8
    if-ge v9, v8, :cond_d6

    aget-object v10, v7, v9

    .line 3699
    invoke-static {v10}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBearerSession(Landroid/hardware/radio/data/QosSession;)Landroid/telephony/data/QosBearerSession;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_c8

    .line 3701
    :cond_d6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3702
    iget-object v8, p0, Landroid/hardware/radio/data/SetupDataCallResult;->trafficDescriptors:[Landroid/hardware/radio/data/TrafficDescriptor;

    array-length v9, v8

    :goto_de
    if-ge v4, v9, :cond_102

    aget-object v10, v8, v4

    .line 3704
    :try_start_e2
    invoke-static {v10}, Lcom/android/internal/telephony/RILUtils;->convertHalTrafficDescriptor(Landroid/hardware/radio/data/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e2 .. :try_end_e9} :catch_ea

    goto :goto_ff

    :catch_ea
    move-exception v10

    .line 3706
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "convertHalDataCallResult: Failed to convert traffic descriptor. e="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    :goto_ff
    add-int/lit8 v4, v4, 0x1

    goto :goto_de

    .line 3710
    :cond_102
    new-instance v4, Landroid/telephony/data/DataCallResponse$Builder;

    invoke-direct {v4}, Landroid/telephony/data/DataCallResponse$Builder;-><init>()V

    iget v8, p0, Landroid/hardware/radio/data/SetupDataCallResult;->cause:I

    .line 3711
    invoke-virtual {v4, v8}, Landroid/telephony/data/DataCallResponse$Builder;->setCause(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v4

    iget-wide v8, p0, Landroid/hardware/radio/data/SetupDataCallResult;->suggestedRetryTime:J

    .line 3712
    invoke-virtual {v4, v8, v9}, Landroid/telephony/data/DataCallResponse$Builder;->setRetryDurationMillis(J)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v4

    iget v8, p0, Landroid/hardware/radio/data/SetupDataCallResult;->cid:I

    .line 3713
    invoke-virtual {v4, v8}, Landroid/telephony/data/DataCallResponse$Builder;->setId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v4

    iget v8, p0, Landroid/hardware/radio/data/SetupDataCallResult;->active:I

    .line 3714
    invoke-virtual {v4, v8}, Landroid/telephony/data/DataCallResponse$Builder;->setLinkStatus(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v4

    iget v8, p0, Landroid/hardware/radio/data/SetupDataCallResult;->type:I

    .line 3715
    invoke-virtual {v4, v8}, Landroid/telephony/data/DataCallResponse$Builder;->setProtocolType(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v4

    iget-object v8, p0, Landroid/hardware/radio/data/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 3716
    invoke-virtual {v4, v8}, Landroid/telephony/data/DataCallResponse$Builder;->setInterfaceName(Ljava/lang/String;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v4

    .line 3717
    invoke-virtual {v4, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v1

    .line 3718
    invoke-virtual {v1, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setDnsAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v1

    .line 3719
    invoke-virtual {v1, v3}, Landroid/telephony/data/DataCallResponse$Builder;->setGatewayAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v1

    .line 3720
    invoke-virtual {v1, v6}, Landroid/telephony/data/DataCallResponse$Builder;->setPcscfAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->mtuV4:I

    iget v3, p0, Landroid/hardware/radio/data/SetupDataCallResult;->mtuV6:I

    .line 3721
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setMtu(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->mtuV4:I

    .line 3722
    invoke-virtual {v1, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV4(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->mtuV6:I

    .line 3723
    invoke-virtual {v1, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV6(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->handoverFailureMode:B

    .line 3724
    invoke-virtual {v1, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setHandoverFailureMode(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->pduSessionId:I

    .line 3725
    invoke-virtual {v1, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setPduSessionId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/data/Qos;

    .line 3726
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalQos(Landroid/hardware/radio/data/Qos;)Landroid/telephony/data/Qos;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setDefaultQos(Landroid/telephony/data/Qos;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v1

    .line 3727
    invoke-virtual {v1, v5}, Landroid/telephony/data/DataCallResponse$Builder;->setQosBearerSessions(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v1

    .line 3728
    iget-object p0, p0, Landroid/hardware/radio/data/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/data/SliceInfo;

    if-nez p0, :cond_172

    goto :goto_176

    .line 3729
    :cond_172
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalSliceInfo(Landroid/hardware/radio/data/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;

    move-result-object v0

    .line 3728
    :goto_176
    invoke-virtual {v1, v0}, Landroid/telephony/data/DataCallResponse$Builder;->setSliceInfo(Landroid/telephony/data/NetworkSliceInfo;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object p0

    .line 3730
    invoke-virtual {p0, v7}, Landroid/telephony/data/DataCallResponse$Builder;->setTrafficDescriptors(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object p0

    .line 3731
    invoke-virtual {p0}, Landroid/telephony/data/DataCallResponse$Builder;->build()Landroid/telephony/data/DataCallResponse;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist convertHalDataCallResult(Ljava/lang/Object;)Landroid/telephony/data/DataCallResponse;
    .registers 33
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 3455
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3456
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3458
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3460
    instance-of v5, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    if-eqz v5, :cond_b2

    .line 3461
    check-cast v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 3463
    iget v5, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->status:I

    .line 3464
    iget v6, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->suggestedRetryTime:I

    int-to-long v8, v6

    .line 3465
    iget v6, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->cid:I

    .line 3466
    iget v10, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->active:I

    .line 3467
    iget-object v11, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->type:Ljava/lang/String;

    invoke-static {v11}, Landroid/telephony/data/ApnSetting;->getProtocolIntFromString(Ljava/lang/String;)I

    move-result v11

    .line 3468
    iget-object v12, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 3469
    iget-object v13, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->addresses:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const-string v14, "\\s+"

    if-nez v13, :cond_3d

    .line 3470
    iget-object v13, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->addresses:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    goto :goto_3e

    :cond_3d
    move-object v13, v1

    .line 3472
    :goto_3e
    iget-object v15, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->dnses:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4d

    .line 3473
    iget-object v15, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->dnses:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    goto :goto_4e

    :cond_4d
    move-object v15, v1

    .line 3475
    :goto_4e
    iget-object v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->gateways:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 3476
    iget-object v1, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->gateways:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_5e

    :cond_5d
    const/4 v1, 0x0

    .line 3478
    :goto_5e
    iget-object v7, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->pcscf:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6d

    .line 3479
    iget-object v7, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->pcscf:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    goto :goto_6e

    :cond_6d
    const/4 v7, 0x0

    .line 3481
    :goto_6e
    iget v0, v0, Landroid/hardware/radio/V1_0/SetupDataCallResult;->mtu:I

    if-eqz v13, :cond_88

    .line 3483
    array-length v14, v13

    move/from16 p0, v0

    const/4 v0, 0x0

    :goto_76
    if-ge v0, v14, :cond_8a

    aget-object v18, v13, v0

    move-object/from16 v19, v1

    .line 3484
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v19

    goto :goto_76

    :cond_88
    move/from16 p0, v0

    :cond_8a
    move-object/from16 v19, v1

    move/from16 v13, p0

    move v14, v13

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move-object/from16 v1, v19

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move v3, v14

    const/16 p0, 0x0

    move/from16 v28, v6

    move-object v6, v2

    move-object v2, v15

    move v15, v10

    move-wide/from16 v29, v8

    move v8, v5

    move/from16 v9, v28

    move-wide/from16 v4, v29

    move/from16 v31, v11

    move-object v11, v7

    move-object v7, v12

    move/from16 v12, v31

    goto/16 :goto_2bc

    .line 3487
    :cond_b2
    instance-of v1, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    if-eqz v1, :cond_145

    .line 3488
    check-cast v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    .line 3490
    iget v5, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cause:I

    .line 3491
    iget v1, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->suggestedRetryTime:I

    int-to-long v8, v1

    .line 3492
    iget v1, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cid:I

    .line 3493
    iget v10, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->active:I

    .line 3494
    iget v11, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->type:I

    .line 3495
    iget-object v12, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 3496
    iget-object v7, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    const/4 v13, 0x0

    new-array v14, v13, [Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 3497
    iget-object v14, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    new-array v15, v13, [Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, [Ljava/lang/String;

    .line 3498
    iget-object v14, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    new-array v6, v13, [Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 3499
    iget-object v14, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    move/from16 v19, v1

    new-array v1, v13, [Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 3501
    iget v13, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->mtu:I

    const v14, 0xffff

    and-int/2addr v14, v13

    shr-int/lit8 v13, v13, 0x10

    if-nez v11, :cond_100

    .line 3504
    iput v14, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->mtu:I

    move-object/from16 p0, v1

    goto :goto_111

    :cond_100
    move-object/from16 p0, v1

    const/4 v1, 0x1

    if-ne v11, v1, :cond_108

    .line 3506
    iput v13, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->mtu:I

    goto :goto_111

    :cond_108
    const/4 v1, 0x2

    if-ne v11, v1, :cond_111

    .line 3508
    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->mtu:I

    .line 3511
    :cond_111
    :goto_111
    iget v0, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->mtu:I

    if-eqz v7, :cond_125

    .line 3513
    array-length v1, v7

    const/4 v13, 0x0

    :goto_117
    if-ge v13, v1, :cond_125

    aget-object v14, v7, v13

    .line 3514
    invoke-static {v14}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_117

    :cond_125
    move v13, v0

    move v14, v13

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move-object v1, v6

    move-object v7, v12

    const/16 v20, 0x0

    const/16 v21, 0x0

    move v3, v14

    move-object v6, v2

    move v12, v11

    move-object v2, v15

    move-object/from16 v11, p0

    move v15, v10

    const/16 p0, 0x0

    move-wide/from16 v28, v8

    move v8, v5

    move-wide/from16 v4, v28

    move/from16 v9, v19

    const/16 v19, 0x0

    goto/16 :goto_2bc

    :cond_145
    const/4 v1, 0x1

    .line 3517
    instance-of v2, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;

    if-eqz v2, :cond_1c1

    .line 3518
    check-cast v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;

    .line 3520
    iget v5, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cause:I

    .line 3521
    iget v2, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->suggestedRetryTime:I

    int-to-long v8, v2

    .line 3522
    iget v6, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cid:I

    .line 3523
    iget v10, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->active:I

    .line 3524
    iget v11, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->type:I

    .line 3525
    iget-object v12, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 3526
    iget-object v2, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v7, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda15;

    invoke-direct {v7}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda15;-><init>()V

    invoke-interface {v2, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 3528
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 3529
    iget-object v7, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    const/4 v13, 0x0

    new-array v14, v13, [Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, [Ljava/lang/String;

    .line 3530
    iget-object v7, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    new-array v14, v13, [Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 3531
    iget-object v14, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    new-array v1, v13, [Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 3532
    iget v13, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV4:I

    iget v14, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV6:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 3533
    iget v14, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV4:I

    .line 3534
    iget v0, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV6:I

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move v3, v13

    const/16 p0, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move v13, v0

    move/from16 v28, v11

    move-object v11, v1

    move-object v1, v7

    move-object v7, v12

    move/from16 v12, v28

    move/from16 v29, v6

    move-object v6, v2

    move-object v2, v15

    move v15, v10

    move-wide/from16 v30, v8

    move v8, v5

    move/from16 v9, v29

    move-wide/from16 v4, v30

    goto/16 :goto_2bc

    .line 3538
    :cond_1c1
    instance-of v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;

    if-eqz v1, :cond_3f2

    .line 3539
    check-cast v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;

    .line 3541
    iget v5, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cause:I

    .line 3542
    iget-wide v8, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->suggestedRetryTime:J

    .line 3543
    iget v6, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cid:I

    .line 3544
    iget v10, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->active:I

    .line 3545
    iget v11, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->type:I

    .line 3546
    iget-object v12, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 3547
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda16;

    invoke-direct {v2}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda16;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 3549
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    .line 3550
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    const/4 v13, 0x0

    new-array v3, v13, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, [Ljava/lang/String;

    .line 3551
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    new-array v3, v13, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 3552
    iget-object v3, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    new-array v7, v13, [Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, [Ljava/lang/String;

    .line 3553
    iget v3, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV4:I

    iget v14, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV6:I

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3554
    iget v14, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV4:I

    .line 3555
    iget v13, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV6:I

    move-object/from16 p0, v1

    .line 3556
    iget-byte v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->handoverFailureMode:B

    move/from16 v18, v1

    .line 3557
    iget v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pduSessionId:I

    move/from16 v19, v1

    .line 3558
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/V1_6/Qos;

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalQos(Landroid/hardware/radio/V1_6/Qos;)Landroid/telephony/data/Qos;

    move-result-object v1

    move-object/from16 v20, v1

    .line 3559
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->qosSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    move-object/from16 v21, v2

    new-instance v2, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 3560
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3562
    iget-object v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    .line 3561
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;->getDiscriminator()B

    move-result v2

    if-nez v2, :cond_252

    const/16 v16, 0x0

    goto :goto_25e

    .line 3563
    :cond_252
    iget-object v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;->value()Landroid/hardware/radio/V1_6/SliceInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalSliceInfo(Landroid/hardware/radio/V1_6/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;

    move-result-object v2

    move-object/from16 v16, v2

    .line 3564
    :goto_25e
    iget-object v0, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->trafficDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_264
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/V1_6/TrafficDescriptor;

    .line 3566
    :try_start_270
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalTrafficDescriptor(Landroid/hardware/radio/V1_6/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_277
    .catch Ljava/lang/IllegalArgumentException; {:try_start_270 .. :try_end_277} :catch_27c

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    goto :goto_295

    :catch_27c
    move-exception v0

    move-object/from16 v22, v1

    .line 3568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v2

    const-string v2, "convertHalDataCallResult: Failed to convert traffic descriptor. e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    :goto_295
    move-object/from16 v1, v22

    move-object/from16 v2, v23

    goto :goto_264

    :cond_29a
    move-object/from16 v22, v1

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 p0, v16

    move-object/from16 v16, v4

    move v15, v10

    move-wide/from16 v28, v8

    move v8, v5

    move v9, v6

    move-wide/from16 v4, v28

    move-object/from16 v6, v21

    move/from16 v21, v18

    move-object/from16 v18, v22

    move/from16 v30, v11

    move-object v11, v7

    move-object v7, v12

    move/from16 v12, v30

    move-object/from16 v31, v20

    move/from16 v20, v19

    move-object/from16 v19, v31

    .line 3577
    :goto_2bc
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move/from16 v22, v13

    const-string v13, "RILUtils"

    if-eqz v2, :cond_308

    move/from16 v23, v14

    .line 3579
    array-length v14, v2

    move/from16 v24, v3

    const/4 v3, 0x0

    :goto_2cd
    if-ge v3, v14, :cond_305

    aget-object v0, v2, v3

    move-object/from16 v25, v2

    .line 3580
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 3583
    :try_start_2d7
    invoke-static {v2}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 3584
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2de
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d7 .. :try_end_2de} :catch_2e3

    move-object/from16 v27, v10

    move/from16 v26, v14

    goto :goto_2fc

    :catch_2e3
    move-exception v0

    move/from16 v26, v14

    .line 3586
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v10

    const-string v10, "Unknown dns: "

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2fc
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v25

    move/from16 v14, v26

    move-object/from16 v10, v27

    goto :goto_2cd

    :cond_305
    move-object/from16 v27, v10

    goto :goto_30e

    :cond_308
    move/from16 v24, v3

    move-object/from16 v27, v10

    move/from16 v23, v14

    .line 3592
    :goto_30e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_34b

    .line 3594
    array-length v3, v1

    const/4 v10, 0x0

    :goto_317
    if-ge v10, v3, :cond_34b

    aget-object v0, v1, v10

    .line 3595
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 3598
    :try_start_31f
    invoke-static {v14}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 3599
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_326
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31f .. :try_end_326} :catch_32b

    move-object/from16 v25, v1

    move/from16 v26, v3

    goto :goto_344

    :catch_32b
    move-exception v0

    move-object/from16 v25, v1

    .line 3601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v3

    const-string v3, "Unknown gateway: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_344
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v25

    move/from16 v3, v26

    goto :goto_317

    .line 3607
    :cond_34b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_388

    .line 3609
    array-length v3, v11

    const/4 v10, 0x0

    :goto_354
    if-ge v10, v3, :cond_388

    aget-object v0, v11, v10

    .line 3610
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 3613
    :try_start_35c
    invoke-static {v14}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 3614
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_363
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35c .. :try_end_363} :catch_368

    move/from16 v17, v3

    move-object/from16 v25, v11

    goto :goto_381

    :catch_368
    move-exception v0

    move/from16 v17, v3

    .line 3616
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v11

    const-string v11, "Unknown pcscf: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_381
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v17

    move-object/from16 v11, v25

    goto :goto_354

    .line 3621
    :cond_388
    new-instance v0, Landroid/telephony/data/DataCallResponse$Builder;

    invoke-direct {v0}, Landroid/telephony/data/DataCallResponse$Builder;-><init>()V

    .line 3622
    invoke-virtual {v0, v8}, Landroid/telephony/data/DataCallResponse$Builder;->setCause(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3623
    invoke-virtual {v0, v4, v5}, Landroid/telephony/data/DataCallResponse$Builder;->setRetryDurationMillis(J)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3624
    invoke-virtual {v0, v9}, Landroid/telephony/data/DataCallResponse$Builder;->setId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3625
    invoke-virtual {v0, v15}, Landroid/telephony/data/DataCallResponse$Builder;->setLinkStatus(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3626
    invoke-virtual {v0, v12}, Landroid/telephony/data/DataCallResponse$Builder;->setProtocolType(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3627
    invoke-virtual {v0, v7}, Landroid/telephony/data/DataCallResponse$Builder;->setInterfaceName(Ljava/lang/String;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3628
    invoke-virtual {v0, v6}, Landroid/telephony/data/DataCallResponse$Builder;->setAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move-object/from16 v3, v27

    .line 3629
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataCallResponse$Builder;->setDnsAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3630
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setGatewayAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3631
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setPcscfAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v3, v24

    .line 3632
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataCallResponse$Builder;->setMtu(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v14, v23

    .line 3633
    invoke-virtual {v0, v14}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV4(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v13, v22

    .line 3634
    invoke-virtual {v0, v13}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV6(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v1, v21

    .line 3635
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setHandoverFailureMode(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v1, v20

    .line 3636
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setPduSessionId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move-object/from16 v1, v19

    .line 3637
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setDefaultQos(Landroid/telephony/data/Qos;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move-object/from16 v3, v18

    .line 3638
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataCallResponse$Builder;->setQosBearerSessions(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move-object/from16 v1, p0

    .line 3639
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setSliceInfo(Landroid/telephony/data/NetworkSliceInfo;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move-object/from16 v1, v16

    .line 3640
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setTrafficDescriptors(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3641
    invoke-virtual {v0}, Landroid/telephony/data/DataCallResponse$Builder;->build()Landroid/telephony/data/DataCallResponse;

    move-result-object v0

    return-object v0

    .line 3572
    :cond_3f2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported SetupDataCallResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist convertHalDataCallResultList(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;"
        }
    .end annotation

    .line 4039
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4041
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4042
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalDataCallResult(Ljava/lang/Object;)Landroid/telephony/data/DataCallResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1f
    return-object v0
.end method

.method public static blacklist convertHalDataCallResultList([Landroid/hardware/radio/data/SetupDataCallResult;)Ljava/util/ArrayList;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/radio/data/SetupDataCallResult;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;"
        }
    .end annotation

    .line 4056
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4058
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget-object v3, p0, v2

    .line 4059
    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalDataCallResult(Landroid/hardware/radio/data/SetupDataCallResult;)Landroid/telephony/data/DataCallResponse;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method

.method public static blacklist convertHalGsmSignalStrength(Landroid/hardware/radio/V1_0/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;
    .registers 4

    .line 3079
    new-instance v0, Landroid/telephony/CellSignalStrengthGsm;

    iget v1, p0, Landroid/hardware/radio/V1_0/GsmSignalStrength;->signalStrength:I

    .line 3080
    invoke-static {v1}, Landroid/telephony/CellSignalStrength;->getRssiDbmFromAsu(I)I

    move-result v1

    iget v2, p0, Landroid/hardware/radio/V1_0/GsmSignalStrength;->bitErrorRate:I

    iget p0, p0, Landroid/hardware/radio/V1_0/GsmSignalStrength;->timingAdvance:I

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/CellSignalStrengthGsm;-><init>(III)V

    .line 3082
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->getRssi()I

    move-result p0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_1f

    .line 3083
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->setDefaultValues()V

    const/4 p0, 0x0

    .line 3084
    invoke-virtual {v0, p0, p0}, Landroid/telephony/CellSignalStrengthGsm;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    :cond_1f
    return-object v0
.end method

.method public static blacklist convertHalGsmSignalStrength(Landroid/hardware/radio/network/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;
    .registers 4

    .line 3096
    new-instance v0, Landroid/telephony/CellSignalStrengthGsm;

    iget v1, p0, Landroid/hardware/radio/network/GsmSignalStrength;->signalStrength:I

    .line 3097
    invoke-static {v1}, Landroid/telephony/CellSignalStrength;->getRssiDbmFromAsu(I)I

    move-result v1

    iget v2, p0, Landroid/hardware/radio/network/GsmSignalStrength;->bitErrorRate:I

    iget p0, p0, Landroid/hardware/radio/network/GsmSignalStrength;->timingAdvance:I

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/CellSignalStrengthGsm;-><init>(III)V

    .line 3099
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->getRssi()I

    move-result p0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_1f

    .line 3100
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->setDefaultValues()V

    const/4 p0, 0x0

    .line 3101
    invoke-virtual {v0, p0, p0}, Landroid/telephony/CellSignalStrengthGsm;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    :cond_1f
    return-object v0
.end method

.method public static blacklist convertHalHardwareConfigList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    .line 2094
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2095
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2097
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/V1_0/HardwareConfig;

    .line 2098
    iget v2, v0, Landroid/hardware/radio/V1_0/HardwareConfig;->type:I

    const/4 v3, 0x0

    if-eqz v2, :cond_4f

    const/4 v4, 0x1

    if-ne v2, v4, :cond_38

    .line 2108
    new-instance v4, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    .line 2109
    iget-object v2, v0, Landroid/hardware/radio/V1_0/HardwareConfig;->uuid:Ljava/lang/String;

    iget v5, v0, Landroid/hardware/radio/V1_0/HardwareConfig;->state:I

    iget-object v0, v0, Landroid/hardware/radio/V1_0/HardwareConfig;->sim:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/V1_0/HardwareConfigSim;

    iget-object v0, v0, Landroid/hardware/radio/V1_0/HardwareConfigSim;->modemUuid:Ljava/lang/String;

    invoke-virtual {v4, v2, v5, v0}, Lcom/android/internal/telephony/HardwareConfig;->assignSim(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_6f

    .line 2113
    :cond_38
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RIL_REQUEST_GET_HARDWARE_CONFIG invalid hardware type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2101
    :cond_4f
    new-instance v10, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v10, v2}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    .line 2102
    iget-object v2, v0, Landroid/hardware/radio/V1_0/HardwareConfig;->modem:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/HardwareConfigModem;

    .line 2103
    iget-object v3, v0, Landroid/hardware/radio/V1_0/HardwareConfig;->uuid:Ljava/lang/String;

    iget v4, v0, Landroid/hardware/radio/V1_0/HardwareConfig;->state:I

    iget v5, v2, Landroid/hardware/radio/V1_0/HardwareConfigModem;->rilModel:I

    iget v6, v2, Landroid/hardware/radio/V1_0/HardwareConfigModem;->rat:I

    iget v7, v2, Landroid/hardware/radio/V1_0/HardwareConfigModem;->maxVoice:I

    iget v8, v2, Landroid/hardware/radio/V1_0/HardwareConfigModem;->maxData:I

    iget v9, v2, Landroid/hardware/radio/V1_0/HardwareConfigModem;->maxStandby:I

    move-object v2, v10

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/HardwareConfig;->assignModem(Ljava/lang/String;IIIIII)V

    move-object v4, v10

    .line 2117
    :goto_6f
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_73
    return-object v1
.end method

.method public static blacklist convertHalHardwareConfigList([Landroid/hardware/radio/modem/HardwareConfig;)Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/radio/modem/HardwareConfig;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    .line 2129
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2132
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_67

    aget-object v4, p0, v3

    .line 2133
    iget v5, v4, Landroid/hardware/radio/modem/HardwareConfig;->type:I

    if-eqz v5, :cond_3e

    const/4 v6, 0x1

    if-ne v5, v6, :cond_27

    .line 2143
    new-instance v6, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v6, v5}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    .line 2144
    iget-object v5, v4, Landroid/hardware/radio/modem/HardwareConfig;->uuid:Ljava/lang/String;

    iget v7, v4, Landroid/hardware/radio/modem/HardwareConfig;->state:I

    iget-object v4, v4, Landroid/hardware/radio/modem/HardwareConfig;->sim:[Landroid/hardware/radio/modem/HardwareConfigSim;

    aget-object v4, v4, v2

    iget-object v4, v4, Landroid/hardware/radio/modem/HardwareConfigSim;->modemUuid:Ljava/lang/String;

    invoke-virtual {v6, v5, v7, v4}, Lcom/android/internal/telephony/HardwareConfig;->assignSim(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_61

    .line 2148
    :cond_27
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RIL_REQUEST_GET_HARDWARE_CONFIG invalid hardware type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2136
    :cond_3e
    new-instance v12, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v12, v5}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    .line 2137
    iget-object v5, v4, Landroid/hardware/radio/modem/HardwareConfig;->modem:[Landroid/hardware/radio/modem/HardwareConfigModem;

    aget-object v5, v5, v2

    .line 2138
    iget-object v6, v4, Landroid/hardware/radio/modem/HardwareConfig;->uuid:Ljava/lang/String;

    iget v7, v4, Landroid/hardware/radio/modem/HardwareConfig;->state:I

    iget v8, v5, Landroid/hardware/radio/modem/HardwareConfigModem;->rilModel:I

    iget v9, v5, Landroid/hardware/radio/modem/HardwareConfigModem;->rat:I

    iget v10, v5, Landroid/hardware/radio/modem/HardwareConfigModem;->maxVoiceCalls:I

    iget v11, v5, Landroid/hardware/radio/modem/HardwareConfigModem;->maxDataCalls:I

    iget v13, v5, Landroid/hardware/radio/modem/HardwareConfigModem;->maxStandby:I

    move-object v4, v12

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v13

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/telephony/HardwareConfig;->assignModem(Ljava/lang/String;IIIIII)V

    move-object v6, v12

    .line 2152
    :goto_61
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_67
    return-object v0
.end method

.method public static blacklist convertHalKeepaliveStatusCode(I)I
    .registers 2

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    return v0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertHalLceData(Landroid/hardware/radio/network/LceDataInfo;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/network/LceDataInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;"
        }
    .end annotation

    .line 2247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2248
    new-instance v1, Landroid/telephony/LinkCapacityEstimate;

    iget p0, p0, Landroid/hardware/radio/network/LceDataInfo;->lastHopCapacityKbps:I

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, p0, v3}, Landroid/telephony/LinkCapacityEstimate;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static blacklist convertHalLceData(Landroid/hardware/radio/network/LinkCapacityEstimate;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/network/LinkCapacityEstimate;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;"
        }
    .end annotation

    .line 2261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2262
    iget v1, p0, Landroid/hardware/radio/network/LinkCapacityEstimate;->downlinkCapacityKbps:I

    .line 2263
    iget v2, p0, Landroid/hardware/radio/network/LinkCapacityEstimate;->uplinkCapacityKbps:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_11

    .line 2264
    iget v4, p0, Landroid/hardware/radio/network/LinkCapacityEstimate;->secondaryDownlinkCapacityKbps:I

    if-eq v4, v3, :cond_11

    sub-int/2addr v1, v4

    :cond_11
    if-eq v2, v3, :cond_18

    .line 2269
    iget v4, p0, Landroid/hardware/radio/network/LinkCapacityEstimate;->secondaryUplinkCapacityKbps:I

    if-eq v4, v3, :cond_18

    sub-int/2addr v2, v4

    .line 2274
    :cond_18
    new-instance v3, Landroid/telephony/LinkCapacityEstimate;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v2}, Landroid/telephony/LinkCapacityEstimate;-><init>(III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2276
    new-instance v1, Landroid/telephony/LinkCapacityEstimate;

    const/4 v2, 0x1

    iget v3, p0, Landroid/hardware/radio/network/LinkCapacityEstimate;->secondaryDownlinkCapacityKbps:I

    iget p0, p0, Landroid/hardware/radio/network/LinkCapacityEstimate;->secondaryUplinkCapacityKbps:I

    invoke-direct {v1, v2, v3, p0}, Landroid/telephony/LinkCapacityEstimate;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static blacklist convertHalLceData(Ljava/lang/Object;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;"
        }
    .end annotation

    .line 2205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 2207
    :cond_8
    instance-of v1, p0, Landroid/hardware/radio/V1_0/LceDataInfo;

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-eqz v1, :cond_1b

    .line 2208
    check-cast p0, Landroid/hardware/radio/V1_0/LceDataInfo;

    .line 2210
    new-instance v1, Landroid/telephony/LinkCapacityEstimate;

    iget p0, p0, Landroid/hardware/radio/V1_0/LceDataInfo;->lastHopCapacityKbps:I

    invoke-direct {v1, v2, p0, v3}, Landroid/telephony/LinkCapacityEstimate;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    .line 2212
    :cond_1b
    instance-of v1, p0, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    if-eqz v1, :cond_2e

    .line 2213
    check-cast p0, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    .line 2215
    new-instance v1, Landroid/telephony/LinkCapacityEstimate;

    iget v3, p0, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->downlinkCapacityKbps:I

    iget p0, p0, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->uplinkCapacityKbps:I

    invoke-direct {v1, v2, v3, p0}, Landroid/telephony/LinkCapacityEstimate;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    .line 2217
    :cond_2e
    instance-of v1, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;

    if-eqz v1, :cond_5c

    .line 2218
    check-cast p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;

    .line 2220
    iget v1, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->downlinkCapacityKbps:I

    .line 2221
    iget v2, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->uplinkCapacityKbps:I

    if-eq v1, v3, :cond_3f

    .line 2222
    iget v4, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryDownlinkCapacityKbps:I

    if-eq v4, v3, :cond_3f

    sub-int/2addr v1, v4

    :cond_3f
    if-eq v2, v3, :cond_46

    .line 2227
    iget v4, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryUplinkCapacityKbps:I

    if-eq v4, v3, :cond_46

    sub-int/2addr v2, v4

    .line 2232
    :cond_46
    new-instance v3, Landroid/telephony/LinkCapacityEstimate;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v2}, Landroid/telephony/LinkCapacityEstimate;-><init>(III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2234
    new-instance v1, Landroid/telephony/LinkCapacityEstimate;

    const/4 v2, 0x1

    iget v3, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryDownlinkCapacityKbps:I

    iget p0, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryUplinkCapacityKbps:I

    invoke-direct {v1, v2, v3, p0}, Landroid/telephony/LinkCapacityEstimate;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5c
    :goto_5c
    return-object v0
.end method

.method public static blacklist convertHalLteSignalStrength(Landroid/hardware/radio/network/LteSignalStrength;)Landroid/telephony/CellSignalStrengthLte;
    .registers 10

    .line 3171
    new-instance v8, Landroid/telephony/CellSignalStrengthLte;

    iget v0, p0, Landroid/hardware/radio/network/LteSignalStrength;->signalStrength:I

    .line 3172
    invoke-static {v0}, Landroid/telephony/CellSignalStrengthLte;->convertRssiAsuToDBm(I)I

    move-result v1

    .line 3173
    iget v0, p0, Landroid/hardware/radio/network/LteSignalStrength;->rsrp:I

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_10

    neg-int v0, v0

    :cond_10
    move v3, v0

    .line 3174
    iget v0, p0, Landroid/hardware/radio/network/LteSignalStrength;->rsrq:I

    if-eq v0, v2, :cond_16

    neg-int v0, v0

    :cond_16
    move v4, v0

    iget v0, p0, Landroid/hardware/radio/network/LteSignalStrength;->rssnr:I

    .line 3175
    invoke-static {v0}, Landroid/telephony/CellSignalStrengthLte;->convertRssnrUnitFromTenDbToDB(I)I

    move-result v5

    iget v6, p0, Landroid/hardware/radio/network/LteSignalStrength;->cqiTableIndex:I

    iget v7, p0, Landroid/hardware/radio/network/LteSignalStrength;->cqi:I

    iget p0, p0, Landroid/hardware/radio/network/LteSignalStrength;->timingAdvance:I

    move-object v0, v8

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, p0

    invoke-direct/range {v0 .. v7}, Landroid/telephony/CellSignalStrengthLte;-><init>(IIIIIII)V

    return-object v8
.end method

.method public static blacklist convertHalLteSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthLte;
    .registers 12

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 3141
    :cond_4
    instance-of v1, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;

    const v2, 0x7fffffff

    if-eqz v1, :cond_30

    .line 3142
    check-cast p0, Landroid/hardware/radio/V1_0/LteSignalStrength;

    .line 3144
    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    iget v1, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->signalStrength:I

    .line 3145
    invoke-static {v1}, Landroid/telephony/CellSignalStrengthLte;->convertRssiAsuToDBm(I)I

    move-result v4

    .line 3146
    iget v1, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrp:I

    if-eq v1, v2, :cond_1a

    neg-int v1, v1

    :cond_1a
    move v5, v1

    .line 3147
    iget v1, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrq:I

    if-eq v1, v2, :cond_20

    neg-int v1, v1

    :cond_20
    move v6, v1

    iget v1, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rssnr:I

    .line 3148
    invoke-static {v1}, Landroid/telephony/CellSignalStrengthLte;->convertRssnrUnitFromTenDbToDB(I)I

    move-result v7

    iget v8, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->cqi:I

    iget v9, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->timingAdvance:I

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Landroid/telephony/CellSignalStrengthLte;-><init>(IIIIII)V

    return-object v0

    .line 3150
    :cond_30
    instance-of v1, p0, Landroid/hardware/radio/V1_6/LteSignalStrength;

    if-eqz v1, :cond_62

    .line 3151
    check-cast p0, Landroid/hardware/radio/V1_6/LteSignalStrength;

    .line 3153
    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/LteSignalStrength;->base:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v1, v1, Landroid/hardware/radio/V1_0/LteSignalStrength;->signalStrength:I

    .line 3154
    invoke-static {v1}, Landroid/telephony/CellSignalStrengthLte;->convertRssiAsuToDBm(I)I

    move-result v4

    .line 3155
    iget-object v1, p0, Landroid/hardware/radio/V1_6/LteSignalStrength;->base:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v3, v1, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrp:I

    if-eq v3, v2, :cond_47

    neg-int v3, v3

    :cond_47
    move v5, v3

    .line 3156
    iget v3, v1, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrq:I

    if-eq v3, v2, :cond_4f

    neg-int v2, v3

    move v6, v2

    goto :goto_50

    :cond_4f
    move v6, v3

    :goto_50
    iget v1, v1, Landroid/hardware/radio/V1_0/LteSignalStrength;->rssnr:I

    .line 3157
    invoke-static {v1}, Landroid/telephony/CellSignalStrengthLte;->convertRssnrUnitFromTenDbToDB(I)I

    move-result v7

    iget v8, p0, Landroid/hardware/radio/V1_6/LteSignalStrength;->cqiTableIndex:I

    iget-object p0, p0, Landroid/hardware/radio/V1_6/LteSignalStrength;->base:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v9, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->cqi:I

    iget v10, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->timingAdvance:I

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Landroid/telephony/CellSignalStrengthLte;-><init>(IIIIIII)V

    :cond_62
    return-object v0
.end method

.method public static blacklist convertHalNetworkTypeBitMask(I)I
    .registers 8

    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    int-to-long v2, v1

    const-wide/32 v4, 0x8000

    or-long/2addr v2, v4

    long-to-int v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_17

    int-to-long v2, v0

    const-wide/16 v4, 0x1

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_17
    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_20

    int-to-long v2, v0

    const-wide/16 v4, 0x2

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_20
    and-int/lit8 v2, p0, 0x10

    const-wide/16 v3, 0x8

    if-eqz v2, :cond_29

    int-to-long v5, v0

    or-long/2addr v5, v3

    long-to-int v0, v5

    :cond_29
    and-int/lit8 v2, p0, 0x20

    if-eqz v2, :cond_31

    int-to-long v5, v0

    or-long v2, v5, v3

    long-to-int v0, v2

    :cond_31
    and-int/lit8 v2, p0, 0x40

    if-eqz v2, :cond_3a

    int-to-long v2, v0

    const-wide/16 v4, 0x40

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_3a
    and-int/lit16 v2, p0, 0x80

    if-eqz v2, :cond_43

    int-to-long v2, v0

    const-wide/16 v4, 0x10

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_43
    and-int/lit16 v2, p0, 0x100

    if-eqz v2, :cond_4c

    int-to-long v2, v0

    const-wide/16 v4, 0x20

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_4c
    and-int/lit16 v2, p0, 0x1000

    if-eqz v2, :cond_55

    int-to-long v2, v0

    const-wide/16 v4, 0x800

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_55
    and-int/lit16 v2, p0, 0x2000

    if-eqz v2, :cond_5e

    int-to-long v2, v0

    const-wide/16 v4, 0x2000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_5e
    and-int/lit16 v2, p0, 0x400

    if-eqz v2, :cond_67

    int-to-long v2, v0

    const-wide/16 v4, 0x100

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_67
    and-int/lit16 v2, p0, 0x200

    if-eqz v2, :cond_70

    int-to-long v2, v0

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_70
    and-int/lit16 v2, p0, 0x800

    if-eqz v2, :cond_79

    int-to-long v2, v0

    const-wide/16 v4, 0x200

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_79
    const v2, 0x8000

    and-int/2addr v2, p0

    if-eqz v2, :cond_84

    int-to-long v2, v0

    const-wide/16 v4, 0x4000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_84
    and-int/lit8 v2, p0, 0x8

    if-eqz v2, :cond_8d

    int-to-long v2, v0

    const-wide/16 v4, 0x4

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_8d
    const/high16 v2, 0x20000

    and-int/2addr v2, p0

    if-eqz v2, :cond_98

    int-to-long v2, v0

    const-wide/32 v4, 0x10000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_98
    and-int/lit16 v2, p0, 0x4000

    if-eqz v2, :cond_a1

    int-to-long v2, v0

    const-wide/16 v4, 0x1000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_a1
    const/high16 v2, 0x80000

    and-int/2addr v2, p0

    if-eqz v2, :cond_ac

    int-to-long v2, v0

    const-wide/32 v4, 0x40000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_ac
    const/high16 v2, 0x100000

    and-int/2addr v2, p0

    if-eqz v2, :cond_b7

    int-to-long v2, v0

    const-wide/32 v4, 0x80000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_b7
    const/high16 v2, 0x40000

    and-int/2addr p0, v2

    if-eqz p0, :cond_c2

    int-to-long v2, v0

    const-wide/32 v4, 0x20000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_c2
    if-nez v0, :cond_c5

    goto :goto_c6

    :cond_c5
    move v1, v0

    :goto_c6
    return v1
.end method

.method public static blacklist convertHalNrSignalStrength(Landroid/hardware/radio/network/NrSignalStrength;)Landroid/telephony/CellSignalStrengthNr;
    .registers 11

    .line 3307
    new-instance v9, Landroid/telephony/CellSignalStrengthNr;

    iget v0, p0, Landroid/hardware/radio/network/NrSignalStrength;->csiRsrp:I

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v1

    iget v0, p0, Landroid/hardware/radio/network/NrSignalStrength;->csiRsrq:I

    .line 3308
    invoke-static {v0}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v2

    iget v3, p0, Landroid/hardware/radio/network/NrSignalStrength;->csiSinr:I

    iget v4, p0, Landroid/hardware/radio/network/NrSignalStrength;->csiCqiTableIndex:I

    iget-object v0, p0, Landroid/hardware/radio/network/NrSignalStrength;->csiCqiReport:[B

    .line 3309
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v5

    iget v0, p0, Landroid/hardware/radio/network/NrSignalStrength;->ssRsrp:I

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v6

    iget v0, p0, Landroid/hardware/radio/network/NrSignalStrength;->ssRsrq:I

    .line 3310
    invoke-static {v0}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v7

    iget v8, p0, Landroid/hardware/radio/network/NrSignalStrength;->ssSinr:I

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/telephony/CellSignalStrengthNr;-><init>(IIIILjava/util/List;III)V

    return-object v9
.end method

.method public static blacklist convertHalNrSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthNr;
    .registers 11

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 3282
    :cond_4
    instance-of v1, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;

    if-eqz v1, :cond_2d

    .line 3283
    check-cast p0, Landroid/hardware/radio/V1_4/NrSignalStrength;

    .line 3285
    new-instance v7, Landroid/telephony/CellSignalStrengthNr;

    iget v0, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiRsrp:I

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v1

    iget v0, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiRsrq:I

    .line 3286
    invoke-static {v0}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v2

    iget v3, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiSinr:I

    iget v0, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssRsrp:I

    .line 3287
    invoke-static {v0}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v4

    iget v0, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssRsrq:I

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v5

    iget v6, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssSinr:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellSignalStrengthNr;-><init>(IIIIII)V

    return-object v7

    .line 3289
    :cond_2d
    instance-of v1, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;

    if-eqz v1, :cond_64

    .line 3290
    check-cast p0, Landroid/hardware/radio/V1_6/NrSignalStrength;

    .line 3292
    new-instance v9, Landroid/telephony/CellSignalStrengthNr;

    iget-object v0, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->base:Landroid/hardware/radio/V1_4/NrSignalStrength;

    iget v0, v0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiRsrp:I

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v1

    iget-object v0, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->base:Landroid/hardware/radio/V1_4/NrSignalStrength;

    iget v0, v0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiRsrq:I

    .line 3293
    invoke-static {v0}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v2

    iget-object v0, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->base:Landroid/hardware/radio/V1_4/NrSignalStrength;

    iget v3, v0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiSinr:I

    iget v4, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->csiCqiTableIndex:I

    iget-object v5, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->csiCqiReport:Ljava/util/ArrayList;

    iget v0, v0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssRsrp:I

    .line 3294
    invoke-static {v0}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v6

    iget-object v0, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->base:Landroid/hardware/radio/V1_4/NrSignalStrength;

    iget v0, v0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssRsrq:I

    .line 3295
    invoke-static {v0}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v7

    iget-object p0, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->base:Landroid/hardware/radio/V1_4/NrSignalStrength;

    iget v8, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssSinr:I

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/telephony/CellSignalStrengthNr;-><init>(IIIILjava/util/List;III)V

    return-object v9

    :cond_64
    return-object v0
.end method

.method public static blacklist convertHalOperatorStatus(I)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string p0, "unknown"

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string p0, "available"

    return-object p0

    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string p0, "current"

    return-object p0

    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    const-string p0, "forbidden"

    return-object p0

    :cond_17
    const-string p0, ""

    return-object p0
.end method

.method public static blacklist convertHalPhoneCapability([ILjava/lang/Object;)Landroid/telephony/PhoneCapability;
    .registers 9

    .line 4620
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4621
    instance-of v0, p1, Landroid/hardware/radio/config/PhoneCapability;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 4622
    check-cast p1, Landroid/hardware/radio/config/PhoneCapability;

    .line 4624
    iget-byte v0, p1, Landroid/hardware/radio/config/PhoneCapability;->maxActiveData:B

    .line 4625
    iget-boolean v2, p1, Landroid/hardware/radio/config/PhoneCapability;->isInternetLingeringSupported:Z

    .line 4626
    iget-object p1, p1, Landroid/hardware/radio/config/PhoneCapability;->logicalModemIds:[B

    array-length v4, p1

    :goto_13
    if-ge v1, v4, :cond_22

    aget-byte v5, p1, v1

    .line 4627
    new-instance v6, Landroid/telephony/ModemInfo;

    invoke-direct {v6, v5}, Landroid/telephony/ModemInfo;-><init>(I)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_22
    move v4, v2

    move v2, v0

    goto :goto_51

    .line 4629
    :cond_25
    instance-of v0, p1, Landroid/hardware/radio/config/V1_1/PhoneCapability;

    if-eqz v0, :cond_4f

    .line 4630
    check-cast p1, Landroid/hardware/radio/config/V1_1/PhoneCapability;

    .line 4632
    iget-byte v0, p1, Landroid/hardware/radio/config/V1_1/PhoneCapability;->maxActiveData:B

    .line 4633
    iget-boolean v1, p1, Landroid/hardware/radio/config/V1_1/PhoneCapability;->isInternetLingeringSupported:Z

    .line 4635
    iget-object p1, p1, Landroid/hardware/radio/config/V1_1/PhoneCapability;->logicalModemList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/config/V1_1/ModemInfo;

    .line 4636
    new-instance v4, Landroid/telephony/ModemInfo;

    iget-byte v2, v2, Landroid/hardware/radio/config/V1_1/ModemInfo;->modemId:B

    invoke-direct {v4, v2}, Landroid/telephony/ModemInfo;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_4c
    move v2, v0

    move v4, v1

    goto :goto_51

    :cond_4f
    move v2, v1

    move v4, v2

    .line 4639
    :goto_51
    new-instance p1, Landroid/telephony/PhoneCapability;

    const/4 v1, 0x0

    move-object v0, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/telephony/PhoneCapability;-><init>(IILjava/util/List;Z[I)V

    return-object p1
.end method

.method public static blacklist convertHalPhonebookCapacity(Landroid/hardware/radio/V1_6/PhonebookCapacity;)Lcom/android/internal/telephony/uicc/AdnCapacity;
    .registers 13

    if-eqz p0, :cond_1d

    .line 4424
    new-instance v11, Lcom/android/internal/telephony/uicc/AdnCapacity;

    iget v1, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdnRecords:I

    iget v2, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedAdnRecords:I

    iget v3, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxEmailRecords:I

    iget v4, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedEmailRecords:I

    iget v5, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdditionalNumberRecords:I

    iget v6, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedAdditionalNumberRecords:I

    iget v7, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxNameLen:I

    iget v8, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxNumberLen:I

    iget v9, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxEmailLen:I

    iget v10, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdditionalNumberLen:I

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/uicc/AdnCapacity;-><init>(IIIIIIIIII)V

    return-object v11

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist convertHalPhonebookCapacity(Landroid/hardware/radio/sim/PhonebookCapacity;)Lcom/android/internal/telephony/uicc/AdnCapacity;
    .registers 13

    if-eqz p0, :cond_1d

    .line 4440
    new-instance v11, Lcom/android/internal/telephony/uicc/AdnCapacity;

    iget v1, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->maxAdnRecords:I

    iget v2, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->usedAdnRecords:I

    iget v3, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->maxEmailRecords:I

    iget v4, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->usedEmailRecords:I

    iget v5, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->maxAdditionalNumberRecords:I

    iget v6, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->usedAdditionalNumberRecords:I

    iget v7, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->maxNameLen:I

    iget v8, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->maxNumberLen:I

    iget v9, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->maxEmailLen:I

    iget v10, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->maxAdditionalNumberLen:I

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/uicc/AdnCapacity;-><init>(IIIIIIIIII)V

    return-object v11

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist convertHalPhonebookRecordInfo(Landroid/hardware/radio/V1_6/PhonebookRecordInfo;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord;
    .registers 9

    .line 4455
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->emails:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v6, v1

    goto :goto_14

    .line 4456
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    .line 4457
    :goto_14
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->additionalNumbers:Ljava/util/ArrayList;

    if-nez v0, :cond_19

    goto :goto_26

    .line 4458
    :cond_19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    :goto_26
    move-object v7, v1

    .line 4459
    new-instance v0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;

    iget v3, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->recordId:I

    iget-object v4, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->name:Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->number:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist convertHalPhonebookRecordInfo(Landroid/hardware/radio/sim/PhonebookRecordInfo;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord;
    .registers 8

    .line 4470
    new-instance v6, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;

    iget v1, p0, Landroid/hardware/radio/sim/PhonebookRecordInfo;->recordId:I

    iget-object v2, p0, Landroid/hardware/radio/sim/PhonebookRecordInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/radio/sim/PhonebookRecordInfo;->number:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/radio/sim/PhonebookRecordInfo;->emails:[Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/radio/sim/PhonebookRecordInfo;->additionalNumbers:[Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v6
.end method

.method private static blacklist convertHalQos(Landroid/hardware/radio/V1_6/Qos;)Landroid/telephony/data/Qos;
    .registers 8

    .line 3866
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/Qos;->getDiscriminator()B

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 3872
    :cond_c
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/Qos;->nr()Landroid/hardware/radio/V1_6/NrQos;

    move-result-object p0

    .line 3873
    new-instance v6, Landroid/telephony/data/NrQos;

    iget-object v0, p0, Landroid/hardware/radio/V1_6/NrQos;->downlink:Landroid/hardware/radio/V1_6/QosBandwidth;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBandwidth(Landroid/hardware/radio/V1_6/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/radio/V1_6/NrQos;->uplink:Landroid/hardware/radio/V1_6/QosBandwidth;

    .line 3874
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBandwidth(Landroid/hardware/radio/V1_6/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/NrQos;->qfi:B

    iget-short v4, p0, Landroid/hardware/radio/V1_6/NrQos;->fiveQi:S

    iget-short v5, p0, Landroid/hardware/radio/V1_6/NrQos;->averagingWindowMs:S

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/data/NrQos;-><init>(Landroid/telephony/data/Qos$QosBandwidth;Landroid/telephony/data/Qos$QosBandwidth;III)V

    return-object v6

    .line 3868
    :cond_29
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/Qos;->eps()Landroid/hardware/radio/V1_6/EpsQos;

    move-result-object p0

    .line 3869
    new-instance v0, Landroid/telephony/data/EpsQos;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/EpsQos;->downlink:Landroid/hardware/radio/V1_6/QosBandwidth;

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBandwidth(Landroid/hardware/radio/V1_6/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/V1_6/EpsQos;->uplink:Landroid/hardware/radio/V1_6/QosBandwidth;

    .line 3870
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBandwidth(Landroid/hardware/radio/V1_6/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v2

    iget-short p0, p0, Landroid/hardware/radio/V1_6/EpsQos;->qci:S

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/data/EpsQos;-><init>(Landroid/telephony/data/Qos$QosBandwidth;Landroid/telephony/data/Qos$QosBandwidth;I)V

    return-object v0
.end method

.method private static blacklist convertHalQos(Landroid/hardware/radio/data/Qos;)Landroid/telephony/data/Qos;
    .registers 8

    .line 3881
    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getTag()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 3887
    :cond_c
    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getNr()Landroid/hardware/radio/data/NrQos;

    move-result-object p0

    .line 3888
    new-instance v6, Landroid/telephony/data/NrQos;

    iget-object v0, p0, Landroid/hardware/radio/data/NrQos;->downlink:Landroid/hardware/radio/data/QosBandwidth;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBandwidth(Landroid/hardware/radio/data/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/radio/data/NrQos;->uplink:Landroid/hardware/radio/data/QosBandwidth;

    .line 3889
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBandwidth(Landroid/hardware/radio/data/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/data/NrQos;->qfi:B

    iget v4, p0, Landroid/hardware/radio/data/NrQos;->fiveQi:I

    iget-char v5, p0, Landroid/hardware/radio/data/NrQos;->averagingWindowMs:C

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/data/NrQos;-><init>(Landroid/telephony/data/Qos$QosBandwidth;Landroid/telephony/data/Qos$QosBandwidth;III)V

    return-object v6

    .line 3883
    :cond_29
    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getEps()Landroid/hardware/radio/data/EpsQos;

    move-result-object p0

    .line 3884
    new-instance v0, Landroid/telephony/data/EpsQos;

    iget-object v1, p0, Landroid/hardware/radio/data/EpsQos;->downlink:Landroid/hardware/radio/data/QosBandwidth;

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBandwidth(Landroid/hardware/radio/data/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/data/EpsQos;->uplink:Landroid/hardware/radio/data/QosBandwidth;

    .line 3885
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBandwidth(Landroid/hardware/radio/data/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v2

    iget p0, p0, Landroid/hardware/radio/data/EpsQos;->qci:I

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/data/EpsQos;-><init>(Landroid/telephony/data/Qos$QosBandwidth;Landroid/telephony/data/Qos$QosBandwidth;I)V

    return-object v0
.end method

.method private static blacklist convertHalQosBandwidth(Landroid/hardware/radio/V1_6/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;
    .registers 3

    .line 3857
    new-instance v0, Landroid/telephony/data/Qos$QosBandwidth;

    iget v1, p0, Landroid/hardware/radio/V1_6/QosBandwidth;->maxBitrateKbps:I

    iget p0, p0, Landroid/hardware/radio/V1_6/QosBandwidth;->guaranteedBitrateKbps:I

    invoke-direct {v0, v1, p0}, Landroid/telephony/data/Qos$QosBandwidth;-><init>(II)V

    return-object v0
.end method

.method private static blacklist convertHalQosBandwidth(Landroid/hardware/radio/data/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;
    .registers 3

    .line 3862
    new-instance v0, Landroid/telephony/data/Qos$QosBandwidth;

    iget v1, p0, Landroid/hardware/radio/data/QosBandwidth;->maxBitrateKbps:I

    iget p0, p0, Landroid/hardware/radio/data/QosBandwidth;->guaranteedBitrateKbps:I

    invoke-direct {v0, v1, p0}, Landroid/telephony/data/Qos$QosBandwidth;-><init>(II)V

    return-object v0
.end method

.method private static blacklist convertHalQosBearerFilter(Landroid/hardware/radio/V1_6/QosFilter;)Landroid/telephony/data/QosBearerFilter;
    .registers 18

    move-object/from16 v0, p0

    .line 3898
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3899
    iget-object v2, v0, Landroid/hardware/radio/V1_6/QosFilter;->localAddresses:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_24

    .line 3901
    array-length v4, v2

    move v5, v3

    :goto_16
    if-ge v5, v4, :cond_24

    aget-object v6, v2, v5

    .line 3902
    invoke-static {v6}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 3905
    :cond_24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3906
    iget-object v4, v0, Landroid/hardware/radio/V1_6/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_44

    .line 3908
    array-length v5, v4

    :goto_36
    if-ge v3, v5, :cond_44

    aget-object v6, v4, v3

    .line 3909
    invoke-static {v6}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 3913
    :cond_44
    iget-object v3, v0, Landroid/hardware/radio/V1_6/QosFilter;->localPort:Landroid/hardware/radio/V1_6/MaybePort;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_61

    .line 3914
    invoke-virtual {v3}, Landroid/hardware/radio/V1_6/MaybePort;->getDiscriminator()B

    move-result v3

    if-ne v3, v5, :cond_61

    .line 3916
    iget-object v3, v0, Landroid/hardware/radio/V1_6/QosFilter;->localPort:Landroid/hardware/radio/V1_6/MaybePort;

    invoke-virtual {v3}, Landroid/hardware/radio/V1_6/MaybePort;->range()Landroid/hardware/radio/V1_6/PortRange;

    move-result-object v3

    .line 3917
    new-instance v6, Landroid/telephony/data/QosBearerFilter$PortRange;

    iget v7, v3, Landroid/hardware/radio/V1_6/PortRange;->start:I

    iget v3, v3, Landroid/hardware/radio/V1_6/PortRange;->end:I

    invoke-direct {v6, v7, v3}, Landroid/telephony/data/QosBearerFilter$PortRange;-><init>(II)V

    move-object v3, v6

    goto :goto_62

    :cond_61
    move-object v3, v4

    .line 3921
    :goto_62
    iget-object v6, v0, Landroid/hardware/radio/V1_6/QosFilter;->remotePort:Landroid/hardware/radio/V1_6/MaybePort;

    if-eqz v6, :cond_7c

    .line 3922
    invoke-virtual {v6}, Landroid/hardware/radio/V1_6/MaybePort;->getDiscriminator()B

    move-result v6

    if-ne v6, v5, :cond_7c

    .line 3924
    iget-object v4, v0, Landroid/hardware/radio/V1_6/QosFilter;->remotePort:Landroid/hardware/radio/V1_6/MaybePort;

    .line 3925
    invoke-virtual {v4}, Landroid/hardware/radio/V1_6/MaybePort;->range()Landroid/hardware/radio/V1_6/PortRange;

    move-result-object v4

    .line 3926
    new-instance v6, Landroid/telephony/data/QosBearerFilter$PortRange;

    iget v7, v4, Landroid/hardware/radio/V1_6/PortRange;->start:I

    iget v4, v4, Landroid/hardware/radio/V1_6/PortRange;->end:I

    invoke-direct {v6, v7, v4}, Landroid/telephony/data/QosBearerFilter$PortRange;-><init>(II)V

    move-object v4, v6

    :cond_7c
    const/4 v6, -0x1

    .line 3930
    iget-object v7, v0, Landroid/hardware/radio/V1_6/QosFilter;->tos:Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    if-eqz v7, :cond_8d

    .line 3931
    invoke-virtual {v7}, Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;->getDiscriminator()B

    move-result v7

    if-ne v7, v5, :cond_8d

    .line 3933
    iget-object v6, v0, Landroid/hardware/radio/V1_6/QosFilter;->tos:Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    invoke-virtual {v6}, Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;->value()B

    move-result v6

    .line 3937
    :cond_8d
    iget-object v7, v0, Landroid/hardware/radio/V1_6/QosFilter;->flowLabel:Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    const-wide/16 v8, -0x1

    if-eqz v7, :cond_a1

    .line 3938
    invoke-virtual {v7}, Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;->getDiscriminator()B

    move-result v7

    if-ne v7, v5, :cond_a1

    .line 3940
    iget-object v7, v0, Landroid/hardware/radio/V1_6/QosFilter;->flowLabel:Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    invoke-virtual {v7}, Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;->value()I

    move-result v7

    int-to-long v10, v7

    goto :goto_a2

    :cond_a1
    move-wide v10, v8

    .line 3944
    :goto_a2
    iget-object v7, v0, Landroid/hardware/radio/V1_6/QosFilter;->spi:Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    if-eqz v7, :cond_b5

    .line 3945
    invoke-virtual {v7}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->getDiscriminator()B

    move-result v7

    if-ne v7, v5, :cond_b5

    .line 3947
    iget-object v5, v0, Landroid/hardware/radio/V1_6/QosFilter;->spi:Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    invoke-virtual {v5}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->value()I

    move-result v5

    int-to-long v7, v5

    move-wide v12, v7

    goto :goto_b6

    :cond_b5
    move-wide v12, v8

    .line 3950
    :goto_b6
    new-instance v14, Landroid/telephony/data/QosBearerFilter;

    iget-byte v5, v0, Landroid/hardware/radio/V1_6/QosFilter;->protocol:B

    iget-byte v15, v0, Landroid/hardware/radio/V1_6/QosFilter;->direction:B

    iget v9, v0, Landroid/hardware/radio/V1_6/QosFilter;->precedence:I

    move-object v0, v14

    move-wide v7, v10

    move/from16 v16, v9

    move-wide v9, v12

    move v11, v15

    move/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Landroid/telephony/data/QosBearerFilter;-><init>(Ljava/util/List;Ljava/util/List;Landroid/telephony/data/QosBearerFilter$PortRange;Landroid/telephony/data/QosBearerFilter$PortRange;IIJJII)V

    return-object v14
.end method

.method private static blacklist convertHalQosBearerFilter(Landroid/hardware/radio/data/QosFilter;)Landroid/telephony/data/QosBearerFilter;
    .registers 16

    .line 3956
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3957
    iget-object v0, p0, Landroid/hardware/radio/data/QosFilter;->localAddresses:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    .line 3959
    array-length v3, v0

    move v4, v2

    :goto_c
    if-ge v4, v3, :cond_1a

    aget-object v5, v0, v4

    .line 3960
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 3963
    :cond_1a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3964
    iget-object v0, p0, Landroid/hardware/radio/data/QosFilter;->remoteAddresses:[Ljava/lang/String;

    if-eqz v0, :cond_32

    .line 3966
    array-length v4, v0

    :goto_24
    if-ge v2, v4, :cond_32

    aget-object v5, v0, v2

    .line 3967
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 3971
    :cond_32
    iget-object v0, p0, Landroid/hardware/radio/data/QosFilter;->localPort:Landroid/hardware/radio/data/PortRange;

    const/4 v2, 0x0

    if-eqz v0, :cond_44

    .line 3972
    new-instance v0, Landroid/telephony/data/QosBearerFilter$PortRange;

    iget-object v4, p0, Landroid/hardware/radio/data/QosFilter;->localPort:Landroid/hardware/radio/data/PortRange;

    iget v5, v4, Landroid/hardware/radio/data/PortRange;->start:I

    iget v4, v4, Landroid/hardware/radio/data/PortRange;->end:I

    invoke-direct {v0, v5, v4}, Landroid/telephony/data/QosBearerFilter$PortRange;-><init>(II)V

    move-object v4, v0

    goto :goto_45

    :cond_44
    move-object v4, v2

    .line 3976
    :goto_45
    iget-object v0, p0, Landroid/hardware/radio/data/QosFilter;->remotePort:Landroid/hardware/radio/data/PortRange;

    if-eqz v0, :cond_56

    .line 3977
    new-instance v0, Landroid/telephony/data/QosBearerFilter$PortRange;

    iget-object v2, p0, Landroid/hardware/radio/data/QosFilter;->remotePort:Landroid/hardware/radio/data/PortRange;

    iget v5, v2, Landroid/hardware/radio/data/PortRange;->start:I

    iget v2, v2, Landroid/hardware/radio/data/PortRange;->end:I

    invoke-direct {v0, v5, v2}, Landroid/telephony/data/QosBearerFilter$PortRange;-><init>(II)V

    move-object v5, v0

    goto :goto_57

    :cond_56
    move-object v5, v2

    :goto_57
    const/4 v0, -0x1

    .line 3981
    iget-object v2, p0, Landroid/hardware/radio/data/QosFilter;->tos:Landroid/hardware/radio/data/QosFilterTypeOfService;

    const/4 v6, 0x1

    if-eqz v2, :cond_65

    .line 3982
    invoke-virtual {v2}, Landroid/hardware/radio/data/QosFilterTypeOfService;->getTag()I

    move-result v2

    if-ne v2, v6, :cond_65

    move v7, v6

    goto :goto_66

    :cond_65
    move v7, v0

    .line 3988
    :goto_66
    iget-object v0, p0, Landroid/hardware/radio/data/QosFilter;->flowLabel:Landroid/hardware/radio/data/QosFilterIpv6FlowLabel;

    const-wide/16 v8, 0x1

    const-wide/16 v10, -0x1

    if-eqz v0, :cond_76

    .line 3989
    invoke-virtual {v0}, Landroid/hardware/radio/data/QosFilterIpv6FlowLabel;->getTag()I

    move-result v0

    if-ne v0, v6, :cond_76

    move-wide v12, v8

    goto :goto_77

    :cond_76
    move-wide v12, v10

    .line 3995
    :goto_77
    iget-object v0, p0, Landroid/hardware/radio/data/QosFilter;->spi:Landroid/hardware/radio/data/QosFilterIpsecSpi;

    if-eqz v0, :cond_83

    .line 3996
    invoke-virtual {v0}, Landroid/hardware/radio/data/QosFilterIpsecSpi;->getTag()I

    move-result v0

    if-ne v0, v6, :cond_83

    move-wide v9, v8

    goto :goto_84

    :cond_83
    move-wide v9, v10

    .line 4001
    :goto_84
    new-instance v14, Landroid/telephony/data/QosBearerFilter;

    iget-byte v6, p0, Landroid/hardware/radio/data/QosFilter;->protocol:B

    iget-byte v11, p0, Landroid/hardware/radio/data/QosFilter;->direction:B

    iget p0, p0, Landroid/hardware/radio/data/QosFilter;->precedence:I

    move-object v0, v14

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move-wide v7, v12

    move v12, p0

    invoke-direct/range {v0 .. v12}, Landroid/telephony/data/QosBearerFilter;-><init>(Ljava/util/List;Ljava/util/List;Landroid/telephony/data/QosBearerFilter$PortRange;Landroid/telephony/data/QosBearerFilter$PortRange;IIJJII)V

    return-object v14
.end method

.method private static blacklist convertHalQosBearerSession(Landroid/hardware/radio/V1_6/QosSession;)Landroid/telephony/data/QosBearerSession;
    .registers 4

    .line 4007
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4008
    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosSession;->qosFilters:Ljava/util/ArrayList;

    if-eqz v1, :cond_21

    .line 4009
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_6/QosFilter;

    .line 4010
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBearerFilter(Landroid/hardware/radio/V1_6/QosFilter;)Landroid/telephony/data/QosBearerFilter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 4013
    :cond_21
    new-instance v1, Landroid/telephony/data/QosBearerSession;

    iget v2, p0, Landroid/hardware/radio/V1_6/QosSession;->qosSessionId:I

    iget-object p0, p0, Landroid/hardware/radio/V1_6/QosSession;->qos:Landroid/hardware/radio/V1_6/Qos;

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalQos(Landroid/hardware/radio/V1_6/Qos;)Landroid/telephony/data/Qos;

    move-result-object p0

    invoke-direct {v1, v2, p0, v0}, Landroid/telephony/data/QosBearerSession;-><init>(ILandroid/telephony/data/Qos;Ljava/util/List;)V

    return-object v1
.end method

.method private static blacklist convertHalQosBearerSession(Landroid/hardware/radio/data/QosSession;)Landroid/telephony/data/QosBearerSession;
    .registers 6

    .line 4019
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4020
    iget-object v1, p0, Landroid/hardware/radio/data/QosSession;->qosFilters:[Landroid/hardware/radio/data/QosFilter;

    if-eqz v1, :cond_19

    .line 4021
    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 4022
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBearerFilter(Landroid/hardware/radio/data/QosFilter;)Landroid/telephony/data/QosBearerFilter;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 4025
    :cond_19
    new-instance v1, Landroid/telephony/data/QosBearerSession;

    iget v2, p0, Landroid/hardware/radio/data/QosSession;->qosSessionId:I

    iget-object p0, p0, Landroid/hardware/radio/data/QosSession;->qos:Landroid/hardware/radio/data/Qos;

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalQos(Landroid/hardware/radio/data/Qos;)Landroid/telephony/data/Qos;

    move-result-object p0

    invoke-direct {v1, v2, p0, v0}, Landroid/telephony/data/QosBearerSession;-><init>(ILandroid/telephony/data/Qos;Ljava/util/List;)V

    return-object v1
.end method

.method public static blacklist convertHalRadioAccessNetworks(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/4 v0, 0x3

    if-eq p0, v0, :cond_14

    const/4 v0, 0x4

    if-eq p0, v0, :cond_12

    const/4 v1, 0x5

    if-eq p0, v1, :cond_11

    const/4 p0, 0x0

    return p0

    :cond_11
    return v0

    :cond_12
    const/4 p0, 0x6

    return p0

    :cond_14
    return v0
.end method

.method public static blacklist convertHalRadioAccessSpecifier(Landroid/hardware/radio/V1_5/RadioAccessSpecifier;)Landroid/telephony/RadioAccessSpecifier;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1271
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1272
    iget-object v1, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-virtual {v1}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->getDiscriminator()B

    move-result v1

    if-eqz v1, :cond_30

    const/4 v2, 0x1

    if-eq v1, v2, :cond_29

    const/4 v2, 0x2

    if-eq v1, v2, :cond_22

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1b

    goto :goto_36

    .line 1287
    :cond_1b
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->ngranBands()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_36

    .line 1283
    :cond_22
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->eutranBands()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_36

    .line 1279
    :cond_29
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->utranBands()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_36

    .line 1275
    :cond_30
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->geranBands()Ljava/util/ArrayList;

    move-result-object v0

    .line 1290
    :goto_36
    new-instance v1, Landroid/telephony/RadioAccessSpecifier;

    iget v2, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->radioAccessNetwork:I

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalRadioAccessNetworks(I)I

    move-result v2

    .line 1291
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    .line 1292
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v3, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    invoke-direct {v1, v2, v0, p0}, Landroid/telephony/RadioAccessSpecifier;-><init>(I[I[I)V

    return-object v1
.end method

.method public static blacklist convertHalRadioAccessSpecifier(Landroid/hardware/radio/network/RadioAccessSpecifier;)Landroid/telephony/RadioAccessSpecifier;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1304
    :cond_4
    iget-object v1, p0, Landroid/hardware/radio/network/RadioAccessSpecifier;->bands:Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    invoke-virtual {v1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getTag()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_25

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1e

    const/4 v2, 0x4

    if-eq v1, v2, :cond_17

    goto :goto_32

    .line 1315
    :cond_17
    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifier;->bands:Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    invoke-virtual {v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getNgranBands()[I

    move-result-object v0

    goto :goto_32

    .line 1312
    :cond_1e
    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifier;->bands:Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    invoke-virtual {v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getEutranBands()[I

    move-result-object v0

    goto :goto_32

    .line 1309
    :cond_25
    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifier;->bands:Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    invoke-virtual {v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getUtranBands()[I

    move-result-object v0

    goto :goto_32

    .line 1306
    :cond_2c
    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifier;->bands:Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    invoke-virtual {v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getGeranBands()[I

    move-result-object v0

    .line 1318
    :goto_32
    new-instance v1, Landroid/telephony/RadioAccessSpecifier;

    iget v2, p0, Landroid/hardware/radio/network/RadioAccessSpecifier;->accessNetwork:I

    iget-object p0, p0, Landroid/hardware/radio/network/RadioAccessSpecifier;->channels:[I

    invoke-direct {v1, v2, v0, p0}, Landroid/telephony/RadioAccessSpecifier;-><init>(I[I[I)V

    return-object v1
.end method

.method public static blacklist convertHalRadioCapability(Landroid/hardware/radio/V1_0/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;
    .registers 9

    .line 2165
    iget v2, p0, Landroid/hardware/radio/V1_0/RadioCapability;->session:I

    .line 2166
    iget v3, p0, Landroid/hardware/radio/V1_0/RadioCapability;->phase:I

    .line 2167
    iget v0, p0, Landroid/hardware/radio/V1_0/RadioCapability;->raf:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalNetworkTypeBitMask(I)I

    move-result v4

    .line 2168
    iget-object v5, p0, Landroid/hardware/radio/V1_0/RadioCapability;->logicalModemUuid:Ljava/lang/String;

    .line 2169
    iget v6, p0, Landroid/hardware/radio/V1_0/RadioCapability;->status:I

    .line 2171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertHalRadioCapability: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", logicModemUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rcRil.raf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/radio/V1_0/RadioCapability;->raf:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2174
    new-instance p0, Lcom/android/internal/telephony/RadioCapability;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    return-object p0
.end method

.method public static blacklist convertHalRadioCapability(Landroid/hardware/radio/modem/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;
    .registers 9

    .line 2185
    iget v2, p0, Landroid/hardware/radio/modem/RadioCapability;->session:I

    .line 2186
    iget v3, p0, Landroid/hardware/radio/modem/RadioCapability;->phase:I

    .line 2187
    iget v0, p0, Landroid/hardware/radio/modem/RadioCapability;->raf:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalNetworkTypeBitMask(I)I

    move-result v4

    .line 2188
    iget-object v5, p0, Landroid/hardware/radio/modem/RadioCapability;->logicalModemUuid:Ljava/lang/String;

    .line 2189
    iget v6, p0, Landroid/hardware/radio/modem/RadioCapability;->status:I

    .line 2191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertHalRadioCapability: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", logicModemUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rcRil.raf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/radio/modem/RadioCapability;->raf:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2194
    new-instance p0, Lcom/android/internal/telephony/RadioCapability;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    return-object p0
.end method

.method public static blacklist convertHalRadioState(I)I
    .registers 4

    const/4 v0, 0x1

    if-eqz p0, :cond_23

    if-eq p0, v0, :cond_21

    const/16 v1, 0xa

    if-ne p0, v1, :cond_a

    goto :goto_24

    .line 4101
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized RadioState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    const/4 v0, 0x2

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    return v0
.end method

.method public static blacklist convertHalSignalStrength(Landroid/hardware/radio/network/SignalStrength;)Landroid/telephony/SignalStrength;
    .registers 9

    .line 3063
    new-instance v7, Landroid/telephony/SignalStrength;

    iget-object v0, p0, Landroid/hardware/radio/network/SignalStrength;->cdma:Landroid/hardware/radio/network/CdmaSignalStrength;

    iget-object v1, p0, Landroid/hardware/radio/network/SignalStrength;->evdo:Landroid/hardware/radio/network/EvdoSignalStrength;

    .line 3064
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/network/CdmaSignalStrength;Landroid/hardware/radio/network/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/radio/network/SignalStrength;->gsm:Landroid/hardware/radio/network/GsmSignalStrength;

    .line 3065
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/network/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v2

    iget-object v0, p0, Landroid/hardware/radio/network/SignalStrength;->wcdma:Landroid/hardware/radio/network/WcdmaSignalStrength;

    .line 3066
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalWcdmaSignalStrength(Landroid/hardware/radio/network/WcdmaSignalStrength;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v3

    iget-object v0, p0, Landroid/hardware/radio/network/SignalStrength;->tdscdma:Landroid/hardware/radio/network/TdscdmaSignalStrength;

    .line 3067
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Landroid/hardware/radio/network/TdscdmaSignalStrength;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v4

    iget-object v0, p0, Landroid/hardware/radio/network/SignalStrength;->lte:Landroid/hardware/radio/network/LteSignalStrength;

    .line 3068
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Landroid/hardware/radio/network/LteSignalStrength;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v5

    iget-object p0, p0, Landroid/hardware/radio/network/SignalStrength;->nr:Landroid/hardware/radio/network/NrSignalStrength;

    .line 3069
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalNrSignalStrength(Landroid/hardware/radio/network/NrSignalStrength;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    return-object v7
.end method

.method public static blacklist convertHalSignalStrength(Ljava/lang/Object;)Landroid/telephony/SignalStrength;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 3014
    :cond_4
    instance-of v1, p0, Landroid/hardware/radio/V1_0/SignalStrength;

    if-eqz v1, :cond_35

    .line 3015
    check-cast p0, Landroid/hardware/radio/V1_0/SignalStrength;

    .line 3017
    new-instance v7, Landroid/telephony/SignalStrength;

    iget-object v0, p0, Landroid/hardware/radio/V1_0/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v1, p0, Landroid/hardware/radio/V1_0/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    .line 3018
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/radio/V1_0/SignalStrength;->gw:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    .line 3019
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/V1_0/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v2

    new-instance v3, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v3}, Landroid/telephony/CellSignalStrengthWcdma;-><init>()V

    iget-object v0, p0, Landroid/hardware/radio/V1_0/SignalStrength;->tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    .line 3020
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v4

    iget-object p0, p0, Landroid/hardware/radio/V1_0/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    .line 3021
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v5

    new-instance v6, Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v6}, Landroid/telephony/CellSignalStrengthNr;-><init>()V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    return-object v7

    .line 3023
    :cond_35
    instance-of v1, p0, Landroid/hardware/radio/V1_2/SignalStrength;

    if-eqz v1, :cond_67

    .line 3024
    check-cast p0, Landroid/hardware/radio/V1_2/SignalStrength;

    .line 3026
    new-instance v7, Landroid/telephony/SignalStrength;

    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v1, p0, Landroid/hardware/radio/V1_2/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    .line 3027
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    .line 3028
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/V1_0/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v2

    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    .line 3029
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalWcdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v3

    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    .line 3030
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v4

    iget-object p0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    .line 3031
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v5

    new-instance v6, Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v6}, Landroid/telephony/CellSignalStrengthNr;-><init>()V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    return-object v7

    .line 3032
    :cond_67
    instance-of v1, p0, Landroid/hardware/radio/V1_4/SignalStrength;

    if-eqz v1, :cond_9a

    .line 3033
    check-cast p0, Landroid/hardware/radio/V1_4/SignalStrength;

    .line 3035
    new-instance v7, Landroid/telephony/SignalStrength;

    iget-object v0, p0, Landroid/hardware/radio/V1_4/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v1, p0, Landroid/hardware/radio/V1_4/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    .line 3036
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/radio/V1_4/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    .line 3037
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/V1_0/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v2

    iget-object v0, p0, Landroid/hardware/radio/V1_4/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    .line 3038
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalWcdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v3

    iget-object v0, p0, Landroid/hardware/radio/V1_4/SignalStrength;->tdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    .line 3039
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v4

    iget-object v0, p0, Landroid/hardware/radio/V1_4/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    .line 3040
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v5

    iget-object p0, p0, Landroid/hardware/radio/V1_4/SignalStrength;->nr:Landroid/hardware/radio/V1_4/NrSignalStrength;

    .line 3041
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalNrSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    return-object v7

    .line 3042
    :cond_9a
    instance-of v1, p0, Landroid/hardware/radio/V1_6/SignalStrength;

    if-eqz v1, :cond_cd

    .line 3043
    check-cast p0, Landroid/hardware/radio/V1_6/SignalStrength;

    .line 3045
    new-instance v7, Landroid/telephony/SignalStrength;

    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    .line 3046
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    .line 3047
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/V1_0/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v2

    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    .line 3048
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalWcdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v3

    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->tdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    .line 3049
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v4

    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->lte:Landroid/hardware/radio/V1_6/LteSignalStrength;

    .line 3050
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v5

    iget-object p0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->nr:Landroid/hardware/radio/V1_6/NrSignalStrength;

    .line 3051
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalNrSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    return-object v7

    :cond_cd
    return-object v0
.end method

.method private static blacklist convertHalSliceInfo(Landroid/hardware/radio/V1_6/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;
    .registers 4

    .line 3735
    new-instance v0, Landroid/telephony/data/NetworkSliceInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/data/NetworkSliceInfo$Builder;-><init>()V

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/SliceInfo;->sst:B

    .line 3736
    invoke-virtual {v0, v1}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setSliceServiceType(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSst:B

    .line 3737
    invoke-virtual {v0, v1}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setMappedHplmnSliceServiceType(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    move-result-object v0

    .line 3738
    iget v1, p0, Landroid/hardware/radio/V1_6/SliceInfo;->sliceDifferentiator:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1f

    .line 3739
    invoke-virtual {v0, v1}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setSliceDifferentiator(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    move-result-object v1

    iget p0, p0, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSD:I

    .line 3740
    invoke-virtual {v1, p0}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setMappedHplmnSliceDifferentiator(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    .line 3742
    :cond_1f
    invoke-virtual {v0}, Landroid/telephony/data/NetworkSliceInfo$Builder;->build()Landroid/telephony/data/NetworkSliceInfo;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist convertHalSliceInfo(Landroid/hardware/radio/data/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;
    .registers 4

    .line 3746
    new-instance v0, Landroid/telephony/data/NetworkSliceInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/data/NetworkSliceInfo$Builder;-><init>()V

    iget-byte v1, p0, Landroid/hardware/radio/data/SliceInfo;->sliceServiceType:B

    .line 3747
    invoke-virtual {v0, v1}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setSliceServiceType(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/radio/data/SliceInfo;->mappedHplmnSst:B

    .line 3748
    invoke-virtual {v0, v1}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setMappedHplmnSliceServiceType(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    move-result-object v0

    .line 3749
    iget v1, p0, Landroid/hardware/radio/data/SliceInfo;->sliceDifferentiator:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1f

    .line 3750
    invoke-virtual {v0, v1}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setSliceDifferentiator(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    move-result-object v1

    iget p0, p0, Landroid/hardware/radio/data/SliceInfo;->mappedHplmnSd:I

    .line 3751
    invoke-virtual {v1, p0}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setMappedHplmnSliceDifferentiator(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    .line 3753
    :cond_1f
    invoke-virtual {v0}, Landroid/telephony/data/NetworkSliceInfo$Builder;->build()Landroid/telephony/data/NetworkSliceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist convertHalSlicingConfig(Landroid/hardware/radio/V1_6/SlicingConfig;)Landroid/telephony/data/NetworkSlicingConfig;
    .registers 4

    .line 3796
    iget-object v0, p0, Landroid/hardware/radio/V1_6/SlicingConfig;->urspRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 3814
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3815
    new-instance v1, Landroid/telephony/data/NetworkSlicingConfig;

    iget-object p0, p0, Landroid/hardware/radio/V1_6/SlicingConfig;->sliceInfo:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 3816
    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-direct {v1, v0, p0}, Landroid/telephony/data/NetworkSlicingConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public static blacklist convertHalSlicingConfig(Landroid/hardware/radio/data/SlicingConfig;)Landroid/telephony/data/NetworkSlicingConfig;
    .registers 21

    move-object/from16 v1, p0

    .line 3826
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3827
    iget-object v3, v1, Landroid/hardware/radio/data/SlicingConfig;->urspRules:[Landroid/hardware/radio/data/UrspRule;

    array-length v4, v3

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v4, :cond_98

    aget-object v7, v3, v6

    .line 3828
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3829
    iget-object v9, v7, Landroid/hardware/radio/data/UrspRule;->trafficDescriptors:[Landroid/hardware/radio/data/TrafficDescriptor;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_18
    if-ge v11, v10, :cond_3c

    aget-object v0, v9, v11

    .line 3831
    :try_start_1c
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalTrafficDescriptor(Landroid/hardware/radio/data/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_23} :catch_24

    goto :goto_39

    :catch_24
    move-exception v0

    .line 3833
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "convertHalTrafficDescriptor: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    :goto_39
    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    .line 3836
    :cond_3c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3838
    iget-object v9, v7, Landroid/hardware/radio/data/UrspRule;->routeSelectionDescriptor:[Landroid/hardware/radio/data/RouteSelectionDescriptor;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_45
    if-ge v11, v10, :cond_86

    aget-object v12, v9, v11

    .line 3839
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3840
    iget-object v13, v12, Landroid/hardware/radio/data/RouteSelectionDescriptor;->sliceInfo:[Landroid/hardware/radio/data/SliceInfo;

    array-length v14, v13

    const/4 v5, 0x0

    :goto_52
    if-ge v5, v14, :cond_64

    aget-object v16, v13, v5

    move-object/from16 v19, v3

    .line 3841
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/RILUtils;->convertHalSliceInfo(Landroid/hardware/radio/data/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v19

    goto :goto_52

    :cond_64
    move-object/from16 v19, v3

    .line 3843
    new-instance v3, Landroid/telephony/data/RouteSelectionDescriptor;

    iget-byte v14, v12, Landroid/hardware/radio/data/RouteSelectionDescriptor;->precedence:B

    iget v5, v12, Landroid/hardware/radio/data/RouteSelectionDescriptor;->sessionType:I

    iget-byte v13, v12, Landroid/hardware/radio/data/RouteSelectionDescriptor;->sscMode:B

    iget-object v12, v12, Landroid/hardware/radio/data/RouteSelectionDescriptor;->dnn:[Ljava/lang/String;

    .line 3844
    invoke-static {v12}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    move v12, v13

    move-object v13, v3

    move-object/from16 v17, v15

    move v15, v5

    move/from16 v16, v12

    invoke-direct/range {v13 .. v18}, Landroid/telephony/data/RouteSelectionDescriptor;-><init>(IIILjava/util/List;Ljava/util/List;)V

    .line 3843
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v19

    goto :goto_45

    :cond_86
    move-object/from16 v19, v3

    .line 3846
    new-instance v3, Landroid/telephony/data/UrspRule;

    iget v5, v7, Landroid/hardware/radio/data/UrspRule;->precedence:I

    invoke-direct {v3, v5, v8, v0}, Landroid/telephony/data/UrspRule;-><init>(ILjava/util/List;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v19

    goto/16 :goto_b

    .line 3848
    :cond_98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3849
    iget-object v1, v1, Landroid/hardware/radio/data/SlicingConfig;->sliceInfo:[Landroid/hardware/radio/data/SliceInfo;

    array-length v3, v1

    const/4 v5, 0x0

    :goto_a1
    if-ge v5, v3, :cond_af

    aget-object v4, v1, v5

    .line 3850
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalSliceInfo(Landroid/hardware/radio/data/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_a1

    .line 3852
    :cond_af
    new-instance v1, Landroid/telephony/data/NetworkSlicingConfig;

    invoke-direct {v1, v2, v0}, Landroid/telephony/data/NetworkSlicingConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public static blacklist convertHalSlotStatus(Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/IccSlotStatus;",
            ">;"
        }
    .end annotation

    .line 4506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 4508
    :try_start_7
    move-object v3, p0

    check-cast v3, [Landroid/hardware/radio/config/SimSlotStatus;

    .line 4510
    array-length v4, v3

    move v5, v2

    :goto_c
    if-ge v5, v4, :cond_52

    aget-object v6, v3, v5

    .line 4511
    new-instance v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    invoke-direct {v7}, Lcom/android/internal/telephony/uicc/IccSlotStatus;-><init>()V

    .line 4512
    iget v8, v6, Landroid/hardware/radio/config/SimSlotStatus;->cardState:I

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/IccSlotStatus;->setCardState(I)V

    .line 4513
    iget-object v8, v6, Landroid/hardware/radio/config/SimSlotStatus;->portInfo:[Landroid/hardware/radio/config/SimPortInfo;

    array-length v8, v8

    .line 4514
    new-array v9, v8, [Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    iput-object v9, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    move v9, v2

    :goto_22
    if-ge v9, v8, :cond_44

    .line 4516
    new-instance v10, Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    invoke-direct {v10}, Lcom/android/internal/telephony/uicc/IccSimPortInfo;-><init>()V

    .line 4517
    iget-object v11, v6, Landroid/hardware/radio/config/SimSlotStatus;->portInfo:[Landroid/hardware/radio/config/SimPortInfo;

    aget-object v11, v11, v9

    iget-object v12, v11, Landroid/hardware/radio/config/SimPortInfo;->iccId:Ljava/lang/String;

    iput-object v12, v10, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mIccId:Ljava/lang/String;

    .line 4520
    iget-boolean v12, v11, Landroid/hardware/radio/config/SimPortInfo;->portActive:Z

    if-eqz v12, :cond_38

    .line 4521
    iget v11, v11, Landroid/hardware/radio/config/SimPortInfo;->logicalSlotId:I

    goto :goto_39

    :cond_38
    move v11, v1

    :goto_39
    iput v11, v10, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mLogicalSlotIndex:I

    .line 4522
    iput-boolean v12, v10, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    .line 4523
    iget-object v11, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    aput-object v10, v11, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    .line 4525
    :cond_44
    iget-object v8, v6, Landroid/hardware/radio/config/SimSlotStatus;->atr:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    .line 4526
    iget-object v6, v6, Landroid/hardware/radio/config/SimSlotStatus;->eid:Ljava/lang/String;

    iput-object v6, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->eid:Ljava/lang/String;

    .line 4527
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_4f} :catch_53

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_52
    return-object v0

    :catch_53
    const/4 v3, 0x1

    .line 4533
    :try_start_54
    move-object v4, p0

    check-cast v4, Ljava/util/ArrayList;

    .line 4536
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/config/V1_2/SimSlotStatus;

    .line 4537
    new-instance v6, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    invoke-direct {v6}, Lcom/android/internal/telephony/uicc/IccSlotStatus;-><init>()V

    .line 4538
    iget-object v7, v5, Landroid/hardware/radio/config/V1_2/SimSlotStatus;->base:Landroid/hardware/radio/config/V1_0/SimSlotStatus;

    iget v7, v7, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->cardState:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccSlotStatus;->setCardState(I)V

    new-array v7, v3, [Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    .line 4540
    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    .line 4541
    new-instance v7, Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    invoke-direct {v7}, Lcom/android/internal/telephony/uicc/IccSimPortInfo;-><init>()V

    .line 4542
    iget-object v8, v5, Landroid/hardware/radio/config/V1_2/SimSlotStatus;->base:Landroid/hardware/radio/config/V1_0/SimSlotStatus;

    iget-object v9, v8, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->iccid:Ljava/lang/String;

    iput-object v9, v7, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mIccId:Ljava/lang/String;

    .line 4543
    iget v9, v8, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->slotState:I

    if-ne v9, v3, :cond_88

    move v9, v3

    goto :goto_89

    :cond_88
    move v9, v2

    :goto_89
    iput-boolean v9, v7, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    if-eqz v9, :cond_90

    .line 4547
    iget v9, v8, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->logicalSlotId:I

    goto :goto_91

    :cond_90
    move v9, v1

    :goto_91
    iput v9, v7, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mLogicalSlotIndex:I

    .line 4548
    iget-object v9, v6, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    aput-object v7, v9, v2

    .line 4549
    iget-object v7, v8, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->atr:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    .line 4550
    iget-object v5, v5, Landroid/hardware/radio/config/V1_2/SimSlotStatus;->eid:Ljava/lang/String;

    iput-object v5, v6, Lcom/android/internal/telephony/uicc/IccSlotStatus;->eid:Ljava/lang/String;

    .line 4551
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a2
    .catch Ljava/lang/ClassCastException; {:try_start_54 .. :try_end_a2} :catch_a4

    goto :goto_5b

    :cond_a3
    return-object v0

    .line 4557
    :catch_a4
    :try_start_a4
    check-cast p0, Ljava/util/ArrayList;

    .line 4560
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_aa
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ea

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/config/V1_0/SimSlotStatus;

    .line 4561
    new-instance v5, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    invoke-direct {v5}, Lcom/android/internal/telephony/uicc/IccSlotStatus;-><init>()V

    .line 4562
    iget v6, v4, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->cardState:I

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/IccSlotStatus;->setCardState(I)V

    new-array v6, v3, [Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    .line 4564
    iput-object v6, v5, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    .line 4565
    new-instance v6, Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    invoke-direct {v6}, Lcom/android/internal/telephony/uicc/IccSimPortInfo;-><init>()V

    .line 4566
    iget-object v7, v4, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->iccid:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mIccId:Ljava/lang/String;

    .line 4567
    iget v7, v4, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->slotState:I

    if-ne v7, v3, :cond_d3

    move v7, v3

    goto :goto_d4

    :cond_d3
    move v7, v2

    :goto_d4
    iput-boolean v7, v6, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    if-eqz v7, :cond_db

    .line 4571
    iget v7, v4, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->logicalSlotId:I

    goto :goto_dc

    :cond_db
    move v7, v1

    :goto_dc
    iput v7, v6, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mLogicalSlotIndex:I

    .line 4572
    iget-object v7, v5, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    aput-object v6, v7, v2

    .line 4573
    iget-object v4, v4, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->atr:Ljava/lang/String;

    iput-object v4, v5, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    .line 4574
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e9
    .catch Ljava/lang/ClassCastException; {:try_start_a4 .. :try_end_e9} :catch_ea

    goto :goto_aa

    :catch_ea
    :cond_ea
    return-object v0
.end method

.method public static blacklist convertHalTdscdmaSignalStrength(Landroid/hardware/radio/network/TdscdmaSignalStrength;)Landroid/telephony/CellSignalStrengthTdscdma;
    .registers 4

    .line 3265
    new-instance v0, Landroid/telephony/CellSignalStrengthTdscdma;

    iget v1, p0, Landroid/hardware/radio/network/TdscdmaSignalStrength;->signalStrength:I

    .line 3266
    invoke-static {v1}, Landroid/telephony/CellSignalStrength;->getRssiDbmFromAsu(I)I

    move-result v1

    iget v2, p0, Landroid/hardware/radio/network/TdscdmaSignalStrength;->bitErrorRate:I

    iget p0, p0, Landroid/hardware/radio/network/TdscdmaSignalStrength;->rscp:I

    .line 3267
    invoke-static {p0}, Landroid/telephony/CellSignalStrength;->getRscpDbmFromAsu(I)I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>(III)V

    .line 3268
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->getRssi()I

    move-result p0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_29

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->getRscp()I

    move-result p0

    if-ne p0, v1, :cond_29

    .line 3269
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->setDefaultValues()V

    const/4 p0, 0x0

    .line 3270
    invoke-virtual {v0, p0, p0}, Landroid/telephony/CellSignalStrengthTdscdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    :cond_29
    return-object v0
.end method

.method public static blacklist convertHalTdscdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthTdscdma;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 3237
    :cond_4
    instance-of v1, p0, Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    const v2, 0x7fffffff

    if-eqz v1, :cond_18

    .line 3238
    check-cast p0, Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    .line 3240
    new-instance v1, Landroid/telephony/CellSignalStrengthTdscdma;

    .line 3241
    iget p0, p0, Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;->rscp:I

    if-eq p0, v2, :cond_14

    neg-int p0, p0

    :cond_14
    invoke-direct {v1, v2, v2, p0}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>(III)V

    goto :goto_33

    .line 3242
    :cond_18
    instance-of v1, p0, Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    if-eqz v1, :cond_32

    .line 3243
    check-cast p0, Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    .line 3245
    new-instance v1, Landroid/telephony/CellSignalStrengthTdscdma;

    iget v3, p0, Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;->signalStrength:I

    .line 3246
    invoke-static {v3}, Landroid/telephony/CellSignalStrength;->getRssiDbmFromAsu(I)I

    move-result v3

    iget v4, p0, Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;->bitErrorRate:I

    iget p0, p0, Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;->rscp:I

    .line 3247
    invoke-static {p0}, Landroid/telephony/CellSignalStrength;->getRscpDbmFromAsu(I)I

    move-result p0

    invoke-direct {v1, v3, v4, p0}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>(III)V

    goto :goto_33

    :cond_32
    move-object v1, v0

    :goto_33
    if-eqz v1, :cond_47

    .line 3249
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthTdscdma;->getRssi()I

    move-result p0

    if-ne p0, v2, :cond_47

    .line 3250
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthTdscdma;->getRscp()I

    move-result p0

    if-ne p0, v2, :cond_47

    .line 3251
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthTdscdma;->setDefaultValues()V

    .line 3252
    invoke-virtual {v1, v0, v0}, Landroid/telephony/CellSignalStrengthTdscdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    :cond_47
    return-object v1
.end method

.method private static blacklist convertHalTrafficDescriptor(Landroid/hardware/radio/V1_6/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3759
    iget-object v0, p0, Landroid/hardware/radio/V1_6/TrafficDescriptor;->dnn:Landroid/hardware/radio/V1_6/OptionalDnn;

    .line 3758
    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/OptionalDnn;->getDiscriminator()B

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    move-object v0, v1

    goto :goto_11

    .line 3760
    :cond_b
    iget-object v0, p0, Landroid/hardware/radio/V1_6/TrafficDescriptor;->dnn:Landroid/hardware/radio/V1_6/OptionalDnn;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/OptionalDnn;->value()Ljava/lang/String;

    move-result-object v0

    .line 3762
    :goto_11
    iget-object v2, p0, Landroid/hardware/radio/V1_6/TrafficDescriptor;->osAppId:Landroid/hardware/radio/V1_6/OptionalOsAppId;

    .line 3761
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/OptionalOsAppId;->getDiscriminator()B

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_26

    .line 3763
    :cond_1a
    iget-object p0, p0, Landroid/hardware/radio/V1_6/TrafficDescriptor;->osAppId:Landroid/hardware/radio/V1_6/OptionalOsAppId;

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/OptionalOsAppId;->value()Landroid/hardware/radio/V1_6/OsAppId;

    move-result-object p0

    iget-object p0, p0, Landroid/hardware/radio/V1_6/OsAppId;->osAppId:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v1

    .line 3765
    :goto_26
    new-instance p0, Landroid/telephony/data/TrafficDescriptor$Builder;

    invoke-direct {p0}, Landroid/telephony/data/TrafficDescriptor$Builder;-><init>()V

    if-eqz v0, :cond_30

    .line 3767
    invoke-virtual {p0, v0}, Landroid/telephony/data/TrafficDescriptor$Builder;->setDataNetworkName(Ljava/lang/String;)Landroid/telephony/data/TrafficDescriptor$Builder;

    :cond_30
    if-eqz v1, :cond_35

    .line 3770
    invoke-virtual {p0, v1}, Landroid/telephony/data/TrafficDescriptor$Builder;->setOsAppId([B)Landroid/telephony/data/TrafficDescriptor$Builder;

    .line 3772
    :cond_35
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor$Builder;->build()Landroid/telephony/data/TrafficDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist convertHalTrafficDescriptor(Landroid/hardware/radio/data/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3777
    iget-object v0, p0, Landroid/hardware/radio/data/TrafficDescriptor;->dnn:Ljava/lang/String;

    .line 3778
    iget-object p0, p0, Landroid/hardware/radio/data/TrafficDescriptor;->osAppId:Landroid/hardware/radio/data/OsAppId;

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_a

    :cond_8
    iget-object p0, p0, Landroid/hardware/radio/data/OsAppId;->osAppId:[B

    .line 3779
    :goto_a
    new-instance v1, Landroid/telephony/data/TrafficDescriptor$Builder;

    invoke-direct {v1}, Landroid/telephony/data/TrafficDescriptor$Builder;-><init>()V

    if-eqz v0, :cond_14

    .line 3781
    invoke-virtual {v1, v0}, Landroid/telephony/data/TrafficDescriptor$Builder;->setDataNetworkName(Ljava/lang/String;)Landroid/telephony/data/TrafficDescriptor$Builder;

    :cond_14
    if-eqz p0, :cond_19

    .line 3784
    invoke-virtual {v1, p0}, Landroid/telephony/data/TrafficDescriptor$Builder;->setOsAppId([B)Landroid/telephony/data/TrafficDescriptor$Builder;

    .line 3786
    :cond_19
    invoke-virtual {v1}, Landroid/telephony/data/TrafficDescriptor$Builder;->build()Landroid/telephony/data/TrafficDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist convertHalWcdmaSignalStrength(Landroid/hardware/radio/network/WcdmaSignalStrength;)Landroid/telephony/CellSignalStrengthWcdma;
    .registers 5

    .line 3216
    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma;

    iget v1, p0, Landroid/hardware/radio/network/WcdmaSignalStrength;->signalStrength:I

    .line 3217
    invoke-static {v1}, Landroid/telephony/CellSignalStrength;->getRssiDbmFromAsu(I)I

    move-result v1

    iget v2, p0, Landroid/hardware/radio/network/WcdmaSignalStrength;->bitErrorRate:I

    iget v3, p0, Landroid/hardware/radio/network/WcdmaSignalStrength;->rscp:I

    .line 3218
    invoke-static {v3}, Landroid/telephony/CellSignalStrength;->getRscpDbmFromAsu(I)I

    move-result v3

    iget p0, p0, Landroid/hardware/radio/network/WcdmaSignalStrength;->ecno:I

    .line 3219
    invoke-static {p0}, Landroid/telephony/CellSignalStrength;->getEcNoDbFromAsu(I)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(IIII)V

    .line 3220
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getRssi()I

    move-result p0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_2f

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getRscp()I

    move-result p0

    if-ne p0, v1, :cond_2f

    .line 3221
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->setDefaultValues()V

    const/4 p0, 0x0

    .line 3222
    invoke-virtual {v0, p0, p0}, Landroid/telephony/CellSignalStrengthWcdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    :cond_2f
    return-object v0
.end method

.method public static blacklist convertHalWcdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthWcdma;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 3187
    :cond_4
    instance-of v1, p0, Landroid/hardware/radio/V1_0/WcdmaSignalStrength;

    const v2, 0x7fffffff

    if-eqz v1, :cond_1b

    .line 3188
    check-cast p0, Landroid/hardware/radio/V1_0/WcdmaSignalStrength;

    .line 3190
    new-instance v1, Landroid/telephony/CellSignalStrengthWcdma;

    iget v3, p0, Landroid/hardware/radio/V1_0/WcdmaSignalStrength;->signalStrength:I

    .line 3191
    invoke-static {v3}, Landroid/telephony/CellSignalStrength;->getRssiDbmFromAsu(I)I

    move-result v3

    iget p0, p0, Landroid/hardware/radio/V1_0/WcdmaSignalStrength;->bitErrorRate:I

    invoke-direct {v1, v3, p0, v2, v2}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(IIII)V

    goto :goto_40

    .line 3193
    :cond_1b
    instance-of v1, p0, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    if-eqz v1, :cond_3f

    .line 3194
    check-cast p0, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    .line 3196
    new-instance v1, Landroid/telephony/CellSignalStrengthWcdma;

    iget-object v3, p0, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->base:Landroid/hardware/radio/V1_0/WcdmaSignalStrength;

    iget v3, v3, Landroid/hardware/radio/V1_0/WcdmaSignalStrength;->signalStrength:I

    .line 3197
    invoke-static {v3}, Landroid/telephony/CellSignalStrength;->getRssiDbmFromAsu(I)I

    move-result v3

    iget-object v4, p0, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->base:Landroid/hardware/radio/V1_0/WcdmaSignalStrength;

    iget v4, v4, Landroid/hardware/radio/V1_0/WcdmaSignalStrength;->bitErrorRate:I

    iget v5, p0, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->rscp:I

    .line 3198
    invoke-static {v5}, Landroid/telephony/CellSignalStrength;->getRscpDbmFromAsu(I)I

    move-result v5

    iget p0, p0, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->ecno:I

    .line 3199
    invoke-static {p0}, Landroid/telephony/CellSignalStrength;->getEcNoDbFromAsu(I)I

    move-result p0

    invoke-direct {v1, v3, v4, v5, p0}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(IIII)V

    goto :goto_40

    :cond_3f
    move-object v1, v0

    :goto_40
    if-eqz v1, :cond_54

    .line 3201
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getRssi()I

    move-result p0

    if-ne p0, v2, :cond_54

    .line 3202
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getRscp()I

    move-result p0

    if-ne p0, v2, :cond_54

    .line 3203
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->setDefaultValues()V

    .line 3204
    invoke-virtual {v1, v0, v0}, Landroid/telephony/CellSignalStrengthWcdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    :cond_54
    return-object v1
.end method

.method public static blacklist convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_3

    goto :goto_5

    :cond_3
    const-string p0, ""

    :goto_5
    return-object p0
.end method

.method public static blacklist convertSimSlotsMapping(Ljava/util/List;)[Landroid/hardware/radio/config/SlotPortMapping;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;)[",
            "Landroid/hardware/radio/config/SlotPortMapping;"
        }
    .end annotation

    .line 4589
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/radio/config/SlotPortMapping;

    .line 4590
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccSlotMapping;

    .line 4591
    invoke-virtual {v1}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    move-result v2

    .line 4592
    new-instance v3, Landroid/hardware/radio/config/SlotPortMapping;

    invoke-direct {v3}, Landroid/hardware/radio/config/SlotPortMapping;-><init>()V

    aput-object v3, v0, v2

    .line 4593
    invoke-virtual {v1}, Landroid/telephony/UiccSlotMapping;->getPhysicalSlotIndex()I

    move-result v4

    iput v4, v3, Landroid/hardware/radio/config/SlotPortMapping;->physicalSlotId:I

    .line 4594
    aget-object v2, v0, v2

    invoke-virtual {v1}, Landroid/telephony/UiccSlotMapping;->getPortIndex()I

    move-result v1

    iput v1, v2, Landroid/hardware/radio/config/SlotPortMapping;->portId:I

    goto :goto_a

    :cond_30
    return-object v0
.end method

.method public static blacklist convertSlotMappingToList(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4602
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 4603
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccSlotMapping;

    .line 4604
    invoke-virtual {v1}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/UiccSlotMapping;->getPhysicalSlotIndex()I

    move-result v1

    aput v1, v0, v2

    goto :goto_a

    .line 4606
    :cond_21
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist convertToCensoredTerminalResponse(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1470
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_55

    const/4 v1, 0x0

    .line 1472
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->decodeMany([BI)Ljava/util/List;

    move-result-object v0

    .line 1474
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1477
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v4

    if-ne v3, v4, :cond_4a

    .line 1478
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 1479
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v5

    add-int/2addr v4, v5

    .line 1478
    invoke-static {v3, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1480
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1481
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "********"

    .line 1480
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1484
    :cond_4a
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_54

    add-int/2addr v1, v2

    goto :goto_f

    :catch_54
    const/4 p0, 0x0

    :cond_55
    return-object p0
.end method

.method public static blacklist convertToDataProfile(Landroid/hardware/radio/data/DataProfileInfo;)Landroid/telephony/data/DataProfile;
    .registers 5

    .line 1036
    new-instance v0, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v0}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    iget-object v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->apn:Ljava/lang/String;

    .line 1037
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->apn:Ljava/lang/String;

    .line 1038
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 1039
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->authType:I

    .line 1040
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->maxConnsTime:I

    .line 1041
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConnsTime(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->maxConns:I

    .line 1042
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConns(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->waitTime:I

    .line 1043
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setWaitTime(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->enabled:Z

    .line 1044
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->persistent:Z

    .line 1045
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setModemCognitive(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->mtuV4:I

    .line 1046
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV4(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->mtuV6:I

    .line 1047
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV6(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->bearerBitmap:I

    .line 1048
    invoke-static {v1}, Landroid/telephony/ServiceState;->convertBearerBitmaskToNetworkTypeBitmask(I)I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->profileId:I

    .line 1050
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->password:Ljava/lang/String;

    .line 1051
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->protocol:I

    .line 1052
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->roamingProtocol:I

    .line 1053
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->user:Ljava/lang/String;

    .line 1054
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->alwaysOn:Z

    .line 1055
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setAlwaysOn(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 1056
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting$Builder;->build()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    .line 1060
    :try_start_7b
    iget-object v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->trafficDescriptor:Landroid/hardware/radio/data/TrafficDescriptor;

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalTrafficDescriptor(Landroid/hardware/radio/data/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;

    move-result-object v1
    :try_end_81
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7b .. :try_end_81} :catch_82

    goto :goto_98

    :catch_82
    move-exception v1

    .line 1062
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertToDataProfile: Failed to convert traffic descriptor. e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1066
    :goto_98
    new-instance v2, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {v2}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    iget v3, p0, Landroid/hardware/radio/data/DataProfileInfo;->type:I

    .line 1067
    invoke-virtual {v2, v3}, Landroid/telephony/data/DataProfile$Builder;->setType(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v2

    iget-boolean p0, p0, Landroid/hardware/radio/data/DataProfileInfo;->preferred:Z

    .line 1068
    invoke-virtual {v2, p0}, Landroid/telephony/data/DataProfile$Builder;->setPreferred(Z)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 1069
    invoke-virtual {p0, v1}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 1070
    invoke-virtual {p0, v0}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 1071
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist convertToDriverCall(Landroid/hardware/radio/voice/Call;)Lcom/android/internal/telephony/DriverCall;
    .registers 5

    .line 4190
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 4191
    iget v1, p0, Landroid/hardware/radio/voice/Call;->state:I

    invoke-static {v1}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 4192
    iget v1, p0, Landroid/hardware/radio/voice/Call;->index:I

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 4193
    iget v1, p0, Landroid/hardware/radio/voice/Call;->toa:I

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 4194
    iget-boolean v1, p0, Landroid/hardware/radio/voice/Call;->isMpty:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 4195
    iget-boolean v1, p0, Landroid/hardware/radio/voice/Call;->isMT:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 4196
    iget-byte v1, p0, Landroid/hardware/radio/voice/Call;->als:B

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 4197
    iget-boolean v1, p0, Landroid/hardware/radio/voice/Call;->isVoice:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 4198
    iget-boolean v1, p0, Landroid/hardware/radio/voice/Call;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 4199
    iget-object v1, p0, Landroid/hardware/radio/voice/Call;->number:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 4200
    iget v1, p0, Landroid/hardware/radio/voice/Call;->numberPresentation:I

    invoke-static {v1}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 4201
    iget-object v1, p0, Landroid/hardware/radio/voice/Call;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 4202
    iget v1, p0, Landroid/hardware/radio/voice/Call;->namePresentation:I

    invoke-static {v1}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 4203
    iget-object v1, p0, Landroid/hardware/radio/voice/Call;->uusInfo:[Landroid/hardware/radio/voice/UusInfo;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7e

    .line 4204
    new-instance v1, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 4205
    iget-object v2, p0, Landroid/hardware/radio/voice/Call;->uusInfo:[Landroid/hardware/radio/voice/UusInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Landroid/hardware/radio/voice/UusInfo;->uusType:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 4206
    iget-object v1, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v2, p0, Landroid/hardware/radio/voice/Call;->uusInfo:[Landroid/hardware/radio/voice/UusInfo;

    aget-object v2, v2, v3

    iget v2, v2, Landroid/hardware/radio/voice/UusInfo;->uusDcs:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 4207
    iget-object v1, p0, Landroid/hardware/radio/voice/Call;->uusInfo:[Landroid/hardware/radio/voice/UusInfo;

    aget-object v1, v1, v3

    iget-object v1, v1, Landroid/hardware/radio/voice/UusInfo;->uusData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7e

    .line 4208
    iget-object v1, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v2, p0, Landroid/hardware/radio/voice/Call;->uusInfo:[Landroid/hardware/radio/voice/UusInfo;

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/hardware/radio/voice/UusInfo;->uusData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 4212
    :cond_7e
    iget-object v1, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v2, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 4213
    iget v1, p0, Landroid/hardware/radio/voice/Call;->audioQuality:I

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    .line 4214
    iget-object p0, p0, Landroid/hardware/radio/voice/Call;->forwardedNumber:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/internal/telephony/DriverCall;->forwardedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist convertToDriverCall(Ljava/lang/Object;)Lcom/android/internal/telephony/DriverCall;
    .registers 8

    .line 4128
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 4132
    instance-of v1, p0, Landroid/hardware/radio/V1_6/Call;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 4133
    move-object v2, p0

    check-cast v2, Landroid/hardware/radio/V1_6/Call;

    .line 4134
    iget-object p0, v2, Landroid/hardware/radio/V1_6/Call;->base:Landroid/hardware/radio/V1_2/Call;

    .line 4135
    iget-object v1, p0, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    :goto_11
    move-object v6, v1

    move-object v1, p0

    move-object p0, v2

    move-object v2, v6

    goto :goto_2b

    .line 4136
    :cond_16
    instance-of v1, p0, Landroid/hardware/radio/V1_2/Call;

    if-eqz v1, :cond_1f

    .line 4138
    check-cast p0, Landroid/hardware/radio/V1_2/Call;

    .line 4139
    iget-object v1, p0, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    goto :goto_11

    .line 4140
    :cond_1f
    instance-of v1, p0, Landroid/hardware/radio/V1_0/Call;

    if-eqz v1, :cond_29

    .line 4143
    check-cast p0, Landroid/hardware/radio/V1_0/Call;

    move-object v1, v2

    move-object v2, p0

    move-object p0, v1

    goto :goto_2b

    :cond_29
    move-object p0, v2

    move-object v1, p0

    :goto_2b
    if-eqz v2, :cond_c3

    .line 4150
    iget v3, v2, Landroid/hardware/radio/V1_0/Call;->state:I

    invoke-static {v3}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 4151
    iget v3, v2, Landroid/hardware/radio/V1_0/Call;->index:I

    iput v3, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 4152
    iget v3, v2, Landroid/hardware/radio/V1_0/Call;->toa:I

    iput v3, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 4153
    iget-boolean v3, v2, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    iput-boolean v3, v0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 4154
    iget-boolean v3, v2, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    iput-boolean v3, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 4155
    iget-byte v3, v2, Landroid/hardware/radio/V1_0/Call;->als:B

    iput v3, v0, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 4156
    iget-boolean v3, v2, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    iput-boolean v3, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 4157
    iget-boolean v3, v2, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    iput-boolean v3, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 4158
    iget-object v3, v2, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 4159
    iget v3, v2, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    invoke-static {v3}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 4161
    iget-object v3, v2, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 4162
    iget v3, v2, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    invoke-static {v3}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 4163
    iget-object v3, v2, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b9

    .line 4164
    new-instance v3, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v3, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 4165
    iget-object v4, v2, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/UusInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 4166
    iget-object v3, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/UusInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 4167
    iget-object v3, v2, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/UusInfo;

    iget-object v3, v3, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b9

    .line 4168
    iget-object v2, v2, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/UusInfo;

    iget-object v2, v2, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 4169
    iget-object v3, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 4173
    :cond_b9
    iget-object v2, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v3, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    :cond_c3
    if-eqz v1, :cond_c9

    .line 4176
    iget v1, v1, Landroid/hardware/radio/V1_2/Call;->audioQuality:I

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    :cond_c9
    if-eqz p0, :cond_cf

    .line 4179
    iget-object p0, p0, Landroid/hardware/radio/V1_6/Call;->forwardedNumber:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/internal/telephony/DriverCall;->forwardedNumber:Ljava/lang/String;

    :cond_cf
    return-object v0
.end method

.method public static blacklist convertToHalAccessNetwork(I)I
    .registers 1

    packed-switch p0, :pswitch_data_12

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x6

    return p0

    :pswitch_7
    const/4 p0, 0x5

    return p0

    :pswitch_9
    const/4 p0, 0x4

    return p0

    :pswitch_b
    const/4 p0, 0x3

    return p0

    :pswitch_d
    const/4 p0, 0x2

    return p0

    :pswitch_f
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist convertToHalAccessNetworkAidl(I)I
    .registers 1

    packed-switch p0, :pswitch_data_12

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x6

    return p0

    :pswitch_7
    const/4 p0, 0x5

    return p0

    :pswitch_9
    const/4 p0, 0x4

    return p0

    :pswitch_b
    const/4 p0, 0x3

    return p0

    :pswitch_d
    const/4 p0, 0x2

    return p0

    :pswitch_f
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist convertToHalCarrierRestrictionList(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/Carrier;",
            ">;"
        }
    .end annotation

    .line 1898
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1899
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/carrier/CarrierIdentifier;

    .line 1900
    new-instance v2, Landroid/hardware/radio/V1_0/Carrier;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Carrier;-><init>()V

    .line 1901
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/Carrier;->mcc:Ljava/lang/String;

    .line 1902
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/Carrier;->mnc:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1905
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_40

    const/4 v3, 0x1

    .line 1907
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v4

    goto :goto_6f

    .line 1908
    :cond_40
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_50

    const/4 v3, 0x2

    .line 1910
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v4

    goto :goto_6f

    .line 1911
    :cond_50
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_60

    const/4 v3, 0x3

    .line 1913
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v4

    goto :goto_6f

    .line 1914
    :cond_60
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6f

    const/4 v3, 0x4

    .line 1916
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v4

    .line 1918
    :cond_6f
    :goto_6f
    iput v3, v2, Landroid/hardware/radio/V1_0/Carrier;->matchType:I

    .line 1919
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroid/hardware/radio/V1_0/Carrier;->matchData:Ljava/lang/String;

    .line 1920
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_7b
    return-object v0
.end method

.method public static blacklist convertToHalCarrierRestrictionListAidl(Ljava/util/List;)[Landroid/hardware/radio/sim/Carrier;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)[",
            "Landroid/hardware/radio/sim/Carrier;"
        }
    .end annotation

    .line 1933
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/radio/sim/Carrier;

    const/4 v1, 0x0

    move v2, v1

    .line 1934
    :goto_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7f

    .line 1935
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/carrier/CarrierIdentifier;

    .line 1936
    new-instance v4, Landroid/hardware/radio/sim/Carrier;

    invoke-direct {v4}, Landroid/hardware/radio/sim/Carrier;-><init>()V

    .line 1937
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/radio/sim/Carrier;->mcc:Ljava/lang/String;

    .line 1938
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/radio/sim/Carrier;->mnc:Ljava/lang/String;

    const/4 v5, 0x0

    .line 1941
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 1943
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    goto :goto_72

    .line 1944
    :cond_3e
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_51

    const/4 v5, 0x2

    .line 1946
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v3

    :goto_4d
    move v7, v5

    move-object v5, v3

    move v3, v7

    goto :goto_72

    .line 1947
    :cond_51
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_61

    const/4 v5, 0x3

    .line 1949
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v3

    goto :goto_4d

    .line 1950
    :cond_61
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_71

    const/4 v5, 0x4

    .line 1952
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v3

    goto :goto_4d

    :cond_71
    move v3, v1

    .line 1954
    :goto_72
    iput v3, v4, Landroid/hardware/radio/sim/Carrier;->matchType:I

    .line 1955
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Landroid/hardware/radio/sim/Carrier;->matchData:Ljava/lang/String;

    .line 1956
    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_7f
    return-object v0
.end method

.method public static blacklist convertToHalCdmaSmsMessage([B)Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    .registers 8

    .line 598
    new-instance v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 603
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 604
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 607
    :try_start_f
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->teleserviceId:I

    .line 608
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_20

    move v1, v3

    goto :goto_21

    :cond_20
    move v1, v2

    :goto_21
    iput-boolean v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->isServicePresent:Z

    .line 609
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->serviceCategory:I

    .line 610
    iget-object v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digitMode:I

    .line 611
    iget-object v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberMode:I

    .line 612
    iget-object v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberType:I

    .line 613
    iget-object v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberPlan:I

    .line 614
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    move v4, v2

    :goto_4f
    if-ge v4, v1, :cond_63

    .line 616
    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget-object v5, v5, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 618
    :cond_63
    iget-object v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->subaddressType:I

    .line 619
    iget-object v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    int-to-byte v4, v4

    if-ne v4, v3, :cond_75

    goto :goto_76

    :cond_75
    move v3, v2

    :goto_76
    iput-boolean v3, v1, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->odd:Z

    .line 620
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    move v3, v2

    :goto_7e
    if-ge v3, v1, :cond_92

    .line 622
    iget-object v4, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget-object v4, v4, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    .line 625
    :cond_92
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    :goto_96
    if-ge v2, v1, :cond_a8

    .line 627
    iget-object v3, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_a5} :catch_a8

    add-int/lit8 v2, v2, 0x1

    goto :goto_96

    :catch_a8
    :cond_a8
    return-object v0
.end method

.method public static blacklist convertToHalCdmaSmsMessageAidl([B)Landroid/hardware/radio/messaging/CdmaSmsMessage;
    .registers 8

    .line 641
    new-instance v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/messaging/CdmaSmsMessage;-><init>()V

    .line 643
    new-instance v1, Landroid/hardware/radio/messaging/CdmaSmsAddress;

    invoke-direct {v1}, Landroid/hardware/radio/messaging/CdmaSmsAddress;-><init>()V

    iput-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->address:Landroid/hardware/radio/messaging/CdmaSmsAddress;

    .line 644
    new-instance v1, Landroid/hardware/radio/messaging/CdmaSmsSubaddress;

    invoke-direct {v1}, Landroid/hardware/radio/messaging/CdmaSmsSubaddress;-><init>()V

    iput-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/messaging/CdmaSmsSubaddress;

    .line 648
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 649
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 652
    :try_start_1d
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->teleserviceId:I

    .line 653
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2e

    move v1, v3

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    iput-boolean v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->isServicePresent:Z

    .line 654
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->serviceCategory:I

    .line 655
    iget-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->address:Landroid/hardware/radio/messaging/CdmaSmsAddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/messaging/CdmaSmsAddress;->digitMode:I

    .line 656
    iget-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->address:Landroid/hardware/radio/messaging/CdmaSmsAddress;

    .line 657
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    if-ne v4, v3, :cond_49

    move v4, v3

    goto :goto_4a

    :cond_49
    move v4, v2

    :goto_4a
    iput-boolean v4, v1, Landroid/hardware/radio/messaging/CdmaSmsAddress;->isNumberModeDataNetwork:Z

    .line 658
    iget-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->address:Landroid/hardware/radio/messaging/CdmaSmsAddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/messaging/CdmaSmsAddress;->numberType:I

    .line 659
    iget-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->address:Landroid/hardware/radio/messaging/CdmaSmsAddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/messaging/CdmaSmsAddress;->numberPlan:I

    .line 660
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    .line 661
    new-array v4, v1, [B

    move v5, v2

    :goto_64
    if-ge v5, v1, :cond_6f

    .line 663
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    .line 665
    :cond_6f
    iget-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->address:Landroid/hardware/radio/messaging/CdmaSmsAddress;

    iput-object v4, v1, Landroid/hardware/radio/messaging/CdmaSmsAddress;->digits:[B

    .line 666
    iget-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/messaging/CdmaSmsSubaddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/messaging/CdmaSmsSubaddress;->subaddressType:I

    .line 667
    iget-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/messaging/CdmaSmsSubaddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    int-to-byte v4, v4

    if-ne v4, v3, :cond_85

    goto :goto_86

    :cond_85
    move v3, v2

    :goto_86
    iput-boolean v3, v1, Landroid/hardware/radio/messaging/CdmaSmsSubaddress;->odd:Z

    .line 668
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    .line 669
    new-array v3, v1, [B

    move v4, v2

    :goto_90
    if-ge v4, v1, :cond_9b

    .line 671
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_90

    .line 673
    :cond_9b
    iget-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/messaging/CdmaSmsSubaddress;

    iput-object v3, v1, Landroid/hardware/radio/messaging/CdmaSmsSubaddress;->digits:[B

    .line 675
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 676
    new-array v3, v1, [B

    :goto_a5
    if-ge v2, v1, :cond_b0

    .line 678
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a5

    .line 680
    :cond_b0
    iput-object v3, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->bearerData:[B
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_b2} :catch_b2

    :catch_b2
    return-object v0
.end method

.method public static blacklist convertToHalDataProfile(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/data/DataProfileInfo;
    .registers 3

    .line 990
    new-instance v0, Landroid/hardware/radio/data/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/data/DataProfileInfo;-><init>()V

    .line 993
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->apn:Ljava/lang/String;

    .line 994
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->protocol:I

    .line 995
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getRoamingProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->roamingProtocol:I

    .line 996
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getAuthType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->authType:I

    .line 997
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->user:Ljava/lang/String;

    .line 998
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->password:Ljava/lang/String;

    .line 999
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->type:I

    .line 1000
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnectionsTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->maxConnsTime:I

    .line 1001
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnections()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->maxConns:I

    .line 1002
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getWaitTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->waitTime:I

    .line 1003
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->enabled:Z

    .line 1004
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 1008
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getBearerBitmask()I

    move-result v1

    .line 1007
    invoke-static {v1}, Landroid/telephony/ServiceState;->convertNetworkTypeBitmaskToBearerBitmask(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->bearerBitmap:I

    .line 1009
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV4()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->mtuV4:I

    .line 1010
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV6()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->mtuV6:I

    .line 1011
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPersistent()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->persistent:Z

    .line 1012
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPreferred()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->preferred:Z

    const/4 v1, 0x0

    .line 1013
    iput-boolean v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->alwaysOn:Z

    .line 1014
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_8c

    .line 1015
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->isAlwaysOn()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->alwaysOn:Z

    .line 1017
    :cond_8c
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertToHalTrafficDescriptorAidl(Landroid/telephony/data/TrafficDescriptor;)Landroid/hardware/radio/data/TrafficDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->trafficDescriptor:Landroid/hardware/radio/data/TrafficDescriptor;

    .line 1024
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getCid()I

    move-result p0

    invoke-static {v1, p0}, Lcom/android/internal/telephony/RILUtils;->makeProfileId(II)I

    move-result p0

    iput p0, v0, Landroid/hardware/radio/data/DataProfileInfo;->profileId:I

    return-object v0
.end method

.method public static blacklist convertToHalDataProfile10(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_0/DataProfileInfo;
    .registers 4

    .line 868
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 873
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getCid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILUtils;->makeProfileId(II)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->profileId:I

    .line 875
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->apn:Ljava/lang/String;

    .line 876
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getProtocolStringFromInt(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->protocol:Ljava/lang/String;

    .line 877
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getRoamingProtocolType()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getProtocolStringFromInt(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->roamingProtocol:Ljava/lang/String;

    .line 878
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getAuthType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->authType:I

    .line 879
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->user:Ljava/lang/String;

    .line 880
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->password:Ljava/lang/String;

    .line 881
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->type:I

    .line 882
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnectionsTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->maxConnsTime:I

    .line 883
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnections()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->maxConns:I

    .line 884
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getWaitTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->waitTime:I

    .line 885
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->enabled:Z

    .line 886
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 891
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getBearerBitmask()I

    move-result v1

    .line 890
    invoke-static {v1}, Landroid/telephony/ServiceState;->convertNetworkTypeBitmaskToBearerBitmask(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->bearerBitmap:I

    .line 892
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV4()I

    move-result p0

    iput p0, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->mtu:I

    const/4 p0, 0x0

    .line 893
    iput p0, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->mvnoType:I

    const-string p0, ""

    .line 894
    iput-object p0, v0, Landroid/hardware/radio/V1_0/DataProfileInfo;->mvnoMatchData:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist convertToHalDataProfile14(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_4/DataProfileInfo;
    .registers 3

    .line 906
    new-instance v0, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    .line 909
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->apn:Ljava/lang/String;

    .line 910
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->protocol:I

    .line 911
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getRoamingProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->roamingProtocol:I

    .line 912
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getAuthType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->authType:I

    .line 913
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->user:Ljava/lang/String;

    .line 914
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->password:Ljava/lang/String;

    .line 915
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->type:I

    .line 916
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnectionsTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->maxConnsTime:I

    .line 917
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnections()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->maxConns:I

    .line 918
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getWaitTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->waitTime:I

    .line 919
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->enabled:Z

    .line 920
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 925
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getBearerBitmask()I

    move-result v1

    .line 924
    invoke-static {v1}, Landroid/telephony/ServiceState;->convertNetworkTypeBitmaskToBearerBitmask(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->bearerBitmap:I

    .line 926
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV4()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->mtu:I

    .line 927
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPersistent()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->persistent:Z

    .line 928
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPreferred()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->preferred:Z

    .line 936
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getCid()I

    move-result p0

    invoke-static {v1, p0}, Lcom/android/internal/telephony/RILUtils;->makeProfileId(II)I

    move-result p0

    iput p0, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->profileId:I

    return-object v0
.end method

.method public static blacklist convertToHalDataProfile15(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_5/DataProfileInfo;
    .registers 3

    .line 948
    new-instance v0, Landroid/hardware/radio/V1_5/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/DataProfileInfo;-><init>()V

    .line 951
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->apn:Ljava/lang/String;

    .line 952
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->protocol:I

    .line 953
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getRoamingProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->roamingProtocol:I

    .line 954
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getAuthType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->authType:I

    .line 955
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->user:Ljava/lang/String;

    .line 956
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->password:Ljava/lang/String;

    .line 957
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->type:I

    .line 958
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnectionsTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->maxConnsTime:I

    .line 959
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnections()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->maxConns:I

    .line 960
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getWaitTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->waitTime:I

    .line 961
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->enabled:Z

    .line 962
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 967
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getBearerBitmask()I

    move-result v1

    .line 966
    invoke-static {v1}, Landroid/telephony/ServiceState;->convertNetworkTypeBitmaskToBearerBitmask(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->bearerBitmap:I

    .line 968
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV4()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->mtuV4:I

    .line 969
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV6()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->mtuV6:I

    .line 970
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPersistent()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->persistent:Z

    .line 971
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPreferred()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->preferred:Z

    .line 978
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getCid()I

    move-result p0

    invoke-static {v1, p0}, Lcom/android/internal/telephony/RILUtils;->makeProfileId(II)I

    move-result p0

    iput p0, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->profileId:I

    return-object v0
.end method

.method public static blacklist convertToHalDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/V1_0/Dial;
    .registers 4

    .line 1970
    new-instance v0, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 1971
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    .line 1972
    iput p1, v0, Landroid/hardware/radio/V1_0/Dial;->clir:I

    if-eqz p2, :cond_30

    .line 1974
    new-instance p0, Landroid/hardware/radio/V1_0/UusInfo;

    invoke-direct {p0}, Landroid/hardware/radio/V1_0/UusInfo;-><init>()V

    .line 1975
    invoke-virtual {p2}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result p1

    iput p1, p0, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    .line 1976
    invoke-virtual {p2}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result p1

    iput p1, p0, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    .line 1977
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p0, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    .line 1978
    iget-object p1, v0, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    return-object v0
.end method

.method public static blacklist convertToHalDialAidl(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/voice/Dial;
    .registers 5

    .line 1992
    new-instance v0, Landroid/hardware/radio/voice/Dial;

    invoke-direct {v0}, Landroid/hardware/radio/voice/Dial;-><init>()V

    .line 1993
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/radio/voice/Dial;->address:Ljava/lang/String;

    .line 1994
    iput p1, v0, Landroid/hardware/radio/voice/Dial;->clir:I

    const/4 p0, 0x0

    if-eqz p2, :cond_34

    .line 1996
    new-instance p1, Landroid/hardware/radio/voice/UusInfo;

    invoke-direct {p1}, Landroid/hardware/radio/voice/UusInfo;-><init>()V

    .line 1997
    invoke-virtual {p2}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v1

    iput v1, p1, Landroid/hardware/radio/voice/UusInfo;->uusType:I

    .line 1998
    invoke-virtual {p2}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v1

    iput v1, p1, Landroid/hardware/radio/voice/UusInfo;->uusDcs:I

    .line 1999
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p1, Landroid/hardware/radio/voice/UusInfo;->uusData:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/hardware/radio/voice/UusInfo;

    aput-object p1, p2, p0

    .line 2000
    iput-object p2, v0, Landroid/hardware/radio/voice/Dial;->uusInfo:[Landroid/hardware/radio/voice/UusInfo;

    goto :goto_38

    :cond_34
    new-array p0, p0, [Landroid/hardware/radio/voice/UusInfo;

    .line 2002
    iput-object p0, v0, Landroid/hardware/radio/voice/Dial;->uusInfo:[Landroid/hardware/radio/voice/UusInfo;

    :goto_38
    return-object v0
.end method

.method public static blacklist convertToHalGsmSmsMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;
    .registers 4

    .line 569
    new-instance v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    const-string v1, ""

    if-nez p0, :cond_a

    move-object p0, v1

    .line 571
    :cond_a
    iput-object p0, v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;->smscPdu:Ljava/lang/String;

    if-nez p1, :cond_f

    move-object p1, v1

    .line 572
    :cond_f
    iput-object p1, v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;->pdu:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist convertToHalGsmSmsMessageAidl(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/messaging/GsmSmsMessage;
    .registers 3

    .line 584
    new-instance v0, Landroid/hardware/radio/messaging/GsmSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/messaging/GsmSmsMessage;-><init>()V

    .line 586
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/radio/messaging/GsmSmsMessage;->smscPdu:Ljava/lang/String;

    .line 587
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/radio/messaging/GsmSmsMessage;->pdu:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist convertToHalLinkProperties(Landroid/net/LinkProperties;)[Landroid/hardware/radio/data/LinkAddress;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_6

    new-array p0, v0, [Landroid/hardware/radio/data/LinkAddress;

    return-object p0

    .line 1249
    :cond_6
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/radio/data/LinkAddress;

    .line 1250
    :goto_10
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4a

    .line 1251
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 1252
    new-instance v3, Landroid/hardware/radio/data/LinkAddress;

    invoke-direct {v3}, Landroid/hardware/radio/data/LinkAddress;-><init>()V

    .line 1254
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/radio/data/LinkAddress;->address:Ljava/lang/String;

    .line 1255
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getFlags()I

    move-result v4

    iput v4, v3, Landroid/hardware/radio/data/LinkAddress;->addressProperties:I

    .line 1256
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getDeprecationTime()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/hardware/radio/data/LinkAddress;->deprecationTime:J

    .line 1257
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getExpirationTime()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/hardware/radio/data/LinkAddress;->expirationTime:J

    .line 1258
    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_4a
    return-object v1
.end method

.method public static blacklist convertToHalLinkProperties15(Landroid/net/LinkProperties;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/LinkAddress;",
            ">;"
        }
    .end annotation

    .line 1222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_40

    .line 1224
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 1225
    new-instance v2, Landroid/hardware/radio/V1_5/LinkAddress;

    invoke-direct {v2}, Landroid/hardware/radio/V1_5/LinkAddress;-><init>()V

    .line 1227
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_5/LinkAddress;->address:Ljava/lang/String;

    .line 1228
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getFlags()I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/V1_5/LinkAddress;->properties:I

    .line 1229
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getDeprecationTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/hardware/radio/V1_5/LinkAddress;->deprecationTime:J

    .line 1230
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getExpirationTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/hardware/radio/V1_5/LinkAddress;->expirationTime:J

    .line 1231
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_40
    return-object v0
.end method

.method public static blacklist convertToHalPersoType(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)I
    .registers 2

    .line 406
    sget-object v0, Lcom/android/internal/telephony/RILUtils$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_6c

    const/4 p0, 0x0

    return p0

    :pswitch_d
    const/16 p0, 0x22

    return p0

    :pswitch_10
    const/16 p0, 0x21

    return p0

    :pswitch_13
    const/16 p0, 0x20

    return p0

    :pswitch_16
    const/16 p0, 0x1f

    return p0

    :pswitch_19
    const/16 p0, 0x1e

    return p0

    :pswitch_1c
    const/16 p0, 0x1d

    return p0

    :pswitch_1f
    const/16 p0, 0x1c

    return p0

    :pswitch_22
    const/16 p0, 0x1b

    return p0

    :pswitch_25
    const/16 p0, 0x1a

    return p0

    :pswitch_28
    const/16 p0, 0x19

    return p0

    :pswitch_2b
    const/16 p0, 0x18

    return p0

    :pswitch_2e
    const/16 p0, 0x17

    return p0

    :pswitch_31
    const/16 p0, 0x16

    return p0

    :pswitch_34
    const/16 p0, 0x15

    return p0

    :pswitch_37
    const/16 p0, 0x14

    return p0

    :pswitch_3a
    const/16 p0, 0x13

    return p0

    :pswitch_3d
    const/16 p0, 0x12

    return p0

    :pswitch_40
    const/16 p0, 0x11

    return p0

    :pswitch_43
    const/16 p0, 0x10

    return p0

    :pswitch_46
    const/16 p0, 0xf

    return p0

    :pswitch_49
    const/16 p0, 0xe

    return p0

    :pswitch_4c
    const/16 p0, 0xd

    return p0

    :pswitch_4f
    const/16 p0, 0xc

    return p0

    :pswitch_52
    const/16 p0, 0xb

    return p0

    :pswitch_55
    const/16 p0, 0xa

    return p0

    :pswitch_58
    const/16 p0, 0x9

    return p0

    :pswitch_5b
    const/16 p0, 0x8

    return p0

    :pswitch_5e
    const/4 p0, 0x7

    return p0

    :pswitch_60
    const/4 p0, 0x6

    return p0

    :pswitch_62
    const/4 p0, 0x5

    return p0

    :pswitch_64
    const/4 p0, 0x4

    return p0

    :pswitch_66
    const/4 p0, 0x3

    return p0

    :pswitch_68
    const/4 p0, 0x2

    return p0

    :pswitch_6a
    const/4 p0, 0x1

    return p0

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_68
        :pswitch_66
        :pswitch_64
        :pswitch_62
        :pswitch_60
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public static blacklist convertToHalPersoTypeAidl(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)I
    .registers 2

    .line 487
    sget-object v0, Lcom/android/internal/telephony/RILUtils$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_6c

    const/4 p0, 0x0

    return p0

    :pswitch_d
    const/16 p0, 0x22

    return p0

    :pswitch_10
    const/16 p0, 0x21

    return p0

    :pswitch_13
    const/16 p0, 0x20

    return p0

    :pswitch_16
    const/16 p0, 0x1f

    return p0

    :pswitch_19
    const/16 p0, 0x1e

    return p0

    :pswitch_1c
    const/16 p0, 0x1d

    return p0

    :pswitch_1f
    const/16 p0, 0x1c

    return p0

    :pswitch_22
    const/16 p0, 0x1b

    return p0

    :pswitch_25
    const/16 p0, 0x1a

    return p0

    :pswitch_28
    const/16 p0, 0x19

    return p0

    :pswitch_2b
    const/16 p0, 0x18

    return p0

    :pswitch_2e
    const/16 p0, 0x17

    return p0

    :pswitch_31
    const/16 p0, 0x16

    return p0

    :pswitch_34
    const/16 p0, 0x15

    return p0

    :pswitch_37
    const/16 p0, 0x14

    return p0

    :pswitch_3a
    const/16 p0, 0x13

    return p0

    :pswitch_3d
    const/16 p0, 0x12

    return p0

    :pswitch_40
    const/16 p0, 0x11

    return p0

    :pswitch_43
    const/16 p0, 0x10

    return p0

    :pswitch_46
    const/16 p0, 0xf

    return p0

    :pswitch_49
    const/16 p0, 0xe

    return p0

    :pswitch_4c
    const/16 p0, 0xd

    return p0

    :pswitch_4f
    const/16 p0, 0xc

    return p0

    :pswitch_52
    const/16 p0, 0xb

    return p0

    :pswitch_55
    const/16 p0, 0xa

    return p0

    :pswitch_58
    const/16 p0, 0x9

    return p0

    :pswitch_5b
    const/16 p0, 0x8

    return p0

    :pswitch_5e
    const/4 p0, 0x7

    return p0

    :pswitch_60
    const/4 p0, 0x6

    return p0

    :pswitch_62
    const/4 p0, 0x5

    return p0

    :pswitch_64
    const/4 p0, 0x4

    return p0

    :pswitch_66
    const/4 p0, 0x3

    return p0

    :pswitch_68
    const/4 p0, 0x2

    return p0

    :pswitch_6a
    const/4 p0, 0x1

    return p0

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_68
        :pswitch_66
        :pswitch_64
        :pswitch_62
        :pswitch_60
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public static blacklist convertToHalPhonebookRecordInfo(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;)Landroid/hardware/radio/V1_6/PhonebookRecordInfo;
    .registers 1

    if-eqz p0, :cond_7

    .line 4482
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->toPhonebookRecordInfo()Landroid/hardware/radio/V1_6/PhonebookRecordInfo;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist convertToHalPhonebookRecordInfoAidl(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;)Landroid/hardware/radio/sim/PhonebookRecordInfo;
    .registers 1

    if-eqz p0, :cond_7

    .line 4495
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->toPhonebookRecordInfoAidl()Landroid/hardware/radio/sim/PhonebookRecordInfo;

    move-result-object p0

    return-object p0

    .line 4497
    :cond_7
    new-instance p0, Landroid/hardware/radio/sim/PhonebookRecordInfo;

    invoke-direct {p0}, Landroid/hardware/radio/sim/PhonebookRecordInfo;-><init>()V

    return-object p0
.end method

.method public static blacklist convertToHalRadioAccessFamily(I)I
    .registers 7

    int-to-long v0, p0

    const-wide/32 v2, 0x8000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_e

    const/high16 p0, 0x10000

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_18

    or-int/lit8 p0, p0, 0x2

    :cond_18
    const-wide/16 v2, 0x2

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_21

    or-int/lit8 p0, p0, 0x4

    :cond_21
    const-wide/16 v2, 0x8

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2a

    or-int/lit8 p0, p0, 0x10

    :cond_2a
    const-wide/16 v2, 0x40

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_33

    or-int/lit8 p0, p0, 0x40

    :cond_33
    const-wide/16 v2, 0x10

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3c

    or-int/lit16 p0, p0, 0x80

    :cond_3c
    const-wide/16 v2, 0x20

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_45

    or-int/lit16 p0, p0, 0x100

    :cond_45
    const-wide/16 v2, 0x800

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4e

    or-int/lit16 p0, p0, 0x1000

    :cond_4e
    const-wide/16 v2, 0x2000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_57

    or-int/lit16 p0, p0, 0x2000

    :cond_57
    const-wide/16 v2, 0x100

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_60

    or-int/lit16 p0, p0, 0x400

    :cond_60
    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_69

    or-int/lit16 p0, p0, 0x200

    :cond_69
    const-wide/16 v2, 0x200

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_72

    or-int/lit16 p0, p0, 0x800

    :cond_72
    const-wide/16 v2, 0x4000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7d

    const v2, 0x8000

    or-int/2addr p0, v2

    :cond_7d
    const-wide/16 v2, 0x4

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_86

    or-int/lit8 p0, p0, 0x8

    :cond_86
    const-wide/32 v2, 0x10000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_91

    const/high16 v2, 0x20000

    or-int/2addr p0, v2

    :cond_91
    const-wide/32 v2, 0x20000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9c

    const/high16 v2, 0x40000

    or-int/2addr p0, v2

    :cond_9c
    const-wide/16 v2, 0x1000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a5

    or-int/lit16 p0, p0, 0x4000

    :cond_a5
    const-wide/32 v2, 0x40000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b0

    const/high16 v2, 0x80000

    or-int/2addr p0, v2

    :cond_b0
    const-wide/32 v2, 0x80000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_bb

    const/high16 v0, 0x100000

    or-int/2addr p0, v0

    :cond_bb
    if-nez p0, :cond_be

    const/4 p0, 0x1

    :cond_be
    return p0
.end method

.method public static blacklist convertToHalRadioAccessFamilyAidl(I)I
    .registers 7

    int-to-long v0, p0

    const-wide/32 v2, 0x8000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_e

    const/high16 p0, 0x10000

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_18

    or-int/lit8 p0, p0, 0x2

    :cond_18
    const-wide/16 v2, 0x2

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_21

    or-int/lit8 p0, p0, 0x4

    :cond_21
    const-wide/16 v2, 0x8

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2a

    or-int/lit8 p0, p0, 0x10

    :cond_2a
    const-wide/16 v2, 0x40

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_33

    or-int/lit8 p0, p0, 0x40

    :cond_33
    const-wide/16 v2, 0x10

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3c

    or-int/lit16 p0, p0, 0x80

    :cond_3c
    const-wide/16 v2, 0x20

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_45

    or-int/lit16 p0, p0, 0x100

    :cond_45
    const-wide/16 v2, 0x800

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4e

    or-int/lit16 p0, p0, 0x1000

    :cond_4e
    const-wide/16 v2, 0x2000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_57

    or-int/lit16 p0, p0, 0x2000

    :cond_57
    const-wide/16 v2, 0x100

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_60

    or-int/lit16 p0, p0, 0x400

    :cond_60
    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_69

    or-int/lit16 p0, p0, 0x200

    :cond_69
    const-wide/16 v2, 0x200

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_72

    or-int/lit16 p0, p0, 0x800

    :cond_72
    const-wide/16 v2, 0x4000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7d

    const v2, 0x8000

    or-int/2addr p0, v2

    :cond_7d
    const-wide/16 v2, 0x4

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_86

    or-int/lit8 p0, p0, 0x8

    :cond_86
    const-wide/32 v2, 0x10000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_91

    const/high16 v2, 0x20000

    or-int/2addr p0, v2

    :cond_91
    const-wide/32 v2, 0x20000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9c

    const/high16 v2, 0x40000

    or-int/2addr p0, v2

    :cond_9c
    const-wide/16 v2, 0x1000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a5

    or-int/lit16 p0, p0, 0x4000

    :cond_a5
    const-wide/32 v2, 0x40000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b0

    const/high16 v2, 0x80000

    or-int/2addr p0, v2

    :cond_b0
    const-wide/32 v2, 0x80000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_bb

    const/high16 v0, 0x100000

    or-int/2addr p0, v0

    :cond_bb
    if-nez p0, :cond_be

    const/4 p0, 0x1

    :cond_be
    return p0
.end method

.method public static blacklist convertToHalRadioAccessNetworks(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/4 v0, 0x3

    if-eq p0, v0, :cond_14

    const/4 v0, 0x4

    if-eq p0, v0, :cond_12

    const/4 v1, 0x6

    if-eq p0, v1, :cond_11

    const/4 p0, 0x0

    return p0

    :cond_11
    return v0

    :cond_12
    const/4 p0, 0x5

    return p0

    :cond_14
    return v0
.end method

.method public static blacklist convertToHalRadioAccessSpecifier11(Landroid/telephony/RadioAccessSpecifier;)Landroid/hardware/radio/V1_1/RadioAccessSpecifier;
    .registers 8

    .line 1328
    new-instance v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;

    invoke-direct {v0}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;-><init>()V

    .line 1330
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->radioAccessNetwork:I

    .line 1331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1332
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2b

    .line 1333
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_1d
    if-ge v5, v4, :cond_2b

    aget v6, v2, v5

    .line 1334
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 1337
    :cond_2b
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_43

    const/4 v4, 0x2

    if-eq v2, v4, :cond_40

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3d

    const/4 v1, 0x6

    if-eq v2, v1, :cond_45

    const/4 p0, 0x0

    return-object p0

    .line 1345
    :cond_3d
    iput-object v1, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->eutranBands:Ljava/util/ArrayList;

    goto :goto_45

    .line 1342
    :cond_40
    iput-object v1, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->utranBands:Ljava/util/ArrayList;

    goto :goto_45

    .line 1339
    :cond_43
    iput-object v1, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->geranBands:Ljava/util/ArrayList;

    .line 1355
    :cond_45
    :goto_45
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v1

    if-eqz v1, :cond_60

    .line 1356
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object p0

    array-length v1, p0

    :goto_50
    if-ge v3, v1, :cond_60

    aget v2, p0, v3

    .line 1357
    iget-object v4, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    :cond_60
    return-object v0
.end method

.method public static blacklist convertToHalRadioAccessSpecifier15(Landroid/telephony/RadioAccessSpecifier;)Landroid/hardware/radio/V1_5/RadioAccessSpecifier;
    .registers 9

    .line 1371
    new-instance v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;-><init>()V

    .line 1373
    new-instance v1, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-direct {v1}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;-><init>()V

    .line 1376
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v2

    .line 1375
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertToHalRadioAccessNetworks(I)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->radioAccessNetwork:I

    .line 1377
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1378
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_34

    .line 1379
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v3

    array-length v5, v3

    move v6, v4

    :goto_26
    if-ge v6, v5, :cond_34

    aget v7, v3, v6

    .line 1380
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 1383
    :cond_34
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_52

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4e

    const/4 v5, 0x3

    if-eq v3, v5, :cond_4a

    const/4 v5, 0x6

    if-eq v3, v5, :cond_46

    const/4 p0, 0x0

    return-object p0

    .line 1394
    :cond_46
    invoke-virtual {v1, v2}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->ngranBands(Ljava/util/ArrayList;)V

    goto :goto_55

    .line 1391
    :cond_4a
    invoke-virtual {v1, v2}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->eutranBands(Ljava/util/ArrayList;)V

    goto :goto_55

    .line 1388
    :cond_4e
    invoke-virtual {v1, v2}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->utranBands(Ljava/util/ArrayList;)V

    goto :goto_55

    .line 1385
    :cond_52
    invoke-virtual {v1, v2}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->geranBands(Ljava/util/ArrayList;)V

    .line 1399
    :goto_55
    iput-object v1, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    .line 1401
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v1

    if-eqz v1, :cond_72

    .line 1402
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object p0

    array-length v1, p0

    :goto_62
    if-ge v4, v1, :cond_72

    aget v2, p0, v4

    .line 1403
    iget-object v3, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    :cond_72
    return-object v0
.end method

.method public static blacklist convertToHalRadioAccessSpecifierAidl(Landroid/telephony/RadioAccessSpecifier;)Landroid/hardware/radio/network/RadioAccessSpecifier;
    .registers 7

    .line 1417
    new-instance v0, Landroid/hardware/radio/network/RadioAccessSpecifier;

    invoke-direct {v0}, Landroid/hardware/radio/network/RadioAccessSpecifier;-><init>()V

    .line 1419
    new-instance v1, Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    invoke-direct {v1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;-><init>()V

    .line 1421
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertToHalAccessNetworkAidl(I)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/network/RadioAccessSpecifier;->accessNetwork:I

    .line 1423
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    .line 1424
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    move v4, v3

    .line 1425
    :goto_23
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_37

    .line 1426
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v5

    aget v5, v5, v4

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_35
    new-array v2, v3, [I

    .line 1431
    :cond_37
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_55

    const/4 v5, 0x2

    if-eq v4, v5, :cond_51

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4d

    const/4 v5, 0x6

    if-eq v4, v5, :cond_49

    const/4 p0, 0x0

    return-object p0

    .line 1442
    :cond_49
    invoke-virtual {v1, v2}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->setNgranBands([I)V

    goto :goto_58

    .line 1439
    :cond_4d
    invoke-virtual {v1, v2}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->setEutranBands([I)V

    goto :goto_58

    .line 1436
    :cond_51
    invoke-virtual {v1, v2}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->setUtranBands([I)V

    goto :goto_58

    .line 1433
    :cond_55
    invoke-virtual {v1, v2}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->setGeranBands([I)V

    .line 1447
    :goto_58
    iput-object v1, v0, Landroid/hardware/radio/network/RadioAccessSpecifier;->bands:Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    .line 1450
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v1

    if-eqz v1, :cond_79

    .line 1451
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    .line 1452
    :goto_67
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v2

    array-length v2, v2

    if-ge v3, v2, :cond_7b

    .line 1453
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v2

    aget v2, v2, v3

    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    :cond_79
    new-array v1, v3, [I

    .line 1458
    :cond_7b
    iput-object v1, v0, Landroid/hardware/radio/network/RadioAccessSpecifier;->channels:[I

    return-object v0
.end method

.method public static blacklist convertToHalResetNvType(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v1, 0x2

    if-eq p0, v1, :cond_c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_b

    const/4 p0, -0x1

    return p0

    :cond_b
    return v1

    :cond_c
    return v0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertToHalResetNvTypeAidl(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v1, 0x2

    if-eq p0, v1, :cond_c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_b

    const/4 p0, -0x1

    return p0

    :cond_b
    return v1

    :cond_c
    return v0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertToHalSignalThresholdInfo(Landroid/telephony/SignalThresholdInfo;)Landroid/hardware/radio/V1_5/SignalThresholdInfo;
    .registers 3

    .line 2014
    new-instance v0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/SignalThresholdInfo;-><init>()V

    .line 2016
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getSignalMeasurementType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->signalMeasurement:I

    .line 2017
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getHysteresisMs()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->hysteresisMs:I

    .line 2018
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getHysteresisDb()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->hysteresisDb:I

    .line 2020
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getThresholds()[I

    move-result-object v1

    .line 2019
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->thresholds:Ljava/util/ArrayList;

    .line 2021
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->isEnabled()Z

    move-result p0

    iput-boolean p0, v0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->isEnabled:Z

    return-object v0
.end method

.method public static blacklist convertToHalSignalThresholdInfoAidl(Landroid/telephony/SignalThresholdInfo;)Landroid/hardware/radio/network/SignalThresholdInfo;
    .registers 3

    .line 2032
    new-instance v0, Landroid/hardware/radio/network/SignalThresholdInfo;

    invoke-direct {v0}, Landroid/hardware/radio/network/SignalThresholdInfo;-><init>()V

    .line 2034
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getSignalMeasurementType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/network/SignalThresholdInfo;->signalMeasurement:I

    .line 2035
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getHysteresisMs()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/network/SignalThresholdInfo;->hysteresisMs:I

    .line 2036
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getHysteresisDb()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/network/SignalThresholdInfo;->hysteresisDb:I

    .line 2037
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getThresholds()[I

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/network/SignalThresholdInfo;->thresholds:[I

    .line 2038
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/network/SignalThresholdInfo;->isEnabled:Z

    .line 2039
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getRadioAccessNetworkType()I

    move-result p0

    iput p0, v0, Landroid/hardware/radio/network/SignalThresholdInfo;->ran:I

    return-object v0
.end method

.method public static blacklist convertToHalSimApdu(IIIIIILjava/lang/String;)Landroid/hardware/radio/V1_0/SimApdu;
    .registers 8

    .line 1820
    new-instance v0, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 1821
    iput p0, v0, Landroid/hardware/radio/V1_0/SimApdu;->sessionId:I

    .line 1822
    iput p1, v0, Landroid/hardware/radio/V1_0/SimApdu;->cla:I

    .line 1823
    iput p2, v0, Landroid/hardware/radio/V1_0/SimApdu;->instruction:I

    .line 1824
    iput p3, v0, Landroid/hardware/radio/V1_0/SimApdu;->p1:I

    .line 1825
    iput p4, v0, Landroid/hardware/radio/V1_0/SimApdu;->p2:I

    .line 1826
    iput p5, v0, Landroid/hardware/radio/V1_0/SimApdu;->p3:I

    .line 1827
    invoke-static {p6}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/radio/V1_0/SimApdu;->data:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist convertToHalSimApduAidl(IIIIIILjava/lang/String;)Landroid/hardware/radio/sim/SimApdu;
    .registers 8

    .line 1844
    new-instance v0, Landroid/hardware/radio/sim/SimApdu;

    invoke-direct {v0}, Landroid/hardware/radio/sim/SimApdu;-><init>()V

    .line 1845
    iput p0, v0, Landroid/hardware/radio/sim/SimApdu;->sessionId:I

    .line 1846
    iput p1, v0, Landroid/hardware/radio/sim/SimApdu;->cla:I

    .line 1847
    iput p2, v0, Landroid/hardware/radio/sim/SimApdu;->instruction:I

    .line 1848
    iput p3, v0, Landroid/hardware/radio/sim/SimApdu;->p1:I

    .line 1849
    iput p4, v0, Landroid/hardware/radio/sim/SimApdu;->p2:I

    .line 1850
    iput p5, v0, Landroid/hardware/radio/sim/SimApdu;->p3:I

    .line 1851
    invoke-static {p6}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/radio/sim/SimApdu;->data:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist convertToHalSimLockMultiSimPolicy(I)I
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    return v0
.end method

.method public static blacklist convertToHalSimLockMultiSimPolicyAidl(I)I
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    return v0
.end method

.method public static blacklist convertToHalSliceInfo(Landroid/telephony/data/NetworkSliceInfo;)Landroid/hardware/radio/V1_6/OptionalSliceInfo;
    .registers 4

    .line 1081
    new-instance v0, Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 1087
    :cond_8
    new-instance v1, Landroid/hardware/radio/V1_6/SliceInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/SliceInfo;-><init>()V

    .line 1088
    invoke-virtual {p0}, Landroid/telephony/data/NetworkSliceInfo;->getSliceServiceType()I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v1, Landroid/hardware/radio/V1_6/SliceInfo;->sst:B

    .line 1089
    invoke-virtual {p0}, Landroid/telephony/data/NetworkSliceInfo;->getMappedHplmnSliceServiceType()I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v1, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSst:B

    .line 1090
    invoke-virtual {p0}, Landroid/telephony/data/NetworkSliceInfo;->getSliceDifferentiator()I

    move-result v2

    iput v2, v1, Landroid/hardware/radio/V1_6/SliceInfo;->sliceDifferentiator:I

    .line 1091
    invoke-virtual {p0}, Landroid/telephony/data/NetworkSliceInfo;->getMappedHplmnSliceDifferentiator()I

    move-result p0

    iput p0, v1, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSD:I

    .line 1092
    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;->value(Landroid/hardware/radio/V1_6/SliceInfo;)V

    return-object v0
.end method

.method public static blacklist convertToHalSliceInfoAidl(Landroid/telephony/data/NetworkSliceInfo;)Landroid/hardware/radio/data/SliceInfo;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1107
    :cond_4
    new-instance v0, Landroid/hardware/radio/data/SliceInfo;

    invoke-direct {v0}, Landroid/hardware/radio/data/SliceInfo;-><init>()V

    .line 1108
    invoke-virtual {p0}, Landroid/telephony/data/NetworkSliceInfo;->getSliceServiceType()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/hardware/radio/data/SliceInfo;->sliceServiceType:B

    .line 1109
    invoke-virtual {p0}, Landroid/telephony/data/NetworkSliceInfo;->getMappedHplmnSliceServiceType()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/hardware/radio/data/SliceInfo;->mappedHplmnSst:B

    .line 1110
    invoke-virtual {p0}, Landroid/telephony/data/NetworkSliceInfo;->getSliceDifferentiator()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/SliceInfo;->sliceDifferentiator:I

    .line 1111
    invoke-virtual {p0}, Landroid/telephony/data/NetworkSliceInfo;->getMappedHplmnSliceDifferentiator()I

    move-result p0

    iput p0, v0, Landroid/hardware/radio/data/SliceInfo;->mappedHplmnSd:I

    return-object v0
.end method

.method public static blacklist convertToHalSmsWriteArgsStatus(I)I
    .registers 4

    const/4 v0, 0x7

    and-int/2addr p0, v0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_f

    const/4 v2, 0x5

    if-eq p0, v2, :cond_e

    if-eq p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x2

    return p0

    :cond_e
    return v1

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertToHalSmsWriteArgsStatusAidl(I)I
    .registers 4

    const/4 v0, 0x7

    and-int/2addr p0, v0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_f

    const/4 v2, 0x5

    if-eq p0, v2, :cond_e

    if-eq p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x2

    return p0

    :cond_e
    return v1

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertToHalTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;
    .registers 5

    .line 1122
    new-instance v0, Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 1128
    :cond_8
    new-instance v1, Landroid/hardware/radio/V1_6/TrafficDescriptor;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/TrafficDescriptor;-><init>()V

    .line 1131
    new-instance v2, Landroid/hardware/radio/V1_6/OptionalDnn;

    invoke-direct {v2}, Landroid/hardware/radio/V1_6/OptionalDnn;-><init>()V

    .line 1133
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor;->getDataNetworkName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 1134
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor;->getDataNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/radio/V1_6/OptionalDnn;->value(Ljava/lang/String;)V

    .line 1136
    :cond_1f
    iput-object v2, v1, Landroid/hardware/radio/V1_6/TrafficDescriptor;->dnn:Landroid/hardware/radio/V1_6/OptionalDnn;

    .line 1138
    new-instance v2, Landroid/hardware/radio/V1_6/OptionalOsAppId;

    invoke-direct {v2}, Landroid/hardware/radio/V1_6/OptionalOsAppId;-><init>()V

    .line 1140
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 1141
    new-instance v3, Landroid/hardware/radio/V1_6/OsAppId;

    invoke-direct {v3}, Landroid/hardware/radio/V1_6/OsAppId;-><init>()V

    .line 1142
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v3, Landroid/hardware/radio/V1_6/OsAppId;->osAppId:Ljava/util/ArrayList;

    .line 1143
    invoke-virtual {v2, v3}, Landroid/hardware/radio/V1_6/OptionalOsAppId;->value(Landroid/hardware/radio/V1_6/OsAppId;)V

    .line 1145
    :cond_3e
    iput-object v2, v1, Landroid/hardware/radio/V1_6/TrafficDescriptor;->osAppId:Landroid/hardware/radio/V1_6/OptionalOsAppId;

    .line 1147
    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;->value(Landroid/hardware/radio/V1_6/TrafficDescriptor;)V

    return-object v0
.end method

.method public static blacklist convertToHalTrafficDescriptorAidl(Landroid/telephony/data/TrafficDescriptor;)Landroid/hardware/radio/data/TrafficDescriptor;
    .registers 3

    if-nez p0, :cond_8

    .line 1159
    new-instance p0, Landroid/hardware/radio/data/TrafficDescriptor;

    invoke-direct {p0}, Landroid/hardware/radio/data/TrafficDescriptor;-><init>()V

    return-object p0

    .line 1162
    :cond_8
    new-instance v0, Landroid/hardware/radio/data/TrafficDescriptor;

    invoke-direct {v0}, Landroid/hardware/radio/data/TrafficDescriptor;-><init>()V

    .line 1164
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor;->getDataNetworkName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/data/TrafficDescriptor;->dnn:Ljava/lang/String;

    .line 1165
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object v1

    if-nez v1, :cond_1d

    const/4 p0, 0x0

    .line 1166
    iput-object p0, v0, Landroid/hardware/radio/data/TrafficDescriptor;->osAppId:Landroid/hardware/radio/data/OsAppId;

    goto :goto_2a

    .line 1168
    :cond_1d
    new-instance v1, Landroid/hardware/radio/data/OsAppId;

    invoke-direct {v1}, Landroid/hardware/radio/data/OsAppId;-><init>()V

    .line 1169
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object p0

    iput-object p0, v1, Landroid/hardware/radio/data/OsAppId;->osAppId:[B

    .line 1170
    iput-object v1, v0, Landroid/hardware/radio/data/TrafficDescriptor;->osAppId:Landroid/hardware/radio/data/OsAppId;

    :goto_2a
    return-object v0
.end method

.method private static blacklist convertToLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;
    .registers 7

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    move-object v0, p0

    .line 3402
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;IJJ)Landroid/net/LinkAddress;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist convertToLinkAddress(Ljava/lang/String;IJJ)Landroid/net/LinkAddress;
    .registers 18

    .line 3408
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_6
    const-string v3, "/"

    const/4 v4, 0x2

    .line 3412
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 3413
    aget-object v5, v3, v5

    invoke-static {v5}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 3414
    array-length v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_22

    .line 3415
    instance-of v3, v2, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1f

    const/16 v3, 0x20

    goto :goto_2d

    :cond_1f
    const/16 v3, 0x80

    goto :goto_2d

    .line 3416
    :cond_22
    array-length v5, v3

    if-ne v5, v4, :cond_2c

    .line 3417
    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_2b
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_2b} :catch_30
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_2b} :catch_30
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_2b} :catch_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_2b} :catch_30

    goto :goto_2d

    :cond_2c
    move v3, v1

    :goto_2d
    move-object v4, v2

    move v5, v3

    goto :goto_32

    :catch_30
    move v5, v1

    move-object v4, v2

    :goto_32
    if-eqz v4, :cond_42

    if-eq v5, v1, :cond_42

    .line 3429
    new-instance v0, Landroid/net/LinkAddress;

    const/4 v7, 0x0

    move-object v3, v0

    move v6, p1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v3 .. v11}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;IIIJJ)V

    return-object v0

    .line 3426
    :cond_42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid link address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist convertToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5282
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "toString"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_14} :catch_18

    if-eq v2, v3, :cond_20

    move v2, v0

    goto :goto_21

    :catch_18
    move-exception v2

    .line 5284
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    :cond_20
    move v2, v1

    :goto_21
    if-nez v2, :cond_1aa

    .line 5286
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->isPrimitiveOrWrapper(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1aa

    instance-of v2, p0, Ljava/util/ArrayList;

    if-eqz v2, :cond_33

    goto/16 :goto_1aa

    .line 5289
    :cond_33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    const-string v3, ", "

    if-eqz v2, :cond_9d

    .line 5291
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5293
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->isPrimitiveOrWrapper(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6d

    move v4, v1

    .line 5294
    :goto_55
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-ge v1, v5, :cond_84

    .line 5295
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    move v4, v0

    goto :goto_55

    .line 5299
    :cond_6d
    check-cast p0, [Ljava/lang/Object;

    array-length v4, p0

    move v5, v1

    :goto_71
    if-ge v1, v4, :cond_83

    aget-object v5, p0, v1

    .line 5300
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    move v5, v0

    goto :goto_71

    :cond_83
    move v4, v5

    :cond_84
    if-eqz v4, :cond_93

    .line 5306
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v2, p0, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_93
    const-string p0, "]"

    .line 5308
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5309
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5311
    :cond_9d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "{"

    .line 5312
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5313
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, -0x1

    .line 5316
    :try_start_b8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getTag"

    new-array v8, v1, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_d0
    .catch Ljava/lang/IllegalAccessException; {:try_start_b8 .. :try_end_d0} :catch_d1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b8 .. :try_end_d0} :catch_d1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b8 .. :try_end_d0} :catch_d9

    goto :goto_da

    :catch_d1
    move-exception v6

    .line 5318
    invoke-virtual {v6}, Ljava/lang/ReflectiveOperationException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    :catch_d9
    move v6, v5

    :goto_da
    const-string v7, "="

    const/4 v8, 0x0

    if-eq v6, v5, :cond_157

    .line 5326
    :try_start_df
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "_tagString"

    new-array v5, v0, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 5327
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v0, [Ljava/lang/Object;

    .line 5328
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_100
    .catch Ljava/lang/NoSuchMethodException; {:try_start_df .. :try_end_100} :catch_101
    .catch Ljava/lang/IllegalAccessException; {:try_start_df .. :try_end_100} :catch_101
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_df .. :try_end_100} :catch_101

    goto :goto_10a

    :catch_101
    move-exception v3

    .line 5330
    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    move-object v3, v8

    :goto_10a
    if-eqz v3, :cond_1a0

    .line 5333
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5334
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5337
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5340
    :try_start_134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_144
    .catch Ljava/lang/NoSuchMethodException; {:try_start_134 .. :try_end_144} :catch_145
    .catch Ljava/lang/IllegalAccessException; {:try_start_134 .. :try_end_144} :catch_145
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_134 .. :try_end_144} :catch_145

    goto :goto_14d

    :catch_145
    move-exception p0

    .line 5343
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    :goto_14d
    if-eqz v8, :cond_1a0

    .line 5346
    invoke-static {v8}, Lcom/android/internal/telephony/RILUtils;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a0

    .line 5351
    :cond_157
    array-length v5, v4

    move v6, v1

    :goto_159
    if-ge v1, v5, :cond_191

    aget-object v9, v4, v1

    .line 5353
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v10

    if-eqz v10, :cond_168

    goto :goto_18e

    .line 5354
    :cond_168
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5357
    :try_start_172
    invoke-virtual {v9, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_176
    .catch Ljava/lang/IllegalAccessException; {:try_start_172 .. :try_end_176} :catch_177

    goto :goto_180

    :catch_177
    move-exception v9

    .line 5359
    invoke-virtual {v9}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    move-object v9, v8

    :goto_180
    if-nez v9, :cond_183

    goto :goto_18e

    .line 5362
    :cond_183
    invoke-static {v9}, Lcom/android/internal/telephony/RILUtils;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v0

    :goto_18e
    add-int/lit8 v1, v1, 0x1

    goto :goto_159

    :cond_191
    if-eqz v6, :cond_1a0

    .line 5367
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v2, p0, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1a0
    :goto_1a0
    const-string p0, "}"

    .line 5370
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5371
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5287
    :cond_1aa
    :goto_1aa
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist deactivateDataReasonToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_2b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_28

    const/4 v0, 0x2

    if-eq p0, v0, :cond_25

    const/4 v0, 0x3

    if-eq p0, v0, :cond_22

    .line 4723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    const-string p0, "HANDOVER"

    return-object p0

    :cond_25
    const-string p0, "SHUTDOWN"

    return-object p0

    :cond_28
    const-string p0, "NORMAL"

    return-object p0

    :cond_2b
    const-string p0, "UNKNOWN"

    return-object p0
.end method

.method public static blacklist getCaps(Lcom/android/internal/telephony/HalVersion;Z)Ljava/util/Set;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/HalVersion;",
            "Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5239
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5241
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HalVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "Radio Hal Version is UNKNOWN!"

    .line 5243
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    .line 5246
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Radio Hal Version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/HalVersion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->logd(Ljava/lang/String;)V

    .line 5247
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p0

    if-eqz p0, :cond_6d

    const-string p0, "CAPABILITY_USES_ALLOWED_NETWORK_TYPES_BITMASK"

    .line 5248
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5249
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->logd(Ljava/lang/String;)V

    if-nez p1, :cond_65

    const-string p0, "CAPABILITY_SECONDARY_LINK_BANDWIDTH_VISIBLE"

    .line 5252
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5253
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->logd(Ljava/lang/String;)V

    const-string p0, "CAPABILITY_NR_DUAL_CONNECTIVITY_CONFIGURATION_AVAILABLE"

    .line 5254
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5255
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->logd(Ljava/lang/String;)V

    const-string p0, "CAPABILITY_THERMAL_MITIGATION_DATA_THROTTLING"

    .line 5256
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5257
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->logd(Ljava/lang/String;)V

    const-string p0, "CAPABILITY_SLICING_CONFIG_SUPPORTED"

    .line 5258
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5259
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->logd(Ljava/lang/String;)V

    const-string p0, "CAPABILITY_PHYSICAL_CHANNEL_CONFIG_1_6_SUPPORTED"

    .line 5260
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5261
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->logd(Ljava/lang/String;)V

    goto :goto_6d

    :cond_65
    const-string p0, "CAPABILITY_SIM_PHONEBOOK_IN_MODEM"

    .line 5263
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5264
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->logd(Ljava/lang/String;)V

    :cond_6d
    :goto_6d
    return-object v0
.end method

.method private static blacklist isPrimitiveOrWrapper(Ljava/lang/Class;)Z
    .registers 2

    .line 5271
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/internal/telephony/RILUtils;->WRAPPER_CLASSES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method private static synthetic blacklist lambda$convertDataCallResultToMultiMtu$10(I)[Ljava/lang/String;
    .registers 1

    .line 5465
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic blacklist lambda$convertDataCallResultToMultiMtu$11(I)[Ljava/lang/String;
    .registers 1

    .line 5466
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic blacklist lambda$convertDataCallResultToMultiMtu$12(I)[Ljava/lang/String;
    .registers 1

    .line 5467
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic blacklist lambda$convertDataCallResultToMultiMtu$13(Landroid/hardware/radio/V1_5/LinkAddress;)Landroid/net/LinkAddress;
    .registers 7

    .line 5480
    iget-object v0, p0, Landroid/hardware/radio/V1_5/LinkAddress;->address:Ljava/lang/String;

    iget v1, p0, Landroid/hardware/radio/V1_5/LinkAddress;->properties:I

    iget-wide v2, p0, Landroid/hardware/radio/V1_5/LinkAddress;->deprecationTime:J

    iget-wide v4, p0, Landroid/hardware/radio/V1_5/LinkAddress;->expirationTime:J

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;IJJ)Landroid/net/LinkAddress;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$convertDataCallResultToMultiMtu$14(I)[Ljava/lang/String;
    .registers 1

    .line 5483
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic blacklist lambda$convertDataCallResultToMultiMtu$15(I)[Ljava/lang/String;
    .registers 1

    .line 5484
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic blacklist lambda$convertDataCallResultToMultiMtu$16(I)[Ljava/lang/String;
    .registers 1

    .line 5485
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic blacklist lambda$convertDataCallResultToMultiMtu$5(I)[Ljava/lang/String;
    .registers 1

    .line 5440
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic blacklist lambda$convertDataCallResultToMultiMtu$6(I)[Ljava/lang/String;
    .registers 1

    .line 5441
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic blacklist lambda$convertDataCallResultToMultiMtu$7(I)[Ljava/lang/String;
    .registers 1

    .line 5442
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic blacklist lambda$convertDataCallResultToMultiMtu$8(I)[Ljava/lang/String;
    .registers 1

    .line 5443
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic blacklist lambda$convertDataCallResultToMultiMtu$9(Landroid/hardware/radio/V1_5/LinkAddress;)Landroid/net/LinkAddress;
    .registers 7

    .line 5461
    iget-object v0, p0, Landroid/hardware/radio/V1_5/LinkAddress;->address:Ljava/lang/String;

    iget v1, p0, Landroid/hardware/radio/V1_5/LinkAddress;->properties:I

    iget-wide v2, p0, Landroid/hardware/radio/V1_5/LinkAddress;->deprecationTime:J

    iget-wide v4, p0, Landroid/hardware/radio/V1_5/LinkAddress;->expirationTime:J

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;IJJ)Landroid/net/LinkAddress;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$convertHalDataCallResult$0(Landroid/hardware/radio/V1_5/LinkAddress;)Landroid/net/LinkAddress;
    .registers 7

    .line 3526
    iget-object v0, p0, Landroid/hardware/radio/V1_5/LinkAddress;->address:Ljava/lang/String;

    iget v1, p0, Landroid/hardware/radio/V1_5/LinkAddress;->properties:I

    iget-wide v2, p0, Landroid/hardware/radio/V1_5/LinkAddress;->deprecationTime:J

    iget-wide v4, p0, Landroid/hardware/radio/V1_5/LinkAddress;->expirationTime:J

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;IJJ)Landroid/net/LinkAddress;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$convertHalDataCallResult$1(Landroid/hardware/radio/V1_5/LinkAddress;)Landroid/net/LinkAddress;
    .registers 7

    .line 3547
    iget-object v0, p0, Landroid/hardware/radio/V1_5/LinkAddress;->address:Ljava/lang/String;

    iget v1, p0, Landroid/hardware/radio/V1_5/LinkAddress;->properties:I

    iget-wide v2, p0, Landroid/hardware/radio/V1_5/LinkAddress;->deprecationTime:J

    iget-wide v4, p0, Landroid/hardware/radio/V1_5/LinkAddress;->expirationTime:J

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;IJJ)Landroid/net/LinkAddress;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$convertHalSlicingConfig$2(Landroid/hardware/radio/V1_6/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;
    .registers 3

    .line 3800
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalTrafficDescriptor(Landroid/hardware/radio/V1_6/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 3802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertHalSlicingConfig: Failed to convert traffic descriptor. e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic blacklist lambda$convertHalSlicingConfig$3(Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;)Landroid/telephony/data/RouteSelectionDescriptor;
    .registers 8

    .line 3809
    new-instance v6, Landroid/telephony/data/RouteSelectionDescriptor;

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->precedence:B

    iget-object v0, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sessionType:Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;

    .line 3810
    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;->value()I

    move-result v2

    iget-object v0, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sscMode:Landroid/hardware/radio/V1_6/OptionalSscMode;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/OptionalSscMode;->value()B

    move-result v3

    iget-object v0, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sliceInfo:Ljava/util/ArrayList;

    .line 3811
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 3812
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->dnn:Ljava/util/ArrayList;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/data/RouteSelectionDescriptor;-><init>(IIILjava/util/List;Ljava/util/List;)V

    return-object v6
.end method

.method private static synthetic blacklist lambda$convertHalSlicingConfig$4(Landroid/hardware/radio/V1_6/UrspRule;)Landroid/telephony/data/UrspRule;
    .registers 5

    .line 3796
    new-instance v0, Landroid/telephony/data/UrspRule;

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/UrspRule;->precedence:B

    iget-object v2, p0, Landroid/hardware/radio/V1_6/UrspRule;->trafficDescriptors:Ljava/util/ArrayList;

    .line 3797
    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda17;

    invoke-direct {v3}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda17;-><init>()V

    .line 3798
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda18;

    invoke-direct {v3}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda18;-><init>()V

    .line 3807
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 3808
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object p0, p0, Landroid/hardware/radio/V1_6/UrspRule;->routeSelectionDescriptor:Ljava/util/ArrayList;

    .line 3809
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v3, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda19;

    invoke-direct {v3}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda19;-><init>()V

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3813
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/data/UrspRule;-><init>(ILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    const-string v0, "RILUtils"

    .line 5591
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    const-string v0, "RILUtils"

    .line 5595
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist makeProfileId(II)I
    .registers 2

    if-lez p1, :cond_a

    if-ltz p0, :cond_8

    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p0, p1

    goto :goto_a

    :cond_8
    shl-int/lit8 p0, p1, 0xc

    :cond_a
    :goto_a
    return p0
.end method

.method public static blacklist primitiveArrayToArrayList([B)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 4652
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4653
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget-byte v3, p0, v2

    .line 4654
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method

.method public static blacklist primitiveArrayToArrayList([I)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4661
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4662
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget v3, p0, v2

    .line 4663
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method

.method public static blacklist primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4670
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static blacklist requestToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_23a

    packed-switch p0, :pswitch_data_36c

    .line 5095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1d
    const-string p0, "GET_USAGE_SETTING"

    return-object p0

    :pswitch_20
    const-string p0, "SET_USAGE_SETTING"

    return-object p0

    :pswitch_23
    const-string p0, "IS_VONR_ENABLED"

    return-object p0

    :pswitch_26
    const-string p0, "ENABLE_VONR"

    return-object p0

    :pswitch_29
    const-string p0, "GET_SLICING_CONFIG"

    return-object p0

    :pswitch_2c
    const-string p0, "GET_ALLOWED_NETWORK_TYPES_BITMAP"

    return-object p0

    :pswitch_2f
    const-string p0, "SET_ALLOWED_NETWORK_TYPES_BITMAP"

    return-object p0

    :pswitch_32
    const-string p0, "SET_DATA_THROTTLING"

    return-object p0

    :pswitch_35
    const-string p0, "GET_HAL_DEVICE_CAPABILITIES"

    return-object p0

    :pswitch_38
    const-string p0, "GET_SYSTEM_SELECTION_CHANNELS"

    return-object p0

    :pswitch_3b
    const-string p0, "CANCEL_HANDOVER"

    return-object p0

    :pswitch_3e
    const-string p0, "START_HANDOVER"

    return-object p0

    :pswitch_41
    const-string p0, "RELEASE_PDU_SESSION_ID"

    return-object p0

    :pswitch_44
    const-string p0, "ALLOCATE_PDU_SESSION_ID"

    return-object p0

    :pswitch_47
    const-string p0, "IS_NR_DUAL_CONNECTIVITY_ENABLED"

    return-object p0

    :pswitch_4a
    const-string p0, "ENABLE_NR_DUAL_CONNECTIVITY"

    return-object p0

    :pswitch_4d
    const-string p0, "ENTER_SIM_DEPERSONALIZATION"

    return-object p0

    :pswitch_50
    const-string p0, "GET_BARRING_INFO"

    return-object p0

    :pswitch_53
    const-string p0, "SET_SYSTEM_SELECTION_CHANNELS"

    return-object p0

    :pswitch_56
    const-string p0, "GET_UICC_APPLICATIONS_ENABLEMENT"

    return-object p0

    :pswitch_59
    const-string p0, "ENABLE_UICC_APPLICATIONS"

    return-object p0

    :pswitch_5c
    const-string p0, "SWITCH_DUAL_SIM_CONFIG"

    return-object p0

    :pswitch_5f
    const-string p0, "GET_PHONE_CAPABILITY"

    return-object p0

    :pswitch_62
    const-string p0, "EMERGENCY_DIAL"

    return-object p0

    :pswitch_65
    const-string p0, "SET_PREFERRED_DATA_MODEM"

    return-object p0

    :pswitch_68
    const-string p0, "SET_LINK_CAPACITY_REPORTING_CRITERIA"

    return-object p0

    :pswitch_6b
    const-string p0, "SET_SIGNAL_STRENGTH_REPORTING_CRITERIA"

    return-object p0

    :pswitch_6e
    const-string p0, "SET_LOGICAL_TO_PHYSICAL_SLOT_MAPPING"

    return-object p0

    :pswitch_71
    const-string p0, "GET_SLOT_STATUS"

    return-object p0

    :pswitch_74
    const-string p0, "UPDATE_SIM_PHONEBOOK_RECORD"

    return-object p0

    :pswitch_77
    const-string p0, "GET_SIM_PHONEBOOK_RECORDS"

    return-object p0

    :pswitch_7a
    const-string p0, "GET_SIM_PHONEBOOK_CAPACITY"

    return-object p0

    :pswitch_7d
    const-string p0, "CDMA_SEND_SMS_EXPECT_MORE"

    return-object p0

    :pswitch_80
    const-string p0, "GET_MODEM_STATUS"

    return-object p0

    :pswitch_83
    const-string p0, "ENABLE_MODEM"

    return-object p0

    :pswitch_86
    const-string p0, "STOP_KEEPALIVE"

    return-object p0

    :pswitch_89
    const-string p0, "START_KEEPALIVE"

    return-object p0

    :pswitch_8c
    const-string p0, "STOP_NETWORK_SCAN"

    return-object p0

    :pswitch_8f
    const-string p0, "START_NETWORK_SCAN"

    return-object p0

    :pswitch_92
    const-string p0, "SET_CARRIER_INFO_IMSI_ENCRYPTION"

    return-object p0

    :pswitch_95
    const-string p0, "SET_SIM_CARD_POWER"

    return-object p0

    :pswitch_98
    const-string p0, "SET_UNSOLICITED_RESPONSE_FILTER"

    return-object p0

    :pswitch_9b
    const-string p0, "SEND_DEVICE_STATE"

    return-object p0

    :pswitch_9e
    const-string p0, "GET_ALLOWED_CARRIERS"

    return-object p0

    :pswitch_a1
    const-string p0, "SET_ALLOWED_CARRIERS"

    return-object p0

    :pswitch_a4
    const-string p0, "GET_ACTIVITY_INFO"

    return-object p0

    :pswitch_a7
    const-string p0, "PULL_LCEDATA"

    return-object p0

    :pswitch_aa
    const-string p0, "STOP_LCE"

    return-object p0

    :pswitch_ad
    const-string p0, "START_LCE"

    return-object p0

    :pswitch_b0
    const-string p0, "SET_RADIO_CAPABILITY"

    return-object p0

    :pswitch_b3
    const-string p0, "GET_RADIO_CAPABILITY"

    return-object p0

    :pswitch_b6
    const-string p0, "SHUTDOWN"

    return-object p0

    :pswitch_b9
    const-string p0, "SET_DATA_PROFILE"

    return-object p0

    :pswitch_bc
    const-string p0, "SET_DC_RT_INFO_RATE"

    return-object p0

    :pswitch_bf
    const-string p0, "GET_DC_RT_INFO"

    return-object p0

    :pswitch_c2
    const-string p0, "SIM_AUTHENTICATION"

    return-object p0

    :pswitch_c5
    const-string p0, "GET_HARDWARE_CONFIG"

    return-object p0

    :pswitch_c8
    const-string p0, "ALLOW_DATA"

    return-object p0

    :pswitch_cb
    const-string p0, "SET_UICC_SUBSCRIPTION"

    return-object p0

    :pswitch_ce
    const-string p0, "NV_RESET_CONFIG"

    return-object p0

    :pswitch_d1
    const-string p0, "NV_WRITE_CDMA_PRL"

    return-object p0

    :pswitch_d4
    const-string p0, "NV_WRITE_ITEM"

    return-object p0

    :pswitch_d7
    const-string p0, "NV_READ_ITEM"

    return-object p0

    :pswitch_da
    const-string p0, "SIM_TRANSMIT_APDU_CHANNEL"

    return-object p0

    :pswitch_dd
    const-string p0, "SIM_CLOSE_CHANNEL"

    return-object p0

    :pswitch_e0
    const-string p0, "SIM_OPEN_CHANNEL"

    return-object p0

    :pswitch_e3
    const-string p0, "SIM_TRANSMIT_APDU_BASIC"

    return-object p0

    :pswitch_e6
    const-string p0, "IMS_SEND_SMS"

    return-object p0

    :pswitch_e9
    const-string p0, "IMS_REGISTRATION_STATE"

    return-object p0

    :pswitch_ec
    const-string p0, "SET_INITIAL_ATTACH_APN"

    return-object p0

    :pswitch_ef
    const-string p0, "SET_CELL_INFO_LIST_RATE"

    return-object p0

    :pswitch_f2
    const-string p0, "GET_CELL_INFO_LIST"

    return-object p0

    :pswitch_f5
    const-string p0, "VOICE_RADIO_TECH"

    return-object p0

    :pswitch_f8
    const-string p0, "STK_SEND_ENVELOPE_WITH_STATUS"

    return-object p0

    :pswitch_fb
    const-string p0, "ACKNOWLEDGE_INCOMING_GSM_SMS_WITH_PDU"

    return-object p0

    :pswitch_fe
    const-string p0, "ISIM_AUTHENTICATION"

    return-object p0

    :pswitch_101
    const-string p0, "CDMA_GET_SUBSCRIPTION_SOURCE"

    return-object p0

    :pswitch_104
    const-string p0, "REPORT_STK_SERVICE_IS_RUNNING"

    return-object p0

    :pswitch_107
    const-string p0, "REPORT_SMS_MEMORY_STATUS"

    return-object p0

    :pswitch_10a
    const-string p0, "SET_SMSC_ADDRESS"

    return-object p0

    :pswitch_10d
    const-string p0, "GET_SMSC_ADDRESS"

    return-object p0

    :pswitch_110
    const-string p0, "EXIT_EMERGENCY_CALLBACK_MODE"

    return-object p0

    :pswitch_113
    const-string p0, "DEVICE_IDENTITY"

    return-object p0

    :pswitch_116
    const-string p0, "CDMA_DELETE_SMS_ON_RUIM"

    return-object p0

    :pswitch_119
    const-string p0, "CDMA_WRITE_SMS_TO_RUIM"

    return-object p0

    :pswitch_11c
    const-string p0, "CDMA_SUBSCRIPTION"

    return-object p0

    :pswitch_11f
    const-string p0, "CDMA_BROADCAST_ACTIVATION"

    return-object p0

    :pswitch_122
    const-string p0, "CDMA_SET_BROADCAST_CONFIG"

    return-object p0

    :pswitch_125
    const-string p0, "CDMA_GET_BROADCAST_CONFIG"

    return-object p0

    :pswitch_128
    const-string p0, "GSM_BROADCAST_ACTIVATION"

    return-object p0

    :pswitch_12b
    const-string p0, "GSM_SET_BROADCAST_CONFIG"

    return-object p0

    :pswitch_12e
    const-string p0, "GSM_GET_BROADCAST_CONFIG"

    return-object p0

    :pswitch_131
    const-string p0, "CDMA_SMS_ACKNOWLEDGE"

    return-object p0

    :pswitch_134
    const-string p0, "CDMA_SEND_SMS"

    return-object p0

    :pswitch_137
    const-string p0, "CDMA_VALIDATE_AND_WRITE_AKEY"

    return-object p0

    :pswitch_13a
    const-string p0, "CDMA_BURST_DTMF"

    return-object p0

    :pswitch_13d
    const-string p0, "CDMA_FLASH"

    return-object p0

    :pswitch_140
    const-string p0, "CDMA_QUERY_PREFERRED_VOICE_PRIVACY_MODE"

    return-object p0

    :pswitch_143
    const-string p0, "CDMA_SET_PREFERRED_VOICE_PRIVACY_MODE"

    return-object p0

    :pswitch_146
    const-string p0, "QUERY_TTY_MODE"

    return-object p0

    :pswitch_149
    const-string p0, "SET_TTY_MODE"

    return-object p0

    :pswitch_14c
    const-string p0, "CDMA_QUERY_ROAMING_PREFERENCE"

    return-object p0

    :pswitch_14f
    const-string p0, "CDMA_SET_ROAMING_PREFERENCE"

    return-object p0

    :pswitch_152
    const-string p0, "CDMA_SET_SUBSCRIPTION_SOURCE"

    return-object p0

    :pswitch_155
    const-string p0, "SET_LOCATION_UPDATES"

    return-object p0

    :pswitch_158
    const-string p0, "GET_NEIGHBORING_CELL_IDS"

    return-object p0

    :pswitch_15b
    const-string p0, "GET_PREFERRED_NETWORK_TYPE"

    return-object p0

    :pswitch_15e
    const-string p0, "SET_PREFERRED_NETWORK_TYPE"

    return-object p0

    :pswitch_161
    const-string p0, "EXPLICIT_CALL_TRANSFER"

    return-object p0

    :pswitch_164
    const-string p0, "STK_HANDLE_CALL_SETUP_REQUESTED_FROM_SIM"

    return-object p0

    :pswitch_167
    const-string p0, "STK_SEND_TERMINAL_RESPONSE"

    return-object p0

    :pswitch_16a
    const-string p0, "STK_SEND_ENVELOPE_COMMAND"

    return-object p0

    :pswitch_16d
    const-string p0, "STK_SET_PROFILE"

    return-object p0

    :pswitch_170
    const-string p0, "STK_GET_PROFILE"

    return-object p0

    :pswitch_173
    const-string p0, "QUERY_AVAILABLE_BAND_MODE"

    return-object p0

    :pswitch_176
    const-string p0, "SET_BAND_MODE"

    return-object p0

    :pswitch_179
    const-string p0, "DELETE_SMS_ON_SIM"

    return-object p0

    :pswitch_17c
    const-string p0, "WRITE_SMS_TO_SIM"

    return-object p0

    :pswitch_17f
    const-string p0, "SET_SUPP_SVC_NOTIFICATION"

    return-object p0

    :pswitch_182
    const-string p0, "SCREEN_STATE"

    return-object p0

    :pswitch_185
    const-string p0, "OEM_HOOK_STRINGS"

    return-object p0

    :pswitch_188
    const-string p0, "OEM_HOOK_RAW"

    return-object p0

    :pswitch_18b
    const-string p0, "RESET_RADIO"

    return-object p0

    :pswitch_18e
    const-string p0, "DATA_CALL_LIST"

    return-object p0

    :pswitch_191
    const-string p0, "LAST_DATA_CALL_FAIL_CAUSE"

    return-object p0

    :pswitch_194
    const-string p0, "QUERY_CLIP"

    return-object p0

    :pswitch_197
    const-string p0, "GET_MUTE"

    return-object p0

    :pswitch_19a
    const-string p0, "SET_MUTE"

    return-object p0

    :pswitch_19d
    const-string p0, "SEPARATE_CONNECTION"

    return-object p0

    :pswitch_1a0
    const-string p0, "BASEBAND_VERSION"

    return-object p0

    :pswitch_1a3
    const-string p0, "DTMF_STOP"

    return-object p0

    :pswitch_1a6
    const-string p0, "DTMF_START"

    return-object p0

    :pswitch_1a9
    const-string p0, "QUERY_AVAILABLE_NETWORKS "

    return-object p0

    :pswitch_1ac
    const-string p0, "SET_NETWORK_SELECTION_MANUAL"

    return-object p0

    :pswitch_1af
    const-string p0, "SET_NETWORK_SELECTION_AUTOMATIC"

    return-object p0

    :pswitch_1b2
    const-string p0, "QUERY_NETWORK_SELECTION_MODE"

    return-object p0

    :pswitch_1b5
    const-string p0, "CHANGE_BARRING_PASSWORD"

    return-object p0

    :pswitch_1b8
    const-string p0, "SET_FACILITY_LOCK"

    return-object p0

    :pswitch_1bb
    const-string p0, "QUERY_FACILITY_LOCK"

    return-object p0

    :pswitch_1be
    const-string p0, "DEACTIVATE_DATA_CALL"

    return-object p0

    :pswitch_1c1
    const-string p0, "ANSWER"

    return-object p0

    :pswitch_1c4
    const-string p0, "GET_IMEISV"

    return-object p0

    :pswitch_1c7
    const-string p0, "GET_IMEI"

    return-object p0

    :pswitch_1ca
    const-string p0, "SMS_ACKNOWLEDGE"

    return-object p0

    :pswitch_1cd
    const-string p0, "SET_CALL_WAITING"

    return-object p0

    :pswitch_1d0
    const-string p0, "QUERY_CALL_WAITING"

    return-object p0

    :pswitch_1d3
    const-string p0, "SET_CALL_FORWARD"

    return-object p0

    :pswitch_1d6
    const-string p0, "QUERY_CALL_FORWARD_STATUS"

    return-object p0

    :pswitch_1d9
    const-string p0, "SET_CLIR"

    return-object p0

    :pswitch_1dc
    const-string p0, "GET_CLIR"

    return-object p0

    :pswitch_1df
    const-string p0, "CANCEL_USSD"

    return-object p0

    :pswitch_1e2
    const-string p0, "SEND_USSD"

    return-object p0

    :pswitch_1e5
    const-string p0, "SIM_IO"

    return-object p0

    :pswitch_1e8
    const-string p0, "SETUP_DATA_CALL"

    return-object p0

    :pswitch_1eb
    const-string p0, "SEND_SMS_EXPECT_MORE"

    return-object p0

    :pswitch_1ee
    const-string p0, "SEND_SMS"

    return-object p0

    :pswitch_1f1
    const-string p0, "DTMF"

    return-object p0

    :pswitch_1f4
    const-string p0, "RADIO_POWER"

    return-object p0

    :pswitch_1f7
    const-string p0, "OPERATOR"

    return-object p0

    :pswitch_1fa
    const-string p0, "DATA_REGISTRATION_STATE"

    return-object p0

    :pswitch_1fd
    const-string p0, "VOICE_REGISTRATION_STATE"

    return-object p0

    :pswitch_200
    const-string p0, "SIGNAL_STRENGTH"

    return-object p0

    :pswitch_203
    const-string p0, "LAST_CALL_FAIL_CAUSE"

    return-object p0

    :pswitch_206
    const-string p0, "UDUB"

    return-object p0

    :pswitch_209
    const-string p0, "CONFERENCE"

    return-object p0

    :pswitch_20c
    const-string p0, "REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object p0

    :pswitch_20f
    const-string p0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    return-object p0

    :pswitch_212
    const-string p0, "HANGUP_WAITING_OR_BACKGROUND"

    return-object p0

    :pswitch_215
    const-string p0, "HANGUP"

    return-object p0

    :pswitch_218
    const-string p0, "GET_IMSI"

    return-object p0

    :pswitch_21b
    const-string p0, "DIAL"

    return-object p0

    :pswitch_21e
    const-string p0, "GET_CURRENT_CALLS"

    return-object p0

    :pswitch_221
    const-string p0, "ENTER_NETWORK_DEPERSONALIZATION"

    return-object p0

    :pswitch_224
    const-string p0, "CHANGE_SIM_PIN2"

    return-object p0

    :pswitch_227
    const-string p0, "CHANGE_SIM_PIN"

    return-object p0

    :pswitch_22a
    const-string p0, "ENTER_SIM_PUK2"

    return-object p0

    :pswitch_22d
    const-string p0, "ENTER_SIM_PIN2"

    return-object p0

    :pswitch_230
    const-string p0, "ENTER_SIM_PUK"

    return-object p0

    :pswitch_233
    const-string p0, "ENTER_SIM_PIN"

    return-object p0

    :pswitch_236
    const-string p0, "GET_SIM_STATUS"

    return-object p0

    nop

    :pswitch_data_23a
    .packed-switch 0x1
        :pswitch_236
        :pswitch_233
        :pswitch_230
        :pswitch_22d
        :pswitch_22a
        :pswitch_227
        :pswitch_224
        :pswitch_221
        :pswitch_21e
        :pswitch_21b
        :pswitch_218
        :pswitch_215
        :pswitch_212
        :pswitch_20f
        :pswitch_20c
        :pswitch_209
        :pswitch_206
        :pswitch_203
        :pswitch_200
        :pswitch_1fd
        :pswitch_1fa
        :pswitch_1f7
        :pswitch_1f4
        :pswitch_1f1
        :pswitch_1ee
        :pswitch_1eb
        :pswitch_1e8
        :pswitch_1e5
        :pswitch_1e2
        :pswitch_1df
        :pswitch_1dc
        :pswitch_1d9
        :pswitch_1d6
        :pswitch_1d3
        :pswitch_1d0
        :pswitch_1cd
        :pswitch_1ca
        :pswitch_1c7
        :pswitch_1c4
        :pswitch_1c1
        :pswitch_1be
        :pswitch_1bb
        :pswitch_1b8
        :pswitch_1b5
        :pswitch_1b2
        :pswitch_1af
        :pswitch_1ac
        :pswitch_1a9
        :pswitch_1a6
        :pswitch_1a3
        :pswitch_1a0
        :pswitch_19d
        :pswitch_19a
        :pswitch_197
        :pswitch_194
        :pswitch_191
        :pswitch_18e
        :pswitch_18b
        :pswitch_188
        :pswitch_185
        :pswitch_182
        :pswitch_17f
        :pswitch_17c
        :pswitch_179
        :pswitch_176
        :pswitch_173
        :pswitch_170
        :pswitch_16d
        :pswitch_16a
        :pswitch_167
        :pswitch_164
        :pswitch_161
        :pswitch_15e
        :pswitch_15b
        :pswitch_158
        :pswitch_155
        :pswitch_152
        :pswitch_14f
        :pswitch_14c
        :pswitch_149
        :pswitch_146
        :pswitch_143
        :pswitch_140
        :pswitch_13d
        :pswitch_13a
        :pswitch_137
        :pswitch_134
        :pswitch_131
        :pswitch_12e
        :pswitch_12b
        :pswitch_128
        :pswitch_125
        :pswitch_122
        :pswitch_11f
        :pswitch_11c
        :pswitch_119
        :pswitch_116
        :pswitch_113
        :pswitch_110
        :pswitch_10d
        :pswitch_10a
        :pswitch_107
        :pswitch_104
        :pswitch_101
        :pswitch_fe
        :pswitch_fb
        :pswitch_f8
        :pswitch_f5
        :pswitch_f2
        :pswitch_ef
        :pswitch_ec
        :pswitch_e9
        :pswitch_e6
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
    .end packed-switch

    :pswitch_data_36c
    .packed-switch 0xc8
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist responseToString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_c0

    packed-switch p0, :pswitch_data_12a

    packed-switch p0, :pswitch_data_134

    const-string p0, "<unknown response>"

    return-object p0

    :pswitch_c
    const-string p0, "UNSOL_BARRING_INFO_CHANGED"

    return-object p0

    :pswitch_f
    const-string p0, "UNSOL_REGISTRATION_FAILED"

    return-object p0

    :pswitch_12
    const-string p0, "UNSOL_UICC_APPLICATIONS_ENABLEMENT_CHANGED"

    return-object p0

    :pswitch_15
    const-string p0, "UNSOL_EMERGENCY_NUMBER_LIST"

    return-object p0

    :pswitch_18
    const-string p0, "UNSOL_PHYSICAL_CHANNEL_CONFIG"

    return-object p0

    :pswitch_1b
    const-string p0, "UNSOL_ICC_SLOT_STATUS"

    return-object p0

    :pswitch_1e
    const-string p0, "UNSOL_RESPONSE_SIM_PHONEBOOK_RECORDS_RECEIVED"

    return-object p0

    :pswitch_21
    const-string p0, "UNSOL_RESPONSE_SIM_PHONEBOOK_CHANGED"

    return-object p0

    :pswitch_24
    const-string p0, "UNSOL_UNTHROTTLE_APN"

    return-object p0

    :pswitch_27
    const-string p0, "UNSOL_KEEPALIVE_STATUS"

    return-object p0

    :pswitch_2a
    const-string p0, "UNSOL_NETWORK_SCAN_RESULT"

    return-object p0

    :pswitch_2d
    const-string p0, "UNSOL_CARRIER_INFO_IMSI_ENCRYPTION"

    return-object p0

    :pswitch_30
    const-string p0, "UNSOL_MODEM_RESTART"

    return-object p0

    :pswitch_33
    const-string p0, "UNSOL_PCO_DATA"

    return-object p0

    :pswitch_36
    const-string p0, "UNSOL_LCE_INFO_RECV"

    return-object p0

    :pswitch_39
    const-string p0, "UNSOL_STK_CC_ALPHA_NOTIFY"

    return-object p0

    :pswitch_3c
    const-string p0, "UNSOL_ON_SS"

    return-object p0

    :pswitch_3f
    const-string p0, "UNSOL_RADIO_CAPABILITY"

    return-object p0

    :pswitch_42
    const-string p0, "UNSOL_DC_RT_INFO_CHANGED"

    return-object p0

    :pswitch_45
    const-string p0, "UNSOL_HARDWARE_CONFIG_CHANGED"

    return-object p0

    :pswitch_48
    const-string p0, "UNSOL_SRVCC_STATE_NOTIFY"

    return-object p0

    :pswitch_4b
    const-string p0, "UNSOL_UICC_SUBSCRIPTION_STATUS_CHANGED"

    return-object p0

    :pswitch_4e
    const-string p0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object p0

    :pswitch_51
    const-string p0, "UNSOL_CELL_INFO_LIST"

    return-object p0

    :pswitch_54
    const-string p0, "UNSOL_VOICE_RADIO_TECH_CHANGED"

    return-object p0

    :pswitch_57
    const-string p0, "UNSOL_RIL_CONNECTED"

    return-object p0

    :pswitch_5a
    const-string p0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object p0

    :pswitch_5d
    const-string p0, "UNSOL_CDMA_PRL_CHANGED"

    return-object p0

    :pswitch_60
    const-string p0, "UNSOL_CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    return-object p0

    :pswitch_63
    const-string p0, "UNSOL_RESEND_INCALL_MUTE"

    return-object p0

    :pswitch_66
    const-string p0, "UNSOL_RINGBACK_TONE"

    return-object p0

    :pswitch_69
    const-string p0, "UNSOL_OEM_HOOK_RAW"

    return-object p0

    :pswitch_6c
    const-string p0, "UNSOL_CDMA_INFO_REC"

    return-object p0

    :pswitch_6f
    const-string p0, "UNSOL_CDMA_OTA_PROVISION_STATUS"

    return-object p0

    :pswitch_72
    const-string p0, "UNSOL_CDMA_CALL_WAITING"

    return-object p0

    :pswitch_75
    const-string p0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    return-object p0

    :pswitch_78
    const-string p0, "UNSOL_RESTRICTED_STATE_CHANGED"

    return-object p0

    :pswitch_7b
    const-string p0, "UNSOL_CDMA_RUIM_SMS_STORAGE_FULL"

    return-object p0

    :pswitch_7e
    const-string p0, "UNSOL_RESPONSE_NEW_BROADCAST_SMS"

    return-object p0

    :pswitch_81
    const-string p0, "UNSOL_RESPONSE_CDMA_NEW_SMS"

    return-object p0

    :pswitch_84
    const-string p0, "UNSOL_RESPONSE_SIM_STATUS_CHANGED"

    return-object p0

    :pswitch_87
    const-string p0, "UNSOL_CALL_RING"

    return-object p0

    :pswitch_8a
    const-string p0, "UNSOL_SIM_REFRESH"

    return-object p0

    :pswitch_8d
    const-string p0, "UNSOL_SIM_SMS_STORAGE_FULL"

    return-object p0

    :pswitch_90
    const-string p0, "UNSOL_STK_CALL_SETUP"

    return-object p0

    :pswitch_93
    const-string p0, "UNSOL_STK_EVENT_NOTIFY"

    return-object p0

    :pswitch_96
    const-string p0, "UNSOL_STK_PROACTIVE_COMMAND"

    return-object p0

    :pswitch_99
    const-string p0, "UNSOL_STK_SESSION_END"

    return-object p0

    :pswitch_9c
    const-string p0, "UNSOL_SUPP_SVC_NOTIFICATION"

    return-object p0

    :pswitch_9f
    const-string p0, "UNSOL_DATA_CALL_LIST_CHANGED"

    return-object p0

    :pswitch_a2
    const-string p0, "UNSOL_SIGNAL_STRENGTH"

    return-object p0

    :pswitch_a5
    const-string p0, "UNSOL_NITZ_TIME_RECEIVED"

    return-object p0

    :pswitch_a8
    const-string p0, "UNSOL_ON_USSD_REQUEST"

    return-object p0

    :pswitch_ab
    const-string p0, "UNSOL_ON_USSD"

    return-object p0

    :pswitch_ae
    const-string p0, "UNSOL_RESPONSE_NEW_SMS_ON_SIM"

    return-object p0

    :pswitch_b1
    const-string p0, "UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT"

    return-object p0

    :pswitch_b4
    const-string p0, "UNSOL_RESPONSE_NEW_SMS"

    return-object p0

    :pswitch_b7
    const-string p0, "UNSOL_RESPONSE_NETWORK_STATE_CHANGED"

    return-object p0

    :pswitch_ba
    const-string p0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    return-object p0

    :pswitch_bd
    const-string p0, "UNSOL_RESPONSE_RADIO_STATE_CHANGED"

    return-object p0

    :pswitch_data_c0
    .packed-switch 0x3e8
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
    .end packed-switch

    :pswitch_data_12a
    .packed-switch 0x41c
        :pswitch_24
        :pswitch_21
        :pswitch_1e
    .end packed-switch

    :pswitch_data_134
    .packed-switch 0x44c
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method

.method public static blacklist setupDataReasonToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1f

    .line 4702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    const-string p0, "HANDOVER"

    return-object p0

    :cond_22
    const-string p0, "NORMAL"

    return-object p0

    :cond_25
    const-string p0, "UNKNOWN"

    return-object p0
.end method
