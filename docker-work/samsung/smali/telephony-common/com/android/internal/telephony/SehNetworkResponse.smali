.class public Lcom/android/internal/telephony/SehNetworkResponse;
.super Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;
.source "SehNetworkResponse.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/SemRIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SemRIL;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    return-void
.end method

.method private blacklist convertIntToOperatorInfoState(I)Lcom/android/internal/telephony/OperatorInfo$State;
    .registers 2

    if-nez p1, :cond_5

    .line 167
    sget-object p0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object p0

    :cond_5
    const/4 p0, 0x1

    if-ne p1, p0, :cond_b

    .line 169
    sget-object p0, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object p0

    :cond_b
    const/4 p0, 0x2

    if-ne p1, p0, :cond_11

    .line 171
    sget-object p0, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object p0

    :cond_11
    const/4 p0, 0x3

    if-ne p1, p0, :cond_17

    .line 173
    sget-object p0, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object p0

    .line 175
    :cond_17
    sget-object p0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object p0
.end method

.method private blacklist convertOperatorInfo(Lvendor/samsung/hardware/radio/network/SehOperatorInfo;)Lcom/android/internal/telephony/OperatorInfo;
    .registers 12

    .line 182
    iget-object v0, p1, Lvendor/samsung/hardware/radio/network/SehOperatorInfo;->alphaLong:Ljava/lang/String;

    .line 183
    iget-object v1, p1, Lvendor/samsung/hardware/radio/network/SehOperatorInfo;->alphaShort:Ljava/lang/String;

    .line 184
    iget-object v8, p1, Lvendor/samsung/hardware/radio/network/SehOperatorInfo;->operatorNumeric:Ljava/lang/String;

    .line 186
    iget-object v2, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object v2, v2, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 187
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    if-eqz v2, :cond_2a

    .line 189
    check-cast v2, Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->getEons(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    move-object v0, v2

    move-object v1, v0

    .line 196
    :cond_2a
    new-instance v9, Lcom/android/internal/telephony/OperatorInfo;

    iget v2, p1, Lvendor/samsung/hardware/radio/network/SehOperatorInfo;->status:I

    .line 197
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SehNetworkResponse;->convertIntToOperatorInfoState(I)Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v6

    iget-object v2, p1, Lvendor/samsung/hardware/radio/network/SehOperatorInfo;->rat:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SehNetworkResponse;->convertRatStringToInt(Ljava/lang/String;)I

    move-result v7

    move-object v2, v9

    move-object v3, v0

    move-object v4, v1

    move-object v5, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;I)V

    .line 198
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add OperatorInfo ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lvendor/samsung/hardware/radio/network/SehOperatorInfo;->status:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lvendor/samsung/hardware/radio/network/SehOperatorInfo;->rat:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    return-object v9
.end method

.method private blacklist convertRatStringToInt(Ljava/lang/String;)I
    .registers 3

    const-string p0, "GERAN"

    .line 204
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const-string p0, "UMTS"

    .line 205
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x2

    if-eqz p0, :cond_14

    return v0

    :cond_14
    const-string p0, "TD"

    .line 206
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    return v0

    :cond_1d
    const-string p0, "LTE"

    .line 207
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 p0, 0x3

    return p0

    :cond_27
    const-string p0, "NR"

    .line 208
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    const/4 p0, 0x6

    return p0

    :cond_31
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist responseIntArrayList(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/samsung/hardware/radio/SehRadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 103
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 105
    :goto_10
    :try_start_10
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 106
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 108
    :cond_25
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_2e

    .line 109
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehNetworkResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_34

    .line 112
    :cond_2e
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_3b

    :catchall_34
    move-exception p2

    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 113
    throw p2

    :cond_3b
    :goto_3b
    return-void
.end method

.method private varargs blacklist responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V
    .registers 6

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 93
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_15

    .line 94
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 96
    :cond_15
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehNetworkResponse;->responseIntArrayList(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method static blacklist responseStringArrayList(Lcom/android/internal/telephony/SemRIL;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/SemRIL;",
            "Lvendor/samsung/hardware/radio/SehRadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 147
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 150
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 152
    :goto_e
    :try_start_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1f

    .line 153
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 156
    :cond_1f
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_28

    .line 157
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehNetworkResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_2c

    .line 160
    :cond_28
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_31

    :catchall_2c
    move-exception p2

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 161
    throw p2

    :cond_31
    :goto_31
    return-void
.end method

.method private blacklist responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 5

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    .line 123
    :try_start_a
    iget v2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez v2, :cond_13

    .line 124
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/SehNetworkResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_19

    .line 127
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_20

    :catchall_19
    move-exception v2

    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 128
    throw v2

    :cond_20
    :goto_20
    return-void
.end method

.method static blacklist sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 3

    if-eqz p0, :cond_9

    const/4 v0, 0x0

    .line 53
    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 54
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_9
    return-void
.end method


# virtual methods
.method public blacklist emergencyControlResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 2

    .line 282
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehNetworkResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist emergencySearchResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 275
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehNetworkResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getAvailableNetworksResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehOperatorInfo;)V
    .registers 8

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    :try_start_e
    array-length v2, p2

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1e

    aget-object v4, p2, v3

    .line 80
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SehNetworkResponse;->convertOperatorInfo(Lvendor/samsung/hardware/radio/network/SehOperatorInfo;)Lcom/android/internal/telephony/OperatorInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 82
    :cond_1e
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_27

    .line 83
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehNetworkResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_2d

    .line 86
    :cond_27
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_34

    :catchall_2d
    move-exception p2

    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 87
    throw p2

    :cond_34
    :goto_34
    return-void
.end method

.method public blacklist getCnapResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 268
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehNetworkResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getCsgListResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehCsgInfo;)V
    .registers 16

    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 295
    :try_start_e
    array-length v2, p2

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_2c

    aget-object v4, p2, v3

    .line 296
    new-instance v12, Lcom/android/internal/telephony/SemCsgInfo;

    iget v6, v4, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->csgId:I

    iget-object v7, v4, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->name:Ljava/lang/String;

    iget-object v8, v4, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->plmn:Ljava/lang/String;

    iget v9, v4, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->rat:I

    iget v10, v4, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->category:I

    iget v11, v4, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->signalStrength:I

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/telephony/SemCsgInfo;-><init>(ILjava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 300
    :cond_2c
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_35

    .line 301
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehNetworkResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_3b

    .line 304
    :cond_35
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_42

    :catchall_3b
    move-exception p2

    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 305
    throw p2

    :cond_42
    :goto_42
    return-void
.end method

.method public blacklist getDisable2gResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 253
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehNetworkResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method

.method public final blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "b4ced15ab6543a8986e50e5ed78438eb45602e23"

    return-object p0
.end method

.method public final blacklist getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getNrIconTypeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 370
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehNetworkResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getNrModeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 362
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehNetworkResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getPreferredNetworkListResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    .line 223
    iget-object v3, v1, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    if-eqz v3, :cond_4e

    .line 226
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 228
    :try_start_14
    array-length v5, v0

    const/4 v6, 0x0

    :goto_16
    if-ge v6, v5, :cond_38

    aget-object v7, v0, v6

    .line 229
    new-instance v15, Lcom/android/internal/telephony/PreferredNetworkListInfo;

    iget v9, v7, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->index:I

    iget-object v10, v7, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->oper:Ljava/lang/String;

    iget-object v11, v7, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->plmn:Ljava/lang/String;

    iget v12, v7, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->gsmAct:I

    iget v13, v7, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->gsmCompactAct:I

    iget v14, v7, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->utranAct:I

    iget v7, v7, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->mode:I

    move-object v8, v15

    move-object v0, v15

    move v15, v7

    invoke-direct/range {v8 .. v15}, Lcom/android/internal/telephony/PreferredNetworkListInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IIII)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p2

    goto :goto_16

    .line 232
    :cond_38
    iget v0, v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez v0, :cond_41

    .line 233
    iget-object v0, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v0, v4}, Lcom/android/internal/telephony/SehNetworkResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_41
    .catchall {:try_start_14 .. :try_end_41} :catchall_47

    .line 236
    :cond_41
    iget-object v0, v1, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_4e

    :catchall_47
    move-exception v0

    iget-object v1, v1, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 237
    throw v0

    :cond_4e
    :goto_4e
    return-void
.end method

.method public blacklist getRoamingNetworkInfoViaBLEResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist getVendorSpecificConfigurationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;)V
    .registers 10

    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 377
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 379
    array-length v2, p2

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_23

    aget-object v4, p2, v3

    .line 380
    new-instance v5, Lcom/android/internal/telephony/SemVendorConfiguration;

    iget-object v6, v4, Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;->name:Ljava/lang/String;

    iget-object v4, v4, Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;->value:Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Lcom/android/internal/telephony/SemVendorConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 384
    :cond_23
    :try_start_23
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_2c

    .line 385
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehNetworkResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_32

    .line 388
    :cond_2c
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_39

    :catchall_32
    move-exception p2

    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 389
    throw p2

    :cond_39
    :goto_39
    return-void
.end method

.method public blacklist selectCsgManualResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 2

    .line 313
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehNetworkResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendEncodedUssdResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 2

    .line 320
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehNetworkResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendRequestRawResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[B)V
    .registers 6

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_44

    const/4 v1, 0x0

    .line 333
    :try_start_a
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v1

    .line 335
    iget-object p2, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p2, p2, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    if-eqz p2, :cond_2e

    .line 336
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {p2, v2, v1}, Lcom/android/internal/telephony/SemPhoneInternal;->processInterceptMsg(Landroid/os/Message;Ljava/lang/Object;)Z

    move-result p2
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_3d

    if-eqz p2, :cond_2e

    .line 343
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    .line 339
    :cond_2e
    :try_start_2e
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_37

    .line 340
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehNetworkResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_3d

    .line 343
    :cond_37
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_44

    :catchall_3d
    move-exception p2

    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 344
    throw p2

    :cond_44
    :goto_44
    return-void
.end method

.method public blacklist sendRequestStringsResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Ljava/lang/String;)V
    .registers 3

    .line 354
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/SehNetworkResponse;->responseStringArrayList(Lcom/android/internal/telephony/SemRIL;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist setCurrentNetworkInfoViaBLEResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist setDisable2gResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 2

    .line 260
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehNetworkResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist setImsCallListResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 2

    .line 216
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehNetworkResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist setNrModeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 2

    .line 358
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehNetworkResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist setPreferredNetworkListResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 2

    .line 245
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehNetworkResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist setRoamingNetworkInfoViaBLEResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist setScanResultViaBLEResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist setVendorSpecificConfigurationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 2

    .line 394
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehNetworkResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method
