.class public Lcom/android/internal/telephony/SehSimResponse;
.super Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;
.source "SehSimResponse.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/SemRIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SemRIL;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    return-void
.end method

.method private blacklist responseIccCardStatus(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/sim/SehCardStatus;)V
    .registers 11

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_db

    .line 150
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 152
    :try_start_e
    iget v2, p2, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->cardState:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 153
    iget v2, p2, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->universalPinState:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 154
    iget v2, p2, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->gsmUmtsSubscriptionAppIndex:I

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 155
    iget v2, p2, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->cdmaSubscriptionAppIndex:I

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 156
    iget v2, p2, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->imsSubscriptionAppIndex:I

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 157
    iget-object v2, p2, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->atr:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    .line 158
    iget-object v2, p2, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->iccid:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    .line 159
    iget-object v2, p2, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->eid:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    .line 161
    iget-object v2, p2, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->applications:[Lvendor/samsung/hardware/radio/sim/SehAppStatus;

    array-length v2, v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 163
    new-array v3, v2, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v3, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    const/4 v3, 0x0

    move v4, v3

    :goto_3f
    if-ge v4, v2, :cond_9e

    .line 165
    iget-object v5, p2, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->applications:[Lvendor/samsung/hardware/radio/sim/SehAppStatus;

    aget-object v5, v5, v4

    .line 166
    new-instance v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 167
    iget v7, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->appType:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 168
    iget v7, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->appState:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 169
    iget v7, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->persoSubstate:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 171
    iget-object v7, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->aidPtr:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 172
    iget-object v7, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->appLabelPtr:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 173
    iget v7, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->pin1Replaced:I

    if-eqz v7, :cond_70

    const/4 v7, 0x1

    goto :goto_71

    :cond_70
    move v7, v3

    :goto_71
    iput-boolean v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:Z

    .line 174
    iget v7, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->pin1:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 175
    iget v7, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->pin2:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 176
    iget v7, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->pin1NumRetries:I

    iput v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_num_retries:I

    .line 177
    iget v7, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->puk1NumRetries:I

    iput v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->puk1_num_retries:I

    .line 178
    iget v7, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->pin2NumRetries:I

    iput v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2_num_retries:I

    .line 179
    iget v7, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->puk2NumRetries:I

    iput v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->puk2_num_retries:I

    .line 180
    iget v5, v5, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->persoUnblockRetries:I

    iput v5, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_unblock_retries:I

    .line 181
    iget-object v5, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 183
    :cond_9e
    new-instance v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;-><init>()V

    .line 184
    iget-object p2, p2, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->slotMap:Landroid/hardware/radio/config/SlotPortMapping;

    iget v3, p2, Landroid/hardware/radio/config/SlotPortMapping;->physicalSlotId:I

    iput v3, v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPhysicalSlotIndex:I

    .line 185
    iget p2, p2, Landroid/hardware/radio/config/SlotPortMapping;->portId:I

    iput p2, v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    .line 186
    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    .line 187
    iget-object p2, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseIccCardStatus: from AIDL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 188
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_ce

    .line 189
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehSimResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_ce
    .catchall {:try_start_e .. :try_end_ce} :catchall_d4

    .line 192
    :cond_ce
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_db

    :catchall_d4
    move-exception p2

    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 193
    throw p2

    :cond_db
    :goto_db
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

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 85
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 87
    :goto_10
    :try_start_10
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 88
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 90
    :cond_25
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_2e

    .line 91
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehSimResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_34

    .line 94
    :cond_2e
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_3b

    :catchall_34
    move-exception p2

    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 95
    throw p2

    :cond_3b
    :goto_3b
    return-void
.end method

.method private varargs blacklist responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V
    .registers 6

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 75
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_15

    .line 76
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 78
    :cond_15
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehSimResponse;->responseIntArrayList(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method private blacklist responseSIM_PB(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;)V
    .registers 15

    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_66

    const/4 v2, 0x3

    new-array v4, v2, [I

    new-array v5, v2, [I

    new-array v6, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    move v7, v3

    :goto_12
    if-ge v7, v2, :cond_29

    .line 312
    iget-object v8, p2, Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;->lengthAlphas:[I

    aget v8, v8, v7

    aput v8, v4, v7

    .line 313
    iget-object v8, p2, Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;->dataTypeAlphas:[I

    aget v8, v8, v7

    aput v8, v5, v7

    .line 314
    iget-object v8, p2, Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;->alphaTags:[Ljava/lang/String;

    aget-object v8, v8, v7

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_29
    new-array v7, v1, [I

    new-array v8, v1, [I

    new-array v9, v1, [Ljava/lang/String;

    :goto_2f
    if-ge v3, v1, :cond_46

    .line 322
    iget-object v2, p2, Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;->lengthNumbers:[I

    aget v2, v2, v3

    aput v2, v7, v3

    .line 323
    iget-object v2, p2, Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;->dataTypeNumbers:[I

    aget v2, v2, v3

    aput v2, v8, v3

    .line 324
    iget-object v2, p2, Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;->numbers:[Ljava/lang/String;

    aget-object v2, v2, v3

    aput-object v2, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 327
    :cond_46
    iget v10, p2, Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;->recordIndex:I

    .line 328
    iget v11, p2, Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;->nextIndex:I

    .line 330
    new-instance p2, Lcom/android/internal/telephony/uicc/SimPBEntryResult;

    move-object v3, p2

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/telephony/uicc/SimPBEntryResult;-><init>([I[I[Ljava/lang/String;[I[I[Ljava/lang/String;II)V

    .line 333
    :try_start_50
    iget v1, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez v1, :cond_59

    .line 334
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/SehSimResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_5f

    .line 337
    :cond_59
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_66

    :catchall_5f
    move-exception v1

    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 338
    throw v1

    :cond_66
    :goto_66
    return-void
.end method

.method private blacklist responseString(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/String;)V
    .registers 5

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 119
    :try_start_9
    iget v1, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez v1, :cond_12

    .line 120
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/SehSimResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_18

    .line 123
    :cond_12
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_1f

    :catchall_18
    move-exception v1

    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 124
    throw v1

    :cond_1f
    :goto_1f
    return-void
.end method

.method private blacklist responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 5

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    .line 105
    :try_start_a
    iget v2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez v2, :cond_13

    .line 106
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/SehSimResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_19

    .line 109
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_20

    :catchall_19
    move-exception v2

    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 110
    throw v2

    :cond_20
    :goto_20
    return-void
.end method

.method static blacklist sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 3

    if-eqz p0, :cond_9

    const/4 v0, 0x0

    .line 58
    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 59
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_9
    return-void
.end method


# virtual methods
.method public blacklist accessPhonebookEntryResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 358
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehSimResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist changeIccPersonalizationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 2

    .line 300
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSimResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist getAtrResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/String;)V
    .registers 3

    .line 366
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehSimResponse;->responseString(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getIccCardStatusResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/sim/SehCardStatus;)V
    .registers 3

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehSimResponse;->responseIccCardStatus(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/sim/SehCardStatus;)V

    return-void
.end method

.method public final blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "026db5fb2861ad0465ceb26f1c654473c3c0665e"

    return-object p0
.end method

.method public final blacklist getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getPhonebookEntryResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;)V
    .registers 3

    .line 349
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehSimResponse;->responseSIM_PB(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;)V

    return-void
.end method

.method public blacklist getPhonebookStorageInfoResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/sim/SehPhonebookInfo;)V
    .registers 7

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_3a

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 225
    iget v3, p2, Lvendor/samsung/hardware/radio/sim/SehPhonebookInfo;->totalCount:I

    aput v3, v1, v2

    const/4 v2, 0x1

    .line 226
    iget v3, p2, Lvendor/samsung/hardware/radio/sim/SehPhonebookInfo;->usedCount:I

    aput v3, v1, v2

    const/4 v2, 0x2

    .line 227
    iget v3, p2, Lvendor/samsung/hardware/radio/sim/SehPhonebookInfo;->firstIndex:I

    aput v3, v1, v2

    const/4 v2, 0x3

    .line 228
    iget v3, p2, Lvendor/samsung/hardware/radio/sim/SehPhonebookInfo;->maxTextLength:I

    aput v3, v1, v2

    const/4 v2, 0x4

    .line 229
    iget p2, p2, Lvendor/samsung/hardware/radio/sim/SehPhonebookInfo;->maxNumberLength:I

    aput p2, v1, v2

    .line 232
    :try_start_24
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_2d

    .line 233
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehSimResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_33

    .line 236
    :cond_2d
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_3a

    :catchall_33
    move-exception p2

    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 237
    throw p2

    :cond_3a
    :goto_3a
    return-void
.end method

.method public blacklist getSimLockInfoResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/sim/SehSimLockInfo;)V
    .registers 8

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(ILvendor/samsung/hardware/radio/SehRadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 272
    iget v1, p2, Lvendor/samsung/hardware/radio/sim/SehSimLockInfo;->numberOfLockTypes:I

    .line 273
    iget v2, p2, Lvendor/samsung/hardware/radio/sim/SehSimLockInfo;->lockType:I

    .line 274
    iget v3, p2, Lvendor/samsung/hardware/radio/sim/SehSimLockInfo;->lockKey:I

    .line 275
    iget p2, p2, Lvendor/samsung/hardware/radio/sim/SehSimLockInfo;->numberOfRetry:I

    .line 277
    new-instance v4, Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    invoke-direct {v4, v1, v2, v3, p2}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;-><init>(IIII)V

    .line 280
    :try_start_16
    iget p2, p1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->error:I

    if-nez p2, :cond_1f

    .line 281
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v4}, Lcom/android/internal/telephony/SehSimResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_25

    .line 284
    :cond_1f
    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v4}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_2c

    :catchall_25
    move-exception p2

    iget-object p0, p0, Lcom/android/internal/telephony/SehSimResponse;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v4}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/Object;)V

    .line 285
    throw p2

    :cond_2c
    :goto_2c
    return-void
.end method

.method public blacklist getUsimPhonebookCapabilityResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V
    .registers 3

    .line 247
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehSimResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist setSimInitEventResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 2

    .line 261
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSimResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSimOnOffResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 2

    .line 254
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSimResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist supplyIccPersonalizationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 2

    .line 293
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehSimResponse;->responseVoid(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    return-void
.end method

.method public blacklist supplyNetworkDepersonalizationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 211
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehSimResponse;->responseInts(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    return-void
.end method
