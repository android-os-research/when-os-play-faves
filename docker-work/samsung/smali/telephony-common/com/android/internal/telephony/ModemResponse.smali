.class public Lcom/android/internal/telephony/ModemResponse;
.super Landroid/hardware/radio/modem/IRadioModemResponse$Stub;
.source "ModemResponse.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method


# virtual methods
.method public blacklist acknowledgeRequest(I)V
    .registers 2

    .line 47
    iget-object p0, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->processRequestAck(I)V

    return-void
.end method

.method public blacklist enableModemResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 54
    iget-object p0, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getBasebandVersionResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .registers 4

    .line 62
    iget-object p0, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getDeviceIdentityResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 74
    iget-object p0, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const/4 p2, 0x3

    aput-object p5, v0, p2

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseStrings(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getHardwareConfigResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/modem/HardwareConfig;)V
    .registers 5

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 87
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalHardwareConfigList([Landroid/hardware/radio/modem/HardwareConfig;)Ljava/util/ArrayList;

    move-result-object p2

    .line 88
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 89
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 91
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "9dee2319b599d654955c05268c1eed6ca4373b58"

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getModemActivityInfoResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/modem/ActivityStatsInfo;)V
    .registers 16

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 106
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    if-nez v1, :cond_57

    .line 107
    iget v6, p2, Landroid/hardware/radio/modem/ActivityStatsInfo;->sleepModeTimeMs:I

    .line 108
    iget v7, p2, Landroid/hardware/radio/modem/ActivityStatsInfo;->idleModeTimeMs:I

    .line 109
    iget-object v1, p2, Landroid/hardware/radio/modem/ActivityStatsInfo;->techSpecificInfo:[Landroid/hardware/radio/modem/ActivityStatsTechSpecificInfo;

    array-length v1, v1

    .line 110
    new-array v8, v1, [Landroid/telephony/ActivityStatsTechSpecificInfo;

    move v3, v2

    :goto_18
    if-ge v3, v1, :cond_4c

    .line 112
    iget-object v4, p2, Landroid/hardware/radio/modem/ActivityStatsInfo;->techSpecificInfo:[Landroid/hardware/radio/modem/ActivityStatsTechSpecificInfo;

    aget-object v4, v4, v3

    iget v5, v4, Landroid/hardware/radio/modem/ActivityStatsTechSpecificInfo;->rat:I

    .line 113
    iget v4, v4, Landroid/hardware/radio/modem/ActivityStatsTechSpecificInfo;->frequencyRange:I

    .line 114
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v9

    new-array v9, v9, [I

    .line 115
    iget-object v10, p2, Landroid/hardware/radio/modem/ActivityStatsInfo;->techSpecificInfo:[Landroid/hardware/radio/modem/ActivityStatsTechSpecificInfo;

    aget-object v10, v10, v3

    iget v10, v10, Landroid/hardware/radio/modem/ActivityStatsTechSpecificInfo;->rxModeTimeMs:I

    move v11, v2

    .line 116
    :goto_2f
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v12

    if-ge v11, v12, :cond_42

    .line 117
    iget-object v12, p2, Landroid/hardware/radio/modem/ActivityStatsInfo;->techSpecificInfo:[Landroid/hardware/radio/modem/ActivityStatsTechSpecificInfo;

    aget-object v12, v12, v3

    iget-object v12, v12, Landroid/hardware/radio/modem/ActivityStatsTechSpecificInfo;->txmModetimeMs:[I

    aget v12, v12, v11

    aput v12, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2f

    .line 119
    :cond_42
    new-instance v11, Landroid/telephony/ActivityStatsTechSpecificInfo;

    invoke-direct {v11, v5, v4, v9, v10}, Landroid/telephony/ActivityStatsTechSpecificInfo;-><init>(II[II)V

    aput-object v11, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 125
    :cond_4c
    new-instance p2, Landroid/telephony/ModemActivityInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JII[Landroid/telephony/ActivityStatsTechSpecificInfo;)V

    goto :goto_75

    :cond_57
    const/4 p2, 0x1

    new-array v8, p2, [Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 129
    new-instance p2, Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 130
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v1

    new-array v1, v1, [I

    invoke-direct {p2, v2, v2, v1, v2}, Landroid/telephony/ActivityStatsTechSpecificInfo;-><init>(II[II)V

    aput-object p2, v8, v2

    .line 131
    new-instance p2, Landroid/telephony/ModemActivityInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JII[Landroid/telephony/ActivityStatsTechSpecificInfo;)V

    .line 132
    iput v2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    .line 134
    :goto_75
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 135
    iget-object p0, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_7f
    return-void
.end method

.method public blacklist getModemStackStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .registers 6

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 147
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 148
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 150
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method public blacklist getRadioCapabilityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/modem/RadioCapability;)V
    .registers 5

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 163
    iget-object v1, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RILUtils;->convertHalRadioCapability(Landroid/hardware/radio/modem/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;

    move-result-object p2

    .line 169
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-eqz v1, :cond_1c

    .line 172
    iget-object p2, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object p2

    const/4 v1, 0x0

    .line 173
    iput v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    .line 175
    :cond_1c
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_25

    .line 176
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 178
    :cond_25
    iget-object p0, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2a
    return-void
.end method

.method public blacklist nvReadItemResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .registers 4

    .line 187
    iget-object p0, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist nvResetConfigResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 194
    iget-object p0, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist nvWriteCdmaPrlResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 201
    iget-object p0, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist nvWriteItemResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 208
    iget-object p0, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist requestShutdownResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 215
    iget-object p0, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendDeviceStateResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 222
    iget-object p0, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setRadioCapabilityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/modem/RadioCapability;)V
    .registers 5

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 234
    iget-object v1, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RILUtils;->convertHalRadioCapability(Landroid/hardware/radio/modem/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;

    move-result-object p2

    .line 235
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_18

    .line 236
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 238
    :cond_18
    iget-object p0, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method

.method public blacklist setRadioPowerResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 4

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x3

    invoke-static {v1, v0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    .line 247
    iget-object p0, p0, Lcom/android/internal/telephony/ModemResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget p1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    iput p1, p0, Lcom/android/internal/telephony/RIL;->mLastRadioPowerResult:I

    const/16 p0, 0x46

    if-ne p1, p0, :cond_1c

    const-string p0, "316f3801-fa21-4954-a42f-0041eada3b32"

    .line 250
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "RF HW damaged"

    .line 249
    invoke-static {p0, p1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    goto :goto_3c

    :cond_1c
    const/16 p0, 0x47

    if-ne p1, p0, :cond_2c

    const-string p0, "316f3801-fa21-4954-a42f-0041eada3b33"

    .line 254
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "No RF calibration data"

    .line 253
    invoke-static {p0, p1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    goto :goto_3c

    :cond_2c
    const/4 p0, 0x1

    if-eq p1, p0, :cond_3c

    if-eqz p1, :cond_3c

    const-string p0, "316f3801-fa21-4954-a42f-0041eada3b31"

    .line 259
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Radio power failure"

    .line 258
    invoke-static {p0, p1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    :cond_3c
    :goto_3c
    return-void
.end method
