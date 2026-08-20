.class public Lcom/android/internal/telephony/NetworkResponse;
.super Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;
.source "NetworkResponse.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method


# virtual methods
.method public blacklist acknowledgeRequest(I)V
    .registers 2

    .line 49
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->processRequestAck(I)V

    return-void
.end method

.method public blacklist getAllowedNetworkTypesBitmapResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 5

    .line 58
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalNetworkTypeBitMask(I)I

    move-result p2

    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/RIL;->updateCachedAllowedNetworkTypesBitmask(II)V

    .line 65
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x4

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getAvailableBandModesResponse(Landroid/hardware/radio/RadioResponseInfo;[I)V
    .registers 4

    .line 73
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    .line 74
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x4

    .line 73
    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getAvailableNetworksResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/network/OperatorInfo;)V
    .registers 12

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    array-length v2, p2

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_2b

    aget-object v4, p2, v3

    .line 88
    new-instance v5, Lcom/android/internal/telephony/OperatorInfo;

    iget-object v6, v4, Landroid/hardware/radio/network/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v7, v4, Landroid/hardware/radio/network/OperatorInfo;->alphaShort:Ljava/lang/String;

    iget-object v8, v4, Landroid/hardware/radio/network/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    iget v4, v4, Landroid/hardware/radio/network/OperatorInfo;->status:I

    .line 89
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalOperatorStatus(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v7, v8, v4}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 91
    :cond_2b
    iget p2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p2, :cond_34

    .line 92
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 94
    :cond_34
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_39
    return-void
.end method

.method public blacklist getBarringInfoResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/CellIdentity;[Landroid/hardware/radio/network/BarringInfo;)V
    .registers 7

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 109
    new-instance v1, Landroid/telephony/BarringInfo;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Landroid/hardware/radio/network/CellIdentity;)Landroid/telephony/CellIdentity;

    move-result-object p2

    .line 110
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertHalBarringInfoList([Landroid/hardware/radio/network/BarringInfo;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-direct {v1, p2, p3}, Landroid/telephony/BarringInfo;-><init>(Landroid/telephony/CellIdentity;Landroid/util/SparseArray;)V

    .line 111
    iget p2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p2, :cond_2c

    .line 112
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 114
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/BaseCommands;->mBarringInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p3, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {p3, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 117
    :cond_2c
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_31
    return-void
.end method

.method public blacklist getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 5

    .line 126
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x4

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getCellInfoListResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/network/CellInfo;)V
    .registers 5

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 138
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfoList([Landroid/hardware/radio/network/CellInfo;)Ljava/util/ArrayList;

    move-result-object p2

    .line 139
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 140
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 142
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method public blacklist getDataRegistrationStateResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/RegStateResult;)V
    .registers 5

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 155
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_12

    .line 156
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 158
    :cond_12
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method public blacklist getImsRegistrationStateResponse(Landroid/hardware/radio/RadioResponseInfo;ZI)V
    .registers 7

    .line 169
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    if-nez p3, :cond_c

    move v0, p2

    :cond_c
    aput v0, v1, p2

    const/4 p2, 0x4

    invoke-static {p2, p0, p1, v1}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

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

.method public blacklist getNetworkSelectionModeResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .registers 5

    .line 179
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x4

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getOperatorResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 190
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const/4 p2, 0x4

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseStrings(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getSignalStrengthResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/SignalStrength;)V
    .registers 5

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 203
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSignalStrength(Landroid/hardware/radio/network/SignalStrength;)Landroid/telephony/SignalStrength;

    move-result-object p2

    .line 204
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 205
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 207
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method public blacklist getSystemSelectionChannelsResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/network/RadioAccessSpecifier;)V
    .registers 8

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    array-length v2, p2

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1e

    aget-object v4, p2, v3

    .line 222
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalRadioAccessSpecifier(Landroid/hardware/radio/network/RadioAccessSpecifier;)Landroid/telephony/RadioAccessSpecifier;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 224
    :cond_1e
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemSelectionChannelsResponse: from AIDL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 225
    iget p2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p2, :cond_3d

    .line 226
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 228
    :cond_3d
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_42
    return-void
.end method

.method public blacklist getUsageSettingResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 5

    .line 444
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x4

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getVoiceRadioTechnologyResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 5

    .line 237
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x4

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getVoiceRegistrationStateResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/RegStateResult;)V
    .registers 5

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 248
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_12

    .line 249
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 251
    :cond_12
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method public blacklist isNrDualConnectivityEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .registers 6

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 265
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 266
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 268
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method public blacklist pullLceDataResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/LceDataInfo;)V
    .registers 5

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 281
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalLceData(Landroid/hardware/radio/network/LceDataInfo;)Ljava/util/List;

    move-result-object p2

    .line 282
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 283
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 285
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method public blacklist setAllowedNetworkTypesBitmapResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 4

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-static {v1, v0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    .line 295
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget p1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->checkRecoverCachedAllowedNetworkTypesBitmask(I)V

    return-void
.end method

.method public blacklist setBandModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 303
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setBarringPasswordResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 310
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 317
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCellInfoListRateResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 324
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setIndicationFilterResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 331
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 338
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setLocationUpdatesResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 345
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 352
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setNetworkSelectionModeManualResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 359
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setNrDualConnectivityStateResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 366
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 373
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSuppServiceNotificationsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 380
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSystemSelectionChannelsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 387
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setUsageSettingResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 435
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist startNetworkScanResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7

    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 397
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    .line 398
    new-instance v1, Lcom/android/internal/telephony/NetworkScanResult;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    .line 400
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    move-object v2, v1

    .line 402
    :cond_1b
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_20
    return-void
.end method

.method public blacklist stopNetworkScanResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 413
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    .line 414
    new-instance v1, Lcom/android/internal/telephony/NetworkScanResult;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    .line 416
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    move-object v2, v1

    .line 418
    :cond_1b
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_20
    return-void
.end method

.method public blacklist supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 5

    .line 428
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x4

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method
