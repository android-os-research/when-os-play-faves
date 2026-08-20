.class public Lcom/android/internal/telephony/SehMessagingResponse;
.super Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub;
.source "SehMessagingResponse.java"


# instance fields
.field private final blacklist mSemRil:Lcom/android/internal/telephony/SemRIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SemRIL;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    return-void
.end method

.method private blacklist oemResponseGsmBroadcastConfig(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;)V
    .registers 10

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 116
    new-instance v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;

    invoke-direct {v1}, Lcom/samsung/android/telephony/gsm/SemCbConfig;-><init>()V

    .line 128
    :try_start_e
    iget v2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_7a

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1a

    .line 178
    :goto_14
    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    return-void

    .line 133
    :cond_1a
    :try_start_1a
    iget v2, p2, Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;->enabled:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v2, v4, :cond_23

    .line 136
    iput-boolean v4, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->bCBEnabled:Z

    goto :goto_27

    :cond_23
    if-ne v2, v5, :cond_6e

    .line 138
    iput-boolean v6, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->bCBEnabled:Z

    .line 146
    :goto_27
    iget v2, p2, Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;->selectedId:I

    iput v2, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->selectedId:I

    .line 147
    iget v2, p2, Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;->msgIdMaxCount:I

    iput v2, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIdMaxCount:I

    .line 148
    iget v3, p2, Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;->msgIdCount:I

    iput v3, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIdCount:I

    if-lez v2, :cond_38

    mul-int/2addr v2, v5

    .line 151
    new-array v2, v2, [B

    .line 156
    :cond_38
    new-array v2, v3, [I

    .line 157
    iput-object v2, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIds:[I

    .line 159
    iget-object p2, p2, Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;->msgIDs:Ljava/lang/String;

    if-eqz p2, :cond_5f

    .line 163
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p2

    move v2, v6

    .line 165
    :goto_45
    iget v3, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIdCount:I

    if-ge v6, v3, :cond_5f

    .line 166
    aget-byte v3, p2, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    .line 167
    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    .line 170
    iget-object v5, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIds:[I

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    aput v3, v5, v6

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_45

    .line 174
    :cond_5f
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_68

    .line 175
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehMessagingResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_68
    .catchall {:try_start_1a .. :try_end_68} :catchall_7a

    .line 178
    :cond_68
    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_81

    .line 140
    :cond_6e
    :try_start_6e
    iget-object p2, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    const-string v2, "oemResponseGsmBroadcastConfig parameter is invalid. processResponseDone with return null."

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    const/16 p2, 0x42

    .line 141
    iput p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I
    :try_end_79
    .catchall {:try_start_6e .. :try_end_79} :catchall_7a

    goto :goto_14

    :catchall_7a
    move-exception p2

    .line 178
    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 179
    throw p2

    :cond_81
    :goto_81
    return-void
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

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 240
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 242
    :goto_10
    :try_start_10
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 243
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 245
    :cond_25
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_2e

    .line 246
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehMessagingResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_34

    .line 249
    :cond_2e
    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_3b

    :catchall_34
    move-exception p2

    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 250
    throw p2

    :cond_3b
    :goto_3b
    return-void
.end method

.method private varargs blacklist responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V
    .registers 6

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 230
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_15

    .line 231
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 233
    :cond_15
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehMessagingResponse;->responseIntArrayList(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method private blacklist responseSms(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V
    .registers 8

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 101
    new-instance v1, Lcom/android/internal/telephony/SmsResponse;

    iget v2, p2, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;->messageRef:I

    iget-object v3, p2, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;->ackPDU:Ljava/lang/String;

    iget v4, p2, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;->errorCode:I

    iget p2, p2, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;->errorClass:I

    invoke-direct {v1, v2, v3, v4, p2}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;II)V

    .line 103
    :try_start_16
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_1f

    .line 104
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehMessagingResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_25

    .line 107
    :cond_1f
    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_2c

    :catchall_25
    move-exception p2

    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 108
    throw p2

    :cond_2c
    :goto_2c
    return-void
.end method

.method static blacklist sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 3

    if-eqz p0, :cond_9

    const/4 v0, 0x0

    .line 48
    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 49
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_9
    return-void
.end method


# virtual methods
.method public blacklist getCellBroadcastConfigResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;)V
    .registers 3

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehMessagingResponse;->oemResponseGsmBroadcastConfig(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;)V

    return-void
.end method

.method public blacklist getImsRegistrationStateResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V
    .registers 3

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehMessagingResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "0e5d00b93e56b4bc7c91a787b8dab045b0f3bfda"

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getStoredMsgCountFromSimResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehStoredMsgCount;)V
    .registers 5

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 188
    :try_start_9
    iget v1, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez v1, :cond_12

    .line 189
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/SehMessagingResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_18

    .line 192
    :cond_12
    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_1f

    :catchall_18
    move-exception v1

    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 193
    throw v1

    :cond_1f
    :goto_1f
    return-void
.end method

.method public blacklist readSmsFromSimResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;)V
    .registers 5

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 202
    :try_start_9
    iget v1, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez v1, :cond_12

    .line 203
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/SehMessagingResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_18

    .line 206
    :cond_12
    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_1f

    :catchall_18
    move-exception v1

    iget-object p0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 207
    throw v1

    :cond_1f
    :goto_1f
    return-void
.end method

.method public blacklist sendCdmaSmsExpectMoreResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V
    .registers 3

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehMessagingResponse;->responseSms(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V

    return-void
.end method

.method public blacklist sendCdmaSmsResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V
    .registers 3

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehMessagingResponse;->responseSms(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V

    return-void
.end method

.method public blacklist sendSMSExpectMoreResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V
    .registers 3

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehMessagingResponse;->responseSms(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V

    return-void
.end method

.method public blacklist sendSmsResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V
    .registers 3

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehMessagingResponse;->responseSms(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V

    return-void
.end method

.method public blacklist writeSmsToSimResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .registers 6

    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/SehMessagingResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeSmsToSimResponse : index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 213
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehMessagingResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method
