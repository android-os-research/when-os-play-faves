.class public Lcom/android/internal/telephony/RadioConfigResponseAidl;
.super Landroid/hardware/radio/config/IRadioConfigResponse$Stub;
.source "RadioConfigResponseAidl.java"


# instance fields
.field private final blacklist mHalVersion:Lcom/android/internal/telephony/HalVersion;

.field private final blacklist mRadioConfig:Lcom/android/internal/telephony/RadioConfig;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RadioConfig;Lcom/android/internal/telephony/HalVersion;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/RadioConfigResponseAidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    .line 40
    iput-object p2, p0, Lcom/android/internal/telephony/RadioConfigResponseAidl;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-void
.end method

.method private static blacklist logd(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V
    .registers 3

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "< "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfigResponseAidl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    const-string v0, "RadioConfigResponseAidl"

    .line 203
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V
    .registers 3

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "< "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfigResponseAidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    const-string v0, "RadioConfigResponseAidl"

    .line 207
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist getHalDeviceCapabilitiesResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfigResponseAidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RadioConfig;->processResponse(Landroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 53
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigResponseAidl;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/RILUtils;->getCaps(Lcom/android/internal/telephony/HalVersion;Z)Ljava/util/Set;

    move-result-object p0

    .line 54
    iget p2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p2, :cond_21

    .line 56
    iget-object p1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p1, p0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 57
    iget p0, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/RadioConfigResponseAidl;->logd(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    goto :goto_5c

    .line 59
    :cond_21
    invoke-virtual {v0, p2, p0}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 60
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " error "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/RadioConfigResponseAidl;->loge(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    goto :goto_5c

    .line 63
    :cond_44
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getHalDeviceCapabilities: Error "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioResponseInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfigResponseAidl;->loge(Ljava/lang/String;)V

    :goto_5c
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "dd9c3f8e21930f9b4c46a4125bd5f5cec90318ec"

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getNumOfLiveModemsResponse(Landroid/hardware/radio/RadioResponseInfo;B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigResponseAidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioConfig;->processResponse(Landroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-eqz p0, :cond_46

    .line 76
    iget v0, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v0, :cond_1f

    .line 78
    iget-object p1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 79
    iget p1, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RadioConfigResponseAidl;->logd(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    goto :goto_5e

    .line 81
    :cond_1f
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RadioConfigResponseAidl;->loge(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    goto :goto_5e

    .line 85
    :cond_46
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getNumOfLiveModemsResponse: Error "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioResponseInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfigResponseAidl;->loge(Ljava/lang/String;)V

    :goto_5e
    return-void
.end method

.method public blacklist getPhoneCapabilityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/config/PhoneCapability;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfigResponseAidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RadioConfig;->processResponse(Landroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 99
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigResponseAidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfig;->getDeviceNrCapabilities()[I

    move-result-object p0

    .line 99
    invoke-static {p0, p2}, Lcom/android/internal/telephony/RILUtils;->convertHalPhoneCapability([ILjava/lang/Object;)Landroid/telephony/PhoneCapability;

    move-result-object p0

    .line 101
    iget p2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p2, :cond_3d

    .line 103
    iget-object p1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p1, p0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/PhoneCapability;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/RadioConfigResponseAidl;->logd(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    goto :goto_78

    .line 106
    :cond_3d
    invoke-virtual {v0, p2, p0}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 107
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " error "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/RadioConfigResponseAidl;->loge(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    goto :goto_78

    .line 110
    :cond_60
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getPhoneCapabilityResponse: Error "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioResponseInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfigResponseAidl;->loge(Ljava/lang/String;)V

    :goto_78
    return-void
.end method

.method public blacklist getSimSlotsStatusResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/config/SimSlotStatus;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigResponseAidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioConfig;->processResponse(Landroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-eqz p0, :cond_5a

    .line 124
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSlotStatus(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    .line 125
    iget v0, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v0, :cond_37

    .line 127
    iget-object p1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RadioConfigResponseAidl;->logd(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    goto :goto_72

    .line 130
    :cond_37
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RadioConfigResponseAidl;->loge(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    goto :goto_72

    .line 134
    :cond_5a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getSimSlotsStatusResponse: Error "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioResponseInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfigResponseAidl;->loge(Ljava/lang/String;)V

    :goto_72
    return-void
.end method

.method public blacklist setNumOfLiveModemsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigResponseAidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioConfig;->processResponse(Landroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-eqz p0, :cond_45

    .line 147
    iget v0, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v0, :cond_21

    .line 149
    iget-object p1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    iget v0, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 150
    iget p1, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RadioConfigResponseAidl;->logd(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    goto :goto_5d

    :cond_21
    const/4 v1, 0x0

    .line 152
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RadioConfigResponseAidl;->loge(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    goto :goto_5d

    .line 156
    :cond_45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setModemsConfigResponse: Error "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioResponseInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfigResponseAidl;->loge(Ljava/lang/String;)V

    :goto_5d
    return-void
.end method

.method public blacklist setPreferredDataModemResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigResponseAidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioConfig;->processResponse(Landroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-eqz p0, :cond_3f

    .line 168
    iget v0, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    .line 170
    iget-object p1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 171
    iget p1, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RadioConfigResponseAidl;->logd(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    goto :goto_57

    .line 173
    :cond_1c
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RadioConfigResponseAidl;->loge(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    goto :goto_57

    .line 177
    :cond_3f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPreferredDataModemResponse: Error "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioResponseInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfigResponseAidl;->loge(Ljava/lang/String;)V

    :goto_57
    return-void
.end method

.method public blacklist setSimSlotsMappingResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigResponseAidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioConfig;->processResponse(Landroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-eqz p0, :cond_3f

    .line 189
    iget v0, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    .line 191
    iget-object p1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 192
    iget p1, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RadioConfigResponseAidl;->logd(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    goto :goto_57

    .line 194
    :cond_1c
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RadioConfigResponseAidl;->loge(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    goto :goto_57

    .line 198
    :cond_3f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSimSlotsMappingResponse: Error "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioResponseInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfigResponseAidl;->loge(Ljava/lang/String;)V

    :goto_57
    return-void
.end method
