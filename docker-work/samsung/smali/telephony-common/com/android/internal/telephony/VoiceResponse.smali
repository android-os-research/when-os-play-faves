.class public Lcom/android/internal/telephony/VoiceResponse;
.super Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;
.source "VoiceResponse.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method


# virtual methods
.method public blacklist acceptCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 50
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist acknowledgeRequest(I)V
    .registers 2

    .line 43
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->processRequestAck(I)V

    return-void
.end method

.method public blacklist cancelPendingUssdResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 57
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist conferenceResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 64
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist dialResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 71
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist emergencyDialResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 78
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist exitEmergencyCallbackModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 85
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist explicitCallTransferResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 92
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getCallForwardStatusResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/voice/CallForwardInfo;)V
    .registers 9

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 104
    array-length v1, p2

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v2, 0x0

    .line 105
    :goto_d
    array-length v3, p2

    if-ge v2, v3, :cond_34

    .line 106
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v3, v1, v2

    .line 107
    aget-object v4, p2, v2

    iget v5, v4, Landroid/hardware/radio/voice/CallForwardInfo;->status:I

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 108
    iget v5, v4, Landroid/hardware/radio/voice/CallForwardInfo;->reason:I

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 109
    iget v5, v4, Landroid/hardware/radio/voice/CallForwardInfo;->serviceClass:I

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 110
    iget v5, v4, Landroid/hardware/radio/voice/CallForwardInfo;->toa:I

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 111
    iget-object v5, v4, Landroid/hardware/radio/voice/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 112
    iget v4, v4, Landroid/hardware/radio/voice/CallForwardInfo;->timeSeconds:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 114
    :cond_34
    iget p2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p2, :cond_3d

    .line 115
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 117
    :cond_3d
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_42
    return-void
.end method

.method public blacklist getCallWaitingResponse(Landroid/hardware/radio/RadioResponseInfo;ZI)V
    .registers 6

    .line 131
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const/4 p2, 0x6

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getClipResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 5

    .line 140
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x6

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getClirResponse(Landroid/hardware/radio/RadioResponseInfo;II)V
    .registers 6

    .line 149
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const/4 p2, 0x6

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getCurrentCallsResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/voice/Call;)V
    .registers 10

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 161
    array-length v1, p2

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v1, :cond_40

    .line 165
    aget-object v5, p2, v4

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToDriverCall(Landroid/hardware/radio/voice/Call;)Lcom/android/internal/telephony/DriverCall;

    move-result-object v5

    .line 166
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-boolean v5, v5, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v5, :cond_2f

    .line 168
    iget-object v5, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v5, v5, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 169
    iget-object v5, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v6, "InCall VoicePrivacy is enabled"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_3d

    .line 171
    :cond_2f
    iget-object v5, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v5, v5, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 172
    iget-object v5, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v6, "InCall VoicePrivacy is disabled"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :goto_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 176
    :cond_40
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-nez v1, :cond_61

    .line 177
    iget-object p2, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_61

    .line 178
    iget-object p2, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, p2, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_61

    const-string v1, "responseCurrentCalls: call ended, testing emergency call, notify ECM Registrants"

    .line 179
    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 181
    iget-object p2, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 185
    :cond_61
    iget p2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p2, :cond_6a

    .line 186
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 188
    :cond_6a
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_6f
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "e9ffc70247a89e6c1e526c6334c37da46f33ebea"

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getLastCallFailCauseResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/voice/LastCallFailCauseInfo;)V
    .registers 6

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 204
    new-instance v1, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v1}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    .line 205
    iget v2, p2, Landroid/hardware/radio/voice/LastCallFailCauseInfo;->causeCode:I

    iput v2, v1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 206
    iget-object p2, p2, Landroid/hardware/radio/voice/LastCallFailCauseInfo;->vendorCause:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    .line 207
    iget p2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p2, :cond_1f

    .line 208
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 210
    :cond_1f
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_24
    return-void
.end method

.method public blacklist getMuteResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .registers 5

    .line 219
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x6

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getPreferredVoicePrivacyResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .registers 5

    .line 228
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x6

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getTtyModeResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 5

    .line 236
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x6

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 243
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist hangupConnectionResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 250
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 257
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 264
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist isVoNrEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .registers 6

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 275
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 276
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 278
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method public blacklist rejectCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 286
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendBurstDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 293
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendCdmaFeatureCodeResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 300
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 307
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendUssdResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 314
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist separateConnectionResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 321
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCallForwardResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 328
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCallWaitingResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 335
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setClirResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 342
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setMuteResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 349
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setPreferredVoicePrivacyResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 356
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setTtyModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 363
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setVoNrEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 370
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist startDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 377
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist stopDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 384
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 391
    iget-object p0, p0, Lcom/android/internal/telephony/VoiceResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method
